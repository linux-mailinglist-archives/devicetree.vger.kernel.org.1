Return-Path: <devicetree+bounces-128865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A22069E9A94
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 16:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C8B8162B22
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 15:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DE4B1F0E42;
	Mon,  9 Dec 2024 15:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zbu5RK5i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27D31F0E3D;
	Mon,  9 Dec 2024 15:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733758243; cv=none; b=IFitp1E//2/R2LlKWm8A1njdnSzS+wBpwmbOFCzGCnjVzXFDhQ6+ILCTuSQ6EaRXAwHs9bH6gFv6Ekc8uOdjduOvEUqaonnMvQyJxe/bQrLCOsBSRd+kUd03jQdeYq9EwalLJxaTQFS3NX1LPGM7UWYYu45/fdub72zqwnNJdvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733758243; c=relaxed/simple;
	bh=STfKckyL0TMpxsYw5pn1QelzJf/9pGSJYyWVqtZs/DY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tfNl0OUnOS+X5HY6UMf+1IGrt6K4yNVWT2JP1ehw3tViuLeXI9aiJ7YucIuzU7Navu6kR7UGSPVOE4latd0GWDYoSUhJquhjP7hngNxfMd49MJxXtWB+rnD4dLWItqINvG0cBLHJ/VdeEWQSd6YUEJCuJBh8jao7rBmQbt4WbSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zbu5RK5i; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B227FC4CEDD;
	Mon,  9 Dec 2024 15:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733758242;
	bh=STfKckyL0TMpxsYw5pn1QelzJf/9pGSJYyWVqtZs/DY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Zbu5RK5iySki+r2vrAL5+mqRaBBgBwQKgfp6x01/z2l5e0Ofv2dE1ifj0Ljriez95
	 swycx69LKbI80HZswN6p1Dq77ywT6vmKVTRejaGlARr+OIWsJCA2vOYeVm6oj+ZF5b
	 fni8NzisXcqpk8fSO6YtPSgJR4VsNRpDUsqQ8rNMh4/AH9A56IK/FB5wDLNcaD2lfE
	 F3muV40rTyhuB7zxKeNOnVG9ms6kFL6VXrcGfOGGBNxqdGgYZa19Ji8Y7wbcC4q4Nm
	 QO4rD1MMd1FTKtJpuDI2+biBaGOq+n1KkP2g6iHU9f8yoBgllZNP+7lMu4Pa6odrwU
	 2ftjuRUiD1LWw==
From: Kalle Valo <kvalo@kernel.org>
To: ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/8] wifi: ath12k: refactor ath12k_qmi_alloc_target_mem_chunk()
Date: Mon,  9 Dec 2024 17:30:30 +0200
Message-Id: <20241209153034.50558-5-kvalo@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241209153034.50558-1-kvalo@kernel.org>
References: <20241209153034.50558-1-kvalo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Karthikeyan Periyasamy <quic_periyasa@quicinc.com>

Currently, all QMI target memory types share the same allocation logic within
ath12k_qmi_alloc_target_mem_chunk(). However, for Multi-Link Operation (MLO),
the firmware requests a new MLO global memory region. This memory is shared
across different firmware (SoC) participating in the MLO. To accommodate this
logic change, refactor ath12k_qmi_alloc_target_mem_chunk() and introduce a
helper function ath12k_qmi_alloc_chunk() for memory chunk allocation.
Subsequent patch will add MLO global memory allocation logic.

Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1
Tested-on: WCN7850 hw2.0 PCI WLAN.HMT.1.0.c5-00481-QCAHMTSWPL_V1.0_V2.0_SILICONZ-3

Signed-off-by: Karthikeyan Periyasamy <quic_periyasa@quicinc.com>
Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
Signed-off-by: Kalle Valo <quic_kvalo@quicinc.com>
---
 drivers/net/wireless/ath/ath12k/qmi.c | 82 ++++++++++++++-------------
 1 file changed, 44 insertions(+), 38 deletions(-)

diff --git a/drivers/net/wireless/ath/ath12k/qmi.c b/drivers/net/wireless/ath/ath12k/qmi.c
index 2f10c83ef54a..7f3d5b269b9e 100644
--- a/drivers/net/wireless/ath/ath12k/qmi.c
+++ b/drivers/net/wireless/ath/ath12k/qmi.c
@@ -2423,9 +2423,50 @@ static void ath12k_qmi_free_target_mem_chunk(struct ath12k_base *ab)
 	}
 }
 
+static int ath12k_qmi_alloc_chunk(struct ath12k_base *ab,
+				  struct target_mem_chunk *chunk)
+{
+	/* Firmware reloads in recovery/resume.
+	 * In such cases, no need to allocate memory for FW again.
+	 */
+	if (chunk->v.addr) {
+		if (chunk->prev_type == chunk->type &&
+		    chunk->prev_size == chunk->size)
+			goto this_chunk_done;
+
+		/* cannot reuse the existing chunk */
+		dma_free_coherent(ab->dev, chunk->prev_size,
+				  chunk->v.addr, chunk->paddr);
+		chunk->v.addr = NULL;
+	}
+
+	chunk->v.addr = dma_alloc_coherent(ab->dev,
+					   chunk->size,
+					   &chunk->paddr,
+					   GFP_KERNEL | __GFP_NOWARN);
+	if (!chunk->v.addr) {
+		if (chunk->size > ATH12K_QMI_MAX_CHUNK_SIZE) {
+			ab->qmi.target_mem_delayed = true;
+			ath12k_warn(ab,
+				    "qmi dma allocation failed (%d B type %u), will try later with small size\n",
+				    chunk->size,
+				    chunk->type);
+			ath12k_qmi_free_target_mem_chunk(ab);
+			return 0;
+		}
+		ath12k_warn(ab, "memory allocation failure for %u size: %d\n",
+			    chunk->type, chunk->size);
+		return -ENOMEM;
+	}
+	chunk->prev_type = chunk->type;
+	chunk->prev_size = chunk->size;
+this_chunk_done:
+	return 0;
+}
+
 static int ath12k_qmi_alloc_target_mem_chunk(struct ath12k_base *ab)
 {
-	int i;
+	int i, ret = 0;
 	struct target_mem_chunk *chunk;
 
 	ab->qmi.target_mem_delayed = false;
@@ -2442,42 +2483,7 @@ static int ath12k_qmi_alloc_target_mem_chunk(struct ath12k_base *ab)
 		case M3_DUMP_REGION_TYPE:
 		case PAGEABLE_MEM_REGION_TYPE:
 		case CALDB_MEM_REGION_TYPE:
-			/* Firmware reloads in recovery/resume.
-			 * In such cases, no need to allocate memory for FW again.
-			 */
-			if (chunk->v.addr) {
-				if (chunk->prev_type == chunk->type &&
-				    chunk->prev_size == chunk->size)
-					goto this_chunk_done;
-
-				/* cannot reuse the existing chunk */
-				dma_free_coherent(ab->dev, chunk->prev_size,
-						  chunk->v.addr, chunk->paddr);
-				chunk->v.addr = NULL;
-			}
-
-			chunk->v.addr = dma_alloc_coherent(ab->dev,
-							   chunk->size,
-							   &chunk->paddr,
-							   GFP_KERNEL | __GFP_NOWARN);
-			if (!chunk->v.addr) {
-				if (chunk->size > ATH12K_QMI_MAX_CHUNK_SIZE) {
-					ab->qmi.target_mem_delayed = true;
-					ath12k_warn(ab,
-						    "qmi dma allocation failed (%d B type %u), will try later with small size\n",
-						    chunk->size,
-						    chunk->type);
-					ath12k_qmi_free_target_mem_chunk(ab);
-					return 0;
-				}
-				ath12k_warn(ab, "memory allocation failure for %u size: %d\n",
-					    chunk->type, chunk->size);
-				return -ENOMEM;
-			}
-
-			chunk->prev_type = chunk->type;
-			chunk->prev_size = chunk->size;
-this_chunk_done:
+			ret = ath12k_qmi_alloc_chunk(ab, chunk);
 			break;
 		default:
 			ath12k_warn(ab, "memory type %u not supported\n",
@@ -2487,7 +2493,7 @@ static int ath12k_qmi_alloc_target_mem_chunk(struct ath12k_base *ab)
 			break;
 		}
 	}
-	return 0;
+	return ret;
 }
 
 /* clang stack usage explodes if this is inlined */
-- 
2.39.5



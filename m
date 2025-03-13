Return-Path: <devicetree+bounces-157274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D79A5F8E1
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BDA419C146C
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 14:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C834A267F4D;
	Thu, 13 Mar 2025 14:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="jMz+/LdX"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64D9267B07
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741877212; cv=none; b=C/JDI7TeRmMPfd5aeN/Cmg5EGkgf16QlKpGf70O/0r7XUdD9GPGwps7Y7R26RCt9M3kg+FySw/tCgboMvl78eT411LbEPHr2OhzKJhegNN9I3Bgo2uRRG7x49gLkIPNQrmBkDKNiyRM6l79uRmWf/lzf2W0x/0wguPMswsLJkOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741877212; c=relaxed/simple;
	bh=rseNujO8UsyKs/oHYgAXBvqaoSwHFpy7vMnbmHRQuZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GUmPcdsNloYrGpODKJvUo3gq2wVvAudYRENVCy8Mc5CY11ufg9lR2BffuXr2TrJuFNl01FhPqfwUEfq79jQoW034Jr1MT8wNoDlWMMvyhnfaR9a5P+DXbPxxGuzCS3fni1TWS2u4Mmvp3+wUWrf5TPnYSAN7p52uleltkFpgZNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=jMz+/LdX; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Glfxkk93kLTkDL1Uqox9uWKHfSjCb00r31qIcpMQ4Bo=; b=jMz+/LdXHeiwS/DbQzQzr4Uksd
	RUUPEaDcCRQcXvf2gwXpvJcv5h0wqmMJt9LRbeFn4en8+QBRT2Dlp1hacL4EG6yILOFkQ1aoOkCCZ
	0/X5zBhoDgOmBakkrLwljawXCUdzLu62LTnq8UdD9rDEaiiXNJ6iEJDUF8/XFq9uPraCoWuCun0oO
	nTLokjHMQNjFmRfSNcaWd2hZyCLL1SY1czhmfAjcneMNRZfwmw16/O+6a2wmdFb97y1iQGCK6qP1v
	jSwCAJXTUBZ5h6K8yCnZXZfuekR6w3nWTJKOYqfNvWfmpjHA36o27hkhBVGAeTCc7BBusgbJm3NVN
	WLDEgHoA==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tsjpY-008Cju-Bw; Thu, 13 Mar 2025 15:46:46 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Thu, 13 Mar 2025 11:43:27 -0300
Subject: [PATCH v4 2/7] drm/v3d: Set job pointer to NULL when the job's
 fence has an error
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250313-v3d-gpu-reset-fixes-v4-2-c1e780d8e096@igalia.com>
References: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
In-Reply-To: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2839; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=rseNujO8UsyKs/oHYgAXBvqaoSwHFpy7vMnbmHRQuZY=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0u/IRVHxQH831zuEAKpgq2Ua3I4uQuyz5WsYd
 3zYpArXsmaJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9LvyAAKCRA/8w6Kdoj6
 qsoHB/9A3J95+ga58c1w74wB7H8eD9h5d8pYxqN5GrhtJbilPhserLIq9b9o/rMtqpf9ZUCdrVk
 taoZd17K7Cv/wK8XZUAIdEFzen1/V9ryyYDQcVlgeD83Cf33WwAZRa5ewJXJ393PY+6rQfoD9xn
 CDxMJUstWCRcQDlnx6ZWgQoGgX5eWAAhECsmgNIZZF77+W1XyjWHIvBbOjRoFIdprIndAXab1zU
 bdApS19fC8xie3yNK4IKlVBAFgqqQaZkrTyCj5Qwo5CAY3hml5JXhI9nMPfv24ASWrGaVkFYHhC
 bIqaO00AVixjNBKoJR+fIu3nxGhzdPGaRh34nRxn/7aiX/BR
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

Similar to commit e4b5ccd392b9 ("drm/v3d: Ensure job pointer is set to
NULL after job completion"), ensure the job pointer is set to `NULL` when
a job's fence has an error. Failing to do so can trigger kernel warnings
in specific scenarios, such as:

1. v3d_csd_job_run() assigns `v3d->csd_job = job`
2. CSD job exceeds hang limit, causing a timeout → v3d_gpu_reset_for_timeout()
3. GPU reset
4. drm_sched_resubmit_jobs() sets the job's fence to `-ECANCELED`.
5. v3d_csd_job_run() detects the fence error and returns NULL, not
   submitting the job to the GPU
6. User-space runs `modprobe -r v3d`
7. v3d_gem_destroy()

v3d_gem_destroy() triggers a warning indicating that the CSD job never
ended, as we didn't set `v3d->csd_job` to NULL after the timeout. The same
can also happen to BIN, RENDER, and TFU jobs.

Reviewed-by: Iago Toral Quiroga <itoral@igalia.com>
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 drivers/gpu/drm/v3d/v3d_sched.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_sched.c b/drivers/gpu/drm/v3d/v3d_sched.c
index c2010ecdb08f4ba3b54f7783ed33901552d0eba1..34c42d6e12cde656d3b51a18be324976199eceae 100644
--- a/drivers/gpu/drm/v3d/v3d_sched.c
+++ b/drivers/gpu/drm/v3d/v3d_sched.c
@@ -226,8 +226,12 @@ static struct dma_fence *v3d_bin_job_run(struct drm_sched_job *sched_job)
 	struct dma_fence *fence;
 	unsigned long irqflags;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		spin_lock_irqsave(&v3d->job_lock, irqflags);
+		v3d->bin_job = NULL;
+		spin_unlock_irqrestore(&v3d->job_lock, irqflags);
 		return NULL;
+	}
 
 	/* Lock required around bin_job update vs
 	 * v3d_overflow_mem_work().
@@ -281,8 +285,10 @@ static struct dma_fence *v3d_render_job_run(struct drm_sched_job *sched_job)
 	struct drm_device *dev = &v3d->drm;
 	struct dma_fence *fence;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		v3d->render_job = NULL;
 		return NULL;
+	}
 
 	v3d->render_job = job;
 
@@ -327,8 +333,10 @@ v3d_tfu_job_run(struct drm_sched_job *sched_job)
 	struct drm_device *dev = &v3d->drm;
 	struct dma_fence *fence;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		v3d->tfu_job = NULL;
 		return NULL;
+	}
 
 	v3d->tfu_job = job;
 
@@ -373,8 +381,10 @@ v3d_csd_job_run(struct drm_sched_job *sched_job)
 	struct dma_fence *fence;
 	int i, csd_cfg0_reg;
 
-	if (unlikely(job->base.base.s_fence->finished.error))
+	if (unlikely(job->base.base.s_fence->finished.error)) {
+		v3d->csd_job = NULL;
 		return NULL;
+	}
 
 	v3d->csd_job = job;
 

-- 
Git-154)



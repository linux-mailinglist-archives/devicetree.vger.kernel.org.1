Return-Path: <devicetree+bounces-259383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J8NBcMdd2lDcQEAu9opvQ
	(envelope-from <devicetree+bounces-259383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:54:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C68D851DF
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 049663041158
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096B6314D25;
	Mon, 26 Jan 2026 07:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d/Yev7/c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="czKFTNxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81272314D19
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769413721; cv=none; b=TzTypdk4YMM75/QY+qr3VQ1/NvVCVif8V6LK6Svqu5n54epHwv5LG06xoObdaufE+o+LzJ5nkCpJOjfXN+XBHklFho6EsnNebQmFPVwdpBpBi4hB271+zbhZ4TJku7nxF4N2wQhSi44VAJVK7Metv27Ayo+v8rNd9Fqk3z+Jqww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769413721; c=relaxed/simple;
	bh=nzaF2yP3ATiqQC37LSxmXVL9MqWLOY4wwOUNTmvz/UA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e1pYvtdQUlgHli0NBQPOHDQLsl42KLLt3jqza6ny3raGFNBHXlAAIr4dX9Yln+ML+9HZtyAZsgwLIrx1dMijncLwecYnOJ+CeHr44qG7F3OoCBtA4dzSR1LyKRzUPCHZ4W5aqumDsYSDzqwOVZ+jcoZuGHyNoxUG/ln8n0QAfCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d/Yev7/c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=czKFTNxO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PJnCeW286436
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:48:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V/JNJXfM7FDohbLniT/dm0wA/+qShrtEurl8w70+rXY=; b=d/Yev7/cZxugBpeD
	9l2PwbnzFBbmG9ZLhBNgadDdH10geyFaOaaA3puQgI6ldvBa5XTtKrHUwL+yAcp6
	3wsVUYsLTeLNPJebWQ0Bzj5HZGcE9u8fEw2uKRN7NPFbcCg3y8WOFfox15d+eC8y
	xmBE0+b1pE+Xzx4CRriZUjIJY0oJHgL250B2BBjKUtz2Mzy2yLpYCF8lvhOj56om
	daYTpSZa7whHC2BG+UD3IqIDn6/nkzwhnozBbj06uHdudayUURJYQgySFM+xSgI4
	viJBH6BDDwkvfGzXoiC3TgOD6BefHXtXNi+V/NqDhNbT6abzXKFotrXh388T3DAN
	24YyKA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9qksm7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:48:39 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81e81fbbb8cso3915505b3a.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 23:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769413718; x=1770018518; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V/JNJXfM7FDohbLniT/dm0wA/+qShrtEurl8w70+rXY=;
        b=czKFTNxOFSHOo8HVglEaCw5uB13rswrlxmiISk/ThlgUNH2UrTItH/yxFKfLS7LDnV
         xux+oaTUydtQaX/+FVAiYG1p4F3uHfP2k733/HfexsbbVddbz3Tgg8xRld9QHGNRyzy0
         WclPgpAWtMapYfQwJYC/2UmXNinClhnjGtxbix/EWzix/5yi4t6favIM+P+caKwRW29W
         EtuhU1vqw9o+8nGxGqie4mdH6OmYpHHwq1M22epa1ft/l7ueA2+IPLogwhOMZrhwWga/
         0lZqa5ZxOM8gEfPA/pnoptO0qK8DHvo5K0pEfL6WgVXqQoObTxiyvlEC22SRJpCS1vdP
         FE3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769413718; x=1770018518;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=V/JNJXfM7FDohbLniT/dm0wA/+qShrtEurl8w70+rXY=;
        b=RrFSZwXrD19AtQrdCZp/z/Vd9/m2QVVHCpNMdZfY8a6SSyVPjNllELt5hsp88yrYQM
         H+UHLwQuCCYyOljiyCirhJuYC4GRQdMOvfU7OxXfAF6MCSyygrmOHwg5kyO6oDuYYq1l
         DSnZHDtf0LXKhQ2JB6IMCkSZbEGZKiiVdVaKG11Q9uFFHBq1RuGNpbIoniSPYnC8FwXR
         D4vqyQHkm/MJBjRb1YxRUOAoGdsdvnhoaotXrQnsOPpdHO32kPLOax8xS8tWwtzMKOFh
         J5PDN1xZQnP5fAqmsl21mE+wTIGmvqI/d2UhmM+yneeEQy6oPPefqDWNz/2kI0My6Of9
         ZV9A==
X-Forwarded-Encrypted: i=1; AJvYcCX1tkNDbHpx13v0ATV1wP8ATCvS9XcGwh/zHVix7XO60MY7SAAAa/qcUuNEnCkn9wDY7i63sq4ohfqd@vger.kernel.org
X-Gm-Message-State: AOJu0YyaxIg9h5rpyjmIlVPzsZoIb7zZfPcmNP813mYf81CMkDOipfnJ
	4fdKppIlWhxVhedMt0hcsx+G7bfeYi+I4/nuNuNt3D6VeQ57EAr4obsRU1izcwhbgGL9xeZBAHv
	JUajrQtmFBBB5RTgYyKW0VNTpVkovWrY7DZpoFwwLe14SPX9XHeHM8jJd4oOIaK+GVQnElwce
X-Gm-Gg: AZuq6aIFncGIofms4MAWv5BU5sSFRJNGfUrJ59l7GB4nYzbx4up+mutrFXfA/ZJukxD
	gAEeodn0cNRnWU8jGpPmcKmmQ9K3gyUJaGQJnjOdAyBpd0xtpl8WXEWVXLssglErWXI7w5L6UEh
	nt63rtYg5e7NoyN+nGQPQ3TuCrzxArGAigJY2O3aRwRFEuRnI/3IymVbmc7B8uhNqtz38ORwaLG
	JURW3sjU+pYNvMpQE1teEa1bSErIX21DTLJfkE1kURz8R9a5ybIMJW/2h8clhUBCNHj2GHdwfAU
	qcxfQDZ7VrsL7Wh1K4mimaVmNQ7IrbmdgRce+UMB14xMAAf1ZhZNA4ZPGyvizf5yM2bP9+kgfeL
	bb00smxrgp9beSRyaFkPolSY2xGTrdSDqIwwPDH4ez4x1+yvjWe2emo9/7FwZA6QdGZE7a+rLc4
	jL
X-Received: by 2002:a05:6a00:1390:b0:81f:d605:9c9c with SMTP id d2e1a72fcca58-823411dab8fmr3255314b3a.11.1769413718104;
        Sun, 25 Jan 2026 23:48:38 -0800 (PST)
X-Received: by 2002:a05:6a00:1390:b0:81f:d605:9c9c with SMTP id d2e1a72fcca58-823411dab8fmr3255298b3a.11.1769413717635;
        Sun, 25 Jan 2026 23:48:37 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8234fd9a5a7sm1223418b3a.63.2026.01.25.23.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 23:48:37 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 15:47:53 +0800
Subject: [PATCH v11 1/8] coresight: core: Refactoring ctcu_get_active_port
 and make it generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-enable-byte-cntr-for-ctcu-v11-1-c0af66ba15cf@oss.qualcomm.com>
References: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
In-Reply-To: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@arm.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769413705; l=3771;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=nzaF2yP3ATiqQC37LSxmXVL9MqWLOY4wwOUNTmvz/UA=;
 b=QeNbIgWPyFTfJk6iiSTrgbTwJU7oQXHAfz8GJngUGE8I+62rS3Ry99tFlTq72CFoIJnUMEUWn
 fp1jRqH4RBnBIyft11AyYgm6eQ0pe8pAFdmlSi1v9yz/z2yUYLsxanu
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: vSShkQT0LK_TmE19q-8W1X7QCfQ9umH9
X-Proofpoint-GUID: vSShkQT0LK_TmE19q-8W1X7QCfQ9umH9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA2NiBTYWx0ZWRfXyneMxjS5ckfr
 OLHQv+yF7U9kA0O0/HAMbO/z8tmJv7ZRFq8JWFPiYvL0xtIR7hpLSxgWM56o/Q3siI/6hve0/Sp
 F+gPzNo0F3YcpnmPPFV6bXLH26gFKpbfbX/ew71Fs82nk8ESLQZqXZPbgjlF/9gO0iaSzil1Xbn
 IWQeZL238bd5C5QzNPKn2oXohSLt5wXW7clwpw9nSXRb8ubw160me1GQ8WmH3KV5p8CnokdvPsY
 j1bPPViiY+aJm4g+vhcDrDaTO5J/OrY2WPSQUPoqUNIceGkL4tDor+8CYfIBYzfIZgHDRAdlTQ1
 BiJdWusINO6Lt2DIZp6SCsl6jGhOXVIjCMKno29fBUhQRZJnctiMoWEnuFy7N9cchFj2NPRZueS
 6IHvcikNLSE+Q2AlYNtwCjwBDP/Lx9kV/W1/YAzKMpkiJC7+vORjbOF2jdxZp1BzOLY63ecOrAs
 I81vrjUVpdpevrAvRBA==
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=69771c57 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qQZ2XtAyJf2dEkEvaVsA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259383-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7C68D851DF
X-Rspamd-Action: no action

Remove ctcu_get_active_port from CTCU module and add it to the core
framework.

The port number is crucial for the CTCU device to identify which ETR
it serves. With the port number we can correctly get required parameters
of the CTCU device in TMC module.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c      | 24 +++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-ctcu-core.c | 19 +-----------------
 drivers/hwtracing/coresight/coresight-priv.h      |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index c660cf8adb1c..5f55f0c510e4 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -585,6 +585,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_in_port: Find the input port number at @remote where the @csdev
+ * device is connected to.
+ *
+ * @csdev: csdev of the device.
+ * @remote: csdev of the remote device which is connected to @csdev.
+ *
+ * Return: port number upon success or -EINVAL for fail.
+ */
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote)
+{
+	struct coresight_platform_data *pdata = remote->pdata;
+	int i;
+
+	for (i = 0; i < pdata->nr_inconns; ++i) {
+		if (pdata->in_conns[i]->src_dev == csdev)
+			return pdata->in_conns[i]->dest_port;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_in_port);
+
 u32 coresight_get_sink_id(struct coresight_device *csdev)
 {
 	if (!csdev->ea)
diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index abed15eb72b4..78be783b3cb2 100644
--- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
+++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
@@ -118,23 +118,6 @@ static int __ctcu_set_etr_traceid(struct coresight_device *csdev, u8 traceid, in
 	return 0;
 }
 
-/*
- * Searching the sink device from helper's view in case there are multiple helper devices
- * connected to the sink device.
- */
-static int ctcu_get_active_port(struct coresight_device *sink, struct coresight_device *helper)
-{
-	struct coresight_platform_data *pdata = helper->pdata;
-	int i;
-
-	for (i = 0; i < pdata->nr_inconns; ++i) {
-		if (pdata->in_conns[i]->src_dev == sink)
-			return pdata->in_conns[i]->dest_port;
-	}
-
-	return -EINVAL;
-}
-
 static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight_path *path,
 				bool enable)
 {
@@ -147,7 +130,7 @@ static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight
 		return -EINVAL;
 	}
 
-	port_num = ctcu_get_active_port(sink, csdev);
+	port_num = coresight_get_in_port(sink, csdev);
 	if (port_num < 0)
 		return -EINVAL;
 
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index fd896ac07942..cbf80b83e5ce 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -155,6 +155,8 @@ void coresight_remove_links(struct coresight_device *orig,
 u32 coresight_get_sink_id(struct coresight_device *csdev);
 void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);

-- 
2.34.1



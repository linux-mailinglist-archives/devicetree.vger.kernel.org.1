Return-Path: <devicetree+bounces-258033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KD+CL2MKcWmPcQAAu9opvQ
	(envelope-from <devicetree+bounces-258033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:18:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D205A6B5
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:18:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A892980D97A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594BA399A73;
	Wed, 21 Jan 2026 16:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DxoGDr0G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BYzAE/ft"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A912F36AB78
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769011369; cv=none; b=WsQw2cUV7mCDpVVptXXZyI7SL2TEiN5vb6ycluiw9wpywhMuAVB9CGqxbE5VDitAYbJu8zxdJolLIHo8mVuSaPGRD5lU9rMzevEL7l+K02Vs6EIN9R2UNYpfR/eJ1ZPz6g7fC1GXrWD1P0SN1J+pux0wjxKjas6rNEXZ1YqWskY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769011369; c=relaxed/simple;
	bh=PaTkkbTLymilZT5IHeccGXhs5FbYXmRp0kXnIdLl+/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=TFr4M3b5KqWS7Ygnytnwp3BkgLN90qntFeHMGZpGWJCQ0UHgye32AeGnraejcvsxBGracbd+YUh2GevucnfRB/9F4K6GUAIR9ZTL6VBjFRGE+EIPk5aHi+925p1Ms+NdiA9Ao0ljlIgh327zue3TSnovU8SlPIzw8mI9Pa+ytD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DxoGDr0G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BYzAE/ft; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9uj222840468
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:02:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=aMdXQSvss6tWFyMGcNBPhn
	c7uNK1YRXhNFqpjDjbWyo=; b=DxoGDr0GkOfW2gIbT31Uz4ZqrMqx2/E5LGQbyM
	RumwKOKl8XAi3mebUuhlcrDRXWDNZOS4zg86xfbrczh10X16bAi/DeYJxnvPDjTW
	2NEVeNvgp61UWDbaeY5pBfWpEcMb09Nj0xY7W2COoLuJ3fQyGmRA5geanm5BOGsH
	6QqzjpJC4Um8ZTypX72LqL4oJF+3g3IVeFeSHPgNL9GmT7BlrJAo30PWvR1B9r4U
	20YaugDfvhM8DN1FW9NT7noOwpZ7a1eJI7P5VlD+Xt0qHKMYSQR3zJyFCjg37yVR
	gNs/kwNV72K01edCnY1p3sFuZycL1olbFIM6Py/J2KqoxJow==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqm1tqpy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:02:46 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c38781efcso21250a91.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769011366; x=1769616166; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aMdXQSvss6tWFyMGcNBPhnc7uNK1YRXhNFqpjDjbWyo=;
        b=BYzAE/ftWKWx6k7w2It0WncDWxTMeUK/a2Vt4DTHw65hpQN9KktuNhWufPRzNI6x4/
         EL2TfkewxZDnRA872j3TfAidjuRpZsG5UKCdMK3dNBfluMp4MmABb+UisSDwY06gXl2Y
         RpEkd4xD1srsVqn5QqbZ3bAHOeGxfsOa2SODcYnCGJOjTozi5dQdEZC31iKouEoqruEo
         6h9kzL/n+Ag97Zfw330c69DFB8AZHizuE8VjILRr2MnGbaDuHHLcJl4Ekk1w8TqCpNC4
         P/5Zic9r6Q8R1dZT2Zqi4JKwDMB515yCZYW3l0viqJedLkcRqQepuROLL57eRTFhU1wK
         W4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769011366; x=1769616166;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aMdXQSvss6tWFyMGcNBPhnc7uNK1YRXhNFqpjDjbWyo=;
        b=oaO9cnJXc2waF5ZlHVOsEBM0ONsDWYdtGnFjMcbmfw4OK06EVeX0KIafThCkM2x7Vf
         nhD3+0x/NxX2lAiHveigT+/ZM44FhXU7ASLDEV7UpXEYIGydCJAsmDF8ZRpvwX8dalcD
         rcbopwfnyMo6MlA1dfIeEi9kkmfM/elu7JRzesrekQ/wVLMvRvoo5k2gjabP12vraX/B
         wpTXd+YwGN55dXoU3YN5HmWBwclUM+vj2QeWD9UI2mMhX6rUeP0uJLQ5/6Ny8WbfTIpW
         +GvZjlcqbKRzRQpYZpKyYQlwWhq7r1C1tms9irQs93r8VJoTLEjaMWs7O9OnNTawizew
         cqSA==
X-Forwarded-Encrypted: i=1; AJvYcCVo+UXVdWfUImF5gyINKjnT8qnsv3Am9eoq9pwRCKR4NOL9iC6iwRtYmdPvmbpTyi5W+QSB3P6R/8VD@vger.kernel.org
X-Gm-Message-State: AOJu0YwrfG9f+xzN5xcmgL9x1xvuao7YYqrIDBEDtbOPl3zcH5PmtoeX
	GPD9tJZLphfkbCfiFiS65TNU6fb5xa2k19OhZonuGAFKML4U+n2bZKLohnXO4t42iygemukmzzw
	iYjjHab71/+i/vBfYp9BxfjB/hCk7sFEtdridaeEskXRsM4HrDI4lmE9oUqNAVmZl
X-Gm-Gg: AZuq6aI1W9kSBs1OA04NXaesA3ArWT4BNyb5+DoSj0HgvvSQs8vEmCjX/I/QFx6ADoy
	R9izAAzCFrbiKP/p1np/99Uq9x+mhSL4p7dxsEFqzSXZx82FfVp7Y7EMKtQYQOlmhxq3RFe+dw3
	0M3CFU79RQ/QmWi9/oeuZ79vDG+MTvil2bEsKTK9byWyLoKsgVOZ2MtVJmnF9ZeqK/4LJNl9ypF
	otnez33Mrnr+oc51WKms2cphoy4Id0+M09DDB7Qp1CO/9KL9wzoESGeEYRDgJ9DQDQ8h3wEgiJR
	mYuv60SUpbC9a7BRm8bQ08bedn3fGaZQzjomT+kjVH0CBUwNr+rKn4odEGBdHMyMI5nD3xP8t35
	caHHaWSaFPwN/VsUpxL9ZcDJ8WgWJArNsfA==
X-Received: by 2002:a17:90b:50cb:b0:352:d59a:b28 with SMTP id 98e67ed59e1d1-352d59a0c07mr3968745a91.19.1769011365389;
        Wed, 21 Jan 2026 08:02:45 -0800 (PST)
X-Received: by 2002:a17:90b:50cb:b0:352:d59a:b28 with SMTP id 98e67ed59e1d1-352d59a0c07mr3968652a91.19.1769011363854;
        Wed, 21 Jan 2026 08:02:43 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353032f5e46sm1123495a91.7.2026.01.21.08.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 08:02:43 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 21:31:57 +0530
Subject: [PATCH v5] drm/msm/a8xx: Add UBWC v6 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-kaana-gpu-support-v5-1-984848af12e4@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAHT4cGkC/3XQzY6DIBQF4FcxrIeWH63aVd9jMguES0tmEAtq2
 jS+e281mXRBF5AcyP044UESRAeJHIsHiTC75EKPofoqiL6o/gzUGcxEMFGxVrT0V6le0fMw0TQ
 NQ4gj5dwIrhuruNEE54YI1t1W8/tnyxGuE9Ljdkg6lYDq4L0bj0UEH/Bib6KnPvk9LtrDbSSv2
 YtLY4j3td7M1+GtiWSZJjOnjNaykqxjNWNgTiGl3XVSf6/Hdrit6Cz+Ic55FhIIdWB5o7SpoC0
 /QPIdKnOQRKgVkjFdA/6R/QCV71CTg0qEmgNA10ArbXfIQMuyPAHCiVk30AEAAA==
X-Change-ID: 20250929-kaana-gpu-support-11d21c8fa1dc
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769011355; l=1710;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=PaTkkbTLymilZT5IHeccGXhs5FbYXmRp0kXnIdLl+/0=;
 b=rXu9YJKS9ujSb5yaEUR2l2aYorjvlsWV7pynHqrZWZahhpAS72Vx7fVtv4Qe6+d7fBolYwErJ
 VKSvfw4oiHkCxTeAcGIyxWG23AW5Gb6Kk9n8pIY61s6/gq+UvyO+cuO
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEzNSBTYWx0ZWRfXwNVqSUMNuWtd
 lv3GVHQgTZkvI1KCAvro79O3R47wC/2xS7VEgJd+BiUdjCwYmRpDINeX4j98wb8GeFjoxkdUqE2
 G0kTzx2kxNAd8IVU5DLxf2cnXlNP2TqAhgKoGOfgmwC1xT+FkntzCr0ASmu1X74i1JroASD78LT
 5z7xwJmVdR3LD0e0M1EXg8Ui+la8utf8ZPs+Nhgz5ACloJZazMYZCliN/4OEhpa3H32C5ZtY2pL
 NkD7GJjC92fGAnfXVf/ENc/DV22FTTr6+uBU2oyMYIn/ygFdsRRn5I5Q0Ctqep7KKIDEkxirixS
 WqU2tLfgEkR2ndOCGjsq9S9ws9W9eZD6Q5q2NNOG4LSRaGf/9UN+8m0QAewybaxn7uDizyWmRaU
 cRSEbhXlWsvLjLXTU78GxY8OVGJ49VoNuicTjix4vhavMAJBuAoRRa4Xt+dcSLz2+wDt34BpCcj
 KP4PBlXOFQJGdy+1kHg==
X-Proofpoint-ORIG-GUID: xswqL8zKwnHlJQWjogfm6WYsdTmEri4E
X-Authority-Analysis: v=2.4 cv=dtnWylg4 c=1 sm=1 tr=0 ts=6970f8a6 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=dVXzBuOjJOJ3YG4SI_cA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: xswqL8zKwnHlJQWjogfm6WYsdTmEri4E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210135
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[30];
	TAGGED_FROM(0.00)[bounces-258033-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,marek.ca,cosmicpenguin.net,arm.com,8bytes.org,linux.intel.com,suse.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 31D205A6B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Adreno 840 GPU supports UBWC v6. Add support for this.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
<< Trimmed the cover letter since b4 folds it into the single patch >>

This series adds the A8xx HWL along with Adreno 840 GPU support to the
drm-msm driver. A8x is the next generation in the Adreno family,
featuring a significant hardware design change. A major update to the
design is the introduction of 'Slice' architecture. Slices are sort of
mini-GPUs within the GPU which are more independent in processing Graphics
and compute workloads. Also, in addition to the BV and BR pipe we saw in
A7x, CP has more concurrency with additional pipes.

The single pending patch in this series in now ready to pick up into
the msm-next.
---
Changes in v5:
- Dropped merged patches
- Rebased on top of msm-next tip
- Link to v4: https://lore.kernel.org/r/20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com
---
 drivers/gpu/drm/msm/adreno/a8xx_gpu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
index 30de078e9dfd..5a320f5bde41 100644
--- a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
@@ -276,6 +276,10 @@ static void a8xx_set_ubwc_config(struct msm_gpu *gpu)
 	u8 uavflagprd_inv = 2;
 
 	switch (ubwc_version) {
+	case UBWC_6_0:
+		yuvnotcomptofc = true;
+		mode = 5;
+		break;
 	case UBWC_5_0:
 		amsbc = true;
 		rgb565_predicator = true;

---
base-commit: f185076da44c774241a16a82a7773ece3c1c607b
change-id: 20250929-kaana-gpu-support-11d21c8fa1dc

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>



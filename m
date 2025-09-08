Return-Path: <devicetree+bounces-214567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C03C1B49A3C
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 21:41:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B469E1BC3877
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 19:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DDEC2D3743;
	Mon,  8 Sep 2025 19:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lgqyV29G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BFC2D3731
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 19:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757360443; cv=none; b=Q/ZSkmKyf/O07ReleSJ4kf7RErMg7/5Z3e2QPbT5tZ4oL1KbaaDPEuYeUMarVdrDtcyDFOyru8t0VXv+RDJ1erbhZsB5cSijfXILAwlpFtuB3ZlRJ7RkRMXAUqNBSpPKPzhZun42kRadz3gEMnMoeBBwDkURP3YtPS55FcUifek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757360443; c=relaxed/simple;
	bh=lvtizlHL6MS7eo9olZSEO8tIpxGFiSCKBoj2b3IlTA0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zl/DMOUuhmH4OZsbeD51HIpRdDi6PYqKV+tPbjbRPD+UorpvrVxJjJ/WGIkdNFeif1EhJlYlgJXq5YszdGmRTGbYlcurBUtvC3zxvlMz2m6KcNrhbRWk6/E9/z9AFaJ60zXJF2OwirEaVc826fF+IeypGwduoH1ONRqRU1UDoSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lgqyV29G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588DaMh8005771
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 19:40:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uTuT+xoD9CIqTmF+XCt73ZauYNq2xf3D0o4LX/E4JG4=; b=lgqyV29GjHtaOz98
	j31pX7LQOhqqQdK99hk8E+D3dUQ17/bU4U7DBBkykSmXIw0G717diPeebyFLTNUJ
	2Ees1UDXmGjwxpOJtGAWiznZmo0tel3Q7IJtSm8sGVi8eIfVet+rCH4o0bIgMlTo
	QqJaRYlL9vXSAdpRRCUIC1a/HE2e6QOze40i+lLfuxpMf3haMnRxKf2iPLf+fo5A
	kCy+DaMGf1HG+U+ZbGm3XAgcqxsflSH3XzRX5+yrpgw8gQjBvwgvdAInzq88wsp+
	4D17U+CPc6f4K0FGktx3sdGIveuEvn+KrRFSz5cD4RInW1udeKZdWbmyKRbeDaip
	uQbwXA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37t8nj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 19:40:40 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-329dbf4476cso4355679a91.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 12:40:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757360440; x=1757965240;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uTuT+xoD9CIqTmF+XCt73ZauYNq2xf3D0o4LX/E4JG4=;
        b=uCPrvxtp624GhkcNHQbK0hjzDJKrziyLu5ZH6b85aECzYJNWJLmg8BfjHJR5buJ/dg
         i9TN+POejDvKjKalxF6ffmRPZtPZUtoFf36P3JeALUFlfIlFD/fAoYTcHCRfm44RCKJ/
         LlnjjFyyAhlUgfVDihpazz7aWJ7KdsoZSJBklJLP/Cl8hnzvDvPrqzfm+EcUmy0XjygE
         CVYNvgaO9bcNmj6hVXZOf9bZSS0/GGC6LUBJotLM4R5xrWlCl0mqXP1Hy7o0u0RQBwWy
         zrJXtXr3prvuiZV7/2kuHpbn173PGgIawqUWIDti77hzQudmAymetLy/piNm0O79tSYS
         vqtQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtXm4qPJjEz0uABMeJA49Eu3aCSe9zYlrJfCJ5JGyJboJSEa4oR49maH49pdcN9CJ5fcfBS+Jp6Bkf@vger.kernel.org
X-Gm-Message-State: AOJu0YzqqfTJOjr25ikMCRRFfxJNP9Abv5YnRpNBfZWkFIZqO4UWnk0p
	jRChkenjWs8LmTxdUxkGjpeATdmCgKPM4wLm5uA7Zi5dwGc4luY3lwKR91+HZ81uHvPrNY+iAYS
	VI69ygjhAvtSGmAUiPNUf2el1gzB50ZSJcwxcCs4kzF2Dt5fU16LvDXzyAgpMD4qf
X-Gm-Gg: ASbGncsm2LjJzg4q4xuuKLk/bQaaqm/xF+pVFPq1AnJqyM9Ux6EZZL+AlixD0OMjEqw
	xJ2yyt77iy/Y9rKq3NC+M5IZ9ISWPB74NTUbB2v15Km9LKRZgzbyrvGpiZUrirKaXk+6rez6wSe
	xpb8Cr59GTl517vupJPlN4SK+cB/e2QS3+eyGgT7+wDcX2lfAcxBs9EM3gKUHNRkrZ8KpUglSF/
	MgerV/kc7QD0HpL8qY3Das69WHDL8zfc2AMNnJAR7+eIp4TGgE1Z+L7UbDPyIVD5B76sxAKEj1d
	lzozV2b2aoB9QJN8BXdRF+3Aobbgo6rGT9llZkVGLJD2j1B9hzODk4HPHLs1E4+p
X-Received: by 2002:a17:903:2ac5:b0:24e:3cf2:2450 with SMTP id d9443c01a7336-2516c895cc2mr111481605ad.2.1757360439754;
        Mon, 08 Sep 2025 12:40:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7MS/PGj46/9DijhTLrv8zPpQ7yn0ZAGwHCLanL16Jyq5ouQQYBZXugxHzfIk1x6pg9d969w==
X-Received: by 2002:a17:903:2ac5:b0:24e:3cf2:2450 with SMTP id d9443c01a7336-2516c895cc2mr111481185ad.2.1757360439166;
        Mon, 08 Sep 2025 12:40:39 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ced7ea5e8sm104008475ad.104.2025.09.08.12.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 12:40:38 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 09 Sep 2025 01:09:40 +0530
Subject: [PATCH v5 5/6] arm64: dts: qcom: lemans-evk: Enable Adreno 663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-a663-gpu-support-v5-5-761fa0a876bf@oss.qualcomm.com>
References: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
In-Reply-To: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757360399; l=802;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=lvtizlHL6MS7eo9olZSEO8tIpxGFiSCKBoj2b3IlTA0=;
 b=z27gs7lVGN1/JHmpToK7GI94Hpg3Rn7lWyfFRiOlLXXusxcWd+QIBI1E1Jw96DmemJ6yUs8id
 ewGQDr/ctEYBnUuG7WfVeLnHEXtf5X+Ajb+uW1zDO4nwuX68ThPjkkS
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: RjsrfJSNAvKjekH0GJdKEPl3uUb2uxic
X-Proofpoint-GUID: RjsrfJSNAvKjekH0GJdKEPl3uUb2uxic
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68bf3139 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX8Tau4NnG0Na2
 5Lqwhh9yJokuNQLqq2D45nyO2udoFBjJR0VZWXwWmWZzjAibytdn6V+RBERce9YHareGFUQgjlM
 KlB9wN5gypXRe3IGwgcRvO0XKy4LJjW0ZsyAIk5wjPUy2gfmUmTn7AENW5L/n56BI6yxVnYrx4K
 mo9DPRu7Og0bge9SfFYT3KHAAQ3hig605niPYxxnCHZFM34AEs3PTtvIgVDLzYy0q3MI8h8chl5
 Y7ebco/XBRuI/lxa0NLwiADfAUn11mKd4bUvwAQf9ziYO8iZfuq4odAMAtcs05rBxPxX5BdjxKZ
 hHpVHu+im3XToY8nUwpCHoDc82W82t2latEQrL4S3fOS+g/Z564h6hJyZNPwq1CmaYqocirB5ZH
 ScnuBPWQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

Enable GPU for lemans-evk platform and provide path for zap
shader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 669ac52f4cf6aece72141416068268531fd9f79a..876f43d761870b968e43ea1ecc360b4403f19fef 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -253,6 +253,14 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/sa8775p/a663_zap.mbn";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };

-- 
2.50.1



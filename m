Return-Path: <devicetree+bounces-235339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A26C3708A
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 18:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1364189C4CA
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 17:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D928E33E342;
	Wed,  5 Nov 2025 17:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FDp2Vvcc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IcatfDzd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A94233DEC9
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 17:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762362735; cv=none; b=Sr4MHmyHvZG0Znxn/K/bD6pJS3w4lPP4Qv+GOnKiNwbOT+ynSynoc/m0RX5slDm4JN3irzj9w+ulnBnxRHhN2uenKLmuOJJc6Hm6bb50nkdyWUgMEgfZQQjLWn/a1CFF26lC1u2Pgkcqs8v7EKrFrzCejbvk11iXmN3cyH5yhtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762362735; c=relaxed/simple;
	bh=ya263B/ZSqT4MVjFdASA/QB9AUBc/m4QKS8TyGIHwqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MSNSEGkchYH7nJ8Y4JRvyGgfS6UlvUQqLA6RJnJkodKQSI/lVazEYrw6RCN0inTkwtCAg5eMUcV+bU5NYrkIFpgxuz+ZYoPsNO+R3czkVYE5KJ1Cleng8emyJYfnP+TGaH3k53sDWS2tmJi6tWJjAYWh6yS3eS9lFJ/qPdfg+5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FDp2Vvcc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IcatfDzd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5E8Ebo876748
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 17:12:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Js4xfc8+ozAN4gatGrEl/M6dM+koKQCIKD1ockMt0Kk=; b=FDp2Vvcc5kkhMu1x
	kf+ZCCrdvjVFJ6zIQVALqwYHAcCxlZJ739V2v6S5i7Ole7c5Wm5WQarbdZTPp4qJ
	Xaohmz+Y5q3rWUQhdapN2BmHa7+F0eockQ8mxHS5YOcAMfV8MFlS7Yxy2ol9uKTl
	7/e3z4M/6y3mwIexaqlsiD2efdW17toS+qnjDHixvqBaLCcndf0z7iAyR5w/xI49
	l3f2DLmoBKPiQPGbyW1SiQOgejroc2mHh9lOGmDtbNNjcvpeZN9evY5rFoxHCCc9
	/E8kpYm+tMyNefzo60SmbDIytDPNkuYBNQumO8w1wLjnv8bJ/8IZYt11Qo0UQuCK
	tqLiVg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a88318kp7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 17:12:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2956a694b47so884455ad.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762362733; x=1762967533; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Js4xfc8+ozAN4gatGrEl/M6dM+koKQCIKD1ockMt0Kk=;
        b=IcatfDzduOUZFaGx/uc/fqVpErdDpeTyRg5LcNAeGHWcF+i0pqVskNUtnBLBjp+PLr
         19IPwconizR513bcRdaw+X5u7vLUSAvNapAjvSQRT8Z+0DsOhNvn2PYJEIzZn+SrICuY
         ROnUL4nA5Cje03+o2t2GLHtvNGBz9VuHXJN/X6j3Nd1Wwgzl4xJna8kWSpuiNnKCEjUy
         t6aPvt38N/ctPToWj2+6G6sobzOtMJmP4lIDTxnqO0IxMm5y9GGtF+nP/NUhYvX6y2Si
         9O24QEu34CdmV+8hT/vff1oT17ptfSYeR31H+eqQSpaCd1+1Gke/RsYe1/88dijTo3e9
         gzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762362733; x=1762967533;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Js4xfc8+ozAN4gatGrEl/M6dM+koKQCIKD1ockMt0Kk=;
        b=pkwuw+dJ0WpgFzOjhinZD+Ftwm4aIapUPXaR4PkaNGAAtgSKgEcZEu/jh3KCgIl5d6
         FllMN2GUjWBHfh3ElTVA9mmQswxKuuHg+cPFWalvPdwTyiDmkIlpe5teG0DRMj+Blo/m
         p3TAujQamzZe/iyNW8npYZ+EVxBxf4kcTE5gwzqUuWFusrRpM2FEDpN6oNocoWvDLWYr
         bY14C6qi7k+89DnohDtTeGSUGOylNIVS2huQwlulWf0XNG5BlVTmGwe9QPQqbYh/zQJU
         wS7ozPVIR2bUU+hDUKFIOoNI5yJ7jwux9nn3wbzbg0ijBth0BTi4SyFArOGEHhwE++67
         vo+g==
X-Forwarded-Encrypted: i=1; AJvYcCWsJijBx/Mlfl12PQLEk+jUaAgNkK3Zn9FLAUWuk6VmIjCu8ioUVgdnhj+dTtF6XHFZanRTfR7wczrY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz+5m/jEPD8bwV4uXHztw8jCgdBL46YTzfRnZ84/9ND2ZcCM/9
	+rAwwYk5RcnEcugl2dv4IiGSVol7wojBqR997bJu6Khu1fFTXuTsZ+YtqEGAAFO6TQyGRHrfPcV
	SMSNE/YVU0od1prP+biD+aSxH93dFmhiDxVnl0uenhCcQQ5SAfjktRY+YL68bZojg
X-Gm-Gg: ASbGncv1fhbZ3eYRDwzSzLM3sDE/Kdzj8CwB87HbWOod1hq5b1Zf6HDqdMx6vqAu9vE
	/ma62nZMgkYD56SLn/7aDMA968vsToRyH4p13Cp38hQy63MtMiZIOy5M2Wd9cT7Vh81EYk2KpDM
	sdiFJHaf1nZ/5VOi8KCJwV1ZvgV9UEeUN+AaJDM24zrUdEy+ToH5YjA7yU5qVWkFInRIvO29uvf
	1Cb9UdJayBwXHtDAAd1ISyfDQVSDLLuKSvFymPAcOycYosFBMyQkxTLwXVYktAEcLp9x7pZ74Bt
	BDmgk3s/ECuo8hq7tlSpoTIwObTLIMmJi0Kw+H+L+0p7CVMiS/ovSizNuqnuJPzWJQDttzrVRrZ
	8JvuLmRRqCqCaTtvcl93Ltew=
X-Received: by 2002:a17:902:f609:b0:26d:58d6:3fb2 with SMTP id d9443c01a7336-2962adb413bmr44339305ad.12.1762362732600;
        Wed, 05 Nov 2025 09:12:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuEDjsIFDrY2gegEIb7NYgjqogYlaMPvPO8F5SsTXlPwaMngvCVHdiskWFWbz25o5v+MPfZA==
X-Received: by 2002:a17:902:f609:b0:26d:58d6:3fb2 with SMTP id d9443c01a7336-2962adb413bmr44338975ad.12.1762362732090;
        Wed, 05 Nov 2025 09:12:12 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5e3c5sm813955ad.43.2025.11.05.09.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 09:12:11 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 05 Nov 2025 22:41:35 +0530
Subject: [PATCH v8 4/4] arm64: dts: qcom: qcs9100-ride: Enable Adreno 663
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-a663-gpu-support-v8-4-62a7aaa551e3@oss.qualcomm.com>
References: <20251105-a663-gpu-support-v8-0-62a7aaa551e3@oss.qualcomm.com>
In-Reply-To: <20251105-a663-gpu-support-v8-0-62a7aaa551e3@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762362697; l=879;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=ya263B/ZSqT4MVjFdASA/QB9AUBc/m4QKS8TyGIHwqI=;
 b=IAZEIZIGmwKj0WtzWs0RoGHvuDSjQGmW4oW6OqfFnAKUQc+91elEGHBsnIoEEKB68amq7aAIr
 I0L2SKafqXXCjmeD8fC0tQrFvKPIk1XB/cwyo5KsIqVzxklYv9BZXUr
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: viHF8dIEZNmYOl44tYmXrw4ZiM0ApU_-
X-Proofpoint-GUID: viHF8dIEZNmYOl44tYmXrw4ZiM0ApU_-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDEzNCBTYWx0ZWRfXygguiqPrabPM
 FZNyDs4aDpSBk9GJiHfJjPJhbz7HJUXMNogOdXu0smQHOiVe8XbYkLvxIL/pVOl2ilFPkaeJXv6
 ewecj4QYrfBGZIpKRxP1M+oMP6J/2AnqFW5x4AxjkanEHKCSKSTKicUrqbQ3u7uxC49fmaYc6w/
 sxqUJD93CiX8NMIq2CvwClXeueeEl9+eAMTuN6bHBzzkI32/nVOlFfR9KBbWfnig/MQZNKa6Nuy
 3ylqAXHl7sYdl25zG/Ww6U02Q1WGgtAzR48bDK3SM7qVGmOs7iUu7eDqikvm7uK1ZeKxY/IsME7
 HI6we1xcEwQkAAFqOM1ahVsfftUhoVdst+OFBk4BxwQ/XAGKh6QqmXoZTe5vtB0kRGds2qo3Rj8
 TxiVCX5qCtxyCQvIFUqqKYODdcmZ/w==
X-Authority-Analysis: v=2.4 cv=Mdhhep/f c=1 sm=1 tr=0 ts=690b856d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 suspectscore=0 spamscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050134

Enable GPU on both qcs9100-ride platforms and provide the path
for zap shader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index c69aa2f41ce29f9f841cc6e6651a8efc38690e19..8fb7d1fc6d563288288d24eb5d8288e7748f2c16 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -436,6 +436,14 @@ vreg_l8e: ldo8 {
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
 &i2c11 {
 	clock-frequency = <400000>;
 	status = "okay";

-- 
2.51.0



Return-Path: <devicetree+bounces-235323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A569C36D28
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 474D64FDFD8
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5810133DEC9;
	Wed,  5 Nov 2025 16:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jnQv5Fds";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lm62RBcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB4E33C537
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762361199; cv=none; b=eI16+3+Ok3xR3a30/xudd/tmOX4aZPtZbBBHwQgX94Wlki/F7ezw8/GZGOcIQ40DF5M1oiHnD5zHj1O4rBcGX4TPEL9KkX7o54QjYeaJegero+BfUf531dXJfWcMqgFCil593R0EMrnlWCe/Dxe1SZbSpTDF+DjbrFocxD1W9OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762361199; c=relaxed/simple;
	bh=QygCnmXl5Esc5BPNyYe6tgH6/RC9PgKmXDBI3B/5l+4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ufPZrwDvXoZx3Ttij+8JKVSH8gquR7afYbzmmjNdBv4l/pEZ5SZeqJfEZqRf2mjQ3ZsoVnN+XnGS3Vr5wppYKT2xtX6e7szabX7yetlkAQvy5NcaZ2kirjvxVQf3RAdbCslcgXR7OOsK97X9lsHwdWj9QK60lW/5NFIivJEWdzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jnQv5Fds; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lm62RBcl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5DB1sK4056209
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 16:46:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sJFOrjhFJZHkN7hWb6jUgTkGNx4wTKXUTuj6Z9f24XU=; b=jnQv5Fds5DZ66Zry
	IvEzoBTbpAmxm3Blk120fyRbtP0En3+vWCNKbpcPwQX1Fj+O96uxXgs+LB66h4lf
	6yHEDzMzedtzY0DTKt22ScHUDXr45zH6TeU9NxHGwbcPeZSBdw33j/5fz7BxiQwS
	WjfFtovv7k4shYJj2uiTEdpJi3PwLo40h+Npnl+XYeHLDn/+un/Na1CtWAy3+iIr
	OoBuXOQq2zS0fLg8arQlmt+u5NVsP10Tp3T1rVrkTxl4czG1MMnu90djVWXamARR
	//kE+VxVSM3+7n0/wi77orDia9+SYl4nePF4qLcd+QNUhSWEGsH4295dTv7TpT/L
	WMIPJQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7yp61xqj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 16:46:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-341616a6fb7so83811a91.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762361195; x=1762965995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sJFOrjhFJZHkN7hWb6jUgTkGNx4wTKXUTuj6Z9f24XU=;
        b=Lm62RBclHQvKg0ihtZlga0nBwXtg3q2U/M/qQAwVDpqV30Z2gJF6HoCx7eLOhtukwe
         DYOL+KSZiGNTeuya2mcrf1zfkJsJeybetojnK95lV8yBtWZ/+aDjZo3n6Zm+ED4ArDhJ
         B/gT6OPrPwl25kLjTezB9Uxyr0IkKaYvf9PsAAb3GIVms9IybRjQz2ms+xnV9OczhxkK
         0p3rdmKSNFTERQIfm+wns7zGpoGJRmJ94b6ove9hlB8IW/h6dv2gVaIx/YrsdA+Umj1z
         3i++tj9Z0UVlMXoHuDY3sbZzK9hck9YjyNbPupfPxZ/Tr6JpMrJLcAUbDiPGJIPcSfyD
         dykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762361195; x=1762965995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sJFOrjhFJZHkN7hWb6jUgTkGNx4wTKXUTuj6Z9f24XU=;
        b=Iwdl+pk4Fa/w2a3JJpC5lixrsb0m2DN66qSF07b2omJo8XvtPDPR2cX+7eMxEtdzly
         tKcSrcYp7WFMtH9Caw0kSFW/5Eeya/z9e7cf6pLSARm3quZzabN8SUq5wu335pxzdVL3
         IpkUgWa1BOM4ZTOev1CmMT0vEr4SkS1NHao2GbIoUjf/mxySRO+eS/hUp/RcAPMeWcLS
         LGPPi7xHcTzFNW1WS9gcOesqONxP6uc7okPrekxifb5SdtSGvLsjd2OdAXDOfxNJUcbu
         ORST9gxfy2aBPOClcTLPSfbGIQi9nvP1ivq381g1CjtPcoKQfYT60ZqB8WYdtHtJ55sf
         AwEw==
X-Forwarded-Encrypted: i=1; AJvYcCXy/o5UoZHOUWwyAoo0gTKpEgpdQGcuppm9QsK0VhpTSKCCnAI9PrxHto3cECjhWZhodV8nWbxCrO9S@vger.kernel.org
X-Gm-Message-State: AOJu0YyOXUOK/d1blRQhD/GW5WA4DWoRVY/hafHds/Md7XIg4NI73DUX
	scXFjCEbpsKdc6FvXME8muQiD5sH5FOlyqEsq8Rg0OIqHaTNaDPjpZVWbjm8hhyBLi8vmJ0mXe9
	00+ZRm33sxsXoq6CfWiV8ygntY3AEzgkEAlkjLCQB2HE936BFH7OERRHROszL7p40
X-Gm-Gg: ASbGncucToj1rek4aVspe2658C7LbOCrYhvyebSq97djcqFaxYAO/EDbAETxyBynUWX
	y8HmmR4glng1R7FxOKxwpnxIhPzEdoGhgibxcCn/VOiwhEwh6FPh3P//y3tGppk+VGIg2p/yvGJ
	MkjIjl1P0s38pA6NZn7ekj0O27GWpzOkTGy/ZgkfFOJshmagaRkb5aKCZDQfSzkismwg+uJa2Hi
	Y26oOjYCLtJWzF9oAyMFRccmug+2oHd1W8CFopI5QY2Er9/4zAF7dLbmlzOALhqglCLQSj1RN6l
	tFJX5tTQqc2/f4NH+iKTvVLs2I+IsYiAUmMcHug+yvQ2AIQeiYXMegcujyBSXhtQ2B2U3bL943I
	9DSm5FqQvc2cSyoR87idc+XE=
X-Received: by 2002:a17:902:c947:b0:295:7b8c:6622 with SMTP id d9443c01a7336-2962ad10486mr59682285ad.11.1762361195348;
        Wed, 05 Nov 2025 08:46:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYVpEn9p7yDIsAYp1aZP87Bdl/2uK5TgZtdjIwNg03NFpwQ20p/nGpKGX/x/FLTLX8/vHeGw==
X-Received: by 2002:a17:902:c947:b0:295:7b8c:6622 with SMTP id d9443c01a7336-2962ad10486mr59681825ad.11.1762361194676;
        Wed, 05 Nov 2025 08:46:34 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68c822dsm3426249a91.8.2025.11.05.08.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:46:33 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 05 Nov 2025 22:15:48 +0530
Subject: [PATCH v7 4/5] arm64: dts: qcom: lemans-evk: Enable Adreno 663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-a663-gpu-support-v7-4-1bcf7f151125@oss.qualcomm.com>
References: <20251105-a663-gpu-support-v7-0-1bcf7f151125@oss.qualcomm.com>
In-Reply-To: <20251105-a663-gpu-support-v7-0-1bcf7f151125@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762361159; l=804;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=QygCnmXl5Esc5BPNyYe6tgH6/RC9PgKmXDBI3B/5l+4=;
 b=kkr/m55E2zuEnA2RDfM9Hl+ewlE6yBtGv8M1mz14zrUkkvyLGc1oQRrfOQuIGcFm462YtTEbc
 +q/796q/1FHCFP/yO+/k9iCY1uPTdpFDahQ0z7BN/arcIQwhtr7ayCa
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: MJnPgONUyPBz_t0Fkckr-ro7Q69xHOUd
X-Proofpoint-ORIG-GUID: MJnPgONUyPBz_t0Fkckr-ro7Q69xHOUd
X-Authority-Analysis: v=2.4 cv=TsrrRTXh c=1 sm=1 tr=0 ts=690b7f6c cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDEyOSBTYWx0ZWRfX8TeVObnXqEbm
 R5YFlqUyWRxNrFWgIHBr6aGjiOZ3C7D/AouTEWeRb2hwLDzaaAiNVpdrzkJnV4R3FJDio3EEsuy
 +JKIShK9arUklt3tFCRxZm7IGo+faPgi0WHPZ41j/zItJIg4Y6QNGKB9p7grQ3PDQOw2PE99ZEX
 uqh65xkNtwOKSmVpvNiZAefL9NhHIWWoDhPt4mkqA6s6Rg+bSMENmcXC4i7rIoxsMv/22zNBqP5
 GGtBQu4i/gJcmMt4pUQcL7+Rh/UQwTCFEliqVV2TxouOLH/SflVVhrKZAqxSlbQD0hR7ZOYkxjC
 m22hl/MPoRoMhh24T/r9Ogoa9KUbFmZXlvsEGnNnqMhrqHnLMqtML7mcNf8YOg10LpKkz0QXF06
 VJ4unksSEisDS4STs6s2g4rR9Y3p3g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050129

Enable GPU for lemans-evk platform and provide path for zap
shader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index b40fa203e4a2f080f501140fd1c68b72d797fd00..28bf152f5fa8e8d7779904986da1a5c2f06a5909 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -454,6 +454,14 @@ &gpi_dma2 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/sa8775p/a663_zap.mbn";
+};
+
 &i2c18 {
 	status = "okay";
 

-- 
2.51.0



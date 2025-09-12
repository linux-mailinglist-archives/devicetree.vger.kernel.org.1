Return-Path: <devicetree+bounces-216318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EEBB5457C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 546773BF009
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE352D5941;
	Fri, 12 Sep 2025 08:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TZANaUjs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DF6275861
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665962; cv=none; b=nbTf/9fuK2ywgMOcsF+llYgCInxYhrz4Kk0ii7KfzFmjriY0X8+yuwPnUaehfHMDiufoWe1+lFBWNxlAZPUGcytzWLCDgWpxYckLRaum+TchSqXvIJ2tO5tnP1Je4Re5zqgWccX5b+rFx8xj5wmHtn7wh9fs/3sMRmT/gCCEqzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665962; c=relaxed/simple;
	bh=fD8gmiEfvHWqA/qKuJvc+eRI/STX56LOgZaEfMt7N+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tDuF2Dl99lG6nT9x5t1sktn7TkDO5KIejSHvCDv6QP7IOT5ZP3t9JoeNxTmP5W6k3Q2GWrh74dgeN2Lhr1uExPIAJoTb590r8Ap6f+Kx/yya0zcNDfCaOxnROwiLKeAUV7DCjHjAOi9aelC3shvKQhaG+SOXXaSqwcgyUbDjMYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TZANaUjs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C7Du7U006035
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Bwb/aCh+px1
	clBI7DNv6FaMGNCjRZCn6kYUkRggRljo=; b=TZANaUjsoea1z3esiiiMIIvhj1v
	3mZyeePcLnYZRkr9l8e2FzgRlJ17P9BZq0CrH3gpU2ghreeu7Piy407W3mS4byph
	0o/orDLKbiIotBitphoXnmoLd3YXOALwPTkwIua48hMU3CJNby554cNAUhGQRqhc
	HpvQ2WAxRDxKHs0IQKB+WmGpDdMn+Zf27nh7mqVPwPHeSY6WaMvSx9zFpiOGSAku
	KQe+kVXmYW+N3/orWE6Hgg2R8+TpXFpxAb+gzRIFw5ZHtpHrWIrp4aSqEYF39Qt/
	VnugbOe5yjGt343NPlTQ15sMQC2I/3pyCuIODZvOY0CQYhwyL6gxhE36d/Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8aju1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:40 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-71ffd145fa9so39782706d6.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:32:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665959; x=1758270759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bwb/aCh+px1clBI7DNv6FaMGNCjRZCn6kYUkRggRljo=;
        b=f1f12u+W76T5vN4OenFaT0NoWhMKYZNCUkaqSD5vUBXoF8uyvT518rU18LU7aCK4km
         FDuZv6L3EkEYXQmBYwfjs8n60Reh2HHMqwXkNim4C02DHLQOxcA/oNti64Q49PqvJ/Ro
         mq2pZO/cp+oCCYNOIV/m0230BaCVaoWkJyeyNppfWqMqqUdpaNPQ5Ddu+NHweUmtE6Eq
         ZLk+dwkbQV0Ur1xj35UOqdhmL4Kd/BMREUdGleg+2AynR/o43qVP/IFNfD2M54oEmYqU
         eDP2jV67+DQ9MGf7as2ePxYtytvBp/l8vWjPAWJbrnpNc39YsNn5VVk3TAgX2ArCRdXy
         EuIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHlEFvrkpcmUI/Mgnnqb3+q/E47N8cS2xqHUucAhwjw2SX+pTYjI6x279mSuWl00jCRMAN1uAFNisc@vger.kernel.org
X-Gm-Message-State: AOJu0YyA2wL7BGQF7Avhz3d2NTRNg1BFB3WXGPTZrqO3JTtWgPSWjDn2
	+xne77Zcy9CzMDVrHDah33mv828lCtijU38K1niROSDZlmLQef/4bTSOpLrMLjgU0Ur0BhTocxZ
	xcbKF3f5w1ETb+SgjdZ6qwj/XcofgnIFwG1E6FzwHKNqwNVMXDwrJ9bIEyOMSnBsk
X-Gm-Gg: ASbGncsyxbTKBu4+nE0V+mBHal4yf0jDdbiI5Fylc1pbKa5cmZxzKeoq/5irRbqkhk9
	cM7DysvTewFlTWSWDXUvrfVeoPrCksOotah8tSzlXbnNyB9O/81MRIeo7RRN22NxJhHBcep2l56
	FfXAYRT1uQzqIDrub9TNePAjRH/I5uce5U0R9t0RqEEOLNDa2Rlec1K/I69WMZaCT86f+s1s4TE
	MKZ0nk1o0Y77wTNB8oauiDI0FJir/VW+1Gg/Wxzfg4wNBZ81qtsI0lHpZGiV0kR7YJV8o4yl01N
	CyC78SCpWcpnsfK/pxQwZBTLJUX5OTc7NAppj7ZpJrbUsNJqE9O9Jw==
X-Received: by 2002:a05:6214:cac:b0:719:44be:3fc1 with SMTP id 6a1803df08f44-767ba92fce0mr25430356d6.1.1757665959318;
        Fri, 12 Sep 2025 01:32:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa5DR34k3lvL9ybEJKoRTvbdPXiLG74+0N+qX4CK7QBfFv1g8JdBNxPvO1hEh4nac2FcXzsQ==
X-Received: by 2002:a05:6214:cac:b0:719:44be:3fc1 with SMTP id 6a1803df08f44-767ba92fce0mr25430176d6.1.1757665958905;
        Fri, 12 Sep 2025 01:32:38 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017c1dd3sm31247265e9.2.2025.09.12.01.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:32:38 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alexey.klimov@linaro.org,
        linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 6/7] dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
Date: Fri, 12 Sep 2025 09:32:24 +0100
Message-ID: <20250912083225.228778-7-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c3daa8 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=W-ialWlWjSFIadUgVrgA:9
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 3oBNluS9Ou4gYWsAGlv7E0o4ZYC7MVWh
X-Proofpoint-ORIG-GUID: 3oBNluS9Ou4gYWsAGlv7E0o4ZYC7MVWh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX1dOvNOnZyILE
 sI4FkldroBozYUJhr0WddbUA1qatBX2g9QsedkBKc7SZgFO8od4HjwmdjS265XA++JzTw9Lf9n2
 i/o9K834izVpPTOLSSsvYpCuwqbTJtpoghraz2LXkegd6PA8UB8HpMEr/91zdBYDNNiRvKiwH4q
 HCVVjNyGV90xROm+r8E74MuzzP2y7JqQdg0Y7pDeZDJ4ZQFiLphqlzdE2AfsgtYipwXL4SgP6MB
 nirxka91zGINOWS7HBmtIEEHIvFKQ2/7VS1UksAVSbPegfZrg788cET0qMYHzGeyoeizogDdOif
 APvXxxrf2c/iMa9SgEDRxG9K7xpktTPyeee7P8be3kGVfIVaLnvx8XNZMhicUd5DtWlbsaDcH8w
 wyWztzW1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

Add bindings for Soundwire controllers v3.1.0, which is available on
Qualcomm Glymur SoC.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 7ea491f7e828..003023729fb8 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -23,6 +23,7 @@ properties:
           - qcom,soundwire-v1.6.0
           - qcom,soundwire-v1.7.0
           - qcom,soundwire-v2.0.0
+          - qcom,soundwire-v3.1.0
       - items:
           - enum:
               - qcom,soundwire-v2.1.0
-- 
2.50.0



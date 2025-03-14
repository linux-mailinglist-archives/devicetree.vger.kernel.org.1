Return-Path: <devicetree+bounces-157407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F7BA608DE
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 07:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 542A219C3B1C
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 06:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D4C189BBB;
	Fri, 14 Mar 2025 06:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pjnzSZ01"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF201802AB
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741932574; cv=none; b=QSornnA9a0zVEblLg+bRBxJhEIznW55P7tcR95vm8VCzqzR+lyvrXTH7NmnybLlopac8biWo8s/uA92qCri76qGLR+1VD3EtOoOrZWS0V4MYGDfSM1x9YzjhTkhzO75pi0B2a6FTy5LjG8JNSreIB4n01SOvslAjs7mpRXglWso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741932574; c=relaxed/simple;
	bh=Y9uutO6VV3TG77pyFKkBldePkthNdxaT024tE84FCsw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qF8d2EpqrWdLzP6mkO42BJ96Bf7gsI28/P6HHFj0O1a4kWr98ngXiu0O8gd6nkr4iVcmaCrxRhhwFQq9x8HN02TX08US2jW2WjK9YqNFRpEH/1+kRdY5qEBIEwBYqDhY2kTLvGrsABkmwg24S5yXGo/AcsD0HSy8BOzQPFsD/+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pjnzSZ01; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DMwMuA020131
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:09:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2dtqbcPgqz2zJYzOOCZPN2LLL9rO3nXwWq5S6LuNoqs=; b=pjnzSZ01vk/TMjkF
	Bm2kG5fPbjGNKWfuZwPSAbfcmAHrtgXJC8vfAl+4v4E7qsrII3VA35fee6Xr/3W+
	kY6Cam63IQKDpadwnzTKWLq7gJCLFSi63fcFIDbPYHXIQkg8rIilM/l0deEQQ58G
	54LOoUQaBe086FsiQyZRFJrqeMQGhkLPFXkI+/5YswfBuRkV5AbOGw8Goynar0bq
	B3mGDi1N0+NLkKP0jJm7JEmBeleU0Ep5YnJuJcBRCccNZJ+9sVqcElktkG2mdioq
	BtMFFblM4Xn8tnCjuxliFZK0ztAmsYlUOAIPoXqU2s7mfBY6CFtXhPnjjWn2J0Fg
	IoCqbQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2p87xw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:09:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4766e03b92bso34831181cf.2
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 23:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741932571; x=1742537371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2dtqbcPgqz2zJYzOOCZPN2LLL9rO3nXwWq5S6LuNoqs=;
        b=VTGLBcieFX3C6VMEVsdVnSLsVcyzj1qEQ7ZNs296FCgG3zdNmPn/PlAfEh56TOIBDR
         yprrFy5pkEb1pVr5HSTStD4YUx3wBjErIYM+2f6NkOw8YYruV2lLqT/4ra+7MaNgNtLn
         xTAqXZoI9JQpnzc7ik8m3Uce8KN6nTQsWInMQvNnsoHnEtY9JSfY9ZuqOPf2DivmsEfs
         MJL2YilqxQyRz6koX7ZT9sD91uIEqWs6xKJaxsu7743xZPncygpbs4vEZp72p3YhfQd2
         9jhSY5lJTqesQH8q6eNzAfmuSH1wKQ1c1E/DqM9+5BGVEwyexcMQqpcThOvDb1SuY1XJ
         MdYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNb/e8NjnuS7cHmtPYZs1a5s1y9VZa2qKzQSfT9aPkBP/ka0GEKnfHbxtz65cONL5P8WCgaCC60+yv@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb3iqI8QCUAi9OiHukAI5x22Z+/sxQC7R1RIkMtszLy146gv4Z
	+4fQHoPFTygDpPjzI3S2BLbUwC73grIcd628VfZtt9FpCBDWEwW7UJwB99Du0J8KHQX9TInK4Fn
	xZxCW5TZ5uj2Al99mqEi6y05qXmYVZ4JmV/79pv4+qD6v3K+AmcxfMYdsJw5r
X-Gm-Gg: ASbGncvPE5DO0cw4GjkbLdKUPbhz4Y2+cH3g/eBt/CuvdFjp4zMAl/zkr//ZYrmxqMC
	0nQkzsU9IwW/GV3MbmM2vb0oqtkelqgCHNQ+2wnjrCemqaMgC9uq/YgyyEaC1aT+G73jbBaMo+d
	v1RJDNEJQ2MfqO4fA+dB5gIT757wtcqWEO7UEhboBHvJGmGWA2YPU28/UvcGSILKdmMvIa/94F5
	e6tKwixJ7WSBWMe362OFq2DpSrS9bwMm7tyHSS5BHgpkex3RsyR/r3NXvN/6HxJlJJ/tZeL9UdY
	LGpjLHi482WheT8Fnh29tYLRKoUg/Fdx5Ue8XUcNGTOpldV5Hfy5iC4AXgKtTygsZ4JHwu5gfn5
	HDH4//84jhdYawWzm3RJWgb59WZAX
X-Received: by 2002:ac8:5954:0:b0:472:bbb:1bab with SMTP id d75a77b69052e-476c8145813mr17081401cf.24.1741932570855;
        Thu, 13 Mar 2025 23:09:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH260pJeUc22MhT6rD0bio6WhMorUYYNuiZnT9Z2ORqDCJ/y51ul3PorQ3OfzBE81hTKSadBQ==
X-Received: by 2002:ac8:5954:0:b0:472:bbb:1bab with SMTP id d75a77b69052e-476c8145813mr17081101cf.24.1741932570528;
        Thu, 13 Mar 2025 23:09:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba864fc9sm416071e87.140.2025.03.13.23.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 23:09:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 14 Mar 2025 08:09:08 +0200
Subject: [PATCH v2 04/10] dt-bindings: display/msm: qcom,sc7280-dpu:
 describe SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-sar2130p-display-v2-4-31fa4502a850@oss.qualcomm.com>
References: <20250314-sar2130p-display-v2-0-31fa4502a850@oss.qualcomm.com>
In-Reply-To: <20250314-sar2130p-display-v2-0-31fa4502a850@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=934;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=IJ0quqH+dI7r+sJavUIADWzzAqD1L2X/CIVzw9kCDtE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn08gGqFLhwkIP78GCaN5+I3f8E6dKF01pKeTbK
 il1RzKvccSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9PIBgAKCRCLPIo+Aiko
 1aOBB/95nl6CSCnSesI/x7l9g5ItoVw6gz9ZJfbqmsmz6EcNq5HU8Ah6zuEeWEZ9FZkuXTdwPpO
 3hSVf8iWngNgvtNYrWtzPvuL0kgvBxCknVGi7UGTODVP7wQdiMkGHuprgttGOuwUtuTQdnaVEox
 c725Qy1jsZFc/vrHwENUmVlPY9jEy8FLVUL15nIf3jfJs3nPieKZZ14CS5rSRj1tNl87Z28Ptui
 OGGmqQ0dUvTPpXc+BDtYROhVwf6Cn1SXpHICVciEGCgHV4acRGq3hRiMReJ8mBVcLh9+JNxf2MZ
 K1QGuFu/x9v2lJUmKK/SyVegMWoWSraUm7U8wWAt/ZXzlcvS
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=HP/DFptv c=1 sm=1 tr=0 ts=67d3c81b cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=P0d4iQPpJQof_2lRNe4A:9 a=QEXdDO2ut3YA:10 a=eRSyEd_ZPWdY3HzJaUvg:22
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: j9RUy-EWFs0giLcw9Jpp16ncWLIL2yGw
X-Proofpoint-GUID: j9RUy-EWFs0giLcw9Jpp16ncWLIL2yGw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=885
 clxscore=1015 priorityscore=1501 adultscore=0 impostorscore=0
 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140047

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Describe DPU controller present on Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
index 6902795b4e2c249c2b543c1c5350f739a30553f2..df9ec15ad6c3ca1f77bebaab19ffa3adb985733d 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
@@ -17,6 +17,7 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-dpu
       - qcom,sc7280-dpu
       - qcom,sc8280xp-dpu
       - qcom,sm8350-dpu

-- 
2.39.5



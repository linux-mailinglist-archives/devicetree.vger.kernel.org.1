Return-Path: <devicetree+bounces-252668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 302A4D01B52
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 09:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DADBC3036CAA
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB573644C1;
	Thu,  8 Jan 2026 08:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V/NgMbHG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CZDmPd9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0860B35F8CC
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862680; cv=none; b=bE8pBHfj9G9jZIzkdrchNi5w434YcqbBlspCOB2faA3YKkJeAJnjoYAuFQ1kepmS62xgLssV925YGRvSb4M8jOfEqyPJDsidVY1uj0vRKBVg7dOLvgxKxK76BIJUNitl7QSxcy44gJT1MQSfScUxd6RtWBz9pvzXoOhuvXY9sbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862680; c=relaxed/simple;
	bh=DFWgyPJMXnYq9tT2E5rWliTY17udrbfSo0iJAuFRiog=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BFyOmoI2PI13+wystLEPXPy6TqsRvrDpQVmaMGsh0QJgcUfb/KDso+lXArFtfGFWvE5slsy0+KQ6nn6Acoa/yIKJExVTLyLQlUnE/3dGIj0slsl6zXfRaJSv/Z1ARMNFdX+8OoZk6tXtADb90qVNN/tdyqton4iIFBJ5T6g9buk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V/NgMbHG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CZDmPd9Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6084aBbV3751537
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:57:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NRZ5PDF9RBE
	hUcKxfeiWyFu1TAhirkb+W51QleGLBP4=; b=V/NgMbHGwytnHcwRH+OIQIbn5sb
	g1pDt8phGBBmNuweA9cE5zhRdgAEOLbiKoBpoAFK3N4pFhjJAQh9+WuCgaqPQr8H
	ePDxx+Lfl8/v1CMv6dKFJU//sbNaGu/uE0St/HIRBgaro9CpLvnholPbJ80UZNBe
	tcx+PAS6r8voI/Lliaq0fLXGSuV4oMn+QRneWqVaA73yQ8/5zPTt/EpNffygC0Ue
	ux2Z4ubAz7Tlri/6eYKHaq3ELsR+Zes/mt/dFDMoTu2ArCc9eFg+PKdG43BImoAS
	39JJ+TL+9euaH/H894Uf6awGPsPRQL1aKM1O+94JqXrma1qalJ8SvgZcazg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuxctjh1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:57:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2f0be2cf0so463516285a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862669; x=1768467469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRZ5PDF9RBEhUcKxfeiWyFu1TAhirkb+W51QleGLBP4=;
        b=CZDmPd9QwsXQbfBBUim5ZNdCmfROSx6a7JSUo/KKXuKgzuOWjuKFTLl2LxXPVhatOt
         Liie1iXT81aR93n77l8gDyNsUOhvjLTmTh7V/UX8uN3OrHcmbeFJEvhiNGOf+mcUVBg/
         9S/+9OOlrdTT1ncviOhZJ9Ej2vMP7hCRMwtrcPK55/H2M1Puzt/ZK5kbUr6Jd2SvhC9G
         LWDdo1JSxmqdZWNIARaddl5ZNeq0YO2P9qAjbO+5KiOKvthaFz9ZpNhtjnxeEiDjPTn9
         IfkQgW+02wQ9FDQC32wULqE62PRDU1uyW7UWqkaRi21Xte6jXk1rbmodIjuF9OBRxTeb
         wfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862669; x=1768467469;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NRZ5PDF9RBEhUcKxfeiWyFu1TAhirkb+W51QleGLBP4=;
        b=CnfSrBMhubPiYNKunvl1Yy7389eiSvlRtGE0RvumQWNFQeRbHufIETvZdhdJWF+qPH
         oN5ScVIOR5zEmJD6JqHr2cVChrxWhzCXWqxEVE1YJ9e5tmkKYpbaXEcEjZnaFoht37jv
         a4ier8XYBNxhvV5JcWvjuikTwYLque4J7zTgKDmYqflzeSNvoijxENbDJIXp1nfTwlN+
         l/BSZILRIRSoz2kae8NrGyGeU6VFUUSL5E94/nMn91UoDaQBmK+ZuQG5nLkKXeGLkDIL
         HkVURN0LZrUIPNzrH07rl5FEgXx7uIoMcvd2cxWP3Oql/slH35pfP//s29qmsiR/NpiO
         IykA==
X-Forwarded-Encrypted: i=1; AJvYcCXRkYJdVJSa1S1KEhpyeQJfjMDFZvbkCWGkCgwAnhb+srHF5PVIlty/IxSA3yddLeiHylEtunVlb8zw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1sZmzvd43LVSpi0UY1+EGeCYB0qXxjfQ5lukSndowLxkD8ryu
	Tjq08Xbw4+3GhBqseh5UYzg2/LQ3+7qAgZ1bFe95PsGdy4gy8xcFZT2nCCGauK4ZaGYiyUjf6CY
	VSG5FBlafYx1zTTCQPtKbWRgbFGUhTem7el5LCV8EZrCHU/7n2Yl3OE2E/S8MF/6N
X-Gm-Gg: AY/fxX4jgkjULcXJ/cR1huNmHyK6wx2xHU5qEwdhPgTUf/lCfcv08goRp10zkFbkSsB
	pBWqtpTb46rvLlTGhkMN1bD68l94yl3FdLzRAo5RN7qYaaYSDd3+Y42XzoldPXTR51gln9Wj8un
	3ly3KdXLzO2hPZPfrT84JT84Ch5a/2Z84kIiLSAtyNJbSSnwgKgqNxhkS49qJtbiNMqklChTPXn
	Nbz76OLD5PchwNq4U3+yNDYNkhabr3eXkDPZr7qG8AYInWdBxpk1VcD8Gca+4a9K+cAu6qSNxM7
	0C5gGW0gV0qprxBsq0SO65jlcFA5TLkKNlJEXyOqmULK9w9VJmGxkauHcNBBcd18xHIyaEMWtm+
	QMmNGQgHF2ufAu/C2PrfnR3lpTslRhxTWoy4M9/j/Q7bmCBQdDvTlHvUVJLyhfBEZbuE=
X-Received: by 2002:a05:620a:298c:b0:8b2:e4f0:74c4 with SMTP id af79cd13be357-8c389425fadmr683908585a.84.1767862669515;
        Thu, 08 Jan 2026 00:57:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLLiQ2dezWmxrUQBvh6EJdewjfDR82QVVpGRNZoYXLCqohZhvAtKpz5cj7Yjy4V79SxksFKQ==
X-Received: by 2002:a05:620a:298c:b0:8b2:e4f0:74c4 with SMTP id af79cd13be357-8c389425fadmr683906985a.84.1767862669125;
        Thu, 08 Jan 2026 00:57:49 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.57.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:57:48 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 03/12] dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
Date: Thu,  8 Jan 2026 16:56:50 +0800
Message-Id: <20260108085659.790-4-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfXzrXa0UIbh4Q0
 xgCu7crLnDyARogPMt+oNxip9uzFF15oHnnUxFCmKUPkSpoJBSMPUN6RS/qwsCiZf4QWS7Z+xJV
 b4UgKW+HAQ5MXgGvQGhZmiKgqranrfMxWEI8Jiw2gUOnCQnojgo16sZnBHjcG1+vH2dR8J14G48
 R+aeuld15S+HajnLgSCMDPkeMmNyyH0+bziS5jBmKBRjnQeYPZ6yVyZA0r8WWpSsNzm9nOgUfso
 PxFBo74wONwK0x5pqzdMrOUf7n8WM+M/8V5lNfPk+9YlyBHc7FDhK9+Yh8FU5ZlFVXgYJOSoTSM
 bLBPFWgJJUl0PUPV6tCV+gND2er12Or4b1o+eiszNLYNAx2cpQBffDq2h175uWAnGpeF1Xdxfpm
 KLZl7yFNHtEOe3OctSHM7tKL9gxhe54Knr/Oybg/V2ZqJb5TN5A/tzkS0Gvq6dhkpx4WC1GEF2I
 nEzo+XnC25U3SMKJg3A==
X-Proofpoint-ORIG-GUID: 0a0kVwmTSBS1_jcJy1K1LzfoXfcLWXzf
X-Authority-Analysis: v=2.4 cv=SPdPlevH c=1 sm=1 tr=0 ts=695f718e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NRHHWUy0EX9jfUzwrTwA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 0a0kVwmTSBS1_jcJy1K1LzfoXfcLWXzf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080059

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The DSI registers on the Kaanapali platform differ from those on SM8750.
So add DSI for Kaanapali to compatible these changes.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 4400d4cce072..536ebf331828 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - qcom,apq8064-dsi-ctrl
+              - qcom,kaanapali-dsi-ctrl
               - qcom,msm8226-dsi-ctrl
               - qcom,msm8916-dsi-ctrl
               - qcom,msm8953-dsi-ctrl
@@ -369,6 +370,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-dsi-ctrl
               - qcom,sm8750-dsi-ctrl
     then:
       properties:
-- 
2.34.1



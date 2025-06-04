Return-Path: <devicetree+bounces-182762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA6BACDF6E
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:40:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C0C3188C7E3
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A980F290083;
	Wed,  4 Jun 2025 13:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SXOvKTaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1175228CF58
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749044435; cv=none; b=eRGZ4OQdD3oSjL7inl8nhAtovCaKD+QWhrK1wvgWHFtua2R0URfz4ad7tOeRlWkF/9S9GpD4qX1pgeRCV7tsjcpUeyZSVNpifydrBf+TxbLnnk+ODEOyqMMehmU1dj5J3q70jZ9fGOdkOJNCHLSLNKBN3PjHtwBoma2kTNmmRp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749044435; c=relaxed/simple;
	bh=QYQoyP/GIqzyc5A2IeL6llc0Sso66L78LWHvbYzZxoI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S4CjYqIDCYsXjLl7TNtCyfEI0+m+UnG8loLMFPcFrgzuCxec3LyCk+nOh6kjyRxBGGtCcrRKxVzY1FzXYgewN9celwMZ2IgxM/aTImPShNRpze1rKVlTwEY+d0POEJEFRED8Wlvs9NvqGpD1s6lEswKRsrRLGLAHI9L7iuiRJHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SXOvKTaz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5547vU6g028346
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 13:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uXmKJiGByL9+ymVDz5ljTwOGyAtWHSmObA8IFGGphwY=; b=SXOvKTaz0v5cjPdQ
	LWvUnG6eN3B/1GqCHWln7hDPQz60lZZOtsnmeoYCbeB6xSrzX+JSp2MBOK72Fe+H
	NbhuTjO5IFtekMlDG+szCMbq0bDSusA+u3oIZgbFsTKx6Ig1nCEBUHymg4uo+6pe
	nOySCKnt30Ioc22FG2w9crXzRFMg+kPVp6K2UwsyXsd6j8+Poyv8gRx8a/kdyrdV
	/LtfFuJUOB7dqsjnm7i7GyNvzl8y26JFp1vzWOtjthCWRn6Zcg6Yx/sAwAUcEj9K
	4uhq5mtIA34/bNf7wOBBbMeaCM8IYoqk0nhClkXWKF8RZJDHt6gEhfSr1SxXvowM
	LAehXA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8tx85e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 13:40:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0962035b7so1087689985a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 06:40:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749044432; x=1749649232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uXmKJiGByL9+ymVDz5ljTwOGyAtWHSmObA8IFGGphwY=;
        b=bT4GUwaW4k6K23W2x3N5egyGupVoVyRwgVmbzPPvzSWOjjQ1yLtUVBveEbZW97buAf
         B3MHiZUAZpvZCinuDRSYCcLbad2lwtTPArKFsU2T/0a3dwmeDZFEtyybby+j4SfEZZOF
         OuK9OETJ91ouWxoTcmEK2NsxE5bRr0HpjeIMZE0tS1zaYOT0xm2gb7FEhR9XeI/V0nha
         7oxo3Xl1cZ/A/OQqjdtDq167kaUq6OawEdHn+Go7Y3rc4qj4U+CWtV6jLQNZOHI77+/P
         L5iBfGCmxJl+n9zDhlk3V/6l4JGjnfpTd1Guv0JD92lolMGtFLOBesAx+XDcGhFWU7Ab
         F4uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaOfd0Se1rjUSb1Qbq5Y56FU/zL0hny8d0IncEchlAohDOeMjWOIPnxAfbmfV160RcBkIS5EtJPaCD@vger.kernel.org
X-Gm-Message-State: AOJu0YyCYIPOTRHrEOiIZaRNCkjmOyF61MKXSRHiBL3sy5BQ3+aH49Ec
	b2JBFATJRxHQBQeZHGsHq8ffsYdUgHmm6deATyrvNr8alCkHG0k/tdHDppxiHXyrHlgzIkQdsDr
	y5BDdjMHOV5nKIYLK+GwGLvTfVX1fdZ/Lqzap5VO4nQsLxGAIF/CEK50HgZXE/L5U
X-Gm-Gg: ASbGncs2/P3YH1Tr9/A0KnlTe9XqT5rZDa6Rfogl1H8QgmreozKdiJaT2mNAyG14Noe
	0+7ulb0JYB1Ms7Bg5vsg/E6LpUDqUhfMRYaKzLh77JjVSOs/09gT3DpPRSIIl91fKNAvmOQ4y5C
	VaMIX4qBvVb9IMixnCQqHf+DZsBCgmNcfCClCnjtxxpH/4FXLoP9WF/1jl0MpNdfYQ7j+8ah1Wc
	yUM0g9OENoyqRHHANPxvXgUt2nTkOsIEW8Djts7Yg9yTcJHCPgjFcbcCK3tUiaUABF/H4AP78mQ
	LeTNYQIcFn7biiMYiY3i3WY7IG+XFt8JihvcZECrlzS9Lqs7anmulXdVIbcg7TmrxLNHckf/EAF
	IpUaOzk6oz7Wp7KYyJ2HCLQkg
X-Received: by 2002:a05:620a:2901:b0:7c5:5d83:2ea8 with SMTP id af79cd13be357-7d2198e0590mr457241285a.34.1749044431977;
        Wed, 04 Jun 2025 06:40:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDuyyL4+BjepdFfkjsfwG/61Ndc2lP8nkESP6Honv24RSwh/eI1oIYSxqNNfv+mwA7d58ZCA==
X-Received: by 2002:a05:620a:2901:b0:7c5:5d83:2ea8 with SMTP id af79cd13be357-7d2198e0590mr457238585a.34.1749044431669;
        Wed, 04 Jun 2025 06:40:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533787d376sm2311966e87.28.2025.06.04.06.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 06:40:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 04 Jun 2025 16:40:28 +0300
Subject: [PATCH 1/2] dt-bindings: arm: qcom: add qcom,sm6150 fallback
 compatible to QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-qcs615-sm6150-v1-1-2f01fd46c365@oss.qualcomm.com>
References: <20250604-qcs615-sm6150-v1-0-2f01fd46c365@oss.qualcomm.com>
In-Reply-To: <20250604-qcs615-sm6150-v1-0-2f01fd46c365@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=990;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=QYQoyP/GIqzyc5A2IeL6llc0Sso66L78LWHvbYzZxoI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoQEzMFeLTQxhYDg4DSgk92Iv9ppADpsOoZ48fe
 U3X9NrCCNCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaEBMzAAKCRCLPIo+Aiko
 1XYVB/sF/4CuY8yvhkecvGbvfYCcZX81/DpAcY31MeaUso8Ivh4uYY5akj9zHA+IDd3+i8c0vRf
 1+57cSCy7TB38GC2dQEiDpeHfctPiRL0mjQyGZkaUBG6kS5owGAfJL8HjVGtUdGNHrz2vDa7mTG
 55q5B0S+i86Mb8iop/76Wufh9gQTOP+golhCirSqkejLrnqTtZv8qnSD7V9WSfioXkjaIHKPzUz
 Nqye1Qp5+Y73vq7eaBawY9x1YjdNeo1ue9tOn48OJS9VnUc6BmYCOmKMKkvm/ysV7Zxt3fQu08p
 oQRCuSl2VeD1FdKVU5lRIypzq2uGUefcJDVrek05cNt69Ueb
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: WuTA3FlCVkWEtLD5vkVxgn3D-HoCB6aK
X-Authority-Analysis: v=2.4 cv=Qspe3Uyd c=1 sm=1 tr=0 ts=68404cd0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=NDTdqBo84DM6fKfIBT0A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDEwNCBTYWx0ZWRfX0mCNJvopECz4
 /SfGwiDJuyQDS6wCLYEzbalaXqoxE3zuvRMZ7VCozpVzLRPnIMzquuYUTI8bWGT2F1C+Ikzsr1X
 j658nRguSFTrBysDs1fKMp5oBCUwBup0f1EI2IoVE2aB2LaoIqi8ofLNJDAB/MJB8g/BXRsIA05
 nroRMB7u0Q+XZ0qZY/pCPX3Z1Jzcp0n7VGuhINSBsr7qRGuewCS0UGLOJPfMr49TfwmSB1AAgVG
 bjZhnlGk27f5AUmh1D/eNYZrI1tN91Z/gzbcysM6Jx6kyBEP/Lkmj6BS/X3d8vta7Bd8GybTVBU
 iPCxVuEPfbkggNJH6dk+SGi8Zr6HCaE33VfQBUDqLrVTp/xmbmQXwNXRoDCwGGB4tZEydjFhxN/
 Q53YO0xdkr9CNjkYb2lRtlAMkDKn2vdkZ3Q2yrnTDTjzsQ0iREO2FwKz61vt8D8w3nnJmSU8
X-Proofpoint-ORIG-GUID: WuTA3FlCVkWEtLD5vkVxgn3D-HoCB6aK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_03,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 priorityscore=1501 mlxlogscore=987
 lowpriorityscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 adultscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040104

QCS615 SoC is based on the earlier mobile chip SM6150. Add corresponding
compatible string to follow established practice for IoT chips.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 56f78f0f3803fedcb6422efd6adec3bbc81c2e03..a4725c7d877d8074985e257c5e35869ce610aec9 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -87,6 +87,7 @@ description: |
         sm6115
         sm6115p
         sm6125
+        sm6150
         sm6350
         sm6375
         sm7125
@@ -943,6 +944,7 @@ properties:
           - enum:
               - qcom,qcs615-ride
           - const: qcom,qcs615
+          - const: qcom,sm6150
 
       - items:
           - enum:

-- 
2.39.5



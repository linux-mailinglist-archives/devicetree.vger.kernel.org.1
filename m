Return-Path: <devicetree+bounces-231001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A39ADC08773
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B6B704EDFD8
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ECF3202C30;
	Sat, 25 Oct 2025 00:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AkQv0Szv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD57D1E5B72
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353281; cv=none; b=XbZCcQtvsMffibJR+DJR3RzqIf/HEYltOqiNXyjAIcVcvp0Py1m622Z3LW0Y47fHQwFMNqwLC/0t87xC4OYr73ACWgjEGovd+91WAl4jmiIdtvVnEpU81+rP/+dSb9gHI1ZCeWv2s4HGWgavx/0k8vS0TLbMJtDUmJtARX1uiDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353281; c=relaxed/simple;
	bh=Gtdks5sRRWP0qS8krG8tAarK9vtdzRhuSLSFgbJ+Fo4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RfE+4yphs/kmR77HtyuBMon2l/4AKul9uskstILf8HHLgjqnM+IM+5c1Lptg3lHN3UifBci6NKPiVv4C3D+B4v57Rw5jITIRLqEcyjsk5m45XNmhBA6iVPqvxIJhPkw+zpueB3sNlM+3BE2vCZAqlFbxFNWvI3Yz3QD1ugiI2TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AkQv0Szv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lJLG014385
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FpyZ/jEjKaSYlOYj3phtrHzSdLTemRurqojrELo3sr0=; b=AkQv0Szv4Ej/OXo/
	AZPNHECa5l27fFbHMTS0AJgXWLFeUG0neqXN5Yy2WPy9yD0RzMdt8M+CN7SE9vwb
	RxQIf6A1RZsmT7jvnkbx2j+MdAodPa9VJ9Z/zppXJN0CGBocTL0smF71uUEHAFMp
	CxdJATyDdZ1MHsw2gkzHV5etUTMZZ/b/rKH2ZhDbxQdwTVLyATRL46V6jPJoa9tH
	e44acU+qmwjeHqM7u0Tr4E9aLdQE8fXsG2puvJy41bjVfug42t1kOe45RqidrKCy
	nFkkuq6/6tJaCUNAXAzyW4WeyNEJTjDGEQj62ZHUnEizWD+TTYQOzUDx3qXlhGLm
	dVjU0w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8dj96-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:58 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eddb7e714so2277699a91.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:47:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353278; x=1761958078;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FpyZ/jEjKaSYlOYj3phtrHzSdLTemRurqojrELo3sr0=;
        b=bsaVJN+mW7nNTEQ6qXxaSOy6DDc4ofDk4V1nsI/pGOWh8XbSUJLOE+jR2tGhJ1//7Z
         Zzvm/g1QokcjJynO75lTtm4ZsNhzoVUHH2HKln5zpgDFxdQhF8hWyt1Xy178F495d2A+
         +xPbLkwHbufmQkUxfsiuBge06HW9ETLnMLlvieZ24MoudctTeEmGDArQRQ+S17BXlWXM
         DyfymsPtfM2DlKNNvmw2JbPlzdnWQF3jSrIWROWxVExEbENz6wpW1dcTyqFEDE5oygyw
         MybVh0vx1pNWsFL8mgiZEe31ORXKq6JsirCr6MO/WcPeSSIuIx1WUCWBMNVtZS1hnXJY
         WB3A==
X-Forwarded-Encrypted: i=1; AJvYcCU6PqFIVm3401yrHDgG5/5wSmXZeNenDzLEMn9/lUML7OfTh91kL1zrJoKETp6t7H+JtG7dpyhdUe8X@vger.kernel.org
X-Gm-Message-State: AOJu0YzrH3lc+raXy4TczC7XJJfqFkas4GyBdX2AMukW5rI2GSI7POH/
	CHhtPHwjF0e7nx8K78uV9uxkp+ALZbn6aIS7Q9EiVEqhQn+WT/FMqTYS0lqKxOZ4DNxlfhiL/ti
	H0tvi94RM0qUhC7myrrVMLGtc6V16FpdsR85gqT9t4lz8Q1/DLXmjygDxBs0RVOI8
X-Gm-Gg: ASbGncu7QyXpL/ms9gGfOE266uNEal6inYnNfecQKFzF4f51zu6jyg5aMb+uoNmrWIP
	I1+F4fxMv172OP+ejIRe3YqfF7ZJeDsgiLjOoNES9AQcdYUUJBBL4NxNr6WA4HONM/EtdCSBZyx
	iAl0tlGxVG5KpmVEnuHyJ9GyQfQ9CVvHsXIcZlI/5aI7ExZ96+ZrrBkTp+pGWChbnpqH3s/O5T3
	dg94hi/W3vbm/cFGdYFc07FCUBEvq7JYE8IASNb0MBONfvz4tS4W9a+LsKVB+q5vbYMKEwt09Be
	9ivMzFlmax3WTBLbidU0FLfT5EfzwaUbv7AaK4Bkk9bXJVRIbKJpTfQkx9Z4NW+QKYU58+DFlsx
	1Ak6NLXc8KAcQoiJzwEURV4+TyEzT418MtqxJTn+klgANaCjoFxE=
X-Received: by 2002:a17:90b:2788:b0:33b:c995:5d92 with SMTP id 98e67ed59e1d1-33fafc44ab6mr9447531a91.32.1761353277723;
        Fri, 24 Oct 2025 17:47:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYH/5TsIqZuEFZIG1UZ4ueu672sDXLlIYwgUMrBT51DhoBhrAhbJdQmAPUmoGjktbLGq4fuQ==
X-Received: by 2002:a17:90b:2788:b0:33b:c995:5d92 with SMTP id 98e67ed59e1d1-33fafc44ab6mr9447502a91.32.1761353277293;
        Fri, 24 Oct 2025 17:47:57 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:56 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:41 -0700
Subject: [PATCH v6 3/8] dt-bindings: phy: qcom-m31-eusb2: Add Glymur
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-glymur_usb-v6-3-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX8S+3FeEsA+a+
 mpTBuVTNGbMjDmnoOGlSRAu2/qTOW53CpDRI2O5vMXhpkqrfTsXvI7ljUaMvuRRJgJKGg0UF3ym
 SMvR9bE8ATDvebh/zkZ8CT202mHuxY+QYRoONsTeQcTILqNsVaMEL0WcLKQ0SELRy+O2hBHEXv9
 LNzuKVlL99SiPoxfwIGT+Ga0NWsFsZHz6LoorEVDZ2SKkQ1QBNeDZ/bYwYq21QUhsBYeINAWx9x
 7bXYfLKOfr3AH5FI3EX/gMJfd3sZuhpBuhkrU4w+6/Ur2J6P9ZO7EdGNCpwKrAm3idU8mLOMvYj
 jPYuGRFgHjzryETO1VjAT+A5x1b95hohtefiEgCGnhVKyuBtC69PP9FVwRES+QwUGbiPABMUvrh
 uuSLfKs9dv0pTe09yR0T0wDbWnBCBg==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fc1e3e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=mc96eN7qxqRGlWWVoSgA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 4ne16qWqMq5XfmEfwPRq1eYjjoYdo-Jy
X-Proofpoint-ORIG-GUID: 4ne16qWqMq5XfmEfwPRq1eYjjoYdo-Jy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..409803874c97 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1



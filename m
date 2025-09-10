Return-Path: <devicetree+bounces-215323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 736B6B5120D
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:03:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FCD81C24FD2
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5912B3128B0;
	Wed, 10 Sep 2025 09:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="neNxnRtX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2054312826
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757494987; cv=none; b=gRI0Ni3ms54pnFqkg/q2r6ECmZnRhPueExzS265zeiJrZsR+glcKAaWT1NpNtTL8RsbMU9GScQ6BTsVCry4rsNbJ6b+uaEBZtmOHEa1SaPgNa1RrRT9cnMDjAvGi2KOt3XlQcCSI5JFbY0v/sVX8JP1JuvXTKi3/EnhbOW+NVRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757494987; c=relaxed/simple;
	bh=NXrL4UfXMaolOBQBaqURajfxc0T5HCU6PJBeG4E7Tcg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AnK/9irOAckN+yTKnnC35s8johJGspk33Pf4wMjn+MZLZ9rto0TDd2s23WYd+JC87rp34gvxJKzKgl11CbEzIPh+DOV31e5lMkQjMY+BYq4ceBlwx11MqQGXuDiTOZpoURFin9zeNvjzHOfbdlYrQFksXD1sKhmqZDdcuMCrm7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=neNxnRtX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58A7cmI1006828
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yZxweSgSo8wMha1h5lg1sSuavNRyAYwcoiGnGqC+L6o=; b=neNxnRtXpWz0EzPT
	yW40z+TjcW2i//Kg4jKdsz3C52mCoOJvHlw5rhGIoYJgXTU6gi8+W3BUTF6X2XtU
	TxtePJ81teiNdjQqaYGdM5GqYeLalD2JPcBXmrcsq10+SCU0jMJc8vG7yHUwY701
	mMKHwHxGLHDOZ26CZZLxg1dtKK78grPptTSrr+NnBQAw8Yma+ufw54H5oNKtUE6t
	5A111WttJ8OOCm1O/j+tP91YCbaLwapcF+V7MHwza0a6shij302AYWWMXKZy5bc4
	/meor6xWwOOjEhrTbzGIn9b0dnQgi4gka5hw/FOO7gu1/L9OnDh4Xb4b/KkSpf4g
	n/1y9Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc27acy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:03:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24ced7cfa07so67670215ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757494983; x=1758099783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yZxweSgSo8wMha1h5lg1sSuavNRyAYwcoiGnGqC+L6o=;
        b=nlWOYCN/OnHUmTBag/4oNXVLECDsf4+AZTNjhzVe+RYqup9LicB4qFBVEv4U58yVze
         32tb+Dj6IHO927qCNLo2Jt1VhkD9v8POh5sOOKWO3vviPnpX7FiE+6gKVT63CmHnCnUc
         1nZb3B411nDZBH9sgjCoUNMF4vzaWbJ7VzmmNX07Hq2VHnVJml/prsPAWHAXn+bLUMZu
         OSLv7APcy3WGwveexKInVY5izBeJjcWONDLAsO851mCfE8cHzM55jhuHhFG83v86vx5a
         GrCFBrENsqd+8QRTyoDcUb3/qKSL/y8HGeqpcI9/al0yixSDd8UwCSNKUfgmdyMdHLCs
         EIhg==
X-Forwarded-Encrypted: i=1; AJvYcCVw+NpMOdGCJgZoipjKehRCl7Gi+YwmhptEFfQGeuzDmOr5kqqxvuEtq9y+/asMt0lvVQPQtRLi3VAm@vger.kernel.org
X-Gm-Message-State: AOJu0YxY+DEHTS3UJQCbLDQQoW3GgNAtA4G8rcEs6qrEs4uHUqmP73+h
	fXDRxSvIpneFJ6xSTZ4Wu1W0QG/3foyac5fOESQrXcLDuwEY7WmahcBol1SchYUg+/UaoOAaY63
	5g9w23jn5hwW2flw3g9m9b0XHR957xPvjE9YrAjV8QqGjw/1Ix2peutJqw5XmMWL0
X-Gm-Gg: ASbGncuDpu6End7/zrUDW2U9ocO7DBg/jFNZQCeFG28Rhw3SPRBisCddCZwxwsh4CqH
	LQ111uRxgw7wnoqP1OOA+FUm+uAy/Uf26q5/RQp4wrVNNHTr5Uip484h5D28aekNYXuGS6WzBLC
	74pEym/b3EBnq7Os5cs9OOuAKwdDT2yYh7XEZiVF3LTRoor/JFygLWzfvUa5E32idhHjVpqsv1A
	OSmzeh3G+V/9jqmJ65xwjT4quIGexfKZcHNLlNxpuXZ5Tc+hJ/82ks8L7dqPae+0aIs75WLoAFF
	NKUu3xeKih5xCdTULK4NzOdozKKY8X1RFhjZwIkTBu0tBKnEM15ToC3VkWbkpFrIjMIjVFhjZix
	Pohz98EC5yXvlGtptJDZCuyrbygiAJiZTVg==
X-Received: by 2002:a17:902:d4cc:b0:24e:af92:70c2 with SMTP id d9443c01a7336-2516f240f23mr204775295ad.24.1757494983019;
        Wed, 10 Sep 2025 02:03:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWPVJMLaOuBnAfptMTDd4jlttb0xOSEMI0piuj7JHW/j2NHik0J+8glBtYR4d4y8/aud4fcA==
X-Received: by 2002:a17:902:d4cc:b0:24e:af92:70c2 with SMTP id d9443c01a7336-2516f240f23mr204774825ad.24.1757494982510;
        Wed, 10 Sep 2025 02:03:02 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a27c029ccsm21089155ad.41.2025.09.10.02.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 02:03:02 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 17:02:09 +0800
Subject: [PATCH v11 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-hamoa_initial-v11-1-38ed7f2015f7@oss.qualcomm.com>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
In-Reply-To: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757494974; l=1177;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=NXrL4UfXMaolOBQBaqURajfxc0T5HCU6PJBeG4E7Tcg=;
 b=O6Ehrkgfh2Hold1rk4GnSagTZ2k3PHgg73ucm37LLER+haNzMWi3fZM7SpE6JenShR0DIsS9/
 CJSy/ExP/7KDHbosVo5j58X+iUgdPP15s2rAlT4WECPbuCJT+tXxQyg
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c13ec8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Bh1HEMNN3wmc11-eFpoA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: piRuR2LQctEUmQWUIL9QBlhQ5fuSZhjS
X-Proofpoint-GUID: piRuR2LQctEUmQWUIL9QBlhQ5fuSZhjS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfXxR+vbZt1j8c/
 diOfYH0IndFb3fxvjyNfAXgjHqVlRJjXVQ75KIzWXBgh4nNtdCf34OKjPeUZ686G97MNqjNJdyV
 IE/nul20hD7KxCfrMBMc5lv5OOubWCP5x6VhN6kRUK+P7n8fpIshb7vLvPdwuuWelM0GrOUafkP
 kA3Kt975cbZu7vqOljXwed+1LAg76WSHusAwkmdwF3DEWNy/ZG7nbBjhNUw0xF7tteXRtJ8GNIn
 MAhD1/Ve4G1zDvFOjMiC9hN1NXtcnd2h0/H4AgokxBb3E71H3BY+6ecy7iwWwTI6oiYthNr5Sq6
 5Hejz7XMzaYuyq0cKXlYnfHphKjrlyAPxN6xXSLDzVmN0Do4Vupm6tl4nm28Ys/Q/OoDFf7pLTP
 BG3q/aRu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

Document the device tree binding for the HAMOA-IOT-EVK board, which uses
the Qualcomm X1E80100 SoC.

The EVK consists of a carrier board and a modular System-on-Module (SoM).
The SoM integrates the SoC, PMICs, and essential GPIOs, while the EVK
carrier board provides additional peripherals such as UART and USB
interfaces.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 7d47d0c04376..d03084cb0e52 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1073,6 +1073,12 @@ properties:
               - qcom,x1e80100-qcp
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,hamoa-iot-evk
+          - const: qcom,hamoa-iot-som
+          - const: qcom,x1e80100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa

-- 
2.34.1



Return-Path: <devicetree+bounces-223430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA44BB4B0F
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 19:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7B1D07B2A2D
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 17:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B0F274FFC;
	Thu,  2 Oct 2025 17:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cKcz0PIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCA626F2BC
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 17:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759425959; cv=none; b=rP9rEH1brrD0SFPMYkFKtZ36BxGuJFNcqZSFsmrVogbwL/M/efVAWnlojNpXDmR2dIfRRszft8k0ExvUuPYEoFwfSTeHNrU4oxCaaMl0DKe2msEAgfdc6V3zRhMBiXzerUa7EiiXzR143q7XlPr1C4yvRGWtTYnDsA4/43yHtYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759425959; c=relaxed/simple;
	bh=RwbCoddsvhqFNIlVCzJxf3Z4gIZGCQR3H9/+B5Bcmqo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=no7Sp1cBs+sdQ/W8vQMnW0sfaq7SSNtVv8NNNT4fhTKyZ9suq9XXZZk45a/LXqJLEYmA7HfBRYeXkogyLUKnhlwFY4G8WaR8dh+KWyeN+WtesxcX2T5gA+JiZOn5IKDajfFy9Ln9tUUlOSZZOwcHghWnoEcsijWeLs9FA2W2+SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cKcz0PIY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5929JNhm022972
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 17:25:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lkXBb6Qn3Fp
	d39i3QFA9/nCHMSToieZ6LJfRkx2X6fU=; b=cKcz0PIY397I+UiGgwq0i2pKg0w
	0cxZv1HcNxe4OWYw7zh0D6pOIJieQRD5SOg5C5begmrFIcFy1yH4vTvVv8TfM6Zs
	Z3N4Q+EyI5mD3ZvigNGtikL0qm8LZJ/yepmtuR0HIcgqLHAn8a1Y9FjgUdYx3yoU
	t2NZUCv0u6QGsv8XcNBTQX3Evgn1JZV3UzDwMgR+XogYrTVQMoDkJO0QHeESKKgQ
	1mFXURXtfg1perbjxEUmFfnPKWWtNubWzm5bkDaMWADR5YxrUginh3ExWM+A50jL
	j8CPWBqjBXYRKybf5CvFneuGhDu5yzUgAYcX5i24txY9ajrpoMU22/3uVvA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n8vsq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 17:25:55 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-78117c85670so1616960b3a.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 10:25:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759425954; x=1760030754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lkXBb6Qn3Fpd39i3QFA9/nCHMSToieZ6LJfRkx2X6fU=;
        b=fZS5TrmGsRo35MuFN8zSCuo+KTShCC1UtRWsc3W8yOONV9XPxdVjMvHHeq151WCgom
         /ZvHR5mjaJ03+A7Y9mMirtHjrNEkHyPN0xrrM5m2bollDeq+bjn1bU3CWSqywB52eApp
         i+/tBCL+4f2qG6vyRxAtZC/7L1gIfX/G0E95czs7FZAT3+p9+M7ckQcDn4eynE8ZDI+i
         JvfrBgC5lRkiQMcmk1ZBNUe3BYJpmYzXM5WShcggV73Pm8JhcGomZsqi1jUXSSQUMeXa
         D5OvAr+rvYiYPjAYyVI+Mp4uLaOV0Y07O7bnUlUWsKM6KIPwokD/Ao7Ltc0/HYxnwccb
         D77w==
X-Forwarded-Encrypted: i=1; AJvYcCVDDiC18no6JsDX0YdfaBL2xuL0v7HVKli4l7T80liE0yee7eA6CT/4qf08oUVUxcJroaE3SRWce3IG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfta9/SLP2pqAEJqbWAyuxzdOlqVVu6I/eAc6rCOIsxjEjEhLJ
	EmgxTSXFVvHKd3dQy1MLZBrK1olffv0bf9MZGbWR14oYBfzIjBsw4G47ga0UntMQVvjPOz7kRsU
	uNlJVY/l7E5z/05Q7peMGfQCU0n3QcDQYxidZMWPMf14rEUocp01jsOLJAB/1CODL
X-Gm-Gg: ASbGncu5gc0MQ+JAM3w10vJD1bNwLmRGDbX1ScyWjBZEXzutc+IedbmM6wgEd/QOG7q
	02w6/VyVITrRAikeoyW7XaOzll7sa+oq3g/VoqOlj5LmNFxd33cM+7pGXnhY22Mf/84WEt4sfVZ
	XlhbgIqAa7ajx9tqHa6/DKOn7PWGMsEE6VJWxfnJ5h3EgOOBmQimY2hMVvCilCjBTTulvsaK4tC
	1KcgSSJeOCFT0NfiS0LDg9k+x9rUuN67FdBRDfCQCkoLpEHMowD44H3KsfUzS1sw+1zJIAK4Yel
	NWIwGWME2S78DmZCsbx+pSL9B38+YfWIGpP7hEZLY/8q+flEz1red2ryqtSiGsNi6/X2ip3Q6EJ
	d74fnhY4=
X-Received: by 2002:a05:6a20:7d9e:b0:243:78a:82cc with SMTP id adf61e73a8af0-32b61d9e0b3mr278979637.25.1759425953846;
        Thu, 02 Oct 2025 10:25:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWExLSIWzbs+KwqVHiI050o0naTRJriHcJSbvWTXSI/V99qkoY2m4Mo76h/bhlOiZHgo0Ihg==
X-Received: by 2002:a05:6a20:7d9e:b0:243:78a:82cc with SMTP id adf61e73a8af0-32b61d9e0b3mr278946637.25.1759425953373;
        Thu, 02 Oct 2025 10:25:53 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f5b6e9sm2387423a12.40.2025.10.02.10.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 10:25:53 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
Date: Thu,  2 Oct 2025 22:55:38 +0530
Message-Id: <20251002172539.586538-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com>
References: <20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: oDLacMDOoI-RuO4DyifaHDxnnqVCC05l
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68deb5a3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=UO34u3PHWDRxg_ly3EkA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: oDLacMDOoI-RuO4DyifaHDxnnqVCC05l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX+4V6GTpLiEpx
 5Ps/dm/+LYOmZqqWUUwuXBhbn+/Ni/d5NK2dGix+pHcif0j0JQ+F1k3uL6SNd7gJgbq9xwsQ58r
 zUnfAvgqIsjhDep7oi26bsBC2wWTrWGYBBkXQpHAmKaJO1586fBFGHwtQ6BJLMWIbNORQgTGLPM
 BvVUMloe9+y9MJiJkVE45ag0T3emYtdXHhxAWPH/BUQjLcR/3yjzzvCEC1vuUV0N1KTjohpIMU8
 NyNX4wTNBLwaU6q49xnR0HsmBnwbXVodiffI+NfHG+HfCBUujHIFJuNqlMhzptblkVfik92P8Mn
 vjh728DFQLXmzUGCPogFBU8IhQ7HENrO6qui4cpfBVuhpF7GmGP3FlLjSvVVJWGmx07OKhDgy6/
 EjHQKMMUc7E6RO+SvuWFzJokVOsUiA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

Update the bindings to support reading ID state and VBUS, as per the
HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and
asserted low once VBUS is at VSafe0V, enforcing the Type-C requirement that
VBUS must be at VSafe0V before re-enabling VBUS.

Add id-gpios property to describe the input gpio for USB ID pin and vbus-
supply property to describe the regulator for USB VBUS.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../devicetree/bindings/usb/ti,hd3ss3220.yaml       | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
index bec1c8047bc0..c869eece39a7 100644
--- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
@@ -25,6 +25,19 @@ properties:
   interrupts:
     maxItems: 1
 
+  id-gpios:
+    description:
+      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
+      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
+      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
+      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
+
+    maxItems: 1
+
+  vbus-supply:
+    description: A phandle to the regulator for USB VBUS if needed when host
+      mode or dual role mode is supported.
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description: OF graph bindings (specified in bindings/graph.txt) that model
-- 
2.34.1



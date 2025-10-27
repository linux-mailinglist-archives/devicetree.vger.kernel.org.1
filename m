Return-Path: <devicetree+bounces-231308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB991C0C295
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 08:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76C3F3A6081
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 07:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D944B2DFA48;
	Mon, 27 Oct 2025 07:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DBBJsi2T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415182DFA5A
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761550792; cv=none; b=kD7WNZySB48yPachacToKcB+QT+9uNgIVyZFj7zD6N7lJ8++Lwwu71UqUxswbKA3jHBIGVw+v0g0H8+WlhG5OoKgbWdeEcCyaLH3LOK2uKEm+fY4UvLXFeONxckoNNZ9CVZRwrun/oTL97xJ1n+fTYOWedHyOTiIiG/0tJDcxb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761550792; c=relaxed/simple;
	bh=6LDCzDAorQ1rdxr458tviaygajHjm49tspDBIZwnE5M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UvWF6tzrUVELbzn7cVJpFwLYcpKdB20iZIIm0b218OO3hx+FFy97hGpo9pe3ppPGTE/4BEcdyK946qb9nSYkv/it8l/xTmfdAgOmxj1nDgjC4sgDec9X18YWfCgJ6CGesqCXkRWgThZd3vcoWhqmnUjCLNJYraa/oV5i+JFEtlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DBBJsi2T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R0g4Xb1253272
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:39:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pfNn+iLNbzS
	vPfiCGkJrd9fqTPoz6zfOgZ+31wHMCWk=; b=DBBJsi2TGTXUrBQ5CwsJV+wNIMd
	uSWiWGc1eCVFIOBbQqzesBMaytLxQxHznZv8sLEH7HSNda3VPi9JkyV3UGuSxfXS
	vBJzoy7APDS93ot4L69ND/yHLCBiqXQCxki2WIQq2vGww9CuHCxtJGxZC87FBr9T
	tUe2y+gy2/RB4XRqBaa+zubXaXT+IYKO9M+Y4e5r+mceF7zFnkSijTPWYQK9GFDd
	hEMmBb2R3uaCHpHfRCV+O7m/sdbi9CGQyn5XilVVZDLav7JzPLajyXUI6/1NeeER
	dWNrGiDzRe6lzZuV8q/+jJf+l7gRTDp04uzT1W2bnAYCsXiAYX3/KsGep8Q==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0p2q3pja-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:39:48 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7c3e0dc2c6eso7444087a34.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 00:39:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761550787; x=1762155587;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pfNn+iLNbzSvPfiCGkJrd9fqTPoz6zfOgZ+31wHMCWk=;
        b=dZq+liAEabIl2e5ZDG4qi7QVLdD9zCFrJAonQqyAk+fEOdKeIo6ZIo4E0/969RazMm
         gv/YOTR/hzIciCITxZnT9RQAP7RKvhP7veix/g9PvItwhgA2XsDIBW7B994RNH6A6Tur
         5J77o+rhFo9cE7t5h84mAvPNVlOKax9/kh2LNPGmg2pAD2UuRWt2B0GCn+jBJb56Uh3Z
         a+LwZQP7vegrBPI8WchPSDbcBrGN5nx0e6ytnf4SPxDYrUWU8ZV7bXCavw5AF14MrJZG
         d6mbWdkYzLqWsRixM5toJu22vHvPiDUlfaxdV36TyZ2Oqq2Kb5Ltuo3Z0X12OlnonBU4
         DBgw==
X-Forwarded-Encrypted: i=1; AJvYcCVxi4SFP+5nKBJwip065ONOyRshUxsmk7cVACBxu6FfXW0uGr+Rddv02X46JJcTliwX/3kpc6i3AJkY@vger.kernel.org
X-Gm-Message-State: AOJu0YxeNBwrhyVsn6EQSlm7ni8Ik6BfdjkPte/U8mhGk9s+1YdI5yyZ
	rDtjR/AhpH/RS81PIWfEjavDg9N0AxqL1qS0ofO/fGyL8JuqqQdGvFdiqcs5GWiitPTNVDCPPfU
	88lbPF7zAQPCNY0xPPVtISdhZwA8Hvm8eNNMrdUMMvxGtWVY/MvgnvO3abJlgJmYs
X-Gm-Gg: ASbGncuoZv+2toVV9rafU+AkNf7f5QdLJNZ1gEJhYCUaf2yg7oqDLz3humD9JN2X4dA
	Yd4WWxU+nBi24LkBCNnBZMDc90r0/6TnKCzCgKoNpq7WR8XFwnRzA4x7OLFMlPNXkH5vSdRM2po
	76GUMD7Qs8tnXKQBfqj/BOGGXyu873g4hR6oweSQmQQwZvJzGcL1kTeTigoesKTyVBol3SrLtJm
	QzIdTthE71lVR+CBMEcvpRalbG3OtLTXhddQPkWryPZg45+VhGlSnyKBNQ6a3AqabqsCWGdrYvP
	tpLpJt/8BuGP3dYNf+y2R0+EEgTX8NhM409kGfK04itOLzk6Djr4Fc56WvwH0JD/jNQiYg0w5Kt
	Sk5xK+BT2nwFWIXXSVIw+xaNY6us9/agS4jDp
X-Received: by 2002:a17:902:db01:b0:24b:1585:6350 with SMTP id d9443c01a7336-29489de58e7mr139709415ad.11.1761550074730;
        Mon, 27 Oct 2025 00:27:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErnim/Iv6lmBiXWwurCecPduLwzutGfUUJGbDO9Z4q0f0NCLEl+9OKHSIGj8rm5p2/pK/hmg==
X-Received: by 2002:a17:902:db01:b0:24b:1585:6350 with SMTP id d9443c01a7336-29489de58e7mr139709215ad.11.1761550074235;
        Mon, 27 Oct 2025 00:27:54 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e45a4csm70710965ad.108.2025.10.27.00.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 00:27:53 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v5 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
Date: Mon, 27 Oct 2025 12:57:40 +0530
Message-Id: <20251027072741.1050177-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251027072741.1050177-1-krishna.kurapati@oss.qualcomm.com>
References: <20251027072741.1050177-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=QvpTHFyd c=1 sm=1 tr=0 ts=68ff21c4 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=UO34u3PHWDRxg_ly3EkA:9 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA2OSBTYWx0ZWRfX15+tPOtdW5SQ
 zktxe62iRvB1IO04S2ahrdqGye0XYGYY6Y0burCReOzafYqOLXHtPqzD9opkm+S2UPtWF1mAVwp
 Ha9yqQctwJOdKW+ZSFJBZembr52Xtv/14bpnhWfKIohqU7i6EiqNUktjwq/tQT1ymVkCMObRb5/
 6JI1jFOatjfQTzGkHGoc7o8kOEjteRFx0B0ceCU1LmxDUNulURyRrfOnHc87CsF2DxtI6qU64+0
 Qmu4jsizUbzi66WAbndQlP/+WU//OGc/bMw2n1Cne20q+H4c+bPNjZ/R0oU6IgzHbahoxoyrKKV
 JIbNSaNdf0nWV6R9RwFVikFVgQp4ovk64wnZQpszbk0HOThq7Sp4CBMoadnwbv2GtREEX01p5Wj
 Y4jes2whL+ORh0Duco5SDQ8cfXHPIA==
X-Proofpoint-GUID: vJ6uWJfls-feYe3xCbKyfLYJzWWDCzbD
X-Proofpoint-ORIG-GUID: vJ6uWJfls-feYe3xCbKyfLYJzWWDCzbD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270069

Update the bindings to support reading ID state and VBUS, as per the
HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and
asserted low once VBUS is at VSafe0V, enforcing the Type-C requirement that
VBUS must be at VSafe0V before re-enabling VBUS.

Add id-gpios property to describe the input gpio for USB ID pin.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
index bec1c8047bc0..06099e93c6c3 100644
--- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
@@ -25,6 +25,14 @@ properties:
   interrupts:
     maxItems: 1
 
+  id-gpios:
+    description:
+      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
+      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
+      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
+      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
+    maxItems: 1
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description: OF graph bindings (specified in bindings/graph.txt) that model
-- 
2.34.1



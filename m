Return-Path: <devicetree+bounces-224611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2AABC638C
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 19:58:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3294419E17AE
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 17:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079F72C08CE;
	Wed,  8 Oct 2025 17:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UrTYU9gM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFF62C027A
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 17:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759946293; cv=none; b=TFQKroBGyXq/7eniXmUEajvzF3pf8z/BzSj5ixG1xev4iYpENbp6XH6PJw9aAVfdNyv7QEB9akP960d1RmqQNpSp17kPQ+oHzPohucKqw9II27D5qG8keR1Pc50vkXjfCmWEmhHmDswEfWxtyaGW1R/RnfkUbifOREym5VCWAe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759946293; c=relaxed/simple;
	bh=RwbCoddsvhqFNIlVCzJxf3Z4gIZGCQR3H9/+B5Bcmqo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HE+V2LArfdD40nyI1l3INHt+iowGODO5z2sqqSRoEkVl0safKDDX57FB/KwnjBZ9zEJ4NXlGB89jeOSJyDLsADjeY6rzG5M2vqbJTvurMqkJjIeqwgXqUF1zRpQQXklN0nZ8xUe53VlG5sEUsqfPn317dCkVIa17RgneHgdBUhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UrTYU9gM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598HAp2p022543
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 17:58:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lkXBb6Qn3Fp
	d39i3QFA9/nCHMSToieZ6LJfRkx2X6fU=; b=UrTYU9gMwhzoCZ0leukHxOSXnlD
	+N+JtvPzPyw3LUMV/AWQnfIocKToaqxsPNMHkWjmKoypks3x3+QbBXVBDylArxNa
	L8o09pWj4pU+fBC0pZRBUqeqEwynZtL5fOePtd+vFzUG8pTX+YqKafjWK7I3H22a
	iHNK2pjlSfZCnIfzsHIHlJtstXFqp2uzhZO1mgfIcNjbKQXNVKSA+dFncUwJaoHe
	zj/bmJ350SKPT7modw7R/O7+OnhmQtADAeZpKckVRe0cTf7ytC5IlBLMNJsQFpEj
	WWeZQ7GzyqNv8dH0TzUXUeXgSOoO9okoc7HyJk/hi1oql4PgEJ93OKaTTVg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kr4eu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 17:58:11 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b62ebb4e7c7so20718a12.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 10:58:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759946291; x=1760551091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lkXBb6Qn3Fpd39i3QFA9/nCHMSToieZ6LJfRkx2X6fU=;
        b=THpQhDWqQwavSw5vJB9f8s7iWSt/yK1VQ3TTuPkeziTLw6Ee/lPiIhq6/wojxQYJAT
         vCW+hpLh12mdWKZOSkfQh5JSGrmYbN5zvldBuYSKrJPUuNzGex2RnBlzSiKSSX5k3J0E
         GMH0IwxshEd5o+JQJa6awcEIwbkun6FmXu1JMp2k/774J66G6JBPhwuQIj7znmVZpRIT
         SUvgoicLY9t8bx1mR10vMjjAfsj3S4/6umfoprDLXmjZoK6Vk/CdoOz4LBZSkzZf9Hd0
         DnoQrYgwAfLft2ds3QtetCOZ0aVVxeRwXCvaLmRmxr/Y4Vh0rEQbnc85QrS1qCDGvtvp
         0ZMg==
X-Forwarded-Encrypted: i=1; AJvYcCVZ1YFILsMBs8EMCz0q7RBNBiQXenBxzJ8waZCOG2MJNzESV7nWSMAOzOG6J+sF++cr2IGrgO4B7w2f@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsa7oewK8mxl1850821UDuOkYGMTJ7S6XzdtxfLOuFTKkyjYHu
	gRMP0MSeush/6+o9KM7jJIfpSVW09jpqYrgaeCPYhDTK2wsoxIDDwQPvQhwGR1hiVI3SgZTuCkx
	GQ3MKinY/Fz6gZwteFJkctbCg/iVxg9rX+gBGLwpurgCX4gClPk+sx2jaTg9qlW0v
X-Gm-Gg: ASbGncs6POV4ZfVAFcmo3U29ZicyijZ5IryZrAgTZc30BZJBXHjRntsPRbI67IrRS+i
	s17nQw0hrv78umkL22WChIwfsYGSa8EFtVfEzu1dFZ9o1TUyJKYd757TXSB74FwaMTBRvsfsg7E
	Ss6wIeqh5CQhHHzp82ha2q77dcBMuSTLegR15CQlsxUdtot8vMUjDpaMI+k4uhL/TVlc90TUTPX
	A5lx8N0nNCY8gJbVRc/3x4Q2vqfqXPztOtwr+Zju8tKqkhrCb02OZpUnVMhY3fTmeRYyQDYRzkx
	dxlXA608zYhSEmlJ7TamD+QVBFa/3zuUcj+LZZ0B3b5dbAcHVq82MfD4EjRmRZHphPjUjQipmf6
	A6mWKm18=
X-Received: by 2002:a17:90b:3b4d:b0:329:f630:6c3 with SMTP id 98e67ed59e1d1-33b513757fcmr6324293a91.20.1759946290558;
        Wed, 08 Oct 2025 10:58:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZfxPRPNsG1loVsGvZmZ7cdfpqeKee74VvwcmYy9NZBEdDSgHq7Srl1DuZFX9pBYhri/nv2A==
X-Received: by 2002:a17:90b:3b4d:b0:329:f630:6c3 with SMTP id 98e67ed59e1d1-33b513757fcmr6324262a91.20.1759946290123;
        Wed, 08 Oct 2025 10:58:10 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b529f51b5sm1275726a91.7.2025.10.08.10.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 10:58:09 -0700 (PDT)
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
Subject: [PATCH v2 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
Date: Wed,  8 Oct 2025 23:27:49 +0530
Message-Id: <20251008175750.1770454-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com>
References: <20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXx2ZK4kq2xffG
 gb64ARu32ImPA6PL7nvlKc9Vt9V5K5akzEIGV+I8rW4G7xET2cvxr7f4uZV5PGH4MJNuxEl95ng
 97BI7/MDt3MMRA8/2u5kRKxyVzGa4bNitu9rfRoenS+LmDmcQjZLRQhswVJ3QPIdjt/hmrxGGQr
 68TavmHWGEZbFiAq4KJ/+/rbsNt8r/78HDpyy2vlLJ6mzU1fLXyi2rk43KfOhFiFzaTxJ51g+oV
 ZlToL3+VlgjpEtVX1HSnCzvY0vLa6tG7Hk/3aXncjSCuPxFlGPGiYbwoi9HK2BJzg+B8kg4SYUZ
 t8n64AUqWFzJ+IIvBmpJZnGoocHeRtM/X971xZ8qzEivo5UbTGDjt3otU5+TkPlCVhO9aX4CsJG
 B7exw0eju0Kh38YteHis1myDWCpWdQ==
X-Proofpoint-GUID: fAVGT-Bp825GTllqbP8DMLfPfk4qpyjT
X-Proofpoint-ORIG-GUID: fAVGT-Bp825GTllqbP8DMLfPfk4qpyjT
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e6a633 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=UO34u3PHWDRxg_ly3EkA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

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



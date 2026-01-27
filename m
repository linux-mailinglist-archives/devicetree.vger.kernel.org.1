Return-Path: <devicetree+bounces-259881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLt+EAiveGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:26:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5D39452A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:26:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4F63308C51C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF6934D391;
	Tue, 27 Jan 2026 12:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ERYD639x";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QYJ/i3Sb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9877434D909
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516593; cv=none; b=d3RnhKGmRowCx8/t/Iu5mK2nNmP/HORArE2S4LgrJ+yMuvMRVciQ0yvPj+b0A70Nv8L2bMSUQrMg6RdY999q2hWBZdJ5BM5VktgmLQshKqXxO10ccLQFTgkH7ZZC+kFPtdTLg2jwuq8NLmX5MVgehr8up2zQs0qZ3BAwPdVYSW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516593; c=relaxed/simple;
	bh=d0mivciHY9AxCx6/jQ9UUdYzV7StCQnyxCBFMqtokCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U8XO7F/YdmAs0Zm/VqO4SxVsGNvjlhyX+MMXdJBf2d0M/cIfLjs2bPNZb6indxJn5fZXEVr3K1n5SNMKcH4utMRQh01I5ZOmOG90UlkBhFuzK1BEWg///L7b17vU4XvTZUEeiGPUh4W98pumeJyyu48++4rvUYnt29r3223mwpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ERYD639x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QYJ/i3Sb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R7RwhT112659
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3XXLH2/gt1UFb03g8YATYc4EauWQ9zsYRjVX1F1y4ss=; b=ERYD639x8juQXj9Q
	DfN2Q7wXk0Bv3gZuvNvqh/k3BfLi6eLboyWlxRSDmrYO7xpWoxeSZZRYrOJfwmCI
	d3beY/DOvRjs89X5qZoXNeX5qUfrGl490bkW+L0/HShRiKMr79kU7YnGgwk8hcr6
	izs32exdnhn7RbS08r1S5LKgAAry0r+87xJ557Y0X032xq3mqRnsBFK5frroi16f
	24Kuy1+fjmcOHrx7EWXikExAJLAWhEZaWuDugAtS3SRjO3WQVp1xlxl1bI/ruu4Q
	AOroJmTHo9SAdkQ2QruQjeX9WAgWbbg4j7OMvdghA2m6sjIXf1x/ciObMZRSJwAt
	rqYL9Q==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxs0e11u1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:10 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f557e3890eso10760915137.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769516590; x=1770121390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3XXLH2/gt1UFb03g8YATYc4EauWQ9zsYRjVX1F1y4ss=;
        b=QYJ/i3SbbNh6d3hlrSm3BQDwOsAKQJb62FPLrBLgg6WpCbUHMvmGm/pPcZ/L28AAsM
         AdYr0UUsN9M/NDFTd1VKcJNt57gElnk3aTeHP83oDkbA27vdysAlr5ciiBF2HOFw661B
         kjCswpDO3Y0HbQHTbcKg1GijXOzBNn5ur+xCMZRphpUoEhqVVDBBJj3D6df9Jf1h+WbL
         Ju6uv9B6qlWNKccstFIxyYTH0oAPz1j7j0ispYnoknX9dRQ9EWVJtWC3m3hyCe048rYn
         8GocGBw9Cny6sWXGmEgMDPE1jByuldT3pdpuphQXZTG8I2DtLk5NZ6+yTXcvVvYfBYpQ
         vztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516590; x=1770121390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3XXLH2/gt1UFb03g8YATYc4EauWQ9zsYRjVX1F1y4ss=;
        b=WL+nlqdhfxYRKTqvu5/2VZfLwPsk5BGRRNO5puGtGYBn8NFnLp5hbYQihfYMauIaDY
         65BhCBdcbp01g6hKIu4n/6KIKliKtezqTAiaewBrrXefp3sjA/LyNlqmEnNH8WJlD5Y6
         9+U2njXQp3TX9LQ234V1gxxPIlf1EhoKp1OaSHGcQktmpiG0/0AdcsgwdbTBer6gH6+c
         2+TiUYdXtqBU5wMZFDKaNJbUjHYyWllNbh48jSQ4IPyU2K4BwmmQR6wm5WNFvBy9bnTF
         tSuFCt5Z9UqDk69WLp53g8s3hSxYxYzChEC/RYNATqpc3yionNGcFNFOAZOG3wkmtdD6
         KujQ==
X-Forwarded-Encrypted: i=1; AJvYcCU172UBqG1reYwddsKArxOCVLxYYHGPtOLlKLnVtvzpE700MmhYQDjSxVEGvALhAsXfDcwi0dvbZCBo@vger.kernel.org
X-Gm-Message-State: AOJu0YwZpEMofBXdZse5exXerzGmCN4FI7/VJs4SoiNe2N60HqIC4oCJ
	DjDbOi474Cfstw3+xy0t14h6nsWZNJrzxb+FhZlfSQLDC7uP9Ue5oVtRtFY2dRS+vRG06fvDn4L
	B0/xXkslVCOMQVBSD43mOSrdIxFCN9c8NfR2WBDjvLekCTmJ690yVLUFmYRTXUiEr
X-Gm-Gg: AZuq6aI9ynMt54iczCUV9PBs97v2xT9/MBIGVihZXLgpuQyasiPeYg/rMAeAKwYdm2E
	/SEwEE28wAJF0omAZ1u2283WLflsH/U5DldwSdT7ey9MaAdttVTzwapUw+6mA1Z7bX54DS75Jt5
	SObLpoXfpjEC65XASZAUJABxtMfLitYH0/69Sok4MvfkRxB4D6IT3CRIZA2aEORQ2KZ1OoXZcyu
	fLioL7tgXFX9tziPb2ER2E+ByvJEbw4WsdIWFYxyfXLi148vijrQF/UqsKjzCMl2gEVjnShaqWf
	BlIGtMgabcaJv7+Qn11emXU5hlQ8qMZcYxxfNfOEO4ciCfEAqTVdzxEvOqHTk/gB9aJl31b/P5Q
	w3Zk0WLKyF4LcuXE9u8BvgNGWRGKsSBYxIYq3zPKUEkytTd5oLe5cM4CkGdluRb/xob+KhLbh1Y
	litwc9sZkOPWx9LuBC3HyN/NY=
X-Received: by 2002:a05:6102:a47:b0:5ef:233e:6b25 with SMTP id ada2fe7eead31-5f7237dff87mr699926137.13.1769516589949;
        Tue, 27 Jan 2026 04:23:09 -0800 (PST)
X-Received: by 2002:a05:6102:a47:b0:5ef:233e:6b25 with SMTP id ada2fe7eead31-5f7237dff87mr699920137.13.1769516589478;
        Tue, 27 Jan 2026 04:23:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492cc4asm3375442e87.101.2026.01.27.04.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:23:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:23:02 +0200
Subject: [PATCH v3 3/4] media: dt-bindings: qcom-sc7180-venus: move
 video-firmware here
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-venus-iris-flip-switch-v3-3-7f37689f4b39@oss.qualcomm.com>
References: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
In-Reply-To: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2150;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=d0mivciHY9AxCx6/jQ9UUdYzV7StCQnyxCBFMqtokCM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpeK4mQ4BC+9XHFrK2cB3Pmp/vlistwOWiV0NB7
 Ki02qFZMnKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXiuJgAKCRCLPIo+Aiko
 1TF8B/wMn7ddnz9WuVh3rs4q+ecLjjo9VGghK73huibFP3NkTX2uKUEr2YUj/bXGcPA7CAgMpfP
 MBB1gOi4D9tk8jlMXhLq21JCcJo7bZOmTBUHjWr6tMZvvl3i5Tpkfs6Oqti0aoISvA07k0g0lmg
 JCEfBWm6zb3Ed3Y/3sOCqKV4A4Msw19qBRtZPJibNv2+iPDakBYXJ/NZUKWq3ZLTYEOEj2rFqZ4
 6R6NX5ZTV1tL/4U1enxPFgP7+4Gu64xDJ+dfBcvRTadIo/5gK4iakzXxE1jhjW1he17MHmS/KCZ
 hc/RP+QSMLBhPzDGtYWV7xwGzPeq32CEq2mha7iN/1axrtpN
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwMSBTYWx0ZWRfX+/lWXW1bP7FZ
 AB2PKt3Z303omhBBgmp0rTDIfPjZJQanGuOgk3JZaSoRFyBz2Uw0mwr0vuis5o/ADs1YmsHx/fD
 Bla9HQobuetLDmsxkX+WugaaP0Lc3trrcVgOy0BALMAS9waHlhx4VupILvfr0ysCXZwtxSIHjQV
 DfjiEpT4j5xF0kmTc8lnEG+vz1+kHwQHSzNciIOgd0GYVXcr1VKyxXPGLJaWu6tzYx2PWdGVXhG
 iosP/1Jwh+d9CApJs/6w98DUYxVE005l5abDDGJ8RrpOhW2OE7IDf9KGhOP2Vz5bsofG49YS9UK
 hHTJ4u0N433Gk71V/16z8nLHtyb7+VUbQOOgLi9mpnJzxVM6/5SA9rujw+J9zSusSxV2cUNhqii
 IWPAbTlRm2lvuYjw9wtOqU88A0Qp7mCzKJ/FIm3LeQsQsBJRHTy0wz5rVBme5UsN9bU1z+SevJ2
 VhoRWAW0XSYvJ21yeeg==
X-Proofpoint-ORIG-GUID: Tf3WwCAhclUpih8jAHrkrK9mM9BMj5-h
X-Authority-Analysis: v=2.4 cv=Hvh72kTS c=1 sm=1 tr=0 ts=6978ae2e cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0e9ukYqe-uxmdYkeUVMA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: Tf3WwCAhclUpih8jAHrkrK9mM9BMj5-h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259881-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9F5D39452A
X-Rspamd-Action: no action

As SC7180 is the only remaining user of the non-TZ / non-PAS setup which
uses the video-firmware subnode, move its definition from the common
schema to the SC7180-specific one.

These properties do not accurately describe the hardware.  Future
platforms that are going to support non-TZ setup will use different
semantics and different DT ABI (using the iommu-map property).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/media/qcom,sc7180-venus.yaml      | 15 +++++++++++++++
 .../devicetree/bindings/media/qcom,venus-common.yaml      | 15 ---------------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
index bfd8b1ad4731..b21bed314848 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc7180-venus.yaml
@@ -91,6 +91,21 @@ properties:
     deprecated: true
     additionalProperties: false
 
+  video-firmware:
+    type: object
+    additionalProperties: false
+
+    description: |
+      Firmware subnode is needed when the platform does not
+      have TrustZone.
+
+    properties:
+      iommus:
+        maxItems: 1
+
+    required:
+      - iommus
+
 required:
   - compatible
   - power-domain-names
diff --git a/Documentation/devicetree/bindings/media/qcom,venus-common.yaml b/Documentation/devicetree/bindings/media/qcom,venus-common.yaml
index 3153d91f9d18..59a3fde846d2 100644
--- a/Documentation/devicetree/bindings/media/qcom,venus-common.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,venus-common.yaml
@@ -47,21 +47,6 @@ properties:
     minItems: 1
     maxItems: 4
 
-  video-firmware:
-    type: object
-    additionalProperties: false
-
-    description: |
-      Firmware subnode is needed when the platform does not
-      have TrustZone.
-
-    properties:
-      iommus:
-        maxItems: 1
-
-    required:
-      - iommus
-
 required:
   - reg
   - clocks

-- 
2.47.3



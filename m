Return-Path: <devicetree+bounces-259387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOXPNG8dd2lDcQEAu9opvQ
	(envelope-from <devicetree+bounces-259387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:53:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B298517D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E5EC5300B5A2
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2272316199;
	Mon, 26 Jan 2026 07:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JvG6i0KJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FXgGiYaM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D140315D5E
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769413742; cv=none; b=LjRDW8WDRkFnrfoKkSywKihuPyaik+jy6gyT0clDp0De/wT4avR68R0mopc38iLG8YzCq28tHN6wJakkXMMXr3Q8fS+bNAboQ0u2yQHcfRdqjnV0oJPoHrSwx+MBWQC5QzO345HKugPqH0XK8EgMIAzEx6YAd+7F3AsyiqZPnNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769413742; c=relaxed/simple;
	bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p5OxN5AH8dTI8caPbu4iP1rz5DMYAsQJgkQCj2D7MjamzxubcDlF7s2MEJGdDkmwK7NII6ET1ICZXLZoZoUQwCXZi431+VN0w2WqVcxdw28mRf8btaQD7eb2DT4pj00ig3nOtutpEl+SXYHhA6c0KbxZpvZ/5+86NlKpGRyuECw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JvG6i0KJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FXgGiYaM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PMTs3i1200312
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=; b=JvG6i0KJu000BHx/
	yJ4pRSOGXpc4R3PDb0wcJb9DpXylFMn1TRFMq+UbwF+vDkDaVwUmu0wpye/Nud5R
	a2YeecFgDit2EAjZpQRzJUItgEZ3sP93fIAtNqK1aPgEwHEdgXWNEjLvP7BSxnFJ
	lZSEPgUY9IOrDh+rai265rJCYxTZ8war2AEMMfdzozvtS8vuYjvU+B/skAd2Kp3f
	k5z3JlRLmAKcj9Q0D3uuZ8MxdUSQFmnqOrcDG/uq+wN0DX8yv9uE2kOZrPROg+y1
	mnoG60jfiI/yfr6YjSt0pt2b5rgTPsnvyKRGk5LqwWTNfzevmS65V06JmLKvkPgp
	jS37aA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq3hbsv9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:00 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81c68fef4d4so8158722b3a.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 23:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769413739; x=1770018539; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=FXgGiYaMDiTnJsPPIAVvawuwRxz6AGzLtrdfNHZdkpz06ncif0K+BTyM8QqT52QXVf
         fVDyw0ITObIyg6/YyNysqXO8XAqcBnEyk9a9LbLD19D9KOZjIEIc6t+KsUNY7RImLyQj
         w77722GLB5pyHttC6/O0IvUAMXed989uAkV/Iqpc72zw6jjqAQlMa4o7zu7BLOsPSeYz
         tSNOV0B9czJpCZipdMU5G5RKCvwDuIQ6/vaJ3SiQMLukAk2NsZK45vrM0QInxws9EKhd
         PruUbPJ4z/HnxJRrtrQ+cT7akjFrWjefF//11Rw6OYaX9bQdpi4/pqck9LmuXr9ZuzvR
         seHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769413739; x=1770018539;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=V2kVVJoeXHSpD3u1hrJ7oDjwg9UMVrGgtrBuFD2+ESxQc8jpvWlGvPYGzYqfdu6qLW
         B3zjfBomzEMs4MtiqgbCpv3icAh5mjVBe7VdrmDMVWg+kpZZmAPlusWNLASY99Z4iOpI
         4J0eH2own/vn99KDDpS22n7DIlAEs8N6baNQ1R4eyFN/+O9Dzv3YR1/1dko70mydJmSz
         IcQF63uja9JbGTujexzriCZY/mGc3/jxRuKuvuYxAt+Ey7F35urGPw+AGFX48blH/ZMN
         KzSlevDAv32zqvq5HssfaCmr/mbuyxR8yahn8AE+vMiHmcivDvJkQgNc1DSfc1v9svNT
         04vg==
X-Forwarded-Encrypted: i=1; AJvYcCWxMWUzylmhnHUzQ6UuvFoOlHsaQkpGOXfUp2OgwoinpeeiOSp56LXFDI1a/svEzroV12b1meHBZHfq@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh76kIiCC3yMcUKqWvo//ZijMBC/r3/PBe5hZPtEHH/R60VxMD
	Ea4gezxZAjwBLqS2q7EoO8SutoruOXlGuiLXj+Ai264I226kZMx1b4rKzeOtkQR5o3RHZJcyRLL
	KpEG3LDIaZr1fN2jTwni7SH+IPdGMiMqtjuqcyeq8Yz5ySHgYM6J7cz9Jz3Ka2EBp
X-Gm-Gg: AZuq6aJejBlUJ4BC9FX6/qpZOA7OjJQ79DDS4eQxgSclEnnfOVxPRzplzMGXMA6q37L
	I2GK0hLB02pu6k0PFI+ln0BYSWau2bry/ajb/h1KkBtRFXi2u5VbHEe13XoOtyWO7I2a7IVCoI6
	uXNgWhHVuqJnVwLRWZdC8Laqr8zRQmGMAHBpREKLRIdZfcbp5gqmsZyBeVPcW+KxGM5gG3xxQAz
	/lGu4KXPPlXkpxGo/nX3NqJH2P/8Y/9HmdTpiht2HBRw5iXIJtfuJayfD18P5AgGUH3oPtOUW5m
	3XavVX8wTGUcPRR5PvHoi5vM46FQYaeABIrO2kzG0y6B+Q5rJDuH6zLcOvMYguGrO2FXGZsvAyK
	CDKKdOOSi/3Kx2/2eHrOD8K2kv+5eyXz/i7MB5TJZkEj01h7mLWTADzCxSDQ6DxiEBrzQXS8exf
	0L
X-Received: by 2002:a05:6a00:2294:b0:81f:4566:cce6 with SMTP id d2e1a72fcca58-8234121c8e5mr3573553b3a.28.1769413739255;
        Sun, 25 Jan 2026 23:48:59 -0800 (PST)
X-Received: by 2002:a05:6a00:2294:b0:81f:4566:cce6 with SMTP id d2e1a72fcca58-8234121c8e5mr3573535b3a.28.1769413738792;
        Sun, 25 Jan 2026 23:48:58 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8234fd9a5a7sm1223418b3a.63.2026.01.25.23.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 23:48:58 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 15:47:57 +0800
Subject: [PATCH v11 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-enable-byte-cntr-for-ctcu-v11-5-c0af66ba15cf@oss.qualcomm.com>
References: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
In-Reply-To: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@arm.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Mike Leach <mike.leach@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769413706; l=1751;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
 b=CwJwXgXX7zGGBu6bOdUjbp0ej8SuneGsyvWe7mye7VP9EezB/SML38TmlJ9XLKhPIjJm4m9om
 rpFo04y2Zv7CFR1BoUf8tb60tXJFaMNUOZS8w2ILqThhNhX1QRTID2/
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA2NiBTYWx0ZWRfX1rmXKj9fA9K/
 vmvvzy5AW4efBI1bcKzFBA/tUz3U6ra51pUqcPvQEkpRZl7+2JXDVgS4Dp95mUbWKR725DNlzxm
 Sx12jLxt7GPQQL6WPiQeqku1t8OH7pwklOTrhfsvvRZ2hOP5nS8obWaUPskbz7pei8dNkSMNksq
 6H0SsBM96csxlUysxMY8Uyasq4VEA9GSb5bYPJy5tybEtO6vhwoT9L1QqlGrDfB9USnpMmS54U3
 R5zYsutz0rU1x9Of3RRZaKsx0wuvbqSPwVYC9D6lhhxgKa3irzBKySY/vTZrF8oAah3ZCAuFSDU
 vuQYuu2BaHfyk2MJfRF4o0boJma1gxjExDIHw7h7aeN2EVWQNZExlbOb9yhrkH5WvT6wdpP0wjQ
 BEya/+IIz9Q50Cq/ngBzo2W5WdDSll4qqEgvltLxZ9XbK8dllLSKW2+jo+7HGicv9uqYb3YO/Ev
 qkonuw4icTUDzKWj6gQ==
X-Proofpoint-ORIG-GUID: aw3a4rkJqWkCkt0YiNB0UN12FlKrLXIp
X-Proofpoint-GUID: aw3a4rkJqWkCkt0YiNB0UN12FlKrLXIp
X-Authority-Analysis: v=2.4 cv=c/imgB9l c=1 sm=1 tr=0 ts=69771c6c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gSyxy6DGYGa4b6s9XCEA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259387-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.15.70.40:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 75B298517D
X-Rspamd-Action: no action

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshold of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index c969c16c21ef..ac27a8b89085 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -39,6 +39,11 @@ properties:
     items:
       - const: apb
 
+  interrupts:
+    items:
+      - description: Interrupt for the ETR device connected to in-port0.
+      - description: Interrupt for the ETR device connected to in-port1.
+
   label:
     description:
       Description of a coresight device.
@@ -60,6 +65,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -67,6 +74,9 @@ examples:
         clocks = <&aoss_qmp>;
         clock-names = "apb";
 
+        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
         in-ports {
             #address-cells = <1>;
             #size-cells = <0>;

-- 
2.34.1



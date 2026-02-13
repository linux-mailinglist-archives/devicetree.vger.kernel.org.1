Return-Path: <devicetree+bounces-265398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHdVFyJCj2k5OgEAu9opvQ
	(envelope-from <devicetree+bounces-265398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:24:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B73101377EC
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:24:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D8913046EAB
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E355F3624D5;
	Fri, 13 Feb 2026 15:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OZRRY79t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB0836213D
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 15:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770996137; cv=none; b=TmfRiJrpKX3kSMjw294uJzrf1o+3ZkIxXhqVooIBIfW9qb4aEU1mWpihQe8FbPrCNiQbBuN7l9eDJr1DJfF8x9pRGzuomWAWw7e/5EUhrK9bWdu23EoVUvqUWXFCEY21jxhBAs8sloHrpV2MEH5G+wtrLELzDPTU7hPhDEpvr7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770996137; c=relaxed/simple;
	bh=xYhYEsPdd2+0oNo9iKHc5axKQXCMV0Of3fzouNXiaq4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aAc1bqM7qS2A05xKyyy2xSYXYwzb8wg1oBaHyMODhxN3tJ/AfvxgK++F73C1nOW22K7/V8s6lKzJOXN+0Nj3caryK678PKkyoyzrWsU9jzMiTGC4np+nFPCnAux3zs6P8gArWvFmlAGSQJSpPaohcqum+gIFPCxa31nNV+mq3KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OZRRY79t; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-124a7216c9cso62351c88.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770996136; x=1771600936; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AeQcjxOP6PSP1GLUVNa4VIyei2GpgQ4urNvIlgdld0U=;
        b=OZRRY79t2fHrMwLmIEaOrbDXRtGLmP6eXvB4Q+Rm1o6BkFgnuWEdqYaSh1CWV/veUP
         XXsouq5ILDNsKNeuaRSPHwp4JzAtiRy1q32ojSMubIa3KUZ/qclnezN/SbFyrFCzSmTm
         9UBurrrqyB6I741mmZw0dpAb8uLqo1EX0yqudEYycBcD984QLKMY2IFiEVz3rUx1GRSZ
         fa9A5RrJp7cMvT1CNEHL9qWi0bgL7Sdno3yY6xArcEdUbHe8gj7s8hmI2crpmi96mTnl
         eiW/TEsG3IZOMEyOJH/YWzXQ8tvvSlHFi4BGoEZCPEzkxnDX0zflQIRn89D5he4G5rA3
         dVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770996136; x=1771600936;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AeQcjxOP6PSP1GLUVNa4VIyei2GpgQ4urNvIlgdld0U=;
        b=FOuwlguhMyugZnH3/vO05xAj7M1Yq0yMtW+z0u8safRe4j8jgQdDeFf4vTISbLJU1q
         gi1Jguw+G5TRNKlAVBGo/RSKvhT8oBp+kSWhEMJ2rDbxxrCKBxOSeXhOPqR9bCpmENu2
         vSa9+STyGLAwgliE6JuybM/Mn9MoqX/fZPAP6SJgfIIFF2DUBWp7fPmdWS92OvegbSo9
         Thrg7ArDjqB8DyQPP8+ewMCn4RtGhoXS9iQUFc8xRgk/LhOAz4TFKlNgxby8dIW6WaNM
         swn2btV2n3jyTpyx+Remzx2DhRZr9gXdw+eBLCiz6qGyB/EtUAM1hkjaRMEJp4NnRgxT
         zS+w==
X-Forwarded-Encrypted: i=1; AJvYcCWdZMlzr1bAXIPbnQj2Sg277HaPg8G904bya4f0k7IbDQ2ZQSDBE8Gubtz5OZUlfSJ1NJbe6P3liIAS@vger.kernel.org
X-Gm-Message-State: AOJu0YzlPetJDzgyiN7JyizrY8/ATtYIA8VGOheXnrMc/fnZq9dM4fLw
	IRiGRK/P0lor6z+kL5vTIStpb8RQH31mEYTjkNY7CPo0WsieXivAxtGM
X-Gm-Gg: AZuq6aLjRbX1kUcSx3xCodwN3pVUJlIzZ5xqWcFZ3tybjVV/miDfBYEWntYPWROVeAr
	eWqtAAbG5NdFz3Gdl6Dy7suzB7iEvo8Rjhli6BhNkoL+7TAS5LPD1rCsElAw48Y9yGOAOjrY8U6
	5tzub2WAgtc2sgh34caoAQ06T+mavuKnHu9qzVVkKScjWJbxP+ydq+iFucyENC3PxL9HPRzL+al
	h8+pVReZYnQHtNBv/02qZrStsr59I/ECtMhUkwyHq6+emdTBNRujh5Kjqb6s4een9YGgGbSVoGn
	Wr8PvNhdwk6KWS5HgGa4zXTDlRDebzOCWOkJxfBrWU635CV0ZuJ1kcGsJAmHlLJaFWYPlvgX4mP
	O1NMYyZlPw6Z7V492sCdATTf9RgmY3+ydPR6Nf6JwExHHU5h1Vdn8HII/1R7utwiHgyzee/hTIx
	GknYEF1wXTioPPPja03c/UdjjnTfjda20bqhWLzSpVv+2QRCfLeoh2QSM=
X-Received: by 2002:a05:7300:bc0e:b0:2ba:b16f:8092 with SMTP id 5a478bee46e88-2bab9ec5ef6mr548406eec.0.1770996135660;
        Fri, 13 Feb 2026 07:22:15 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dcd01d1sm6755006eec.17.2026.02.13.07.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 07:22:15 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Fri, 13 Feb 2026 23:14:45 +0800
Subject: [PATCH v3 3/4] dt-bindings: iio: proximity: hx9023s: support
 firmware-name property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-upstream-20260219-v3-3-df9371d29f5c@gmail.com>
References: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
In-Reply-To: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1932; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=xYhYEsPdd2+0oNo9iKHc5axKQXCMV0Of3fzouNXiaq4=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJn9jn0z93Ksb1RY2NT5ZpVFcP+F2yq5N09nRx/cv1bzW
 OTz1NdCHaUsDIIcDLJiiixnXr9hzVd9uCf4t2sGzBxWJpAhDFycAjCRp24M/4uPLt+5acs0E9/8
 ik/bi13FfvLHZeXosa9euGw+S/1nn8MMfwVfCnvZr79qEDTlx7SDZZMX8/wuWhCbx3X4WcsCtpn
 rZiwEAA==
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265398-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B73101377EC
X-Rspamd-Action: no action

The hx9023s requires a firmware blob containing board-specific
configuration data used to initialize its internal sensing engine.

Although the silicon is identical across platforms, different products
may use different electrode layouts, PCB routing, cover materials and
mechanical stack-ups. These physical differences require distinct
calibration parameters and register configuration tables in order for
the sensor to operate correctly.

The driver has always required firmware and historically assumed a
single default firmware file name suitable for the reference design.
However, this assumption does not hold for boards with different
physical sensor layouts.

The default firmware file name remains unchanged and continues to be
used for existing platforms. Allowing the firmware file name to be
specified via device tree enables selecting the appropriate
hardware-specific configuration when the board design differs.

This property does not change the existing ABI and is optional.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
index 64ce8bc8bd36..cc5b5284c267 100644
--- a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
@@ -28,6 +28,9 @@ properties:
 
   vdd-supply: true
 
+  firmware-name:
+    maxItems: 1
+
   "#address-cells":
     const: 1
 
@@ -65,6 +68,7 @@ examples:
         interrupt-parent = <&pio>;
         interrupts = <16 IRQ_TYPE_EDGE_FALLING>;
         vdd-supply = <&pp1800_prox>;
+        firmware-name = "hx9023s.bin";
 
         #address-cells = <1>;
         #size-cells = <0>;

-- 
2.43.0



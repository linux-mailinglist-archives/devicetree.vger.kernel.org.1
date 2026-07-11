Return-Path: <devicetree+bounces-324872-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rxWsDBuPUmqkQwMAu9opvQ
	(envelope-from <devicetree+bounces-324872-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 20:44:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAF9742841
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 20:44:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=TqtGvXEV;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324872-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-324872-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB50A300720C
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 18:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D361D306B1B;
	Sat, 11 Jul 2026 18:44:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC6D2D4B68
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 18:44:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783795476; cv=none; b=ZDi0KMxG2yfSupC1xVOVjTn6EFp5AvWSG9VEn3T+V2j7dTq6y1tCmfHMoWM1vXdMSvwSDZHbF8VOzPcezVqu6eKqRpsW+jIe7ejos+weQIQQaUf13Y2v6YE/jk8ksq/+dSvBeP+zKfrqOzg6T9dANSexulnpc6TwEUw7+/NIWy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783795476; c=relaxed/simple;
	bh=U2YoNQx/hGloZRC8McPJss1WdTnU2vgI7Fy7zmdhFok=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hRmcaEZ8CKCsvpK+7sDsqphiciwQ2NLHkykPvSvQiIA0i2h0NSHnB6bQEsCO3aZykljn2Xr9OZfoO8Dqrf515I+zUxuELXKRZjtK3DJjDJhJnMxZtRHjOlOhlyrNCG3skgstHbU+JJg+mA02luOpsaQu5PW3PWHG1bq/hhsTYn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TqtGvXEV; arc=none smtp.client-ip=209.85.221.46
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4758b2a9e2aso1137545f8f.2
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 11:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783795473; x=1784400273; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L/Qd/2tRCLWffwMQFEM05180CiTbv4f9HSRyN2+W50k=;
        b=TqtGvXEVhRjrovZs/mqpAa2ChnYVIgm+pldiDBazdDcC3St1AYEjU4oLJ4jvFpUMa4
         lVn1rnJ/WRv88ZqMNnVN3pYcY6L81TMo/Xq1rlKmSQvYJGKpRifo5wld1BrRsf1f7uDG
         9fY68IuC1nqF3Gd23zh0uU9r8v6cb6UasK0PSt7bzEOfSJBZzXltfTzd7QFjQ2ka1XD2
         p+L5BRRgH4K7YuQolNK+QmLcSiguao4VZNg5z7O58nPtxqT2LjcxtJagW0g+pPiezE7B
         B6optOoqbZRmXLjqPc819xKS2/H6YT/fZzV7wLVPAf3EvrsEHdo9i1QIuns1oLMSQTDq
         ICzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783795473; x=1784400273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=L/Qd/2tRCLWffwMQFEM05180CiTbv4f9HSRyN2+W50k=;
        b=kqnqLYgLAAZO4mhS3zne7H4/QdILVm7nAzApeZOqxd/wAMY6BOJNm2+HPAG3oQ740R
         v4e2PLhSLx5CYoQclNe3C7/I/n7YyRiwU2hqv15uFnVr5hL+nx5gP4mRcZ78px0ac68U
         vv2N4daPrCwabyY0bdezHsZRJOy/V83bMXRcdyjI7+C2lwnz0Wk9m9HGlnHHCs5zscqN
         V8bVTT+S5QqCfmHtnjeTRyqtV7XjybPuuH5qh9/h9Zx2vmMvERqtoxgxW48GIA/enEgV
         VdiHdCZSryoJpytYO8mYyMdkYsNRPmuMLryTmZCzBQMexgIT9110CfDLmDrys994ZvwD
         HgdQ==
X-Forwarded-Encrypted: i=1; AHgh+RpByAIsdZvf9goHZcECJWlpYeyF0yYkUOCBRYZy4M4ICWFNUwgvOvoQ3SbCWKprOfufyYdH+RlhZnNP@vger.kernel.org
X-Gm-Message-State: AOJu0YzcpVFQfetO0w9gNJ0LVyggofSL+b3GUPDqXIpem1tZelU2EnoN
	e6QWdhrIciUUydZ3DKaebbUx0IeJKQ9wiS8fejZV62pN7SBmrCaHQkY+
X-Gm-Gg: AfdE7cmKOa3uqP4bZDQCY6mQZxt/Drxo1k6iCaXJlWgHPKvnaXSOGdUnkM9ADX+wS1H
	lmRvD7IYWUEgB5m5iuVjWbenJquEHZO2kxrgzRu8ZFE4dOL8B5ctCRCIthai8DlxKQr/o7KVxPG
	hA5tbqRa0VSNqughTnX5MvlbmwgjpJgzeWaK7R/QUSojqgg0U/hd1BypW3AAKZIb/qKv9/E3yxF
	lDkKVQWyV47+yxB59yov9YV5m3tqiDTEE4VFqfJKw7fmu/N0Oze0k+jqqLuiv/XVxPrm6+rRNHV
	UylPE1rYOPaQAdp3qyLNnevUP0WoEXAbjLGhCxrnc71KVQHQBO0m2LecrjTYq7eVXGbBihvm8iZ
	R2+9PPafQVSCDJIIIV2IY+SaE7T0VJId4HVMoVVTnRU4iydiu1e8qgUqju3EGFj1OWxyD4tea0k
	BLvcaR4+p8IDoX8fGJkuBHKT5411vcMxEx+ctUVtLKeeV9WQA=
X-Received: by 2002:a5d:5d12:0:b0:47f:2bce:6f38 with SMTP id ffacd0b85a97d-47f2dcc6586mr3421934f8f.28.1783795473510;
        Sat, 11 Jul 2026 11:44:33 -0700 (PDT)
Received: from MSI-LINUX.kielce.vectranet.pl ([2a02:2a40:27ec:2900:e6c9:27be:161c:632d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d780csm70825745f8f.11.2026.07.11.11.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 11:44:33 -0700 (PDT)
From: Jakub Szczudlo <jakubszczudlo40@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	antoniu.miclaus@analog.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	duje@dujemihanovic.xyz,
	jic23@kernel.org,
	jishnu.prakash@oss.qualcomm.com,
	jorge.marques@analog.com,
	joshua.crofts1@gmail.com,
	krzk+dt@kernel.org,
	linusw@kernel.org,
	jakubszczudlo40@gmail.com,
	marcelo.schmitt@analog.com,
	mazziesaccount@gmail.com,
	mike.looijmans@topic.nl,
	nuno.sa@analog.com,
	robh@kernel.org,
	sakari.ailus@linux.intel.com,
	wens@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v6 2/3] dt-bindings: iio: adc: ti,ads1100: add support for ADS1110
Date: Sat, 11 Jul 2026 20:44:13 +0200
Message-ID: <20260711184414.1013686-3-jakubszczudlo40@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260711184414.1013686-1-jakubszczudlo40@gmail.com>
References: <20260711184414.1013686-1-jakubszczudlo40@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324872-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,vger.kernel.org,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,gmail.com,topic.nl,linux.intel.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jic23@kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:joshua.crofts1@gmail.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:jakubszczudlo40@gmail.com,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[topic.nl:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EAF9742841

Register layouts are the same as for ADS1100 but ADS1110 have different
data rates and have internal voltage reference that is always 2.048V.
Also correct order of ads so they will be sorted alphabetically.

Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/adc/ti,ads1100.yaml        | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
index 970ccab15e1e..28c5e2dd0ad6 100644
--- a/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1100.yaml
@@ -4,19 +4,23 @@
 $id: http://devicetree.org/schemas/iio/adc/ti,ads1100.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: TI ADS1100/ADS1000 single channel I2C analog to digital converter
+title: TI ADS1100 and similar single channel I2C Analog to Digital Converters
 
 maintainers:
   - Mike Looijmans <mike.looijmans@topic.nl>
 
 description: |
-  Datasheet at: https://www.ti.com/lit/gpn/ads1100
+  Datasheets:
+    - https://www.ti.com/lit/gpn/ads1000
+    - https://www.ti.com/lit/gpn/ads1100
+    - https://www.ti.com/lit/gpn/ads1110
 
 properties:
   compatible:
     enum:
-      - ti,ads1100
       - ti,ads1000
+      - ti,ads1100
+      - ti,ads1110
 
   reg:
     maxItems: 1
-- 
2.47.3



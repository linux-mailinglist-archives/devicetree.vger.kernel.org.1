Return-Path: <devicetree+bounces-259126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOgIJnDcc2mbzAAAu9opvQ
	(envelope-from <devicetree+bounces-259126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:39:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF837AA6A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63AF03020E8E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06B582FBDFD;
	Fri, 23 Jan 2026 20:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Re5pUkn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05B32F0C6A
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769200734; cv=none; b=b3lmtgAEQ38viRt9HskEijz/S6JbagSZcjshG4g6i5P2PofUKGEeVJGwOA3kr+28KSfUtSUqoOdMM+HBdtzMBEz5CzUSSvvePOlxTEJB6nyAWteQiX6Hi/6QPDX15SCTv0PJ5FEWj9gAzcDP4jPcGSNI3ZUJ6IxwQfsUQrxn2oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769200734; c=relaxed/simple;
	bh=xGdA4shyG2YCvuBGh2md3PDf5DNCGZXwZPSKvqxMkg8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J3fEI9Lk4xQyzWGgZXjC4gbrGlD6eEuoPou66MWetYafAtmKnU6mdcJ+8bRKSBlxQCsyHH3rMAf1uhZTM8L/BPgloAbabvY2r/Kj38nmuuf/JsW957FlKAb40EVYblRPoHQjA3ivyk7zIq9lFKlrQ+1SDwpja25WgDRApyUpckk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Re5pUkn2; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-6610800b78eso759974eaf.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769200728; x=1769805528; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4D5V2WHoyTIzltxmYXn2Y2Bh1DMbRJSg1M2EQIKXDAk=;
        b=Re5pUkn2qs5xraFNfWCHwGERp2ObHMdwej+DhjY5fO5QYiO28jZw6qIfA11clvvdOP
         CWKcAzxeKxJILzkSgw6nbPFNG5trUf16vMhBgk0w4MNEYQ9AGJPbjQuRfQlF7gMutJp6
         OvaF7mHq3ppovSX62doZ7lN+BymX1vxYj1+LYzbq3cAJdK9Tw2G1Qjcsd9Z4tfSXI98L
         pvUFMBo9e26Kwt6RjLARQz5pQVCpJcB3N3H01bKQ9qp1AfYTNO9APhJZ89nx0KBq1XK2
         gTXEJXVfjT6yqruCAvX3oOfyq2WDL7Xk4+fwqvsdrzck9E6UrEAGK+gowzzz3Smur0uH
         8u5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769200728; x=1769805528;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4D5V2WHoyTIzltxmYXn2Y2Bh1DMbRJSg1M2EQIKXDAk=;
        b=rDbq7MYwvnAZRBvdTmyr23M2869nZMJtEnphASTGbu4Gm1maV68SAqCrCHMdwR0iti
         Ym1rymNy21IZaR6NuT7hCC/a0L/efX2M3Pe/fVtSH4ZGCLCuuK5F8CGqLXco3LmMPZpl
         jfNuP5Z/5d0okWUP54MluFbyfPmuNwflHfVahV+K2Y9JWJX0qZxffyv3q1SBKTbCNO5u
         uj9FPbiw+dRiA/FKw0NQ+Q96zUesbKbLQLzMBgyrzVocLTAgRUqa4iDiACX7cDRsfLmk
         zLajOV8iighnnfWqsZCSfsDUVSN4m3dNxzrEybg9KWx0uAya8d+0kgtDqdxYd55/TBIW
         avAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzDaA3UQH3pxcEBf79dMj0nE98Q6PTGPndT4rLSkqASIpII7ZCMO7InkndenuABcusAVPZgHnao94c@vger.kernel.org
X-Gm-Message-State: AOJu0Yz563P7txfuFXjlMiV/SsJsTi5AiBgEDcRFInnsx+t3fxSElwZL
	FvXcL7mTFEEyIwzlznuoOLOxqju97HwFlnuzfmli7o1tJrQfzRYjMULLe1Q6M3zJmyU=
X-Gm-Gg: AZuq6aLb+NaUCxc1c8VKTsnLY8phxjxznT+jiH3+kNDgSch3wvA4V5wZtv264MqPDUY
	RkR9IXCRp3RQmgUcw1ssXHKB4RjKGTiJsP/omdfncGRh1URGBDcuFvSCrZ13rjt/NCCriU2PfC4
	smvVnj3hXEA70eBssCxKRqwDoSxZWMLNo9bgteptmOQblE8iLrfH+yQULQq+IgH1YywsT4glXrB
	gmPxVVLDMssvSzlR4Tev7FtqZiFKQjuXEUrOpKmGsogS7kxyeRNNtMpqjUESWSsr7oYstOnxfzq
	67vwU8fryjtJdf0dWR+2gwsEXqJ8v2qVY7U2kelSpsptWEovKzvx5xavFxQWJPWITtCtjl5B2Hn
	ZwcgGkGXXs3eBQd8Lw+BVGZqcaHJF3shLKu7wEHGHi/k5b5IxSofqh2ZSjekF0WH2VIjb88zYS/
	h8a0+xBFRdczpKLg==
X-Received: by 2002:a05:6820:807:b0:662:c553:f773 with SMTP id 006d021491bc7-662cab0af25mr1991010eaf.25.1769200728584;
        Fri, 23 Jan 2026 12:38:48 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:198f:2b50:c48:1875])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-408af888da1sm2167805fac.6.2026.01.23.12.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 12:38:48 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 23 Jan 2026 14:37:29 -0600
Subject: [PATCH v6 6/9] spi: dt-bindings: adi,axi-spi-engine: add
 multi-lane support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-spi-add-multi-bus-support-v6-6-12af183c06eb@baylibre.com>
References: <20260123-spi-add-multi-bus-support-v6-0-12af183c06eb@baylibre.com>
In-Reply-To: <20260123-spi-add-multi-bus-support-v6-0-12af183c06eb@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Jonathan Cameron <jonathan.cameron@huawei.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1434; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=xGdA4shyG2YCvuBGh2md3PDf5DNCGZXwZPSKvqxMkg8=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpc9wwf/DD6p6dx3xldEec+/4EaAeYpbAs1/F3J
 ScoCZH53nmJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaXPcMAAKCRDCzCAB/wGP
 wGrmB/9kc2C/18JRnJIfaukRhqgo7WOfAudo1S4mWl7ghysu38eESv1Ii+24C+i+pZDc5qvjOoe
 eI5v6HVsrrzLQQ5iAmky2qQZDSz8l7D2PiT+nD0rUiG/hN2XegaUWzToEo7AVFo6Oui6wRV30dS
 rDTdPbcYlpfCm6G2JYPHutG2zodpGo8OTbIXNh9yAoWIETW7RZv2baOeLrBS64VYV8rEWiVPS81
 aKlw9wc51pdMtySPTHQo6ZLDz7n29UXWIRrwNq3SAmZQDGJL/XhBxc8gOT+foVkeCgnueLDDqCy
 DuiA+Sz80qHv2DFurAScljF2UGTjeFn2Cn0yg125/WMnvhP/
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259126-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4EF837AA6A
X-Rspamd-Action: no action

Extend the ADI AXI SPI engine binding for multiple data lanes. This SPI
controller has a capability to read multiple data words at the same
time (e.g. for use with simultaneous sampling ADCs). The current FPGA
implementation can support up to 8 data lanes at a time (depending on a
compile-time configuration option).

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes: none

v5 changes: none

v4 changes:
- Update to use spi-{tx,rx}-bus-width properties.
---
 .../devicetree/bindings/spi/adi,axi-spi-engine.yaml       | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
index 4b3828eda6cb..0f2448371f17 100644
--- a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
+++ b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
@@ -70,6 +70,21 @@ required:
 
 unevaluatedProperties: false
 
+patternProperties:
+  "^.*@[0-9a-f]+":
+    type: object
+
+    properties:
+      spi-rx-bus-width:
+        maxItems: 8
+        items:
+          enum: [0, 1]
+
+      spi-tx-bus-width:
+        maxItems: 8
+        items:
+          enum: [0, 1]
+
 examples:
   - |
     spi@44a00000 {

-- 
2.43.0



Return-Path: <devicetree+bounces-273679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sM78My9asGmMiQIAu9opvQ
	(envelope-from <devicetree+bounces-273679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:51:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50831255E92
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8307631CD93B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E99E3D47DB;
	Tue, 10 Mar 2026 17:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IsoEibyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC74B3AA51A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164928; cv=none; b=WOtheufYCNrm4I3IqBlApjEtwxbHTVovk66mj85mo9BspAoLhPc92foyb9MO9/Z3L2KM9wfaTsRvPKGQ9Szp3EdY7r4Pksqp+XFjbypW2e38DlGfmclF2CD1zHSglyuZYkpObxtE6/bsn6CLckKEQwXUCA/C7zK4vZck3FfqBfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164928; c=relaxed/simple;
	bh=VjZb4CmtSrNzb1/U1B1dWD1qOFRyAd66jrWJtqkQxBY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PQFHFRjpmO6uJg7l49ivJpfY1/CP+vK/HrOl884BCZ1H0Su2iAbujMG8XKwhzVW3n6aRgH+MbQkmw98Pifvd+L6jfMWN12XR2QF5+a2fvr/cxWrCbsxlfKTrxU5nb+WpgF+BpsJ3c5jITUNW3yh/hRh6M63VNJsFiT0zM7osp4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IsoEibyd; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439afc58ac7so10470651f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164925; x=1773769725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHmODBhrZ3/O5W8NLFv7PZ5NCYcz6FiT2g9bwdQa078=;
        b=IsoEibyd6eSYCJTRF57S9KTAT1VtbsolYEiJ9aSmQ6AajwMQ0NyJeuCWi4vwxymHgA
         G0a3E6BLdlPVuDDHNjjYih9s52bOyaMFRB/p1sgu04K/YClI+vwB1R6Db+PigLKgFs3M
         0gbwTSQAweOVrUbqPaZstRe9DZfd/gl4hSbZnUlLDlQltfRFf+jUnEG8HJFbvQ0K4n0F
         D2QlJQG8kQkgXKqaxMbc3LrfHElZ3q25NW/rRsZG3FlaAC9cyVbD2oR/Re1rrP7uDPFf
         b8d1fm9jiDf12iZMJ7f64kHl3ZlEA+f9mfcxlWtdIqA7rQd+RFpWNN5TAK8h1Fiska+0
         Yhwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164925; x=1773769725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xHmODBhrZ3/O5W8NLFv7PZ5NCYcz6FiT2g9bwdQa078=;
        b=w8OM44/rfPR+sjH+8UhpouUQzukHSW+BaMG8X3tCWu4KU0PCb7FOCNiznW4b7nLA8o
         oUMdG83LLRJSvFMGQSS7T/7KLpCyTYo7zs7tm7jS2M1MuvRwD1DtErTwtEMU37FE/MCy
         2xNFNzSOjip2y3h8STrY4iASyytFbSJjgseHhE6wsBnRal44yhbJAgqxfB+R3J4oqt0U
         D5iAJqcgv93pfCjwV4Yibx2x7iJA3UqJ3dtt7lT/iG76/rxmY0FSpQRJclhPhW4DHJW5
         kqnhR1XyZFsR6SyD619m0WAZbxyOrAlCU0OIwK3KSivThNqmvcS2SPtr9AfOsTZ+aBZA
         yMfw==
X-Forwarded-Encrypted: i=1; AJvYcCU5/kl2f3LMK5QplKwU9TXZulH1gu+NB1AbS04VkjtohWcggaGAj0FzDYX3RprnYEJjlsDtkCPYdSJH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi8iQLaWZFFAApfe8ZgdIGn8XfHM3gmpdTcZR3EESVXTgWxGWS
	/8lu2+Dll/a3E7Gwh8RxJzxWoFA0HRvzJ1RRWXfqW2qEK2WITqeAXRRX
X-Gm-Gg: ATEYQzyWEnCmmgnEehBqlZnLEKAoHLbWV3Y002kpeyK6Jk7bN+dzZM+CXTdjKEu8m9P
	M8LWtioLj4OuOqXDishAOmOVkNtT0q+xR53E6/ColYDiuG5QiLQpXsLgpJWfJ0VpiNwPE2VHqY3
	CiDH90C9RV1qd7NiBXpBjyt4/hGEwmhkKhp/vXBHf6zPQLaEOKzfhqtIdwMRrwTYdpswAcMSrU/
	uRbxws+O2CrKM+Hb41nmwpySGaGaPDHVGxeCOdRlwHqpXHRzpy+Qc2XYMss9joY9Kak7UugLcaS
	tHVy/R8Trv0UedQHWMgMSS+sV5DjEwrSqb6mbGJ3kCLjO0B4SGrdGXEBN8aVjzPLB+cj6SHGgJm
	xrhK28jc5iTPFokiVRT4JoeZHxSNsRGtmBfv/MfAnttEakAamYSBonRzXHk2Iw3k6i/s8ws7b1c
	2OvO9Z6Smc7tRqAjhEFrGqi8/mtvEO+YDWcpU8mLJU7uGb4xQPP57RVjm19w==
X-Received: by 2002:a5d:5d02:0:b0:439:b886:20da with SMTP id ffacd0b85a97d-439da656ee9mr27128512f8f.17.1773164925101;
        Tue, 10 Mar 2026 10:48:45 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae45786sm42986166f8f.32.2026.03.10.10.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:48:44 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 1/5] dt-bindings: iio: dac: ad5504: add output-range and missing gpios
Date: Tue, 10 Mar 2026 17:48:31 +0000
Message-ID: <20260310174835.24209-2-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310174835.24209-1-0rayn.dev@gmail.com>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 50831255E92
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273679-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,analog.com:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,metafoo.de:email]
X-Rspamd-Action: no action

The AD5504 output range (0-30V or 0-60V) is determined by the R_SEL pin.

Use standard output-range-microvolt and range-sel-gpios properties to
describe the hardware configuration of the R_SEL pin. Ensure mutual
exclusivity using the not/required logic. Additionally, add missing
vlogic-supply, clear-gpios, ldac-gpios and datasheet links, and provide
a complete usage example.

Suggested-by: David Lechner <dlechner@baylibre.com>
Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 .../bindings/iio/dac/adi,ad5504.yaml          | 40 ++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
index 9c2c038683b4..c0b2d470949a 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5504.yaml
@@ -10,8 +10,10 @@ maintainers:
   - Lars-Peter Clausen <lars@metafoo.de>
   - Jonathan Cameron <jic23@kernel.org>
 
-description:
+description: |
   High voltage (up to 60V) DACs with temperature sensor alarm function
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad5504.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad5501.pdf
 
 properties:
   compatible:
@@ -27,16 +29,48 @@ properties:
     maxItems: 1
 
   vcc-supply: true
+  vlogic-supply: true
+
+  output-range-microvolt:
+    description: |
+      Specify the channel output full scale range. The R_SEL pin
+      determines if the range is 0-30V or 0-60V.
+    items:
+      - const: 0
+      - enum: [30000000, 60000000]
+    default: [0, 60000000]
+
+  range-sel-gpios:
+    description:
+      GPIO connected to the R_SEL pin to select the output voltage range.
+    maxItems: 1
+
+  clear-gpios:
+    description: GPIO that controls the /CLR pin (active low).
+    maxItems: 1
+
+  ldac-gpios:
+    description: GPIO that controls the /LDAC pin (active low).
+    maxItems: 1
 
 additionalProperties: false
 
 required:
   - compatible
   - reg
+  - vcc-supply
+
+allOf:
+  - not:
+      required:
+        - range-sel-gpios
+        - output-range-microvolt
 
 examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
     spi {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -45,6 +79,10 @@ examples:
             compatible = "adi,ad5504";
             vcc-supply = <&dac_vcc>;
             interrupts = <55 IRQ_TYPE_EDGE_FALLING>;
+
+            output-range-microvolt = <0 60000000>;
+            clear-gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
+            ldac-gpios = <&gpio 5 GPIO_ACTIVE_LOW>;
         };
     };
 ...
-- 
2.47.3



Return-Path: <devicetree+bounces-278375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFwjFfZ8vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D152DE215
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 023C6308993C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B963DE454;
	Fri, 20 Mar 2026 16:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D4C5h1c3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C32C3D348E
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025148; cv=none; b=kfFbNLx1KqSajblA7I2GZ+3t99LkkYwtPCuJg93BCsV3YEu08S+dPQT61Mxc+cBjdFD1Ga7VSQ9Skfm/B6k50WobuIh9ptgaHmJcVyrNpC/1g5MEscmRilfRDSPjHmw7kPKdAk9OIkd91QGxGd/AXTRMnGrYKH9sVOmclGAXVm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025148; c=relaxed/simple;
	bh=TDGGomY91nN+1JyvI5TZ4EVzE30ok0VSWE41vwKqiD8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yk323w4Qx3rxOUJt+zdXdZjlIg7aMhOFf4A4Q9bgFaJ1w9EpPSoPQP3eHGUjahYGtfIjd8q2dFU4eR6YGX1NB6g21cKjMA9XTdOzp2jITUlRlLkLIjmRMTaenmZ59my5mrcAjc9QWKxN5ZNYqKEMk3bUkaYmaAHDh/TyNjefRgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D4C5h1c3; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b93698bb57aso439546566b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774025145; x=1774629945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0j1VhXqL1sZ8EwZY7NLMpbNkl6FM/lHHiEwrtRqEHg=;
        b=D4C5h1c3OjwmIar1o1LvKWf45bI8Z62PgEO3mAk42Ke6vDUH7rDapPLufhh6ZLLo44
         lK+qOPBklDCxqtzPjIh/qLme3MKwcEU26GjH3OZKWKGqcMFN059GdnA+sgJasj2Agx5Y
         ODNJy9R3i9wQaGRZA9UqMkoxxN3EN2ZsHrVduVQNwohiVIHlBnFi/1irwZZ7UlRKzuPG
         PI9z1Ty03tI9dWIvE9qpAqEt/uz/JUf3WKBMju8IC7sXMrWhSggSRGdO3Gv1rx0sLrma
         lLBDnyfu3dI9/WD3RandDaBSTIHxm/wEqQjnif55CApo80EDK3ubKSo1HBu8aSZxJohk
         8jUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774025145; x=1774629945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j0j1VhXqL1sZ8EwZY7NLMpbNkl6FM/lHHiEwrtRqEHg=;
        b=CMepqSwmCzzqkRu3TE5Iuq600fi8vMRceVMsp+MuZl3+xls0VBwWdXXWcLuwONMqc5
         6e0IerF82iNMM6O85HWgtVzCBBwwwwEKljhKrKCA++TnoPFqQxSeGPBfHUUwmE28v8sJ
         LWLCUU81T6Z9n5axGKo/AtRpuqMzRNx6qI6p8YhcwJMY1lw923JRkB2eRYOmR0PRecSz
         uiZGzRxBepxXa8EWLPSmapDat8V/wgdkeNSRuhOlTVd0Va1osqQpdHXDsfamFEOyW0Tg
         uSV13OAcUr8iJv3AlmI99JLaHOkZbsbLCpYrKT3RST15M79MpGf/3Sgn3F95JyDcFBea
         gPIA==
X-Forwarded-Encrypted: i=1; AJvYcCXJmET+xyBsY0T4laDCGB1qyz/dvprMLBdI7i1Qlncs1JBcnv9xDVsLJv8A2DIlyOHnBjNWmhy27DXf@vger.kernel.org
X-Gm-Message-State: AOJu0YweUWpjwdV7x5o+bO9z3Y4SVXX2+gK2EAIWqbXGBudpm4EDzCs0
	zwAtAyCNTdmdAhoPp4i3CqxyL8xa/H9ROilJJAZulGlwZ7dNLOjJmOz9
X-Gm-Gg: ATEYQzx27LuRfgb+qdMaBRIzMk4z+r44IriInrXl6mY9xJwagRPF9tvvvL0wp0vTcV7
	dn+cr0/SSoubxs1CgxdmdnkAFy8xOh3wleeFgwv/lQ9O7WCR7pUzW9ULcWKnOoTATmfR44GBdWt
	JAtNBoEV3wXx5uwJ6Iwr0jKwywgVmryTWZLc02Kwyp2W1hBDwFMS/JWf9wuLiH4C/esBsyWYKNF
	Zi+orC/3crTdTZSLREgTA0vWXoCWqUpVRrPuzqnMEC4IMWCojmXskGdOK/YoXpADB036UzP8Cj0
	2VoiNjN5y/bjkWcLR5AZcQb3G7gZYb2ZQzfErN2lfQlc8ElzYfNMQc+JGPK74hRFN72BdY28brZ
	aPviW/t2HNl9+EG942Yq/6/bbC5j8DYRrj4+AWf18vwrudnmFv1mwN1q6KYdHeMRbxGXlt285p+
	1xwFqai9FCXafI47XtrU3og3ejTw==
X-Received: by 2002:a17:907:94c4:b0:b97:3376:7b5 with SMTP id a640c23a62f3a-b980fa62dabmr489218266b.21.1774025144508;
        Fri, 20 Mar 2026 09:45:44 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b98335f1747sm176730466b.33.2026.03.20.09.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:45:44 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 20 Mar 2026 18:45:36 +0200
Subject: [PATCH v6 1/8] dt-bindings: iio: light: vcnl4000: add regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-vcnl4000-regulators-v6-1-0d24d20b1a5b@gmail.com>
References: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
In-Reply-To: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278375-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.951];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vishay.com:url]
X-Rspamd-Queue-Id: C4D152DE215
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These sensors can accept 2 supplies - one for the sensor and one for IR
LED [1]. Add supply properties for the sensor - 2 for the sensors and
one external, for their open drain interrupt line, to ensure the sensor
is powered on before proceeding with setup.

[1] https://www.vishay.com/docs/84274/vcnl4040.pdf

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml     | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 2ba4d5de4ec4..516afef7a545 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -33,6 +33,17 @@ properties:
   interrupts:
     maxItems: 1
 
+  vdd-supply:
+    description: Regulator providing power to the "VDD" pin.
+
+  vio-supply:
+    description: Regulator providing power for pull-up of the I/O lines.
+      Does not connect to the sensor directly, but is needed for the
+      correct operation of the I2C and interrupt lines.
+
+  vled-supply:
+    description: Regulator providing power to the IR anode pin.
+
   reg:
     maxItems: 1
 
@@ -54,6 +65,9 @@ examples:
             compatible = "vishay,vcnl4200";
             reg = <0x51>;
             proximity-near-level = <220>;
+            vdd-supply = <&reg_vdd>;
+            vio-supply = <&reg_vio>;
+            vled-supply = <&reg_vled>;
         };
     };
 ...

-- 
2.53.0



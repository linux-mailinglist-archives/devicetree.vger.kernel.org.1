Return-Path: <devicetree+bounces-277748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAJJCrnmu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B59D2CAE39
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3B27328A10D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63953CE4BE;
	Thu, 19 Mar 2026 11:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jwXrFg59"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006163CF678
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921556; cv=none; b=sWE221UuplqpjbLv/KuJGtB9WEKUIwaJpvGGIj132islHiOHXtEjrX3ianXtuo/dUk+tR5I4eFXtY/bR/F9A8HMYKl/kOHweMTWZK0MGhgoCrL1YcjQVHWsXIBjCODIjc6jHHFNu9TgM+HsfnvTFAFrMwJ2suJ8+j0Hzi9Mpqk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921556; c=relaxed/simple;
	bh=aiPXxbkBtL2g1i14xqt2LGY7RPn85iUFNe9a0NClGa4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XK3dPj323X6WEoRlp6JunY6PwvYHlrxEvcqJMftherFf9eW9dE6JDJ2/8LV+ZFQPbDYKFxIlcDIuuEo+M1p2sv7MmDYgu25o1lAGLgsmexDS4bACDr7PbaPwZHcz2dzAInRrOxGuXK5+8pWT0mHUx6Oqf2Q7YKNlaNH10uPU5U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jwXrFg59; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b7cf4a975d2so113540066b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921548; x=1774526348; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZa0s7hz2156Ccpdoak30m2Gw7JDYqAQedbI9A51ZyU=;
        b=jwXrFg5916CCvzLfTU0t6sbRD+c7bpyZTKNdYFN3nwU52oGcjtegr1wh7G2cQLyPoc
         TaRQR4cDmr40W7OatWJ76qncMx0H12GXhR7oonw2qjjHtwFNwQfmc8gabdZwI8xgbtEY
         2/AGBzv1m9TC38AAqiwBbymy54FmRJu5Fcma7/0YJgYAKFi+OafHExB1nFaBO/q3YP4f
         ov76Qf52i9tXV+ilupxpyridYtx43+zMxGTTo8mMD30MCUQpo1rZKiQgy0l1idVvAGF8
         Sfb620oTBsEGo8w/HEwm8zck8uynOVgBpKZnKi5qI+a1wDKTsYyn3qc5nxV9vp73gUyD
         SxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921548; x=1774526348;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cZa0s7hz2156Ccpdoak30m2Gw7JDYqAQedbI9A51ZyU=;
        b=ejNlMQ40kC0DTCaRfgE2VqhQ3Ym5aiQjn1v3ArkeUO30+XA3sTvGBDgNodwwORT2u3
         JBzdd7S+Xs1c+46BOdpkmclmnVlPgX30f3kJVIX7nSVS49pB3qLo0ONWFLFv6gqCEyt2
         mwdsyubPSelkGXbzrOQmlsicfks3fpXUd92z3AQnQg1aK7xlqtGYF3b7Ok/YTADnZsJM
         3yD6AuLFo0aW9d9Ace2w+xP6Xv6mdq+IzZeCZkzSc6djxc7BtCxQNO0PmextpEbV7XH4
         IluWliSn7P3KK6W4jw6zbrdTgEy+Pf6ZbS2mw1c+O3yK6W21HujSTE9B813tU/WS+olT
         Ohlw==
X-Forwarded-Encrypted: i=1; AJvYcCUdDA8uguiSHdHls4w6hARttfzYWLQUbJCcfrkEBhCuajNT3vbwz14oy1HNaI6mPlIg9DTUvbXnK6wP@vger.kernel.org
X-Gm-Message-State: AOJu0YxEoPV5OUys82WMOyIUSL3f2pRcDA9iCjJtDfZ5dtF3QIFjC8Fd
	s7hXTN9tNiEStev2tWFwRfReCtughSG+W9Bg08sAuCKuV7oMuSdHU8Yd
X-Gm-Gg: ATEYQzxxYFfW8l3BJ3wB9Vr9oTUZjlR0sytRXO68Jvgym5xmp+APMs8kUuUGO7GwaK0
	bNtJww16hab40J1DgrtQSYWQV1dH5xXu/2gWwW9AK2isD/oY6G3mByedieVGoVjP++Xb9OS/qUj
	U2v+WAXMVycTO9z17iR5pfrJJv1k/V6kIf9JtcefZTCQh0Kvu8rlRiEym/LfVkO2Kb6d+REA6kI
	YcV1kwDpY9i1g4iAvONQkpAwoVCgtLuihivMBbsu3Y0k8qd9Tj6p0uiyUVPezw29FFv4DCZocf0
	9MjakzVbRuBajIeiy0nibOtEOo/dSWMxjaIdXDqCD15TaT6OkBAzK4GWYgQp+jWBt6S+7aXqSXD
	UhtY7bRphmTDTcBVSgDIdvQHUs9ifV38WG1CBNVZ0mWb5eux0jATxfwQ5dkuXxUFQIm6fS5+E79
	eI475dpcu06Y9WxDSrR7/xSQNkGtOOjFmBAKZd
X-Received: by 2002:a17:907:728e:b0:b98:667:2e1d with SMTP id a640c23a62f3a-b9806672ff4mr337932966b.25.1773921547845;
        Thu, 19 Mar 2026 04:59:07 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:07 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:39 +0200
Subject: [PATCH v5 1/8] dt-bindings: iio: light: vcnl4000: add regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-1-a025d3332805@gmail.com>
References: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
In-Reply-To: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277748-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.950];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vishay.com:url]
X-Rspamd-Queue-Id: 9B59D2CAE39
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
 Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
index 2ba4d5de4ec4..44882a90bc76 100644
--- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
+++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
@@ -33,6 +33,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  vdd-supply: true
+  vio-supply: true
+  vled-supply: true
+
   reg:
     maxItems: 1
 
@@ -54,6 +58,9 @@ examples:
             compatible = "vishay,vcnl4200";
             reg = <0x51>;
             proximity-near-level = <220>;
+            vdd-supply = <&reg_vdd>;
+            vddio-supply = <&reg_vddio>;
+            vled-supply = <&reg_vled>;
         };
     };
 ...

-- 
2.53.0



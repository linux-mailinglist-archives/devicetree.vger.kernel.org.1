Return-Path: <devicetree+bounces-270752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNgXGFtFp2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:32:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E4A1F6D5E
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:32:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE319315A2C1
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F5535F160;
	Tue,  3 Mar 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KR/3gsR1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47361375AC0
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569833; cv=none; b=BNn6ynm5AN6ZDksmCV28Kqbh7GNirL5U8g/bzLrAFr0rAoxpxyZy9+tg6ncKN0ah2ugq0/PKImbxFajawDh3SVxcFN2J27zDTS6bs0vjVxM5TFgbl8fSNwbbfiMiEd22hDjyj5jJNxotlGzjbf/sTsbS+S7DJ7KQwe+9wt+hk1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569833; c=relaxed/simple;
	bh=spKaTaRAyEFBjHN3O+FzQ0d1t72031D7XZdd8u1NUjA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eUekh8tuV5WcGuHoXSWhqQ1Oft1XTbkJYeYt9jFmHqQpJvi9L5irNi10hm8DWUF/USBeSGL6trJTKCJq1hak4g+4lwZ7IRX0t3sQg3PWuP3SZUB4w7LFJJ2TwhhFPsAikTaNDedSt0Ng/34q3oPQyAa7rY08bYSZhanj81VU2Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KR/3gsR1; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-899fa9610bbso40496476d6.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772569831; x=1773174631; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TQOnOVlc3pYD0aAOF8E7RKpLdhabU91Eut/dNYt+XQA=;
        b=KR/3gsR1+h69HmSJ3jbSF9lj6bAZG2MkJopRvt2Fxntaz9SeeLVCnARvlcNYevTfbM
         KNlXJvjGOsI/UXCzkRsQNBoXwZRhIGJsDWn4qetyaLUO3ZxOetljkb/Kqk1qCgdzGRbo
         pWCajb5tGzjNA1Tf/Vfohj5Njob1TFITQOe0uRgInyyQ9XVqZ/DVQWeAkYWBibaq4UWv
         5EyiHY9Oxgdp4q9hZPc1wlEwcMcTIuqjYcGHMM1+P9OQhrpm6eQaxmpsuUO4AJEGv7y1
         mezVPYVtCI9fa4Y+1ARVbdgzXjPSEFXtGscnZ++iVmQ57VovDRuU7RpZFJazExq11W5F
         5g8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772569831; x=1773174631;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TQOnOVlc3pYD0aAOF8E7RKpLdhabU91Eut/dNYt+XQA=;
        b=Nk2xAkPaA/TLCNfYaUtLttv2B7TR5OUgg1WFO0pk4A2d3TkhI84c4It3D5bzzhrf92
         EKWGIvDNIWuV/wGtglkaub8plxLpeMO3JZjXWUgyxIuFbhEB5vSUq+2PyQCnoVGkoo1h
         RLsGS/YS72ThbQbcGXgCqEvd6jlMYC0tbCiJM43lgoirq7NEWW/PISRvc1SEMd2NA61d
         bpKVG6V2o+j0y3uK9MLy25am6XWON4wtIwHxycqv5VjxwdjWtDkpSUpQnrsbap6oRoyP
         aA1HvzJNtLBlpCnIRe/CzLlAIMLYQW/J01wOlg357NK4khtKqgZwFmJfgVQt+4nuLKO7
         GF6g==
X-Gm-Message-State: AOJu0Yyl6I7mMkn7aEyru7mG9iiaTOi+BiexfyO7k52Wu6tI5MC91nQO
	12I9NUDlG7AWlNlnVcJWJYO/6px+Y2sy2BDEzMvJiMKDfBxLy4gGik1g
X-Gm-Gg: ATEYQzwmyFTiKyox17aERNF+DMdYUo/DYVHmggsuQ7sErseBV4mTWxOABPLiY+cFwlT
	MSbNBuAhb378dkbHJqvOZADqMaEAvHBV9BWBpBOgLtxKIIJ5xVh5vi0gAhzm1AYz1+nYi7wZ9yg
	eecQwVxqVo0zYx6aEAT8FHB/KlZdbJFi8ujE5isquDn3pfHbFm7fii5sM8j6X/K2F0Zp58pLCM7
	qafWf7l8+PHkSi/liAYXPgQPMS6Qxh38UuLjW+UaZsvY2PlxjbaXxIxq+4ffQ56wNgOrnYwBszl
	Vrpz7+W1feEJDxE1wtrTp7Uc/xdkX/zwYRLX31Oqh08UyXARSQM8CxK+Z+deCup8F/Qa2L+Xo3a
	GJUR8i3vDC2AgmsWqEx7lshmqlL5FJJBl+kgFgBv95+xmqZcTTja2iL+mVVcMub21uqX1c//atD
	E3sf7G/aVK4NRnKajarZ6QjZKH0uPD5og+NTYtm6AGtNZtEMJM93yk4F9UgdWr6amw/pj95x2f5
	BgpGUuLRQ0=
X-Received: by 2002:a05:6214:17c5:b0:89a:9b1:a21a with SMTP id 6a1803df08f44-89a09b1a2edmr39390026d6.25.1772569831011;
        Tue, 03 Mar 2026 12:30:31 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf564c27sm1465032085a.0.2026.03.03.12.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:30:30 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 3/8] dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
Date: Tue,  3 Mar 2026 15:30:12 -0500
Message-ID: <20260303203017.511-4-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260303203017.511-1-bavishimithil@gmail.com>
References: <20260303203017.511-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E2E4A1F6D5E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270752-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add compatible strings for the Doestek DTC34LM85AM Flat Panel Display
Transmitter

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 4f52e35d0..7586d681b 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -33,6 +33,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - doestek,dtc34lm85am # For the Doestek DTC34LM85AM Flat Panel Display (FPD) Transmitter
               - onnn,fin3385  # OnSemi FIN3385
               - ti,ds90c185   # For the TI DS90C185 FPD-Link Serializer
               - ti,ds90c187   # For the TI DS90C187 FPD-Link Serializer
-- 
2.43.0



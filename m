Return-Path: <devicetree+bounces-277292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ByhOQu4umlWawIAu9opvQ
	(envelope-from <devicetree+bounces-277292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:34:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D06A2BD39A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DBF093016890
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD06D3DD516;
	Wed, 18 Mar 2026 14:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="VOqz30sv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BF93DB65D
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844401; cv=none; b=eonKkCxbbK8NVo++OvhZAh0L5Ys68nxwZ84ar2t+Krc2Q7Cnizhe8lCg1M4QPsYvs+yjITlcSFB08qJepi3Oh1Jk0PP5wVT5VxWMlEFrkzjQ0yuQjgUeROfuKJh3io02eUWNZem0rYaRJqJcKSlzVTlHynGALRjXqx+4HH0C3Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844401; c=relaxed/simple;
	bh=Nf4NOywSXVhOZeAxW30T2QFpp+SRZKKoI+FdQwqCvkA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q8hZHZ5kSC/Y9oYXVdP4ZlpZHAqjbA/9YTWWufap0JSUqsz8tMFugJ/sOMeShyyyR36kbAiVKJFHi+YDs9rT97DRLV3C3x1RVKidbrZP5SrCcKOsvKDi4sBalHjhCVW4hyAg6l8ftOyhLyu1Nfnl/B9SFYeDmpuEufkUBSYX43c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=VOqz30sv; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-485445e80bdso60073095e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773844397; x=1774449197; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T6FNiGJVrXwKHg5+eSEHDGqgSud+po5BW87ZoAmXM6o=;
        b=VOqz30svDBZg7oLp4UdkfoikCAOrTuyiYXJmmVNPxn73DeOLmObxWFykX0YJRX7AqA
         R+QRuHNzDyjSHGQzjN+IqIusDYbMgerBWPgIH3isJW0zSS4qscRez/jL79xBOaQ9vqU/
         4L/zNJ6B78UECokwbmabPWRvWjwONbnLNYfdo1wBr5uMzXmtS/Ka1tTgCSsq8iB2pJOC
         GhwT9mkmFIIzykZWcdCwCp1AaegpN3KqC+zx4gjB6FDEISVkOYeKHhY0mfai3TI85EFw
         SS6JT4xEm/tOcJo+tAujVjZPUnt1VKKMekiD2i1+g6Ytc/4CGvZP44BniHkZClkANKQw
         GlOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844397; x=1774449197;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T6FNiGJVrXwKHg5+eSEHDGqgSud+po5BW87ZoAmXM6o=;
        b=UEM2078hH9JFm/JRKdV9r9cF7jpDH4LmcsVGSPagKTHJNupla9GVqBP3LJVDOvSIr0
         jbZZf8OB4utLPGxVOxvjx5hpMfB0piLwlWwWXgvz2C1gk3szdHbh/d++R4/Ka241J6z0
         VZTkbrMZmfaT4RiC3ZBai+RVc5x5W3XZOG2evxpcgogwrc+wkN5ZS6AnH8wFpqi61MrZ
         OZCJmJ9yO3/4yh4+poKvvE4VZ30msp3qLKy8S1V4lmYdCJZ09iaPg1aivrIyoyzo/gBV
         PEeIDeJjB97KnmH/UQPVIbmQ/ck23G9x+AviByC1yaeggCZPMy0L/DaC4JQwzA7zsgaz
         IVLg==
X-Forwarded-Encrypted: i=1; AJvYcCWX56c9h6k7NptxD1nSJF0nWWrTZYOGyNsFImg7wh+rmlTTs4s9PU4qMi6jkE+OyPHcJa9qnVuGlsSM@vger.kernel.org
X-Gm-Message-State: AOJu0YzzzCvZybrsn8e8ztmeeWD7wLRXSyRIPhwMlRnMF+5qRIEovpXU
	uzIvmX4od+vaOcDBq5EAvqkYBgxQJn1QfBNFW8w7GlCwovClMmYx9V4rmsrkAKtXf4Y=
X-Gm-Gg: ATEYQzwOx46w8erm1xafJib/hwOyv1tGr1U7et4na1uchUd97uibUlwH1j5qteJtaOg
	hiRySMsxz+Yd7dyUEHV4TcUw4pxG2G9+bKrotdn2pJZtHwiqn0NLPJoHbDfvdfO20qvFF0IIVkW
	+xB50Pp2cs1J5QTjwi0J4uYDoG6RhWgSM9SPrZAyKxEczzMuKGOg4GoDk+St133cQMY073LEADs
	kcx9t5/gtCuMhXiBsVMXW+pAxHZQ6K1I1jmSXwqC8ImC3AlOxqSTDhhE2fnxMVGIXHQnIloQm7y
	o5HtX8FNxl4U/Q8yyP4RCNOG2BuvHt84gtUjbAgMYTECzMGK5hC7fOV/5oSm0ZY3NoicNGcVwZx
	8AUwDsVpj1v6cYaPgcT3HVUi1D7JjDwQQgPXpIMqjodrBvvSIQpiM7Bbunzy04B/lCzI7c39YEn
	S4aHG2PGM7lhp3gfQSAHX4UZZ9IM3hi+SG71A4Z07BFoLAD0vpI7fOwNienqk6D6jMXGjloHY28
	3cavWLIPU5DbWU/
X-Received: by 2002:a05:600c:4685:b0:485:3c66:e230 with SMTP id 5b1f17b1804b1-486f458127fmr61968915e9.29.1773844397154;
        Wed, 18 Mar 2026 07:33:17 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea8fb0dsm270642085e9.3.2026.03.18.07.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:33:16 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 18:32:54 +0400
Subject: [PATCH v4 2/4] dt-bindings: usb: richtek,rt1711h: Switch ETEK
 ET7304 to use a fallback compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-husb311-v4-2-69e029255430@flipper.net>
References: <20260318-husb311-v4-0-69e029255430@flipper.net>
In-Reply-To: <20260318-husb311-v4-0-69e029255430@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1387; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Nf4NOywSXVhOZeAxW30T2QFpp+SRZKKoI+FdQwqCvkA=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTu2r5k6QO9eaLbS58pb1OVOd8p9c2hpqGCUeXio3mFh
 SdtjYW3dExkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDVj7cw/A+71R4454XJIUG/v0cVp3zz3F3p9MakofJ9+YH8xAPsu14w/DNpsHX
 UnhE+3+pw5bMcp/fyv+YdOSxx9sqkOb+ijjL7BfIDAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277292-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,flipper.net:dkim,flipper.net:email,flipper.net:mid]
X-Rspamd-Queue-Id: 8D06A2BD39A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As stated in [1], ETEK ET7304 is identical to Richtek RT1715, except for
the VID value in its registers, so reflect it in the bindings via a
fallback compatible.

As there are various TCPCI chips by different vendors reimplementing the
registers and behavior of the RT1711H/RT1715, fallback compatibles will
scale better.

Link: https://lore.kernel.org/all/20260220-et7304-v3-2-ede2d9634957@gmail.com/ [1]
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
index 1eb611f35998..210090308e7c 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
@@ -18,10 +18,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - etekmicro,et7304
-      - richtek,rt1711h
-      - richtek,rt1715
+    oneOf:
+      - enum:
+          - richtek,rt1711h
+          - richtek,rt1715
+      - items:
+          - enum:
+              - etekmicro,et7304
+          - const: richtek,rt1715
     description:
       RT1711H support PD20, ET7304 and RT1715 support PD30 except Fast Role Swap.
 

-- 
2.52.0



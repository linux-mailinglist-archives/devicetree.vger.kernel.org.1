Return-Path: <devicetree+bounces-273855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNutKiEKsWnhpwIAu9opvQ
	(envelope-from <devicetree+bounces-273855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:22:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1188525CC9F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:22:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE8223197332
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713B136C9E0;
	Wed, 11 Mar 2026 06:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bthMdj+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B12E36BCF2
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773210112; cv=none; b=uC6MYzgZySz8icfEHZq/X4cOtks+wKm8LV5UXwCrb2T9buUKgRZQJY17A9+XWkYc2aLGBu4Q9d+oEw7KlWc9QYuAZgImLAY5VImdhsCU6NkaED9Lzum4ipEQIQPoMyqLktaTzRQfe5KQQn7u9e+ridazTsFHZudvI/7/ZZYVWmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773210112; c=relaxed/simple;
	bh=505A4j1K+3BVyfKFAUJFkb0POt+oWwmpy0RpscQYCVE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ng++wYnfcKAm0Ceh1SvYb73LTlaigMVc/PyNi6GtdAyFvBr1prVTw7mdvwrEuDhCsMPkqGanKCKHGhTrpF1obw9tUONNCk1BhKcclbiUtZ9FzLCOdUY2IB3Q4PXvsu/ExoQJ/jspe3plmPDL1DsRmH5IFy3/ZN7LsJMQl7RxjAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bthMdj+F; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2addb31945aso99134945ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 23:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773210110; x=1773814910; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CAxjuWc6K1jt8cRne9eiJroow903OnF7+g9JiBxwTFk=;
        b=bthMdj+FmeO3OE6ua6XVCI6s9F/rPpKjMQc299H/GDjzzXbwsBuOi1tp5JbJeBaK/m
         +KjSUMdrKEnsk5AUwZXI+qCBv+T4Yxai1YoZuQm94Y79yKXRiGPy4vowZeKmEBXRkt3n
         OtJn/RwzBSZPaS5XG74qSSebN8VEFA24Ui9Q9VT3K6T7AObTIbO79dWc/1Pp4scceuvf
         t2I+3P6M4qscQ8Mk+GTh2J9NFdMTDn4mNfKshWy9MwR411ShA6C2UZ4DHjHR1KtEdgDp
         yzGMwSfEBwJL2kXVjxQKR2CGaTfZv+cl7Q0Z1Bc5zJxyoJIbKS8zw1++fOCwOtdhyvHv
         3PQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773210110; x=1773814910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CAxjuWc6K1jt8cRne9eiJroow903OnF7+g9JiBxwTFk=;
        b=KJCCtGj9MZTdYNCo85IzD1q4GyyrtzlyuMSmvoG+bEWhkUbvO1XVRbbrvTDhQJlrRH
         ZIqlGXEHzsmphkP2RXeGHxrRYv9B15k0tq8/YA8lVfsONv8w/1BOB3ergvzJocrSqBqP
         SWU9l8UARjyLdoo6CiJBYtbU8PjqLyobit2QViyx7H012blIdv2WIRpxSrZ8EKhjU7Oc
         2nhiLG4OWH2RoQ1rGM+u9DMloHAB+ZKlWY8sc30j1LOLwO4dVG6YURPdxObFCcTizjLQ
         3L7YyN46tOQkD8NSYABtl09yxhgLGfO+qBIrREbBFiVs+poGr0MXrHQpkDV4fzp8+po+
         u1Eg==
X-Gm-Message-State: AOJu0YyqhFynjTG0S8hJ5364EZypRkyOGSYj0j8tNBkHu4nxVleqFZ0O
	1UM21QLHz4y5sPLah05b1pIbo0/u9dOKCMDLjFy0834vD1L+hmX+zsDsD2hDig==
X-Gm-Gg: ATEYQzyVfTY3UYFRdYb1NEL2MKd0D/nSKP9MIm6GxrnKj3+n9TSqWiufEZzWxYy9zjz
	OlQH8dN48dkX7NRYVvDJVLPXkKhtyOEv6z9L7P65jSgOo8e9YmAmv1fZH6jkNnf4o5fsh/S2GDY
	HBUvoAVXmA7aG7K46W6KvWdRf8bIJZZxIobwHlXSIR5nwUAkA4oYTXrkqR/5XEbdpPxlVuESi8h
	5Dnx6i26Eau7BZcPcU1LbXL1hOz0+3jjq+a6/vYS3ivwID3jLWcPimncvQ0DWdIcagqRzHvcqjQ
	dMhvkMiOpYQcMzef9VfcaxU9OE0kIutdklCAeKjcu9UEuhQ64htRQVdxndHrwaSkg0tgN8hc2XH
	zC2gCjGTDFzKb/ZV8bEUzAzxmRjmdLTnzkiM3vrHZgNteMoKsPql57HtS8gekzDBc+5lSXGYdfE
	C7qp7q0R+QOgkOs1a50T1fm4z0MpWHkeQ5u54NEpqd2LHPSkvREap6j4aAWazSGSmonvD6qKYpY
	CE5nRk5fCYBIg==
X-Received: by 2002:a17:903:298b:b0:2ad:cf11:5048 with SMTP id d9443c01a7336-2aeae7c7d39mr17260585ad.22.1773210110459;
        Tue, 10 Mar 2026 23:21:50 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdfa9acbsm1008019a12.32.2026.03.10.23.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 23:21:50 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Wed, 11 Mar 2026 14:19:28 +0800
Subject: [PATCH v3 1/2] dt-bindings: arm: aspeed: add Meta SanMiguel BMC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-sanmiguel_init_dts-v3-1-2b4d1ab7a8a1@gmail.com>
References: <20260311-sanmiguel_init_dts-v3-0-2b4d1ab7a8a1@gmail.com>
In-Reply-To: <20260311-sanmiguel_init_dts-v3-0-2b4d1ab7a8a1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Potin Lai <potin.lai@quantatw.com>, Potin Lai <potin.lai.pt@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773210105; l=894;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=505A4j1K+3BVyfKFAUJFkb0POt+oWwmpy0RpscQYCVE=;
 b=A2uKouFUmFPpIc+1d2JM6DuRLNpKNSsTbf5qhXW5G0z3TWQLHVqz2DyRpNDVzyOfvo536LvZ5
 DPEacuxk38KDBVA2zulneYlS2HN3XfaCIiHMNfEzeRIiVOxEUaJ+RNR
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Rspamd-Queue-Id: 1188525CC9F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273855-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com,microchip.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

Add Meta (Facebook) SanMiguel BMC board compatible.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..6c84e6c80978 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -91,6 +91,7 @@ properties:
               - facebook,greatlakes-bmc
               - facebook,harma-bmc
               - facebook,minerva-cmc
+              - facebook,sanmiguel-bmc
               - facebook,santabarbara-bmc
               - facebook,yosemite4-bmc
               - facebook,yosemite5-bmc

-- 
2.31.1



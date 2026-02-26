Return-Path: <devicetree+bounces-268599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YITyGYTgn2lLegQAu9opvQ
	(envelope-from <devicetree+bounces-268599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:56:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C93431A1269
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:56:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A595307384C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9075038A73D;
	Thu, 26 Feb 2026 05:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CYh9oSoO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF0838B7A8
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772085376; cv=none; b=YNAK8OJ7ORlI+2v9ufEfD5C0idvnP2uXySD+424RyOIIaT7tH0Nr4rEwyZAlLkvQcUv3dwHF47zwDO2S9K+5ZawwCL33oOD98i1IwkJAfwHxo2vjFhbdWAG3kJqnMj5wmQhJRIu6zMYF75vXzyKo1/MB8Fs7R3RbM6uSR6t7yws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772085376; c=relaxed/simple;
	bh=IPy+g8NnyuzxZwBLandNYCiGTrxmuX8xcum8AGEVp2g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kPdbQGhPBIjjCJXNLx5uKj/MgCF8iBW+V/zh4PCwDbeIxiAhWDATWuIxkwClz2ElunSTKjWfYBkAtDw8zLXIOHbt4NUZ7R8rER/xIz+rSyQl/O0cfd5w4LajkaRcUjxeiw0Kb3bQMtSMaJfrGnP+NmxKiioOrq5aX1qU5XOMFaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CYh9oSoO; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-827336c0994so525611b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 21:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772085375; x=1772690175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2M1mDfXgnz5T52hMj8GNJ84lRse5GAheeg5uX9GLBPU=;
        b=CYh9oSoOBJXBP9dEs1PqkSrMKRWvTGkPd1PmzTy/GIh/9kapg/KkO296O1dKaM12o2
         cmt94aeM7n3hS3Ss/gVTuF0e41BG6OYOYHW3tmRvvwAEe13qSqb3mAfe3m6y7CVGWz1+
         jOwIHSHBLRLD2UJZNCX8DjrZXQ+aw+V8bRfpfxAUW4pE9l+eq8fgDHwMWAwswCp6yqqp
         OFiQZMY+zAMlQAumKoQbZu3ch51zBpGYUH9PYBmtuWv3/KaPN3V1GzO1CGCeCJXzYy+/
         y7TiJ20YLyQsGXrjGH+YWYufaSgeRg8Qu3rGICgm7hOYIc7GXg7SyEmwWlX60AjR379T
         ph/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772085375; x=1772690175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2M1mDfXgnz5T52hMj8GNJ84lRse5GAheeg5uX9GLBPU=;
        b=jdOU1tKVf5/LH+aPKNfj4ZjiOIZjt1x9i80mHGJqJnsJLe5B4hV3mA8a4KJOzwxqVV
         +H//tPjBajEA8j+HYcNdgbVeGwtJs5Lg5dosLudaL4znFyf/amGOseSuRIaxJFlTuU4O
         GrIgrL4TDsPqLqtz4471p0Lf6gAFUA6THPKlbCvkrTstaneaxJ/dP9ExHluAzkfwXXoQ
         yQ7ERPJfwR2YtVht4xz6ai/Gl4RHfTijq91XESmTneHIceNxwahmieONnponOjNVAD04
         9INPmmdAponCMEQkP5EMWTWLI/N4ZSiwA3jyHCFwSpWWKXZNJsWPwQXIeyeD3zV7sULr
         Itgw==
X-Forwarded-Encrypted: i=1; AJvYcCW/1DBaL+5EmTbBtxpaRRQLjzPHH5S3qUKG1zIbE/3ZRG4CtkLRFW90/WdbhdobD9k2bKxTWSrrbAc9@vger.kernel.org
X-Gm-Message-State: AOJu0Yys1mzcFRT4w4AjXCybv5dork1URS/rj0YcgofNbogl6FKpfdr0
	8FefXqKQgprEdQtZKjaJyN2lPmjKKMxW78TRYNUIbLlJvt3eTM3uZK3N
X-Gm-Gg: ATEYQzzFUZETBjJrkGxJiy3VUvN+0Hcy+kTNdU9xum2lWE6BUBMrhHuU4yzdeRfk8+X
	Eg4c1Ypvy/7RGGz9mScMt9wIQsQIh7ytVr5oKyUDlMzVcVevIS+W0CBhFiZ3SmymxeWqwejmrjU
	Av+fswl5zJ++LxVGu/k0v0A0f2a37bv0ZUdiIKQnJYTHFTFYX9fxKi5yNYpP/NTPTm88QSyt+nz
	GA/0bOKAQE62KqzfTJEOMEvPGCB6nME8ApGWWEFdWkNBFu/H6nsS8UDCrQ3RrLZkklY21Jl6zvW
	hkVkNb24kJKRXd7lgLHEjYIdrbq+R3V+51aajGlgo3FbOoiSMRVnrV6l0NevPEAHecPeajCYxv3
	RDTMyucqTX21Co/ufdMTRBGQSZnDI57fBR52lZ+/inG7UU9a6zzv7F8afIW7/Jql4aYy7NFZDPq
	bV0iUqlXyZC4NAcKfo6+pvJa9izjok/AYrD/7A2LK8i0cDbQ5XyxPJFLmAs4QuYBlhDgVg3QU6n
	DqVffsjm5w0wkO5JmtyxW0=
X-Received: by 2002:a05:6a20:a103:b0:366:15a0:896e with SMTP id adf61e73a8af0-395b1d2386cmr1678863637.16.1772085374725;
        Wed, 25 Feb 2026 21:56:14 -0800 (PST)
Received: from pk-pc.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa82c284sm767851a12.23.2026.02.25.21.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 21:56:14 -0800 (PST)
From: "P.K. Lee" <pkleequanta@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jason-Hsu@quantatw.com,
	p.k.lee@quantatw.com
Subject: [PATCH v12 1/2] dt-bindings: arm: aspeed: add Meta Ventura board
Date: Thu, 26 Feb 2026 13:55:20 +0800
Message-ID: <20260226055521.1655243-2-pkleequanta@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260226055521.1655243-1-pkleequanta@gmail.com>
References: <20260226055521.1655243-1-pkleequanta@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pkleequanta@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268599-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: C93431A1269
X-Rspamd-Action: no action

Document the new compatibles used on Meta Ventura.

Signed-off-by: P.K. Lee <pkleequanta@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index aedefca7cf4a..afabfe22c8f3 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -92,6 +92,7 @@ properties:
               - facebook,harma-bmc
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
+              - facebook,ventura-rmc
               - facebook,yosemite4-bmc
               - ibm,blueridge-bmc
               - ibm,everest-bmc
-- 
2.43.0



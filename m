Return-Path: <devicetree+bounces-271523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDbIN8dqqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:36:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FD7210A64
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:36:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A065304672E
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13EC386579;
	Thu,  5 Mar 2026 11:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O2rjwZ3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9818B38F659
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772710583; cv=none; b=HqKhW19A5gHKaayWIeK/zwjhMOXKdVIL/pOg4lWHSaOsPONyXaA8OSonkPSPaFgpekawBr0CTxtcbEQi+AKFponDveK5MRHY8AqRCRdv6c8dYEBeJ0dz5m82jYyYFglmdrlNgforqw04sROsvBHRRChonNivBG23QyJwW/5ukAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772710583; c=relaxed/simple;
	bh=wPZiFdqCiDOOFye8FKOQoufL7cyIaxgiXa67+xHsn0s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z99vUD4cbsYEIxTLom5hpzB42NlkladI7pQngKU4a917lg1p3DTRwfB+w6Moh8/eUUdkCOPzNiV0G5UUMqlPclhRUXOmw1q+uTq9TP7B/7D2RHlLegl+IiiJxtMPMc6JedzkC1fczldc843QP4Igs1ZEFshnEmbTIkhy35+SnLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O2rjwZ3M; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ab46931cf1so57561165ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772710582; x=1773315382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HkTY0vM9EzW6XUSGNuKIJpMIFfDu1qpzZf7r+qP4u6M=;
        b=O2rjwZ3MGs8fPGfezZHnivOTuUKLLHmMEUwvSw4LgnsEKa6vcyN404kuUz8Ni2HkIx
         oNkI9VpBBDeI0DdS8NjNhBrr5O7m11D1EFuy/AI7kgvehsqVpK0tR0r2kHAeIJD2TdFL
         ODrmw128TOWi2AV5sE9W3jfGCTgw8gKBPMMm6Nr/o/SwPQ+fW8Si4ROWRUU+VOBCYB0q
         jGgkZVUJ4XFTCQjiiFgV5DvnbdUUeD5RvsyY+aF8vsAZp42onYbBroHphAcyPFZmQInw
         M5XLxHmJs01EtD4SmUPHyPZEwwmqP7xONtxhcDyPqjHt5tREVdwR8IDry9aSTKhVWVCc
         +CSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772710582; x=1773315382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HkTY0vM9EzW6XUSGNuKIJpMIFfDu1qpzZf7r+qP4u6M=;
        b=Ruh/rrU4nBLltHq6uyz4hcDkAdaYXKy7eicOvw422qsZDNVTChq4hUFvpqRlXxtAMd
         EX1igWletm5tYIqh5bm+qOfUEu5oGl/mQK2/bBrC2iF6fWjhNDw6HlHEcvnXuAa06a2C
         OIcf5Na4S8Po5yXMbxA+aV5MRNbquaIpoaD79hFieVHtraFuXcvrRmuU7Zl6r1zsucG9
         mpkoQGLNkdRAhh/BWSzXzGx7ntUh778ILw8kTYLM8jhEnHo3Hj1WbNcf09MXQZp7M5gN
         sR4nw6WODh7a5DQWAXwsW4h3c/jpZPv7nakcQ8tJlviEbuTjJren7Rq7uGpbnyfBSVa4
         udhw==
X-Forwarded-Encrypted: i=1; AJvYcCXPAIxd0R78bt4bbrqAR9bMIdTv+4GfkVvYHq4W/iMoi0Q5QUeks/YSNg34YEfdqDWnv9G16Tyzro6b@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4xNw2hhB7oXNser6t9Dbep0xakVqnfkzyiU9uvC/SdaUOrQuu
	WQoqbxHeYAuCOwzRvTCgcpWnIY/D9rOaNAAnmpXU9GbtD2ET0VQMgf2j9XyZjw==
X-Gm-Gg: ATEYQzyo0uSd/I9kR/ylSYjQUqG219/ztcyv1DslfSVPa1AHfxtM+XniZ+L+rkdcmOg
	WwFj6FoniRRkySL/ekNOGWz/J7kNKeH71eTx/XsB46TGRVUhT/ZevPvY0yHDfQmmKMc/qlaqCpo
	0nKQDippLXR7nIkWDrjI5ELaabLadquJe3W1k6kivi11G0AIB3XPXD/bV1UuPaff6EQbOHzSyZv
	2d/j/0QuM2aBc8eUH/vsyaTghV6FLq98qT1rQZrYiXaH388gxtz9IKEk/tA941K5qJ/fk70/xJE
	U/thJ94aFqodI+tLiakDJIm3m7aTUu7a0OuBLFDeCnhZjvKGBys7T3beHu51DqL91o6GG/Wso8q
	Kz44QUV2/+ZI2/ng+QSpUw9x/8baRN8IlvKGDy7ixeyVTSkn/6XLTAhpiqtOhTNhsYDqfWB5WOy
	MPMK2E5tKvR6INtUmcmb9qefirqC0cuhJ9m82mnnPD85WNY6uoToV4FR691g==
X-Received: by 2002:a17:903:2f8d:b0:2ae:640a:9f2e with SMTP id d9443c01a7336-2ae75bb5d87mr20089695ad.19.1772710581875;
        Thu, 05 Mar 2026 03:36:21 -0800 (PST)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae5e1699c9sm78796995ad.10.2026.03.05.03.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 03:36:21 -0800 (PST)
From: phucduc.bui@gmail.com
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: javier.carrasco@wolfvision.net,
	hechtb@gmail.com,
	wsa+renesas@sang-engineering.com,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH 2/2] arm: dts: renesas: r8a7740-armadillo800eva: Add wakeup-source to st1232
Date: Thu,  5 Mar 2026 18:35:12 +0700
Message-ID: <20260305113512.227269-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305113512.227269-1-phucduc.bui@gmail.com>
References: <20260305113512.227269-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 82FD7210A64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[wolfvision.net,gmail.com,sang-engineering.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271523-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,glider.be];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.0.55:email]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

Add the wakeup-source property to the ST1232 touchscreen node
in the device tree so that the touchscreen interrupt can wake
the system from suspend when the panel is touched.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
index 04d24b6d8056..d47a6cc3e756 100644
--- a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
+++ b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
@@ -228,6 +228,7 @@ touchscreen@55 {
 		pinctrl-0 = <&st1232_pins>;
 		pinctrl-names = "default";
 		gpios = <&pfc 166 GPIO_ACTIVE_LOW>;
+		wakeup-source;
 	};
 };
 
-- 
2.43.0



Return-Path: <devicetree+bounces-270867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGVqL+fcp2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:19:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8FF1FB827
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC117300789A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4465B3537C5;
	Wed,  4 Mar 2026 07:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QLyvNLop"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BC735979
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772608659; cv=none; b=GBA2vyWoz8yEcUMjgWPzq4GZq12Y1R4mGpgPdUDMF4Y3s6j2G09VWE6G9bE9cd4jzuDSxExfS3Q1vke8q0PgWp2IBZQ7g1h7Y1jVLs6IuJAZWathQhq7/xy/OJGs1A/QCyqt877MoQwX+wLFjGkgs+7MKPT1icj2tnTuSgQghLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772608659; c=relaxed/simple;
	bh=lg9Plg6ehWx2bwrEkj2iLaG3vmxT41ElnQvc2Ca4Vho=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZyPZ0xlNXEJ/NAMQf75X/xukOtQEtNGIUbN9OiOO3HetOmvsIMMg17AiIcetsfsduXJHUjK9nCZawdcGlwY8mwEhf6RYE9ZqenXXLRj/jMFWCdxUhFAd2IFcUiDPNZxVJW95gGYi5txNIgF26Dwmlxz9lU7tZNUOu7IVXHTkV6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QLyvNLop; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4836e3288cdso44068835e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772608655; x=1773213455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qAL/6lymAWTA7sTs7WSo0rmin+wjAqXDkMd/c2OTImY=;
        b=QLyvNLopHdgZAfINRXWiePVGk1TPL8TlIFWDKlvirwHGVzJtc8Z/i8TSPO6799iB4E
         aTcLbAGglZkj12/FeWsjk4f5zZ4ZrNXpSry3FoyKzsdYx9xrgKUF1PjnRdHJCANxlOLB
         Z7jmnAEJkWlgJEmHrd4cmUu8EF7eAWwG3hZqTUPvq65Kgo55YG8M5XRsKpoduaw4sxkT
         YiBoBpZjF13CKG3zt7qJAMmytphGROPTKBsQCHkEedxxvnG8po87lRb2bYx80IxLrzQw
         S0yyweXePUKwViq3jR6cD1bvaa+SxEk+KvU+kxiSnVOs1lHvyqrZCFdf2rhTerlmKLXl
         IoQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772608655; x=1773213455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qAL/6lymAWTA7sTs7WSo0rmin+wjAqXDkMd/c2OTImY=;
        b=sRQxVYnmkJaRypEgN1gHtD3WCyz96OcHTdtkyl06ydTwGDSSSqYnE1Kgl6JEslcfNG
         mEPmo+phKbVjybG0H8ZyET29F9s4hsnbxuOhNimfwuBXxNCbyK353t81VGtC0XEeM8fw
         guxduWHRT3HbJDZp8Hu75y7E+uXC/6CJVhPZtaYgNIYVxRM8V/YOD+TIEJVcwR09F3I9
         aBQX0rv2nXoHej70/HsQliJLNipja6yF9MCbWqvm2N0mZ4Ojy/pCPldpI188BoNDlwDo
         PBUj2E3uu79Wj+Dmz2KDkhaOCBYK1t7COW/ZT2oCAiznC4CzNc6o21eFZsfTybGDptjz
         koKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQTjOXLHr9kxbPzfJTNuvrQ5misEXYB4k7N5R2vQSAqO4MCnPXBcYfgC8rWxEvPLx8AhSmNIK1JzaD@vger.kernel.org
X-Gm-Message-State: AOJu0YxPQbfKYwL0GJqs0HO+nbwjUKhhDxd4lNwjckTObtN8St5D4H/R
	spRsiyYMwjeCByIwruhGiqNq4V4lZr5uUQMQtiB+wW2Dd4z9hGPbjtav9UEs4g==
X-Gm-Gg: ATEYQzwNBT12UgQ7xVzT9kzx4bX6/s42uss7ijc9I6711EOuY81bXUbOLx56x4v9a5j
	dHLsHOEXyzKc/GaAFqvKnlKgkwXyyQ7R8fOvZEuGWyLEG7D2ojjed/81Q66msdUYaf19sygRRUe
	BosB72CZmconfmRShOKJrc1PVE+9a9S1dqOzq5R0yykxcDRfYnUM1Hs0AQeguNS8XRwYwbAOlQj
	FQHedAlaUfrvRkkb0VkBdg7gCU2LoeSgpuEKm91o6LmOopCFy7iJHk7wEo6nlRKlW3Jsgp4WaBB
	A/L/7MFU5EdVtHrm2MdshRS90c2piHv7vTssgH1nbpB2qdBLDXup/eoPqhvoPYH5nQD/ZmAMtPz
	nG4ZNQwyqXlBCiWNe7G0WD5mbaW/+aIhWAwYlAoWdG/vKX+m9pXDUi+0SRJkATYXP7yNLzNpTWS
	+qc2mE52LoMU9/b3Mum6QtPND35IAZOH0=
X-Received: by 2002:a05:600c:529b:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-485198843e3mr13696315e9.8.1772608654601;
        Tue, 03 Mar 2026 23:17:34 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:de3f:f927:40ff:12a6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851a8aa589sm4931045e9.5.2026.03.03.23.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 23:17:34 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH] dt-bindings: i2c: renesas,riic: Document the R9A08G046 support
Date: Wed,  4 Mar 2026 07:17:28 +0000
Message-ID: <20260304071732.5864-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2F8FF1FB827
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270867-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[renesas.com,kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[bp.renesas.com,sang-engineering.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bp.renesas.com:mid,renesas.com:email]
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Document the Renesas RZ/G3L (R9A08G046) RIIC IP. This is compatible with
the version available on Renesas RZ/V2H (R9A09G057).

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 Documentation/devicetree/bindings/i2c/renesas,riic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/renesas,riic.yaml b/Documentation/devicetree/bindings/i2c/renesas,riic.yaml
index 6876eade431b..ae1f71eadc66 100644
--- a/Documentation/devicetree/bindings/i2c/renesas,riic.yaml
+++ b/Documentation/devicetree/bindings/i2c/renesas,riic.yaml
@@ -25,6 +25,7 @@ properties:
       - items:
           - enum:
               - renesas,riic-r9a08g045   # RZ/G3S
+              - renesas,riic-r9a08g046   # RZ/G3L
               - renesas,riic-r9a09g047   # RZ/G3E
               - renesas,riic-r9a09g056   # RZ/V2N
           - const: renesas,riic-r9a09g057   # RZ/V2H(P)
-- 
2.43.0



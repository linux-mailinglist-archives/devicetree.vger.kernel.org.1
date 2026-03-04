Return-Path: <devicetree+bounces-270869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KRLDDTdp2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:20:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A4B1FB856
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A5E13049552
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A8833E376;
	Wed,  4 Mar 2026 07:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rpo62eeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7CF34D398
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772608806; cv=none; b=k7qia45pR7mbZDfEDFyX4IGSctqlUO9gneOJ37r2kurTOS4/mCG+x/7NPvzXXoiGl03Hfl+Vqn3R1SxSnBzL6IJ9HSm7zMfsMIsnRF6fsjmoGC9VvO7o3f396bH0vdcvTeNasqSPLM0bhDXrUR3dq+ZkN6i4T63STvJOCETEIZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772608806; c=relaxed/simple;
	bh=tGGAKhZ+FH+TOTfXSCqoHejGCkph46PhQW+y2VLqK64=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gaLHR5LuxVagJlei0VaMkmRbKtM2Jk+hp3xLzBxAy57c3ePjBGnxdqKR1SlhHNCqerLK4K9oke3ZLjhatZPJiZ6lINrI9UUbHiM/KG8dIdQBjuj0rEdCrZhY3Ryw+hxQZImgMHYntfacuCXkNE035i6XFAPt4Co4LJR6tdHFkiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rpo62eeJ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439c4bde55cso617380f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772608802; x=1773213602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qfQgqDvue/EVF4KyiX+OpQ7cgSYz6kuqRUaxn8LjfkU=;
        b=Rpo62eeJ5qIHhhC9a4rnmRsoYLYrXgVT3tng5NKGRf+WSa+FqUcldAksgWlyzhlMeE
         lQ86LeN/mI15S93SYU3UCe8fqwKZsC77+P/pEPv54IreW0YmVKpSt8yXVDNsMQGoaFPB
         fpotq0t6hNc4Ty9a3OagrRM1HUgD1gdIaSvQwZPxRprOT4JvU9C02xOmn5xb9AXNCGOr
         FyTqXay984449diiOpN2PAt8ny3u5JljpPnZ4SzZrcNywyfU6lEFLQ+EIUK2b2jZY3Yo
         3cbgQ1yjx+tdWRbbAnx4qiJ+ilJjDUlVlJEZMO8Ib3qiYk5DoVEnPDcI0MHpbyOkCoWI
         yttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772608802; x=1773213602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qfQgqDvue/EVF4KyiX+OpQ7cgSYz6kuqRUaxn8LjfkU=;
        b=Ymr2VVO72b0hmLRt7BnrAvASd2X8oXmIusioqE8w5aEW9GvJg67CUBw6yTxUr+7/Fi
         lFNBmh8QKhe8ZD13zr8IlBFlCjB68qNbWxEUNiw/ex6fkwwPNQnFeOvkPKVgt5Kn7O0/
         j8k0CbtXqtFHJ3ErVdZq/FEN0KYsHHgLib6E171k9D/dvGz7cuUaAW5CAoTr5uCug9GA
         A5ABVig/kkfw+ujgdVn2R+8joU+LutxiadbXaTOXaWo74goEhhFcDhRzXiDLTnDdXcLB
         VpWIL4G9SWZljEVrhXGgvIERzNgt1ZFqdqCjQhrolmcYQueBE+zjDMSM0eoMWrRxJ13z
         1dgg==
X-Forwarded-Encrypted: i=1; AJvYcCVzEW+O6lOgJUOo2DamcYT8tXIxAZYpwCKx4UM0xl3/0As/IK5I0Xes51rpsaRpo72QT66hFmF03VFv@vger.kernel.org
X-Gm-Message-State: AOJu0YxZoE748r7h4uiI6mPX+baF78el6qeTxtB+RSKQo/LTULJb1HTc
	QR8fWJPwOohB/sU/fhD6KjDb03by4kT46jyTEqcqWWzHtKU0opGO//1N
X-Gm-Gg: ATEYQzzRJ+WAOZv5KzSicLiHa3pXkUlNW7l/pwsz7e5REJIBX6N014zyFEk+NG3ejOG
	EnlRZYdAVBGpgTwDoh1CUf+ZIUY1DSM8S9p3Abxai+d1p2GuB9o4RliszI6pWsZaixueF7GAk8B
	YTPNZVJmhLE2izmyfnC+o/ubAM3//fksONKYC10xZ0Kj77/McDXn0+LEwLOrn2ggW8OgkP/GAOR
	5e2fsze/1oXem8jkLOTPjF8ogSzxV4EW1JbcHHE2AsqUb6wz6NxyvXsXR/BHtC3VsewNIS941Dk
	Km0WD0qtO3e156Jlv/K3z4r8GQwUq9AveGr1a4PLycID4FUTxEEfFUjNscnxzC7DkLwiPkNvZHU
	K5D70Mnn42nh8fXDZzPeIljmATc5BXFCmdL5tHF6k/326PQvjs8QXkwCxLCusWaDb+emXGXzeOj
	vKQMe3DlfYQhMdaHnVz1nTiHM6pwwGUXg=
X-Received: by 2002:a05:600c:8411:b0:477:df7:b020 with SMTP id 5b1f17b1804b1-485198744camr16136855e9.18.1772608802480;
        Tue, 03 Mar 2026 23:20:02 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:de3f:f927:40ff:12a6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851a8aa589sm4989285e9.5.2026.03.03.23.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 23:20:02 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-sound@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH] ASoC: dt-bindings: renesas,rz-ssi: Document RZ/G3L SoC
Date: Wed,  4 Mar 2026 07:19:55 +0000
Message-ID: <20260304072000.6787-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 01A4B1FB856
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_TO(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270869-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[bp.renesas.com,gmail.com,kernel.org,glider.be];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,bp.renesas.com:mid,renesas.com:email]
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RZ/G3L SSIF-2 bindings. The RZ/G3L SSIF-2 IP is identical to one
found on the RZ/G2L SoC.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
index e4cdbf2202b9..1394f78281fc 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
@@ -20,6 +20,7 @@ properties:
           - renesas,r9a07g044-ssi  # RZ/G2{L,LC}
           - renesas,r9a07g054-ssi  # RZ/V2L
           - renesas,r9a08g045-ssi  # RZ/G3S
+          - renesas,r9a08g046-ssi  # RZ/G3L
       - const: renesas,rz-ssi
 
   reg:
-- 
2.43.0



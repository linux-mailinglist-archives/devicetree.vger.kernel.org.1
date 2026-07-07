Return-Path: <devicetree+bounces-322147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IC4/O8gSTWqKugEAu9opvQ
	(envelope-from <devicetree+bounces-322147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:52:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE6871CDCA
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:52:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=fhMMqhM8;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322147-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322147-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55CF73095F37
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A462842A7A4;
	Tue,  7 Jul 2026 14:36:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258D42A151
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:36:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783435012; cv=none; b=L8JvS6vaJQvcSZWDNElyKXsDRRjTh/JR52L0qi/ceom7hECmLIU81d0gGNa/r67oyoU+CJ80j4GMgJgD46k6vvwIgw9Z5UmGoqvM51XCGdn31M/McD1nStte3cEHlb1yeKZ8VdnjQo2uSdLQabbbPrOuvqsaR2Mq8oWypQygJSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783435012; c=relaxed/simple;
	bh=AWf4f1fccc3WX4YJerl/zTzQZ4RYydGgaTr5BvT7kW8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fEMIMKqcJcedq92VqKvVkseHIx9ZSjm84PjiBfxVwSa264XrhUwZz9JzB+Q/kSPNxUz+7aJxD1lQwnExYvYZIHtZPEcYNQTgDuB5awtSEBNdCF0Yp0SWBh2jirR+8Q/lxn3zj3P/nDj0QUvTxndCUDqHeSAxMcXaoy/NFtu/iO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fhMMqhM8; arc=none smtp.client-ip=209.85.221.45
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-47dec32798aso577301f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 07:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783435009; x=1784039809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j87aWoEjcLuafOmB8vgFoabIK1D/6OW6JgEE0djzGj0=;
        b=fhMMqhM8JLfOLLwPv8iQb1NdlUD03naL7+7osfHUet8dbLUeVmOyBtfdhNYsLoLKCg
         nWAkMTtlVrOqOO9GW7YV1uuHfZDw3WoZKArAOdZJ6BKLHjzJI9gbb/4aUKrComStZJoM
         ch6WEC33lotC02VwvUtbwNYtAgvJBe52zl7WqdLe3iYKcz/Q74S4NYBM2/HYLD973YAH
         +BfMay7bBXOVRNnrMN1SlEBDS5p63nF5YQ8eN9bBUfqMl1DsUTibB2TnIdTxiHoZMHku
         hF0DqbVjMPffnGUsTG/p9LvFdeIoGzqujv0WNODfU1L7uJK32ZvqVYRks38O5Mfw3bsz
         LrQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783435009; x=1784039809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j87aWoEjcLuafOmB8vgFoabIK1D/6OW6JgEE0djzGj0=;
        b=mxYm84MjxZRW4bi2j7+7syDeA5rbss7y5Ght6bWeI1H36uVcpihC2v+nQq8yp6mkK8
         tjhvQy7ohwi0OJVBCnmshgptMYoewsnORFhaHvFXBBNz0f0NiLBviEfMgmt6cfqV9TS8
         SroHN1MKWS1Q8HRvVcdE3nuy7CczwUm8ukxE4rx1BFJWOYEBztTWD82pejeYXlwsxAGx
         S1lZuGDtyaBwXbBynaRSXeUbXvehbxNtM/5xCu9yTaL9Xwdd7tw1wAzisMf4jwc6neaQ
         ReZ6yrXRnm5DBdAakK2rfXAdEZhWN0rwXOKcIBFb94SdF/R6LT9Beb3fYAS6CJIUdL2h
         nWjQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp0J6hUo92rqV+xq3l4Hj2Z1VllsVa+Zoy2Y1LylDaemuq3FXWVleVKcGKuCRrAVvKCe6tyxsD834c0@vger.kernel.org
X-Gm-Message-State: AOJu0YyTuCneoUDmf7/02WqLa4z+U3Chj4VkypPlAd4uR4k3jHMkekIS
	x2t2fjT+fVHYmXDDhLqVdDT7xi+mHU4O9osxKasjhMjUUDIulu0+eb0P
X-Gm-Gg: AfdE7clZqdz1OvEOs3SdiC6IGJLLYHkWkQwTW35kEBb03G5DsTrrOUOEeeQCgwE8UiF
	cwotokBkxRPRRTtISY6hjJ2tZQowHg6XrxEQVll+ktXKbZ4a6yHgELiekRDcJROFItGI1DOKHoh
	QTUbdraCp3uifG+Zytj/wY/Ry99TouNMDpsMZt07lnODvMArpdz9bklQntXtNKtQTW+2jcvl1Ov
	6CWD3B3XgonCooFHdmi4Xv2NYFQ7EqLE2tSFjXA/KZtdKrMeaMAwzkYOqRUutEIZKTGWEDOUBP8
	UIdSVe9UklEsYGteGl5xYPniLtyNv0UHGPShn3ngrXF2jy9H3xX3CcgBKHmIKQk31XCv4fB1oVQ
	BWqdwoLdP/s/1Vg/LPSSct39/ZljP5IQlRiPq6avhdZrlYhDJurn/5OJ5/QTXNG6teQUWJfl09d
	Xyg5+7DLkcsQWcnp2qa+bjRHMxahApI21TNA0I1A==
X-Received: by 2002:a05:6000:1aca:b0:43b:498f:dceb with SMTP id ffacd0b85a97d-47de660346bmr6435337f8f.9.1783435009312;
        Tue, 07 Jul 2026 07:36:49 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a4ac:4e7f:194a:852e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039ae44sm33228611f8f.23.2026.07.07.07.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 07:36:49 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 0/9] Add RZ/G3L USB2.0 host support
Date: Tue,  7 Jul 2026 15:36:32 +0100
Message-ID: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322147-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:p.zabel@pengutronix.de,m:vkoul@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:magnus.damm@gmail.com,m:biju.das.jz@bp.renesas.com,m:neil.armstrong@linaro.org,m:yoshihiro.shimoda.uh@renesas.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,kernel.org,glider.be,baylibre.com,gmail.com];
	FREEMAIL_CC(0.00)[bp.renesas.com,linaro.org,renesas.com,lists.infradead.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bp.renesas.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5BE6871CDCA

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device tree binding support for the RZ/G3L (r9a08g046) USB PHY
controller. The RZ/G3L USB PHY block is similar to RZ/G3S, but each port
has an OTG controller, unlike RZ/G3S, which has an OTG controller only on
port 1.

v2->v3:
 * Replaced items->enum in reset controller bindings.
 * Collected the tag for reset binding patch.
 * Dropped clock patch as it is accepted.
v1->v2:
 * Dropped patch#6(Introduce helper for regulator registration)
 * Passing pointer to an array of regulators to make it scalable.
 * Dropped regulator1-vbus and added a regulators group node.
 * Updated commit description for patch#1,#4,#6,#7,#8,#9 and #10.
 * Added enum instead of const in the compatible section.
 * Updated schema check.
 * Collected tag for PHY binding patch.
   in the regulator driver.
 * Added regulators group node and its children in SoC dtsi.

Biju Das (9):
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
  reset: rzg2l-usbphy-ctrl: Introduce info struct for match data
  reset: rzg2l-usbphy-ctrl: Add RZ/G3L support
  regulator: renesas-usb-vbus-regulator: Add RZ/G3L VBUS regulator
    support
  phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
  phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for
    disabled VBUS regulator
  arm64: dts: renesas: r9a08g046: Add USB2.0 device nodes
  arm64: dts: renesas: r9a08g046l48-smarc: Add USB2.0 support

 .../bindings/phy/renesas,usb2-phy.yaml        |   2 +
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  48 +++++++-
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 105 ++++++++++++++++++
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  49 ++++++++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  20 ++--
 .../regulator/renesas-usb-vbus-regulator.c    |  53 +++++++++
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  44 +++++---
 7 files changed, 296 insertions(+), 25 deletions(-)

-- 
2.43.0



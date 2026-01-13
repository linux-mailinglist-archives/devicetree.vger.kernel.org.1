Return-Path: <devicetree+bounces-254615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB14D19F0F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:35:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9244A3039999
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAE1392C58;
	Tue, 13 Jan 2026 15:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="CqykJfQA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4985430216D;
	Tue, 13 Jan 2026 15:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768318412; cv=none; b=moZmM1VXsSwKqxkCmo9MSter0rv+0kQK8at4164ZKVYFefYxpBrf2/NYOLicGxO0acC6KCXSKzz8Y6hFRsekVz0ndW/oIb+Oqf10q1iFUmmcEyEBQqZ9x0cWcgwAF/32wcv6u0DJtnqQ0FohemkYE1xSo//+nwi3ajJWNy7itxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768318412; c=relaxed/simple;
	bh=bBc+mfqKr3uL9dadx2ba1PgNMN8oNbSq2rlIFExQJKo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YQbOnTdLom3pyrJvpvXhcCGNO4eVAqetZMuAxhb+zQ+Cn7h8q7UJrMoaCNPMhfjbaLUykgdsvjIdisU9OF0GwewJlrroaFLnEuwiXRKyrdSD8D55qPw8ioDK0wUjFp6EQNjraELwiZLHarJdnBRvMHAaT6k4JdX8Tb+H3Ulxs5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=CqykJfQA; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=TBIjrv4Y8OCNFBCu4sCpO8dv9dAjBKgPmh8xrmvTw4k=; b=CqykJfQAMzzxW08XAMUVqzuQd/
	dXeHErJk8dedGFD3st4JDdDkPr0WhUw8QajWMph/fr+cElv98NIcffLsu9o8BD/ZR8hx6n8mAVrsk
	eJObhJaU6hIey5iDdBkG4hmPZb93FCNC0mgz2Sqyqox3phEdoAA7EQMm8orI4IOpTNVaIrQlj2rHB
	xYk3FavNqgyJwouerKTB9nvin2dS7ufexoiysNfz6y5tZdcuKAPstEf2OzIMLsMqe2UZc75QP8pL5
	JMhWAHzFXkyCrdMeBAn3qKdrzY/RGlRjwNRKrefO95ydJdNp91RmEhPV3EygYAr4Ka15qEQ325Kj5
	tQR9uZcQ==;
From: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH 0/3] ARM: dts: imx: wire up the TPS65185 for various
 ereaders
Date: Tue, 13 Jan 2026 16:31:33 +0100
Message-Id: <20260113-tps65185-dt-v1-0-66d376ba5f65@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFVlZmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0Nj3ZKCYjNTQwtT3ZQS3dTUFHOTRAMLS1ODZCWgjoKi1LTMCrBp0bG
 1tQATdF29XQAAAA==
X-Change-ID: 20260113-tps65185-dt-eed74a08950c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>, Josua Mayer <josua.mayer@jm0.eu>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=bBc+mfqKr3uL9dadx2ba1PgNMN8oNbSq2rlIFExQJKo=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJlpqU3yv37qTa68uEWQI5J7o1t1+m6W9NL1J+Vfp669e
 sD4peimjlIWBjEuBlkxRZZf1gpun1Se5QZPjbCHmcPKBDKEgYtTACayvoPhf0yRbOw8E+XEjM/M
 ucWtNkuyNcO+vSqwbtilJzz5iMkyCUaGz3vvsMvGbRaLOK5srxY8L49ZyFb607d/6kYPW3e99Fn
 LDwA=
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324

As the driver is now upstream, wire it up for various ebook readers
containing imx6sl/6sll/50 SoCs.

The driver for the EPD itself (not included) still needs polishing
which would be the consumer for these regulators.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
Andreas Kemnade (2):
      ARM: dts: imx: tolino-shine2: add tps65185
      ARM: dts: imx: e60k02: add tps65185

Josua Mayer (1):
      ARM: dts: imx50-kobo-aura: add epd pmic description

 arch/arm/boot/dts/nxp/imx/e60k02.dtsi              | 35 ++++++++++++-
 arch/arm/boot/dts/nxp/imx/imx50-kobo-aura.dts      | 60 +++++++++++++++++++++-
 .../boot/dts/nxp/imx/imx6sl-tolino-shine2hd.dts    | 55 +++++++++++++++++++-
 arch/arm/boot/dts/nxp/imx/imx6sl-tolino-shine3.dts | 26 ++++++++++
 arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clarahd.dts | 26 ++++++++++
 5 files changed, 199 insertions(+), 3 deletions(-)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260113-tps65185-dt-eed74a08950c

Best regards,
--  
Andreas Kemnade <andreas@kemnade.info>



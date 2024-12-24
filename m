Return-Path: <devicetree+bounces-133841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF67D9FBD7E
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 111A97A1769
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 12:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B711C07FA;
	Tue, 24 Dec 2024 12:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="N7kD66ns"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613AF14D2BD;
	Tue, 24 Dec 2024 12:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735044344; cv=none; b=q84QAUFkmflI3dEhdPVGcGvQwtcbQvGkQmEu6LJtllofF19KKdGwgiheSm1vS8xz4pDWVDL3bbEROFdycyxgbpRnyyFQzVVR94uLG507TWboVG4AhvDAkxJikZHKb8PbXHWfiRBunIaDwXIYPAbuaVOCmigGG+kqiqwOXyI1/Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735044344; c=relaxed/simple;
	bh=wWJFqy1+nPPf0TGDrhQQL9ggDzIJhalHxG2g9brsJHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MuQFpG2e4H2C6LrGZyOj86CMQW2K0xRBx5GWKMdZaPii2Gpj/RV9ojL+9leoIWTT17KkFqvjhedBAF9+VreYJL869mhIG/mRWKolPkxHh38sATq29vAEnor5yosDBJx9TgTZCgo8MNijsMKd2NYFe2zcLg9SzgyogxnSH2x1cJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=N7kD66ns; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id C24361BF203;
	Tue, 24 Dec 2024 12:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735044340;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6FyNdq7QSQghOLluVRgy7Wxrmk0g9pD6sxxaWDMGrIQ=;
	b=N7kD66nsYD0DWDypGCZBfHK9LDjkSdkwy0bo+SNaf2vqCrRHXa2wi2vV1OTyrLsN9XUrq3
	lu9B/SqVTpEV5ydKFCcUQnd6ew76PH5qD3040JHAgoSkQWHrNQNiv33tm1k6eBPIQ8qwN0
	2CgjhcFGnmktXboR6rFLvk92dsNx0UI8PSSbDgPW4oQMjpNVctB7Z2NiUjjE2AOpC3B6az
	Du+cSay4R/If/Pb0AuQY93KlsElJxa7cPp7TSsumBNdnPk2Rf74UfqwacDtgGKcNYSwNnq
	FH5tWchm7hzfeQGUn4b3sgKdV76LcDzochwBCt4PhqMK/BNEZZBntAfySvMDzw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nikita.shubin@maquefel.me,
	arnd@arndb.de,
	vkoul@kernel.org,
	esben@geanix.com,
	Hui-Ping Chen <hpchen0nvt@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 0/2] Add support for nuvoton ma35 nand controller
Date: Tue, 24 Dec 2024 13:40:59 +0100
Message-ID: <173504401426.1625053.7886349006828481289.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241206031318.156152-1-hpchen0nvt@gmail.com>
References: <20241206031318.156152-1-hpchen0nvt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com

On Fri, 06 Dec 2024 03:13:16 +0000, Hui-Ping Chen wrote:
> This patch series adds the mtd nand driver for the nuvoton ma35 ARMv8 SoC.
> It includes DT binding documentation and the ma35 mtd nand driver.
> 
> v11:
>   - Update ma35d1 mtd nand driver
>     - Fix warnings and checks use --strict.
> 
> [...]

Applied to nand/next, thanks!

[1/2] dt-bindings: mtd: nuvoton,ma35d1-nand: add new bindings
      commit: c20e06019087410832455d01c97e9f72f6bb1626
[2/2] mtd: rawnand: nuvoton: add new driver for the Nuvoton MA35 SoC
      commit: 5abb5d414d550998a235de1161ac6bef240b0c29

Patche(s) will be available within hours on:
mtd/linux.git

Kind regards,
Miquèl


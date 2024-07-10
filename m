Return-Path: <devicetree+bounces-84578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B690192CCF5
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:27:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7329F282B6E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75231272A7;
	Wed, 10 Jul 2024 08:26:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 2.mo561.mail-out.ovh.net (2.mo561.mail-out.ovh.net [46.105.75.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD85212D1EA
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.75.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720599991; cv=none; b=ETLNcdq8ZV4wINl5rdi1K88uDpR4YGWo3dpIIU7M3z4wEf9rNhfVGUh1YlUpB6BCkPB3O0bG9eSy15qlPebITEp9UnHRfKWh4HjjFaey7OARz+XBbrRSr/2Q3J+T5ceyx9aONa5be5wX54u4TAvILzh+A85LcumMj7LCeR1bzss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720599991; c=relaxed/simple;
	bh=B/1AVUhi3fdyHCWvdmnSAHO6m8FgIQyf6PgNj++ghls=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KS+e/Njbj/Xd3OGEYC2VoPcB1g96IwJvADtAmQx4ZBASzehPAFBCTyMiBHMad3BxVs1rXzKCqTuOfFmxeql7vYlDhjn1qBzpCNqYgVuMT/qVvhw7D+dkdGlGFMDzncbRu2S7SXzmdCmnyuryiyy/+1zHwmLG5Yger+MmiC8SIzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=etezian.org; arc=none smtp.client-ip=46.105.75.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=etezian.org
Received: from director6.ghost.mail-out.ovh.net (unknown [10.109.148.87])
	by mo561.mail-out.ovh.net (Postfix) with ESMTP id 4WJqjf0Kqnz1MYL
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 07:48:38 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-r67vw (unknown [10.111.174.42])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id D278C1FE90;
	Wed, 10 Jul 2024 07:48:31 +0000 (UTC)
Received: from etezian.org ([37.59.142.97])
	by ghost-submission-6684bf9d7b-r67vw with ESMTPSA
	id RP03Ls88jmZigQgAT/Bd8w
	(envelope-from <andi@etezian.org>); Wed, 10 Jul 2024 07:48:31 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-97G002cc69158a-4158-4f76-8eca-04ea18067c8a,
                    5DA0C46D5EC14CA26BF336A1987C86317D8662FA) smtp.auth=andi@etezian.org
X-OVh-ClientIp:194.230.248.195
From: Andi Shyti <andi.shyti@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
 Drew Fustini <dfustini@tenstorrent.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Conor Dooley <conor@kernel.org>, 
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20240618-i2c-th1520-v3-0-3042590a16b1@bootlin.com>
References: <20240618-i2c-th1520-v3-0-3042590a16b1@bootlin.com>
Subject: Re: (subset) [PATCH v3 0/3] Add I2C support on TH1520
Message-Id: <172059771094.2294116.14777114514280404581.b4-ty@kernel.org>
Date: Wed, 10 Jul 2024 09:48:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Ovh-Tracer-Id: 4383409814818392609
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeftddrfedtgdduvdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvegjfhfukfffgggtgffosehtjeertdertdejnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpeffteehudffvdfhudfgffdugfejjeduheehgeefgeeuhfeiuefghffgueffvdfgfeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupdduleegrddvfedtrddvgeekrdduleehpdefjedrheelrddugedvrdeljeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehiedupdhmohguvgepshhmthhpohhuth

Hi

On Tue, 18 Jun 2024 09:42:37 +0200, Thomas Bonnefille wrote:
> This adds I2C support in the device tree of the T-Head TH1520 RISCV-SoC
> and a default configuration for the BeagleV-Ahead. It appears that the
> TH1520 I2C is already supported in the upstream kernel through the
> Synopsis Designware I2C adapter driver.
> 
> This patch depends on the clock patch from Drew Fustini
> Link: https://lore.kernel.org/linux-riscv/20240615-th1520-clk-v1-0-3ba4978c4d6b@tenstorrent.com
> and the pinctrl patch from Emil Renner Berthing
> Link: https://lore.kernel.org/linux-riscv/20240103132852.298964-1-emil.renner.berthing@canonical.com
> 
> [...]

Applied to i2c/i2c-host on

git://git.kernel.org/pub/scm/linux/kernel/git/local tree

Thank you,
Andi

Patches applied
===============
[1/3] dt-bindings: i2c: dw: Document compatible thead,th1520-i2c
      commit: 00fa2450c11138c1c3171224cd2727a3a6240bae



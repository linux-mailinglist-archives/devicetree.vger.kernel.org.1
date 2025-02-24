Return-Path: <devicetree+bounces-150343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCE9A41D8C
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 12:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FF991684CF
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38C2825B67D;
	Mon, 24 Feb 2025 11:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="EatrLcDw"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741EE25B67B
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 11:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740396255; cv=none; b=Eqoj+XOuAfImJnGeR2q5fbLYEGEUiB0WqD4XVo+gRaymOjLJJVYaNSNcxsUYEQvicXMFv+4FhKvdtNbQspc5uYNj5tBZuuNJb4QddzktoTxaew6Kj4Blh64TI5tQDNEjPuTLzGklk8Y3H5ZGTF4gl8mAc9908EJ7bqD1EJPeRdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740396255; c=relaxed/simple;
	bh=WU1/avcFF/5hPNA5Ng59Nff/2rwQsdLRmzcqYZIAkgk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E1aLOtTEXgIn4Wp6rf9oUWgh1IlO+qiVuev7ywd80F2oZByc1mmsKznKKOTQc/HBORhc1bw3kVZSn6mp2xVtqhULCbmV3YdbeFb/MkCOD72Jx5hAE9u1SgoL4NIYSbRh6KaqW6XO55ALL4kpXtq/yYuoVNftl/ndS3615gZKwSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=EatrLcDw; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 984B143217;
	Mon, 24 Feb 2025 11:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1740396250;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WU1/avcFF/5hPNA5Ng59Nff/2rwQsdLRmzcqYZIAkgk=;
	b=EatrLcDwmMBDKKNLPZ3t5BB75C+nbxHsyRXRuW39kKhKpkJeYpxp1jCcmCWEEOMlXE81Bb
	Mbz1/zASYug/8mu+W/MFjIsNQLs6tLCNkTu6Wdstoo9WNmItcY9Drmy5vbR+cMH2MEWnZF
	BjgFCEyGjjBtYFic9q58biDHQjibFXcrH3GPM/ahuwO49pHbkt+lKEbOmkwW4Pe3W0L24L
	YIPH748OAj2ULi1LJ2L7eczBUYaeRWo1dYJ2D3sXCCDZAnAqGfCAKKjRICwNY7xPmTdOsD
	yLxRQhnT66VBpY/3W9DY+n8n725vStU3mUWCLCh+zYxGCDek6FLy4tecojABCg==
Date: Mon, 24 Feb 2025 12:24:06 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Ayush Singh <ayush@beagleboard.org>
Cc: xypron.glpk@gmx.de, Jason Kridner <jkridner@beagleboard.org>, Deepak
 Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com, Robert Nelson
 <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, David Gibson <david@gibson.dropbear.id.au>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>, "open list:OPEN FIRMWARE
 AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 =?UTF-8?B?SGVydsOp?= Codina <herve.codina@bootlin.com>
Subject: Re: [Question] Status of user-space dynamic overlays API
Message-ID: <20250224122406.08b150a1@booty>
In-Reply-To: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdejkeeihecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkjghfohfogggtgfesthhqredtredtjeenucfhrhhomhepnfhutggrucevvghrvghsohhlihcuoehluhgtrgdrtggvrhgvshholhhisegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpefhteduuefgheehleeihfejjeduvdeltddutddtveeltdfhheeguefgteehkefgffenucffohhmrghinhepsghoohhtlhhinhdrtghomhenucfkphepvdgrtddvmeeijedtmedvtddvtdemvggrtddumegsvgegudemleehvgejmeefgeefmeeludefvgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtvdemieejtdemvddtvddtmegvrgdtudemsggvgedumeelhegvjeemfeegfeemledufegvpdhhvghlohepsghoohhthidpmhgrihhlfhhrohhmpehluhgtrgdrtggvrhgvshholhhisegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedufedprhgtphhtthhopegrhihushhhsegsvggrghhlvggsohgrrhgurdhorhhgpdhrtghpthhtohepgiihphhrohhnrdhglhhpkhesghhmgidruggvpdhrtghpthhtohepjhhkrhhiughnvghrsegsvggrghhlvggsohgrrhgurdhor
 hhgpdhrtghpthhtoheplhhorhhfohhrlhhinhhugiessggvrghglhgvsghorghrugdrohhrghdprhgtphhtthhopeguqdhgohhlvgesthhirdgtohhmpdhrtghpthhtoheprhhosggvrhhttghnvghlshhonhessggvrghglhgvsghorghrugdrohhrghdprhgtphhtthhopegrfhgusehtihdrtghomhdprhgtphhtthhopehgvggvrhhtsehlihhnuhigqdhmieekkhdrohhrgh
X-GND-Sasl: luca.ceresoli@bootlin.com

Hello,

+Cc: Herv=C3=A9

Luca

--=20
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


Return-Path: <devicetree+bounces-150416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6F2A420B5
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC45D3B15FC
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 13:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD8C248862;
	Mon, 24 Feb 2025 13:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RpHl9/nE"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643F424E4CF
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 13:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740403753; cv=none; b=FgoTa3P626hI8+i11chgvPwRklyLa86TfyJjtJD23/MC3KXeKeXI317V634tEBT6LAE84KznhrbF6ib+TpWTT6ga8m2UPYp+myzHQtUPCwhnwHdC4GKOp/UcEWpRA0wdgDrEKkxpqbpC/86U5G6Y1Y5rjqrjb79As3GrAXzZ50Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740403753; c=relaxed/simple;
	bh=OJX1F5kIOX4ZD/Fnm0Dk1ZhHGBfscwUfYILDk4C4xQU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ed66CaAUn0FRZn9NWQEqq3l9hGMjHh6qaalYUD8/Dq/NauLt0bC6vY4lcRqg24VKk9y4LBFrGbz3UwVCYH9bzYMNiUweEjEpkGqAnCav/LnWM88MKNLEaB2eJey1XE5WxcEXZKghwCavlXlNdKTzoItXJvLqzz9ZQnRUkBFH+Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RpHl9/nE; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 39015442EB;
	Mon, 24 Feb 2025 13:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1740403743;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wr7WdMqKo3Wyla0cIhPvh6/Jn9V+1lHAZH3itN1Ngxc=;
	b=RpHl9/nEnJBXWE8Unf5xaDIHyXq/GAVP8JX/RCf6A9Oz7HaOP9SkC38RqT/K2n68rnlXTA
	EuiVSDzXEBSDRFbYj//dNmbV6No11P8REapikhkuLPoc2H00Vh+oesES/2zpMlJYXchhiG
	IrhjE2SjugNbJo81HCge6FH9aMFYW9FaXXnFYCsPEi/aXw+AtbJHahkLKNAZUpI7Y4K0RL
	n/yLQ0MCePCScqKsYPYi71rRPKhDx1d4wvjd3NFJ3re7VjrOQcQQ4tTgmCiTvjFwFg6xe3
	MkvgFyykYFwZXlcmbprDsioi1V7peYeHrfpb7HTjM1J49VWOEhqBowQEL9ZyMA==
Date: Mon, 24 Feb 2025 14:29:00 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Ayush Singh <ayush@beagleboard.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, xypron.glpk@gmx.de, Jason
 Kridner <jkridner@beagleboard.org>, Deepak Khatri
 <lorforlinux@beagleboard.org>, d-gole@ti.com, Robert Nelson
 <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, David Gibson
 <david@gibson.dropbear.id.au>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>, "open list:OPEN FIRMWARE
 AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [Question] Status of user-space dynamic overlays API
Message-ID: <20250224142900.0dde56a4@bootlin.com>
In-Reply-To: <fed58d7b-d9af-402d-a215-a7e620239728@beagleboard.org>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
	<CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
	<fed58d7b-d9af-402d-a215-a7e620239728@beagleboard.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdejkeeludcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkjghfohfogggtgfesthekredtredtjeenucfhrhhomhepjfgvrhhvvgcuvehoughinhgruceohhgvrhhvvgdrtghoughinhgrsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpedvhfeljedtfedtjeevffegtddutdeghfettdduhfeuhfdttdffieeuiefgvdfhvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomhephhgvrhhvvgdrtghoughinhgrsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedufedprhgtphhtthhopegrhihushhhsegsvggrghhlvggsohgrrhgurdhorhhgpdhrtghpthhtohepghgvvghrtheslhhinhhugidqmheikehkrdhorhhgpdhrtghpthhtohepgiihphhrohhnrdhglhhpkhesghhmgidruggvpdhrtghpthhtohepjhhkrhhiughnvghrsegsvggrghhlvggsohgrrhgurdhorhhgpdhrtghpthhtoheplhhorhhfohhrlhhinhhug
 iessggvrghglhgvsghorghrugdrohhrghdprhgtphhtthhopeguqdhgohhlvgesthhirdgtohhmpdhrtghpthhtoheprhhosggvrhhttghnvghlshhonhessggvrghglhgvsghorghrugdrohhrghdprhgtphhtthhopegrfhgusehtihdrtghomh
X-GND-Sasl: herve.codina@bootlin.com

Hi Ajush,

On Mon, 24 Feb 2025 15:39:41 +0530
Ayush Singh <ayush@beagleboard.org> wrote:

> On 2/24/25 14:07, Geert Uytterhoeven wrote:
> 
> > Hi Ayush,
> >
> > On Sat, 22 Feb 2025 at 21:14, Ayush Singh <ayush@beagleboard.org> wrote:  
> >> # Challenges
> >>
> >> ## Security
> >>
> >> The concerns regarding security seemed to show up in the other
> >> proposals. There was a proposal to have a devicetree property to
> >> allow/deny the application of overlays in some nodes, with default being
> >> deny. Was it insufficient?  
> > This is the most important issue: using DT overlays, you can change
> > about anything.  There is no protection yet to limit this to e.g. the
> > expansion connectors on your board.
> > This is what the various WIP "connector" abstractions are trying
> > to solve.  
> 
> Thanks for clarifying. However, as I mentioned above, there are usecases 
> for dynamic overlays outside of connectors. Specifically, for the 
> usecase of connecting random sensors to board pins. I do agree that any 
> fairly well specified connector should probably have it's own drivers 
> rather than using a generic userspace API.
> 
> Would it be enough to use `aliases` to specify the nodes where an 
> overlay can be applied as I have described here [0]. To further lock 
> down things, it might be possible to allow introducing indirection or 
> scoping nodes of sort. Here is an example:
> 
> \ {
> 
> aliases {
> 
> export_node0 = &spi0_scoped;
> 
> };
> 
> };
> 
> &spi0 {
> 
> spi0_scoped {};
> 
> // Stuff already connected internally
> 
> };
> 
> Any children of `spi0_scoped` should be treated as devices directly 
> connected to `spi0` but should provided isolation for any changes that 
> userspace overlays can make.

For i2c bus, I introduced i2c bus extension feature.
  https://lore.kernel.org/all/20250205173918.600037-1-herve.codina@bootlin.com/

The series didn't received any feedback from i2c maintainer yet but I hope
to have soon.

The approach proposed the series could be adapted on spi busses too.

Do you think the bus extension approach could be used in your use cases ?

Best regards,
Hervé


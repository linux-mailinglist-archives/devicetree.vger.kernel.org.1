Return-Path: <devicetree+bounces-172461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFCFAA4D0E
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 15:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 853854E2594
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 13:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0D125A624;
	Wed, 30 Apr 2025 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="DVn29ObA"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB0425C6E9
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 13:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746018453; cv=none; b=kb9Ogw/+vNR+cMwgSKMz1QQXcukgGi6h4lBrS9PU6DzZXuI0NfiWvObUnNNLzXViS6Du9t6ZMZxpGXHP5Pe+FnJOgha0jboa7rCCZSyvrfFhjP6U2fRiOLuslAWDm4o8fQU3t1wQu69r4W2SJce6tqRWL9UsEvqm4axMBMt5pHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746018453; c=relaxed/simple;
	bh=uLPy8tswTpXAzTW332VVon49mGiiK+lX2PqFCOVHTco=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bp2YINbFMgqWGwKl/evzkBQ3BiQPmk6VoZbtmcl9yGkTYrKgwZCIx5nzPJRMmKCpK2nBHmkFXK53foViuW97kVq4rC76jUlkMFqauXZGQjloIp4ZeL2CJrCcGO3WPvEqsaepA0B8Nr+YgQMNzlZOVo2hVdRAN6wd4Wtp0Qkf4bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=DVn29ObA; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E39B143AF2;
	Wed, 30 Apr 2025 13:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1746018449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zob3oBRPmTR+C/7gljlW83+IVWVDkQgvEdHZ9Wwnyg8=;
	b=DVn29ObAnsz8BxZSfUMq07Kn72PjRl9zt/pJy0vE509OwlG2t2fH6HZqAc7PQnMiE6DLsl
	yrBbaQatMIMwU0puO0rfmCNKZOuwoP7xutKpK84UMJ0+9ix7oJHSA/pb03Cn7Ft4+7pCjy
	EO38ONdBhpiovdz/ChTEew4VyFj9bRiLDrhZqAsmMmwuhdp3Vzslhw6VBne3RX/5KJ/kdt
	2qK3f0etBnIEqi+ec89RKKefTt4CSnr0rCUnN9ka+PoE9aeG5Vb/FPBXg658w8UEoK8/Ff
	/wuxTQ3abUoKcNCHk5kf5P3otEpQsv/7tnmuVn5HA+XzTkwXORyCy8cdINKUwA==
Date: Wed, 30 Apr 2025 15:07:25 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Ayush Singh <ayush@beagleboard.org>
Cc: xypron.glpk@gmx.de, Jason Kridner <jkridner@beagleboard.org>, Deepak
 Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com, Robert Nelson
 <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, David Gibson <david@gibson.dropbear.id.au>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>, "open list:OPEN FIRMWARE
 AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [Question] Status of user-space dynamic overlays API
Message-ID: <20250430150725.2d564abc@booty>
In-Reply-To: <d42100cb-eaa0-487f-aaaa-6d8f87bc0705@beagleboard.org>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
	<d42100cb-eaa0-487f-aaaa-6d8f87bc0705@beagleboard.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvieeijeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfgjfhhoofggtgfgsehtjeertdertddvnecuhfhrohhmpefnuhgtrgcuvegvrhgvshholhhiuceolhhutggrrdgtvghrvghsohhlihessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepteefteelfedthfffvedtgffgheetkedtvdffffegteevjedukeetfeffkeffuefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpsggvrghglhgvsghorghrugdrohhrghdprhgrshhpsggvrhhrhihpihdrtghomhdpsghoohhtlhhinhdrtghomhenucfkphepvdgrtddvmeeijedtmedvtddvtdemvggrtddumegsvgegudemleehvgejmeefgeefmeeludefvgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtvdemieejtdemvddtvddtmegvrgdtudemsggvgedumeelhegvjeemfeegfeemledufegvpdhhvghlohepsghoohhthidpmhgrihhlfhhrohhmpehluhgtrgdrtggvrhgvshholhhisegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeduvddprhgtphhtthhopegrhihushhhsegsvggrghhlvggsohgrrhgurdhorhhgpdhrtghpthhtohepgiihphhro
 hhnrdhglhhpkhesghhmgidruggvpdhrtghpthhtohepjhhkrhhiughnvghrsegsvggrghhlvggsohgrrhgurdhorhhgpdhrtghpthhtoheplhhorhhfohhrlhhinhhugiessggvrghglhgvsghorghrugdrohhrghdprhgtphhtthhopeguqdhgohhlvgesthhirdgtohhmpdhrtghpthhtoheprhhosggvrhhttghnvghlshhonhessggvrghglhgvsghorghrugdrohhrghdprhgtphhtthhopegrfhgusehtihdrtghomhdprhgtphhtthhopehgvggvrhhtsehlihhnuhigqdhmieekkhdrohhrgh
X-GND-Sasl: luca.ceresoli@bootlin.com

Hello Ayush,

On Wed, 30 Apr 2025 15:48:27 +0530
Ayush Singh <ayush@beagleboard.org> wrote:

> On 2/23/25 01:43, Ayush Singh wrote:
> 
> > Hello everyone.
> >
> > I have been looking at ways to do runtime devicetree overlay 
> > application, and was just wondering what the current status of the 
> > different proposals [0], [1] were. They seem to be quite old and I 
> > think they were already rejected, but due to all the broken links, I 
> > am not really sure about the exact reasons. Also, maybe we now have 
> > the solutions to some the blockers at the time.
> >
> >
> > Let me fist go over some of the use cases where I think dynamic 
> > devicetree overlays can be useful. I am mostly interested in their use 
> > in single board computers like PocketBeagle 2 [2], Raspberry Pi [3], etc.
> >
> >
> > # Uses
> >
> > ## Dynamic Pin muxing
> >
> > A lot of SBC's aimed for creating hardware projects expose headers, 
> > where each pin can be used for multiple things like GPIO, I2C, PWM, 
> > etc, depending on the pinmux. I think Raspberry Pi has it's own 
> > solution to do userspace pinmux, but if userspace devicetree 
> > application was a thing, it could probably be used for this. 
> > Additionally, being able to use dynamic devicetree overlays for pin 
> > muxing would allow much easier transition to use proper device trees 
> > during production.
> >
> >
> > ## Dynamic Sensors/Devices
> >
> > Using devices such as sensors, external ADCs, EEPROMs, etc are also a 
> > common usecase in SBC's. A lot of current solutions seem to be 
> > designed around using user-space drivers in such cases. This is a bit 
> > of a shame since Linux kernel already has drivers for a lot of these 
> > drivers, and they are probably going to be of higher quality than most 
> > user space drivers.
> >
> >
> > # Challenges
> >
> > ## Security
> >
> > The concerns regarding security seemed to show up in the other 
> > proposals. There was a proposal to have a devicetree property to 
> > allow/deny the application of overlays in some nodes, with default 
> > being deny. Was it insufficient?
> >
> >
> > ## Memory Leaks
> >
> > Currently, updating/removing properties leaks memory. Was it one of 
> > the reasons for the rejection of previous proposals?
> >
> >
> > Maybe kernel already has some solutions more suited to my usecase that 
> > I am unware of?
> >
> >
> > [0]: 
> > https://lore.kernel.org/all/1417605808-23327-1-git-send-email-pantelis.antoniou@konsulko.com/#t
> >
> > [1]: 
> > https://lore.kernel.org/all/20161220190455.25115-1-xypron.glpk@gmx.de/
> >
> > [2]: https://www.beagleboard.org/boards/pocketbeagle-2
> >
> > [3]: https://www.raspberrypi.com/
> >
> >
> > Best Regards,
> >
> > Ayush Singh
> >  
> 
> Just trying to consolidate the discussion. Feel free to correct anything 
> wrong.
> 
> 
> - Rather a generic global overlay solution, a driver per connector 
> should be used.
> 
> - The board headers (e.g. PocketBeagle 2) should be treated as a single 
> connector and any peripherals on it can be treated as an addon-board.

I agree with both points.

To the best of my knowledge this is also the position that everybody
agrees on, except Andrew Davis.

That said, I think this topic desperately needs some official feedback
from device tree and dt-schema maintainers: about export-symbols in the
very first place, and about i2c-bus-extension immediately after.
Otherwise we're keeping on circling around the same ideas after having
discussed and refined them so many times.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


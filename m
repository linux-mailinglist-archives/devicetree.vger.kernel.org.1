Return-Path: <devicetree+bounces-137295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 28250A088FB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 08:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF9837A2D9F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 07:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E85652066C0;
	Fri, 10 Jan 2025 07:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="WihriYKB"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD9FC2C6;
	Fri, 10 Jan 2025 07:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736494608; cv=none; b=QQmMTOcUDNNosMzEdOCAomLjEBa0TMu3ORKDFdDLW17IZJnhOHCmCQER5+7Jp9/ZJfDNAzg3dFQhD7h8tRPYeziMNtC1tCgTj1G1TGAQJNjoTtSXUHI4ES5GHNFrzonhbEPF/WDErCeLVCCqUKyVy7TZeyJRMu6/Wdzjse5CFXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736494608; c=relaxed/simple;
	bh=cFqYNfm9wZC/uzv699M4ZUHZKtarg7OnQEMunm0nJ0E=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YFoJZun48vxUWyaSJ2wk/awl77qA83716ioZPb0bxESCbSXLdNwm95fk2W0oPk8Lf0rarUc7ZAdZcCt7Wx2UXIWBsn/fv7V7UWWJqU6b3FyfdTVIfmm6j3utH8ALRfFG5ybXmRFxQWOCpJvo/ekjF6S8IYUtjC9QSDeiWMeRV8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=WihriYKB; arc=none smtp.client-ip=217.70.183.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E56CBE0002;
	Fri, 10 Jan 2025 07:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736494604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1kYzggA9/NfUQOU7gMOUFcIWQrD1ozBXcjW2qdVamGU=;
	b=WihriYKB93J/o28PlZuqjtqTmouskjgwdK9u9wvYEGHv0EMdvtsve9Gyq6JryiXt+Jwtck
	czDSJmUT6my7RZfGk4toxh1Sbwsmy745Vsd/UMzBc+YgqSHnX8FcUmouSkwUzbpaGQF9dO
	mLwYEwqMKfGRBtgAMuc/5FCXxeXnJ+TeRKGPcrX6OXv9971ZhDMrbB4/1tv0ClB8guRufj
	avKNpmtdAEBC6ata9/oSihYahniukaqbahPoAIeqNa5RhPT+WEwo35voNE4XVM67QDFK+v
	ZHGsU2YDSRIW/WilcHfLBjxIuhnkqJbU+oOjM0d/bteXuK5j1rCDR3i8ufV9Ew==
Date: Fri, 10 Jan 2025 08:36:40 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Ayush Singh <ayush@beagleboard.org>, Andrew Davis <afd@ti.com>, Geert
 Uytterhoeven <geert@linux-m68k.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
Message-ID: <20250110083640.04a39ec6@bootlin.com>
In-Reply-To: <Z4Chb_nEDTHms_ZN@zatzit>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
	<33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
	<20241210104141.39acffb1@bootlin.com>
	<bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
	<20241210115515.1886f73f@bootlin.com>
	<6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
	<20250108090750.45685a50@bootlin.com>
	<d25572fa-8f0c-4f19-874c-6698a1db40ae@beagleboard.org>
	<20250108104719.0412ad94@bootlin.com>
	<Z4Chb_nEDTHms_ZN@zatzit>
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
X-GND-Sasl: herve.codina@bootlin.com

Hi David,

On Fri, 10 Jan 2025 15:26:23 +1100
David Gibson <david@gibson.dropbear.id.au> wrote:

> On Wed, Jan 08, 2025 at 10:47:19AM +0100, Herve Codina wrote:
> > Hi Ayush,
> > 
> > On Wed, 8 Jan 2025 13:58:04 +0530
> > Ayush Singh <ayush@beagleboard.org> wrote:
> > 
> > ...  
> > > 
> > > I will experiment with adding support to dtc and see how things look. 
> > > Hopefully, 2025 is the year of addon board support.
> > >   
> > 
> > Also one point different between fdtoverlay an runtime loading is
> > that runtime loading allows to set the target node of the overlay
> > at runtime.  
> 
> I'm not really sure what you mean by "runtime loading".  Do you mean
> the kernel's implementation of loading dtbo overlays?

Yes, exactly.

> 
> While that is a different implementation from the one in fdtoverlay
> (AIUI), they're both working from the same dtb format.  As we
> discovered attempting Ayush's proposal, it turns out that the dtbo
> simply doesn't have the information we need to correctly path
> substitutions; and it's not at all easy to add it.
> 
> So, the problem of the encoding format needs to be solved regardless
> of which implementation is actually processing the overlays.
> 

What is the issue with the encoding format?

It works on my side (kernel loading) and I didn't see anything problematic.

Best regards
Hervé


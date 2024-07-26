Return-Path: <devicetree+bounces-88348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B17D93D399
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 15:00:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 745611C23191
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 13:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE5D17B51D;
	Fri, 26 Jul 2024 12:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="CxSm85/J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6542E3E8
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 12:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721998799; cv=none; b=hpzn5lYOd0bPDX/M/qFwG+JUQNtG7VyYVFKkzSkYqvs0qVpZuddZd8/Oj+5BpbKyU1wyuI9wxaMd4tECoQkAbQuxEBNnd3p/OTEJ65zKTTU17CVmHPifrUm0jwEzkhPDExApUGmyXFRzIqrBgNnTp9guiyqJasL9FmIjujtN2aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721998799; c=relaxed/simple;
	bh=1FaoIgcazK27xHpAWhnTuEBO61BLfDHMuFObkWX4Y8s=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b/X8m4yllD4mz9SQWTPMqF4upnau8X2aYvQg8TjlPmIDs8hYqZcF8MB22PeO1Jg26aBG4Pto7nz14EtvGEj4pYNTn4JZRVNBnEEejSiPFgWCTAy31dy5lBmYncEYiaG8dsPtmP+fVvKNRJsLawACFw+cdal3eWKiPVF1twFu2Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=CxSm85/J; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 347B63F22A
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 12:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1721998795;
	bh=1FaoIgcazK27xHpAWhnTuEBO61BLfDHMuFObkWX4Y8s=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=CxSm85/J19JC/JJ/3ijslKqvn8rgDpUcdUb74ekehF3oIMJasjaIuLziKf9p3cJ7j
	 mG+r2aNIlP9A3jwXooXPs0UWwSY29gQo++IzKgJBdC6zQmXPEiCtHkomAFNHwmSmlS
	 KO0oKnAaa0QN+WiunyLszh++Xx2+U8WpAPKX74cq0OYciH0zjHMykKTSfL/fN56EZT
	 s7GLA00z5TNeQUsh7ELXzGSTzBJkKcpl7EtkWBl4+ogrQDWlaLpailbJHhndOQo5Ol
	 PUZwz+aUDycbMsf1W7JYL72gQXFcq/s6BHBqQ9SJeP6g8utu1imevt6rDyioHZrld9
	 X2cr7krbXZ4Pw==
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3d9381a0eccso1051302b6e.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 05:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721998793; x=1722603593;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1FaoIgcazK27xHpAWhnTuEBO61BLfDHMuFObkWX4Y8s=;
        b=MrcwCSOXDYRO+g+aTu6jESSZOIvulCMM75/hgSsTqWMmUizZBMqiw3IuWYHnNTCzrc
         UJx4CCKyQgDWAOh1BkVXtKrcHVNuByZO7vAzMnwkbt+/PTs013Y7j9kHNuiBf79j/GhI
         D36dvtHBVHAdfQ+cgqxJWIUDM5Gys+LLK4JfmT98LFarsbqKpwnfBkuYfQpGHSM082Bp
         RCJgaNcRAcEjlfICkLJMy7nHrDpVmrg98vKGtIzs++X3YbBm1sLfOdU9TTV5FpbmKZY2
         tErNfqq0cQSi4z4eIemw/IFA/yTPKlRuKJC+edJw2eeUSxvwxiU2Od6VfdHvDVPVRuD+
         EwOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmojWgC/l4+eCde+inxySQiNhgJFoJiW8IoeAQ5P0CwWmISAw5ocBAuS4ClgOwBaWErUhATP/hM0JXWdjmto+W9HNbF6f6vMR6Zw==
X-Gm-Message-State: AOJu0Yz2b5P+z1q1RzFn04uL27Bvh13R55Wky83lSzrP/ENo1/JMNN8Y
	+7RrV5um3+GVP3DM+XfGW2nPfhqTKgC2CTi0cbOcXdcNa1AhfEhf3dKbvEUJFylHCHyPEFcRI7B
	4tDABEbH57MasxwaREhPj1zmU6IoHdZhqTwlZxQolTG0jjUNzPPu8ubmUqYiyYxmbds6cZTeqM2
	Y0kRhvDHbtkQbpU9hrw1fkHiRcC39TqLPacY5g1UB1IqxhIQgp4g==
X-Received: by 2002:a05:6808:1301:b0:3d9:e090:5e1e with SMTP id 5614622812f47-3db140a9f79mr6565314b6e.7.1721998792767;
        Fri, 26 Jul 2024 05:59:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiUN4fyKdyXsmTQkEBFb4vT0Xp39UbgHgUlfO0wIWjYUMfsOxngCxeH3PUOM3smpR8JRzlRdM5B7RIva4IuKA=
X-Received: by 2002:a05:6808:1301:b0:3d9:e090:5e1e with SMTP id
 5614622812f47-3db140a9f79mr6565281b6e.7.1721998792337; Fri, 26 Jul 2024
 05:59:52 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 26 Jul 2024 08:59:51 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240726-likewise-satin-81a7a4a3885c@spud>
References: <20240716-majesty-antler-d9bedc7fd0af@wendy> <CAJM55Z9FAH-uiNmXDELM0gkYjHue+g8JQgOryxOCv4OXJ9f5EA@mail.gmail.com>
 <20240726-likewise-satin-81a7a4a3885c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 26 Jul 2024 08:59:51 -0400
Message-ID: <CAJM55Z_QFfKOVLhKTwZCHFRC--b7QPn7_Y_Dz9ffTBGNNDcuoQ@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: remove non-existant spi device
 from jh7110-common.dtsi
To: Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-riscv@lists.infradead.org, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On Fri, Jul 26, 2024 at 08:29:39AM -0400, Emil Renner Berthing wrote:
> > Conor Dooley wrote:
> > > There is no rohm,dh2228fv on any of supported JH7110 boards - in fact
> > > the dh2228fv almost certainly does not exist as it is not a valid Rohm
> > > part number. Likely a typo by Maxime when adding the device originally,
> > > and should have been bh2228fv, but these boards do not have a bh2228fv
> > > either! Remove it from jh7110-common.dtsi - pretending to have a device
> > > so that the spidev driver will be bound by Linux is not acceptable.
> >
> > This patch is correct, but as you mention the fake device was most likely added
> > in order to use spidev from userspace with random devices added on the exposed
> > pins. In case someone actually makes use of this wouldn't this be a regression?
> > What is the right way to support this?
>
> Unfortunately, there's no "right way" that's supported for for this
> particular case. If people want to use spidev for their device, they
> should either document it in the bindings, add the compatible to the
> spidev driver and use an overlay to add the device to the dts or they
> can r bind the spidev driver to the device from userspace.
>
> The other thing, which doesn't exist yet, is a connector binding. The
> folks are Beagle are currently working on creating a connector binding
> for the Mikrobus connector - but that's rather far from complete at the
> moment.
>

I see. Thanks for the explanation. At least now there is this thread
any potential users might find.

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>


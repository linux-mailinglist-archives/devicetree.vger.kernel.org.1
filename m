Return-Path: <devicetree+bounces-119493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3263F9BE8EA
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:28:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E56FC284AD8
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 12:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA741DFDAA;
	Wed,  6 Nov 2024 12:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="GGzIxi9w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90F21DED58
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 12:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730896111; cv=none; b=sV9AWq55zBqRBiCRvMe24Sswo5gNqm8gNXrHCea+w7WI+zQPiUQBuQHSzpfTSae26PenANlsPXiwGxNCG4Sefgprp/fqJrXbcPKg1/aX2tV/sRxAMYTtwpST5GZswVyI0RNRLmyyg2ydFtQYxhBaGUvsKss03Ew1RZn2tV+pvF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730896111; c=relaxed/simple;
	bh=22mEWvI6gKzd1z8uuif4HIEMa2HjcN13Aq6+BkotBAo=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z8ejRtnYa0RGQmALAeky5xa+0OmgUUWZttv68+JPBt3jeY7KxXPV/sJKOSLYi3Ius1wAPjso3Qm0fLuK+Z5ETj+ffvD5n/R1EKRvj1pmp3btOjxxLLpJq1n71yCFSLULZ3WUgBSx9Pxw076hJIMFXsqnakNsxN73fDgOUvL6lBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=GGzIxi9w; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb4af0b6beso102158091fa.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 04:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1730896107; x=1731500907; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iWIaYuWanDJCXpP4xKD1ILcaU1UBHWm0pC+lsLc+oFM=;
        b=GGzIxi9wSjK7EMLAQNNRGmx+pgC1QgBi54CMvKZmndWXcBWWQT/ZTjD0vSysyNKw5X
         c1s7eoHhJLBJdfnl3Sos36Y12HiugpBcok5kmjA3ldeA/aLiZuUtzg5hc1tcSY7f1Qc6
         edj5GuOiDg26qVDx0mfFGBU8/pF49BW1lgSWnOMqHwoXMWSNaRsG5QYxhu8Zk/qa+Nwv
         G8gLR1TXnvfYSebIpWCPSluZHQ1OtDRTnMRXy7Xgp9vIW58c9MUjrzMvvqz/Pp3iDGVQ
         Kv9WtjWAgQ4lsfXdUirGUQakHl0frudojCg0Ece6j0fXbIu3/bePCJOhoP94FexYvYAH
         D5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730896107; x=1731500907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWIaYuWanDJCXpP4xKD1ILcaU1UBHWm0pC+lsLc+oFM=;
        b=StYeXw3QvK7254hJa5uz7H5QbzmlxYl+E8q1M4jBl1SZNEBfL47vcDvAFsFNQAaIvh
         U2n6dO8XYIezj95gbCExiFPnsPHuyBGJBvT/bw7V5q0q5ZPMZkMBbW4q2KikO0nVXRFQ
         LsoPnkJNH4243wWCnH7XyIU3UrLu7vS1tsbAzNyo1zC6JvoyxlR/ObH5I0Nr1hQf0zuO
         GMy8wViVyQORYp4tpw6Df1nXdaMNrpsaEEHU4blHWXT8Puejl8na4FdvX8sHFBfPTRGC
         MZ9Mi+ttRSBfstngpc0SN0A9cRTq6lWBpE3zXL80JxPr9yHw/7tpo07K8tPxZCAAvgRW
         3+9w==
X-Forwarded-Encrypted: i=1; AJvYcCW5raZBdHJxKvkr9yONxj7nv63MXfwu1HgZSU7YS7GFguwbq8RaeQV+MYx4TxVmqg2wZRQQp6WQ4M5w@vger.kernel.org
X-Gm-Message-State: AOJu0YySpTgTGyNU5go4GqI4dheo0tWeSBWrgKlMVIXLl2pwEFlZ1/X+
	d49/NZYCETONbGhBgkY5Vjxca0ZvYX/O0cL9yOJPeXCZBjoEtnL8aPeB6kessmg=
X-Google-Smtp-Source: AGHT+IH01edGD9WqoLaLqcgKuDB7Exq8qeJnSC4L0C1q00at8YKTkQgYxMxULRDTQH3U47fkcdWNvw==
X-Received: by 2002:a2e:a545:0:b0:2fa:fcf0:7c2a with SMTP id 38308e7fff4ca-2fedb7ca5b3mr158144621fa.24.1730896106943;
        Wed, 06 Nov 2024 04:28:26 -0800 (PST)
Received: from localhost (host-79-35-211-193.retail.telecomitalia.it. [79.35.211.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb17d0adasm272575766b.111.2024.11.06.04.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 04:28:26 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Wed, 6 Nov 2024 13:28:52 +0100
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Stanimir Varbanov <svarbanov@suse.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3 09/12] arm64: dts: rp1: Add support for RaspberryPi's
 RP1 device
Message-ID: <ZythBBrjwxxCnzCZ@apocalypse>
References: <cover.1730123575.git.andrea.porta@suse.com>
 <1f4cec50493ec5d3168735c0a005771787e5cd59.1730123575.git.andrea.porta@suse.com>
 <4a474dae-6669-4678-87dd-e0e9692a749b@suse.de>
 <ZyosSv4ecKxohSrM@apocalypse>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZyosSv4ecKxohSrM@apocalypse>

Hi Stan,

On 15:31 Tue 05 Nov     , Andrea della Porta wrote:
> Hi Stan,
> 
> On 15:29 Mon 04 Nov     , Stanimir Varbanov wrote:
> > Hi Andrea,
> >

...

> > shouldn't this be:
> > 
> > 	rp1_clocks: clocks@18000 {
> > 		reg = <0x00 0x00018000 0x0 0x10038>;
> > 		...
> > 	}
> > 
> > ?
> > 
> > And for other nodes too...
> 
> For that to be @18000 instead of @c040018000, you should also change
> the "ranges" entry in pci-ep-bus node, as follows:
> 
> ranges = <0x00 0x00018000	//This was: 0xc0 0x40000000
>           0x01 0x00 0x00000000
>           0x00 0x00400000>;
> 
> which is of course feasible, but I prefer to use addresses that 
> resemble (at least to some extent) the ones in RP1 docs.
> 
> Many thanks,
> Andrea

Sorry, this should be like this 

ranges = <0x00 0x00000000	//This was: 0xc0 0x40000000
          0x01 0x00 0x00000000
          0x00 0x00400000>;

i.e. the child address in the range should be 0 and not 0x18000.
Anyway you got the point: in theory we can replace that address
with whatever placeholder we want and from a functional perspective,
it will work, as long as you change all the relevant mappings.
After some brainstorming we've decided to choose a simpler scheme
that will resemble more the internal address described in the RP1
reference manual. 0xC040000000 will become 0x40000000.

Many thanks,
Andrea

...


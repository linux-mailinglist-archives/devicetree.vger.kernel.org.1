Return-Path: <devicetree+bounces-246102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29578CB89E7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D434F3031378
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 10:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D382DF3EA;
	Fri, 12 Dec 2025 10:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="XiucCvwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E03D1A23AC
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 10:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765535005; cv=none; b=SV6i8E1y+RG//bHvkGonUnT1OMBd7zDfvDLJ79gnsuzjSVwrigCt2p2LYwiJe5/azeg70zw9Y0eDRtWANacV6HAdNmpQscdd1rhmQm25FxaRrGPDo7moZIbbB+rqYkNxskSAZkMmMHBtLolxlMKD8zfelCALfa+Js8nuKT00FoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765535005; c=relaxed/simple;
	bh=Zaw7TwytTKibQJzcqeC6bowlkTuSP1nupZKdXUZmNZI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=um9HKcDqU0pm9e6E4U5Ns8l750dTihYetJObLPz7pmVZnk7PAucdPMV27UByW9varLxKL5YcPqJLF27gIQXrXGZxzsO7Quwl/6kUlav7QDHU9vfmOwu13yxiv72zl2PwSH3jgn7jiB9odtoj53hyMVILsb+i/OsLQTH5+vgz47I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=XiucCvwb; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b7cee045187so208525966b.0
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 02:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1765535001; x=1766139801; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CDYLpaBTjYbFNPHg2kQ1gn8B+rdgjHgQZqIXDZficXs=;
        b=XiucCvwbQmj38oO69R/O88Q2lJ9zvaXiinnMLPljSk00gpO4AXHEQACgoIIXYgEoVH
         cSe/Ah3FLaS4wPfB2HrhyUVjqgGXLKcEgBE7msYuJugxdpxl8vYMug3TO9ufWDt1Iomd
         m64S6h/K7c1Io85WtSCr9E58TcSZ4D8A3Sd32RllSVid+0Cb+qDVvYV+rQzzW61058HI
         OKE+AxL2zmRsxgozyyiv0dqMVu0WkA9C/Voegi2yAmxL1JHtEIVPfwBfMyLkaLuckng1
         JNl2ttBWWHFYFady4ebGdkOX9+RiRCC6A5BHcyfmaqcwUgjB4gzAHb5JTegTLryB+vEN
         a8tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765535001; x=1766139801;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CDYLpaBTjYbFNPHg2kQ1gn8B+rdgjHgQZqIXDZficXs=;
        b=IfCUm9mmqF8gUS40n4SZthp1XI9X7cG0b0lMrG6tO/BKSQsva65jtkkjsZyazlCONH
         EW4fH+jCQmjUfpVq77lon4AGTIQ5xuAlai1ONyF++2We51QoQpE7UiKd55nxxwKFyot/
         mL+wfw0BAGthnUEfsXfuf+4UlTNqNKwviP/oCEGNbHjcsy63yl+fL4l0AZseV7nbvkil
         sIPDb5av5cwIurJtKabF19W9iAg5YFYNMgI8YG2CrX/uop2Rcv4q5OJYu7C101foYrzB
         cyLVsOaYVB8o0Y1a3Tt3dFuGkc6WLnNf19J2C9fOM7G9qrNKd6y2eNfW8/nSw0qy10Q4
         K1tg==
X-Forwarded-Encrypted: i=1; AJvYcCV3Jn+ReRYEMlXdcujHEA7B1xIEspXQOsAy9cTce4Alv3GFBSweXOFfgn1NIwX7KNfNX/vh7yqRPA4r@vger.kernel.org
X-Gm-Message-State: AOJu0YyVBKFOz20Q0WJGb8xd3o3jqtx1IlnZSDFKdRfsuN9sUsFcbv/u
	W5jIl1jckfsJKNm0MIQH8mXiYCN+GXo4FSPbs063pZY7jq7NqupoXlddblj7xZ8uc5k=
X-Gm-Gg: AY/fxX6NlL0hEdcNThuCZW3hX14YFnYwuhUaM9kgjf9J2qklki9iCukaVyE1sDskKJk
	8Od5B9mcXmrGGIIQHoYJfLwO37iJVy/OEH1meYwSw3/8EeiChYIotO6oChdgA5PsyfpH0HYLUIy
	7FCamAQLWPvztsswTnLoZRMGJdiaFXMty4wRlEoAloTUUyAhtiuD1/vrUS5VHcOeey1reNoLOuo
	tyYSTy16/UtcQ8AF6UHZi4/wrIevPEFjn750BJTNSjWNthrGk9fh13CNIJHpOz24spkjvCBiR92
	A8uSJWigq2euWZ9HXrTVvlNBsvY7GcP65tSICmr3gRnFGxFhUdozuIliBaJMj+fJq+Bdl61l9Fe
	KAYTX/eLi7xfRkiwRLQLPDpl6XghC8T53oS70Trfjf0svB9dKM/4tKhaiZXaqZXbAQ+WSLqLQbv
	qs8xYo28a0r3d5AIJMURqy/2CE3xyr4u8VMxwKFbKWqZ1FUoKcDIU1Jg==
X-Google-Smtp-Source: AGHT+IFSA/IDTOqKcf0h+pfynm/B0vl4/MfsuLtrfDiYru5ejvh12sPIowwmXp4itfh3zExKyyL5aw==
X-Received: by 2002:a17:907:9406:b0:b73:2d9c:9581 with SMTP id a640c23a62f3a-b7d21897355mr184502066b.28.1765535000836;
        Fri, 12 Dec 2025 02:23:20 -0800 (PST)
Received: from localhost (host-87-6-211-245.retail.telecomitalia.it. [87.6.211.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5d258dsm532332466b.71.2025.12.12.02.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 02:23:20 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 12 Dec 2025 11:25:51 +0100
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>,
	Stanimir Varbanov <svarbanov@suse.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0
 alias
Message-ID: <aTvtr5v4DjuqctdY@apocalypse>
References: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
 <CAL_JsqJg4aYGyd49UAAPBw+FGpmGxV5JkdkXp2FK_7Gt+7DLZA@mail.gmail.com>
 <20251212023749.GF28411@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251212023749.GF28411@pendragon.ideasonboard.com>

Hi Laurent, Rob,

On 11:37 Fri 12 Dec     , Laurent Pinchart wrote:
> Hi Rob,
> 
> On Thu, Dec 11, 2025 at 12:42:40PM -0600, Rob Herring wrote:
> > On Sun, Nov 2, 2025 at 5:15 AM Laurent Pinchart wrote:
> > >
> > > The RP1 ethernet controller DT node contains a local-mac-address
> > > property to pass the MAC address from the boot loader to the kernel. The
> > > boot loader does not fill the MAC address as the ethernet0 alias is
> > > missing. Add it.
> > 
> > My change here[1] is going to effectively revert this.
> 
> :-(
> 
> > The RP1 stuff
> > needs to either be an overlay or not. We don't need both ways.
> > /aliases don't work for overlays. I suppose that could be added as a
> > fixup when applying. The kernel also assumes aliases are not dynamic
> > and uses indexes which aren't present, so even if it did work there
> > would still be problems. OTOH, if the bootloader might use the
> > ethernet controller, then why would this ever be an overlay in the
> > first place?
> > 
> > Turns out digging into RP1 stuff, it is a mess and needs reworking[2].

I'm currently working on it.

> 
> I don't have a strong opinion personally. As far as I understand from
> https://lore.kernel.org/all/cover.1748526284.git.andrea.porta@suse.com/,
> non-overlay support was added for compatibility with downstream. I don't
> know why the overlay option was considered better for upstream. Andrea,
> could you comment on this ?

The overlay support was initially conceived for three main reasons:

- it was mildly asked for the driver to work also on ACPI based system. It was
  not clear if the ACPI tables would also include entries for the RP1 so I
  assumeed they did not (which would be most probably the case). I'm not aware
  of any hw which complies with these scenario.

- there was a non zero (even though close to zero) chance that RP1 could be used
  on other appliances (i.e. some PCI cards), which makes teh overlay approach 
  appealing. Again, I'm not aware of any real existing hw, if ever.

- paving the way already opened by Bootlin's LAN driver seemed IMHO a good thing
  to pursue (I would say that drivers for FPGA peripherals could benefit the most
  from this approach but there could be others), so why not kicking it off with
  this driver.

Unfortunately, the overlay support is not fully working for all but the simplest
peripherals that requires referencing their nodes from the main DTB, for reasons
debated starting from this thread [1].

This is why the full DT has been provided as the default. Now that I see that the
overlay support is causing a lot of pain and concerns, I'm planning to evict it
in favor of the full DT only, overlay is not used anyway and will not be functional
until we solve all those issues which could be in a very long time, if ever feasible.

> 
> > Right now, I just want the warning gone so I don't get further complaints[3].

I'm also on this. Please provide a priority between fixing this warning (I need to
do a round of tests) and fixing the RP1 DT hierarchy (there will be changes in
both DT and driver code).

Many thanks,
Andrea

[1] - https://lore.kernel.org/all/CAMEGJJ3=W8_R0xBvm8r+Q7iExZx8xPBHEWWGAT9ngpGWDSKCaQ@mail.gmail.com/

> > 
> > Rob
> > 
> > [1] https://lore.kernel.org/all/20251117211503.728354-2-robh@kernel.org/
> > [2] https://lore.kernel.org/all/CAL_JsqJUzB71QdMcxJtNZ7raoPcK+SfTh7EVzGmk=syo8xLKQw@mail.gmail.com/
> > [3] https://lore.kernel.org/all/CAHk-=wi+ge-gtCg+iLd6dgjisGchjtsKY8AXG9tXGOxqVv8Fkw@mail.gmail.com/
> 
> -- 
> Regards,
> 
> Laurent Pinchart


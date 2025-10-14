Return-Path: <devicetree+bounces-226353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E1DBD74D3
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 697AB19A24BC
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55E1D271468;
	Tue, 14 Oct 2025 04:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KA9KJoNG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07E78635C
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760417143; cv=none; b=FZU23DQWBZWvf8YfgOp5onwfX8ftuEtfcV7sCaLkf4Buao3yDdhyD4NjnfeQes3V/QIWYtIBQh2Srh05BiQyE6xuy7L+NtThCwO2dwGu2wht5/ZQGwt+/nDOsDwjJvgviVeH2B1UKC/BMLoH2E8IeAp0NNEd4ZxN7+c8Ol4O4wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760417143; c=relaxed/simple;
	bh=0orUWzHmoddf5T6UWfg8hFuB0PDavX6xN2JvIHOkAeM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=udBArRjirp1T83no6molTexZ9Bjw1rqCSTUF5tRo0GBZvPCvEqIP20gRDiMbd3EoCeqVp1Uri11Gm7eMzmt0jk1OQ86zRHbRPQwuYmm3hfsd4tMP5q6zf3I093DtxAGkugg6LF2QVCgFw3vQea4f0iGk1CzxqeQgrPBYfsqIrRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KA9KJoNG; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3324523dfb2so4747582a91.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760417141; x=1761021941; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6IWAevNcHXjFvzpaRr8LOfdvjd37W/dKCFMhW8BIdjo=;
        b=KA9KJoNGPQ8v6W5U6bwJ66AubA+wP1aptNvX8WmU28aVeiJhDhex+B8vrWnaZlY4SX
         oVta/O8lcZjfeLjn9NQ5VYm5t1j07fXFZVG7vuklJqeEJ5fJQ7KtKmc5TMW7DXNp5txr
         5id/9TLF+EL8Nc33J6cKK56A4etDwtY5/545O2yEB63hJEmNRowsrCrfkpIU0uktBDE9
         vHKpnQLZH+m0bYe+hGS6jKhicY1tyeA9/GuPljAW5iXMtk8VHhO6dSj/v6rH7TiGSMCk
         3RD0mVssyZYTmQac7kTqL/sAVl/TqifvmwU/aWtC8Ou8bQZze5yr/Welkfjsy1ddM0z+
         Mfqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760417141; x=1761021941;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6IWAevNcHXjFvzpaRr8LOfdvjd37W/dKCFMhW8BIdjo=;
        b=IQ8tGRVOv3QC80kIFinH64rYnveJaP6CjWeEiPmdRWoTUmoL/gg2saDCjpVz6lw6OR
         zaQ0Fh8mXmMvwBsvoVMfZa3Qii/eGG9I3Z9+UeBbSCReATzFybxgWOI2HMit2LdNake1
         VzYAa3I4AXIHfe4/C8LUvDMHmTS+3OMi1Maic5uMByO8D3hzP+EP2em82MA4tAWYssxe
         Vesh4UUF7teiaRsEAbf3dqBybUHWDLCMksZCyW29oUBJphbUIFQsdzFViffgLmnnwrOS
         Ayw/UKn/tughKwLknGCxFGIRGNq2wvRka7eJ76jSop7AeCvam51o+TYzbEG4y81Tz/UK
         c/Jw==
X-Forwarded-Encrypted: i=1; AJvYcCVCB3HH/TbMqZrGO0TfmcofLt0gOa9S8mdQBBQbNbe3yTWrFeSKRLB8p92s9l0FWPdBenQEs7aZ8KG5@vger.kernel.org
X-Gm-Message-State: AOJu0YzfBXAXXblxtbDbCfOjeb+dQd9vDh0J2UbOTHhNNo6XpKqCxXeo
	e/GqPg4gkzmbaox/BO7W6qzqjJFDsUjMxas4frq3RXPiB38pxxIKaq6S
X-Gm-Gg: ASbGnct/rgD8VCX171mjmEXIt+afT0P1qepY1OByvm+cxwIs5esxBePRI1zzpWgm+WF
	pAKUbV7Sjfpx3QcAftPP88BZ1BzMqa8JpWreb3tPPl3AFifcY3mxOqdrPfYjjfHEtyu4HLwUy4m
	m3NJV1w8RWd6dJck+1Y4zPPCVBT67RIkKBF9VrDav/0fI6+CwMessfxP+CuSge8cdoCNlHVOpqT
	xyQ6KMx1Cbksb14+2YzrCZV0zXasCKA9/L7JySO4wvm7Byv5nGPa8KzTKZC0uC7vayoS+wq3/rC
	+pYlkqlRvHEBH+5e1s3HXxb/zdvInIwsy2CAh39GJ54R4EdU+SPRk4ReaDjRN1QwHCH/AsGTIRI
	QYp10gmlAUdRjDvP8+p9GmHuG261+hlWX3lGo70OTJ33wYXKbqry0jLNH3F4vUuQVSRyeXh1Odg
	==
X-Google-Smtp-Source: AGHT+IFpInrQ3BK2IUoEdZQ4XEmHh6tIaVzcz4A5h+n6G2cV7PgK4L9/NeRbvXUR10GkJ9cgViH1AA==
X-Received: by 2002:a17:90b:1b41:b0:32e:6019:5d19 with SMTP id 98e67ed59e1d1-33b513bdffdmr29320243a91.34.1760417141038;
        Mon, 13 Oct 2025 21:45:41 -0700 (PDT)
Received: from fedora (c-76-133-73-115.hsd1.ca.comcast.net. [76.133.73.115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b626d15e2sm14122596a91.21.2025.10.13.21.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:45:40 -0700 (PDT)
Date: Mon, 13 Oct 2025 21:45:38 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>, Tao Ren <taoren@meta.com>
Subject: Re: [PATCH v4 11/13] ARM: dts: aspeed: facebook-fuji: Include
 facebook-fuji-data64.dts
Message-ID: <aO3VcnvDgtYLLjoI@fedora>
References: <20250728055618.61616-1-rentao.bupt@gmail.com>
 <20250728055618.61616-12-rentao.bupt@gmail.com>
 <79ddc7b9-ef26-4959-9a16-aa4e006eb145@roeck-us.net>
 <aO2kLyxGlGt12sKD@fedora>
 <e3dc7aee-c8af-4276-84e5-0f0c7926be05@roeck-us.net>
 <054cf209-61af-4d21-9a3b-d0f6dd24ee3b@roeck-us.net>
 <aO3M90Ycp2DWyFuk@fedora>
 <04dbdd20-69c1-48fe-9bc7-7e9ffaedbe9a@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <04dbdd20-69c1-48fe-9bc7-7e9ffaedbe9a@roeck-us.net>

On Mon, Oct 13, 2025 at 09:35:43PM -0700, Guenter Roeck wrote:
> On 10/13/25 21:09, Tao Ren wrote:
> > Hi Guenter,
> > 
> > On Mon, Oct 13, 2025 at 08:44:17PM -0700, Guenter Roeck wrote:
> > > On 10/13/25 20:20, Guenter Roeck wrote:
> > > > On 10/13/25 18:15, Tao Ren wrote:
> > > > > Hi Guenter,
> > > > > 
> > > > > On Mon, Oct 13, 2025 at 05:20:57PM -0700, Guenter Roeck wrote:
> > > > > > Hi,
> > > > > > 
> > > > > > On Sun, Jul 27, 2025 at 10:56:13PM -0700, rentao.bupt@gmail.com wrote:
> > > > > > > From: Tao Ren <rentao.bupt@gmail.com>
> > > > > > > 
> > > > > > > Include "facebook-fuji-data64.dts" in facebook-fuji dts to avoid
> > > > > > > duplicated code.
> > > > > > > 
> > > > > > > Fuji-data64 and Fuji are identical except the BMC flash layout.
> > > > > > > 
> > > > > > > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > > > > > 
> > > > > > With this patch in the mainline kernel, the Ethernet interface I use for
> > > > > > testing does not come online when loading fuji-bmc in qemu.
> > > > > > 
> > > > > > Reverting this patch fixes the problem.
> > > > > > 
> > > > > > Looking into this patch,
> > > > > > 
> > > > > > > -
> > > > > > > -#include <dt-bindings/leds/common.h>
> > > > > > > -#include "ast2600-facebook-netbmc-common.dtsi"
> > > > > > > +#include "aspeed-bmc-facebook-fuji-data64.dts"
> > > > > > ...
> > > > > > > -&mac3 {
> > > > > > > -    status = "okay";
> > > > > > > -    phy-mode = "rgmii";
> > > > > > > -    phy-handle = <&ethphy3>;
> > > > > > > -    pinctrl-names = "default";
> > > > > > > -    pinctrl-0 = <&pinctrl_rgmii4_default>;
> > > > > > > -};
> > > > > > 
> > > > > > I don't see this in aspeed-bmc-facebook-fuji-data64.dts, meaning that
> > > > > > interface is now disabled. Adding it back in fixes the problem.
> > > > > > Also, MAC3 is explicitly enabled for fuji-bmc in qemu.
> > > > > > 
> > > > > > Was the interface disabled on purpose ?
> > > > > > 
> > > > > > Thanks,
> > > > > > Guenter
> > > > > 
> > > > > The mac3 interface was removed in the latest patch (v4) per Andrew Lunn's
> > > > > feedback, because the rgmii setting is incorrect.
> > > > > 
> > > > > I was planning to add mac3 back as soon as rgmii support is properly
> > > > > handled in aspeed mac driver, but kindly let me know if you have other
> > > > > suggestions.
> > > > > 
> > > > 
> > > > All I can say is that it worked just fine with the qemu emulation,
> > > > and that it is broken now. Since it was broken on purpose I guess I'll
> > > > have to find a workaround or stop testing network interfaces with
> > > > that emulation entirely.
> > > > 
> > > 
> > > Ah, I see that mac3 was the only enabled Ethernet interface on that system,
> > > so you effectively disabled networking on it.
> > > 
> > > I don't claim to understand the logic (how can anyone continue to use this bmc
> > > without network interface ?) but I guess it is what it is. I'll stop testing it.
> > > 
> > > Guenter
> > 
> > Sorry for the inconvenience.. I have to take a local patch to enable
> > mac3 in my environment, because as you said, it's not useful without
> > network interface.
> > 
> > Meanwhile, I will need to work with ASPEED to enable rgmii delay support
> > in the ASPEED MAC driver so I can add mac3 back to the dts. If you are
> > looking for a similar platform for testing, you could consider elbert.
> > 
> 
> AFAICS aspeed-bmc-facebook-elbert.dtb does not work with the fuji-bmc machine.
> The console interface or wiring seems to be different.

Oh you are right (the console settings are different).

 
> As I said, I'll stop testing the network interface on fuji-bmc. That reduces
> test coverage, but there is nothing I can do about that. I already made the
> necessary changes in my testbed, so from my perspective the issue is closed.

Got it. I will drop you a message when I add mac3 back (if you feel it's
helpful).


Thanks,

Tao


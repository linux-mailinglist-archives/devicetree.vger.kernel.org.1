Return-Path: <devicetree+bounces-242275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB0EC88CD6
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA5CB3B50CB
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC45531AF15;
	Wed, 26 Nov 2025 08:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i3dXoDxe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEFB31B126
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 08:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764147448; cv=none; b=ZNNgeUex1kYKoIFoP5RQu9Qv5MGSAQzJvUvtkUVBe7teS8lI0VfUiO7XcY4BjkoxhfN5LOnZYscaJvXJn6xlM/wZXRyKxX35/chh8hZH4K+TsFQ0BfYCEdpcNskmjqAGHzhQ8aVt1GGH8h7CwQGoGRdX9D50slq39gUeldO8JQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764147448; c=relaxed/simple;
	bh=PEMRM4SfiLbGU93b8d8dO8w8yPLvJ4lzq9WQeKexhbY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZenVbyuakyBJAQE4K1L8m1aMUir0SKasbVkZmv3x5XciEpRpXKHG6GlNjr8ovgEfUwH8yOupx1vZsxYhE/TRdtdfbrT5LmZHRaWpzpaI0/pD9deeMYQJkadFBOi6UjGJ2rWDDVJ13QsAYeKYrr+m4pm0CDht0kAxVOxI7RCmpuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i3dXoDxe; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-11beb0a7bd6so687674c88.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764147446; x=1764752246; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OyD4sn9jsMLtWXgnyFdyRLUkPxYCW2TqpmGHV9ixsxU=;
        b=i3dXoDxe4pMLfCXXlUcbmq4yp+KNj909HNYQAp/NWWmKNbpLHddLiCZXDW4vrt0Xu7
         dJtyfZtt9tCephdMenM9/Ens1yGgnzcrMfsGK+jEIuNzaNGWw0ulS8QRtzKArqdFGQ42
         CZOkBJsAu7rx88C4s+kYqDhHlzgWMiYuJkiAchyij2hxqrVC9heSKT2qpEiABAxN2+To
         67t6Axs71KnLLqrBwM2Qyer1ZwyoSuOo5L/Th8Rfc9BNx1LC2kWfcO07UY45KjifcIpR
         ijNIcgcOChVBSnTmW/Egu5VWOhXvZ2+PnVlnDi3/WXmMEjM0UCLMQ5XadjANJIf6z3zn
         nbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764147446; x=1764752246;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OyD4sn9jsMLtWXgnyFdyRLUkPxYCW2TqpmGHV9ixsxU=;
        b=IJewApbhlNoLxSc+vD1xDyhzoHnyMUlMAIvOVqhXWJdhsesrmD2BLYqtN5+7Mn4Bp0
         sYPffy0g/jvhIzZbkDiJO8+s8oqSPyP0+04bn0/RhjC8MaMKlbqLu0nY9XLfamly5YK9
         sEHDOy6GH03tBSFCFAAqvNs/CjfXITSyL/rnmwQcz3UL0e4Gkd4ypM60OCBW2D/ps8XO
         KPeUSjsobs/KjqdsNaZJNS/lULHfTQuNaSFVlMFdYjezlrZCjOXagQfhV/LE452O8wqt
         rk0Mws0BsC1YsH4sRykLbQ34bKZbUGDPqNNDyEL/PhjZd+adPO8ZXoY6dM27JzgO+ei6
         ygsg==
X-Forwarded-Encrypted: i=1; AJvYcCULZpPT8lB+H0BfFS5Poy1zcksZ6+0/7lre3HGmfR+WYwb2yR34TRzPc1ZA0lrtL2ePFeWj0MHgGfMV@vger.kernel.org
X-Gm-Message-State: AOJu0YyJqAmWYt5DFYP5XGHdHBJlGOtWEml/8H375Za3NreAfhCaaCaO
	+/af78rjkTb7nVWAnLQ+t4bUcsoJov9uvC96xKJ6L749Ue0K+SJcFgX9
X-Gm-Gg: ASbGncv4sZfgZoRrjoA9OjLMxQx4xvWZCrVIb3AVHuDEVyRrcp4a+7aGnAN2i1VRCr0
	ZOs9WLAAeNwPHvQWRkom1K8UpDKpiwOCox4hzQC6eYewYut78k6YxvSJEh4zA8LbMwNv4ONNgA2
	jAYUCI29KlJ2c9ZVJXlLE4otuS45OUQcyQjL2DbTGkcSabtGbTpjHxqSM3CNZqaYo6rTMi+g3MK
	SzJSzjgzsHioeAOA0fr+sxhqMRodQfsrvPiAZF8zitziQqrlos4/qpVr9pO/jeDZyz7bhoG+I9i
	RGuAds9KzQ6xtGgG0R+AxtRErcRad5sFaiJP+XwQwD55Nr63J9vq85xV4MQBSdaDDhnxZNZI0XK
	JFdwbni6oiF5NHcW1Hh41LkWxw75g/Dfudgh0brPC3bw4AWAaooMzO2IjPQbyHY5ftZ1x/eUbuE
	fZJp/3og1CpvBV53AkInJnCs7i4vfoKTb+MQt8QB6+E1A=
X-Google-Smtp-Source: AGHT+IFrIMIkTPrxwRfvEMQ5cEoCTFWA9fomBn7RLpjcNkpm60ZPM71v6rIQ9mqGMQwZqmC/nqOzYQ==
X-Received: by 2002:a05:7022:ec17:b0:11b:9386:a382 with SMTP id a92af1059eb24-11c9cabc4f0mr12703137c88.21.1764147445929;
        Wed, 26 Nov 2025 00:57:25 -0800 (PST)
Received: from fedora (c-76-133-73-115.hsd1.ca.comcast.net. [76.133.73.115])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93db556csm92664267c88.1.2025.11.26.00.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 00:57:25 -0800 (PST)
Date: Wed, 26 Nov 2025 00:57:22 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Jacky Chou <jacky_chou@aspeedtech.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Po-Yu Chuang <ratbert@faraday-tech.com>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"taoren@meta.com" <taoren@meta.com>
Subject: Re: [PATCH net-next v4 4/4] net: ftgmac100: Add RGMII delay support
 for AST2600
Message-ID: <aSbA8i5S36GeryXc@fedora>
References: <20251110-rgmii_delay_2600-v4-0-5cad32c766f7@aspeedtech.com>
 <20251110-rgmii_delay_2600-v4-4-5cad32c766f7@aspeedtech.com>
 <68f10ee1-d4c8-4498-88b0-90c26d606466@lunn.ch>
 <SEYPR06MB5134EBA2235B3D4BE39B19359DCCA@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <3af52caa-88a7-4b88-bd92-fd47421cc81a@lunn.ch>
 <SEYPR06MB51342977EC2246163D14BDC19DCDA@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <041e23a2-67e6-4ebb-aee5-14400491f99c@lunn.ch>
 <SEYPR06MB5134BC17E80DB66DD385024D9DD1A@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <1c2ace4e-f3bb-4efa-a621-53c3711f46cb@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c2ace4e-f3bb-4efa-a621-53c3711f46cb@lunn.ch>

Hi Andrew,

On Wed, Nov 26, 2025 at 12:49:57AM +0100, Andrew Lunn wrote:
> > I try to summary in the following informations that I understand.
> > 
> > 1. with rx-internal-delay-ps OR tx-internal-delay-ps OR both
> > 
> >   Use "rx/tx-internal-delay-ps" property to configure RGMII delay at MAC side
> >   Pass "phy-mode" to PHY driver by calling of_phy_get_and_connect()
> 
> Yes, since they are new properties, you can assume the phy-mode is
> correct for these delays. We just need to watch out for DT developers
> setting these delays to 2000ps and 'rgmii', which would be against the
> guidelines.
> 
> 
> > 2. withour rx-internal-delay-ps AND tx-internal-delay-ps
> > 
> >   If "phy-mode" is 'rgmii-rxid' or 'rgmii-txid':
> > 	Keep original delay
> > 	Print Warning message
> > 	  "Update 'phy-mode' to rgmii-id and add 'rx/tx-internal-delay-ps'"
> > 
> > There are FOUR conditions in delay configuration:
> > 'X' means RGMII delay setting from bootloader
> > A: 7500 <= X <= 8000, 0 <= X <= 500
> > B: 500 < X < 1500
> > C: 1500 <= X <= 2500
> > 	Mean "Enable RGMII delay" at MAC side
> > D: 2500 < X < 7500
> > 
> >   If "phy-mode" is 'rgmii':
> > 	Condition A:
> > 		Keep original delay
> > 		Update "phy-mode" to 'rgmii-id'
> > 		Print Information message
> > 			"Forced 'phy-mode' to rgmii-id"
> 
> So 0 <= X <= 500 is a small tuning value, so yes, is correct.
> 
> > 	Condition B and D
> > 		Keep original delay
> > 		Print Warning message
> > 	  		"Update 'phy-mode' to rgmii-id and add 'rx/tx-internal-delay-ps'"
> 
> Yes.
> 
> > 	Condition C:
> > 		Disable RGMII delay at MAC side
> > 		Update "phy-mode" to 'rgmii-id'
> > 		Print Warning message
> > 	  		"Update 'phy-mode' to rgmii-id and add 'rx/tx-internal-delay-ps'"
> 
> 'rx/tx-internal-delay-ps are probably not required in this case, the
> 2ns from the PHY is probably sufficient.
> 
> > 
> >   If "phy-mode" is 'rgmii-id':
> > 	Condition A:
> > 		Keep original delay
> > 		Keep "phy-mode" to 'rgmii-id'
> > 	Condition B and D
> > 		Keep original delay
> > 		Print Warning message
> > 	  		"Update 'phy-mode' to rgmii-id and add 'rx/tx-internal-delay-ps'"
> > 	Condition C:
> > 		Disable RGMII delay at MAC side
> > 		Update "phy-mode" to 'rgmii-id'
> > 		Print Warning message
> > 	  		"Update 'phy-mode' to rgmii-id and add 'rx/tx-internal-delay-ps'"
> > 
> 
> These look correct.
> 
> How many different boards do you have you can test with? Do you only
> have access to RDKs? Or do you have a test farm of customer boards for
> regression testing. I would throw the patchset at as many boards as
> you can to make sure there are no regressions.

I synced with Jacky offline a few times, and I'm happy to test the
patches on my Facebook Network OpenBMC platforms.

Hi Jacky,

Looking forward to your v5, and please don't hesitate to ping me offline
if you need more info about my test hardware.


Cheers,

Tao


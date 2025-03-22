Return-Path: <devicetree+bounces-159890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 037DFA6CCDD
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 22:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67E791891D0B
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 21:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EA9418FC9D;
	Sat, 22 Mar 2025 21:45:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw22-7.mail.saunalahti.fi (fgw22-7.mail.saunalahti.fi [62.142.5.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3A3522A
	for <devicetree@vger.kernel.org>; Sat, 22 Mar 2025 21:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742679946; cv=none; b=V8a0sHbSwvhXNLPKiiishmK/XjgbB+GuHuooFx3Z8UPIzQeqRLzDY7eZ2+7da93M5SJgAhi/dgrtPuRcVnvTZF0jX9woD81ADI6fyiAWWF34fXs9a/tGyXeT6a/3X3q468MuqbVZN336pqjXouv8ujfCPQyH/y/HZdryDKHj1UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742679946; c=relaxed/simple;
	bh=iLlAAePR19NI1gSPLyDl1EgygeWW9rakF/qDtpbJ2qM=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQU1gFn0yCtDVJ0TFzzqXJ8c/4R6vkpD6mgAkDbjr7G76wpBQQhmjC7ZhKvxnO22BAmkRB30X8yUKb8wv7q76CCKMed67uv2+COxGr5LMXw0oTGRA/RAhk+yZxp3bPXLbaHJIdgjT4WUiv0a7L+B9ceqeS3/HGhfaAnVf7B+nak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-232.elisa-laajakaista.fi [88.113.26.232])
	by fgw20.mail.saunalahti.fi (Halon) with ESMTP
	id f9ce52ff-0766-11f0-ab9d-005056bd6ce9;
	Sat, 22 Mar 2025 23:45:30 +0200 (EET)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 22 Mar 2025 23:45:30 +0200
To: Benjamin Larsson <benjamin.larsson@genexis.eu>
Cc: Greg KH <gregkh@linuxfoundation.org>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, ansuelsmth@gmail.com,
	lorenzo@kernel.org
Subject: Re: [PATCH v4 0/2] Airoha UART support
Message-ID: <Z98veiHLkQWlCdBE@surfacebook.localdomain>
References: <20250209210241.2622309-1-benjamin.larsson@genexis.eu>
 <2025021019-overtake-elk-e644@gregkh>
 <28a3cbc9-53fb-44e3-bc87-d33cbc406c8e@genexis.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <28a3cbc9-53fb-44e3-bc87-d33cbc406c8e@genexis.eu>

Fri, Mar 21, 2025 at 09:37:09PM +0100, Benjamin Larsson kirjoitti:
> On 10/02/2025 07:14, Greg KH wrote:
> > On Sun, Feb 09, 2025 at 10:02:39PM +0100, Benjamin Larsson wrote:

...

> I would argue that I follow the current flow of the code. In 8250.h we have:
> 
> CONFIG_SERIAL_8250_PNP
> CONFIG_SERIAL_8250_RSA

These are historically parts of the main driver, RSA code theoretically
can be removed.

> CONFIG_SERIAL_8250_FINTEK

I would love to see this being not part of main driver.

> none of those enables COMPILE_TEST or the option to compile as a module.

They all together may be compiled as a main driver module.
Again, this is all historical and new code would need a very good justification
why it can be held in a separate module.

> Neither the Airoha code or the other code is not intended to be its own
> separate module,

Why not?

>  it is to be part of the 8250-driver. The 8250-driver can be
> loaded as a module with or without the Airoha baud rate code.
> 
> Implementing COMPILE_TEST when the 8250-driver does not support it seems
> tricky. All the ways I could think of would result in messy code and logic.
> I came to the conclusion that a smaller patch that reuses the current logic
> was preferable. If that argument is not good enough then I need some
> guidance how to implement something what would be accepted.

-- 
With Best Regards,
Andy Shevchenko




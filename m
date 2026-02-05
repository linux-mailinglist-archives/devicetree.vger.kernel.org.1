Return-Path: <devicetree+bounces-263158-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPvAFvwAhWnr7QMAu9opvQ
	(envelope-from <devicetree+bounces-263158-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:43:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C7CF73C4
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:43:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D5E1C30205DC
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 20:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E28EA32E697;
	Thu,  5 Feb 2026 20:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTnrv2TB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE59E32E150;
	Thu,  5 Feb 2026 20:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770324217; cv=none; b=n1mwHZap/KMs2fFcwp+310mcZJTwNQ4t6z6kU0M47HkUnBXOVKJOcyXS4dRaCzWo545tc+wUFIw8/53INb4wejMcyCX/IeZKN7jmHgQnxlnSByzHp+vZGt/OwMU7odRcxd3JQkFyQQcEPqWQAFc2Keyj75cx+crJueLcr80nCPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770324217; c=relaxed/simple;
	bh=ArlLdx5klo5Fz+xESBh+NecS50HSyTzLBI1HSgmTJCI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lnPUEQOGsw2EHVOfoHUV5t/wkpNTajyDUWczWKO/uZHyKhc7F9r+A72WLLhoewA2lkd9xwTLig2V8Tp/JlBDuLyH7Dbn1OsX+OBTU2x9ws5KkvTPnn8ZWtI96oVudS3tnXmY1gi9Pa81bbQtdJpRaSOmJGT7QlEfInjgagDlEdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTnrv2TB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82342C4CEF7;
	Thu,  5 Feb 2026 20:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770324217;
	bh=ArlLdx5klo5Fz+xESBh+NecS50HSyTzLBI1HSgmTJCI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lTnrv2TBwDREZTg7hxEVZ4HzBOBxMcqIxtfQhhevihNRWcHLttsYZLL0TkEeaWnZ4
	 AGaPSaCjB/I4uXXMBQYUTpmYppgGvglymQbL3XUxHpM4RwY8F94fxoGi7DVyjnoFEr
	 b/YM4RYF3QpyMx/nJecudoadK4twFJsDQoPdgsR5XUI3sEFua/UXYm6w20AzEZV5fw
	 DSQ1oV0IIbfn376D959R2Uezq4KCSW6TBc4R49dks2dySEXDtBw+0TY2+/9+d4N4IW
	 4gM2M5zdvwzz5BQY4pApY//I3xFPncUO8Ks5GA7ePARiH5GE6+n4i38a8lkpHtNlkp
	 qU1us5oJGoAoQ==
Date: Thu, 5 Feb 2026 20:43:25 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, kernel@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Andy Shevchenko
 <andy@kernel.org>, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, David Jander <david@protonic.nl>
Subject: Re: [PATCH v4 06/13] iio: dac: ds4424: use device match data for
 chip info
Message-ID: <20260205204325.5bd09d97@jic23-huawei>
In-Reply-To: <aYIMgEEDd8ZfLv71@smile.fi.intel.com>
References: <20260203093434.2548978-1-o.rempel@pengutronix.de>
	<20260203093434.2548978-7-o.rempel@pengutronix.de>
	<aYHH69gXyuwmQR03@smile.fi.intel.com>
	<aYHLRvfJH54XumUA@pengutronix.de>
	<aYHhO7pJPEew7QMC@smile.fi.intel.com>
	<aYHjQhO92yxoy_9o@pengutronix.de>
	<aYIMgEEDd8ZfLv71@smile.fi.intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263158-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,distrokit:email]
X-Rspamd-Queue-Id: E3C7CF73C4
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 16:56:00 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Tue, Feb 03, 2026 at 01:00:02PM +0100, Oleksij Rempel wrote:
> > On Tue, Feb 03, 2026 at 01:51:23PM +0200, Andy Shevchenko wrote:  
> > > On Tue, Feb 03, 2026 at 11:17:42AM +0100, Oleksij Rempel wrote:  
> > > > On Tue, Feb 03, 2026 at 12:03:23PM +0200, Andy Shevchenko wrote:  
> > > > > On Tue, Feb 03, 2026 at 10:34:26AM +0100, Oleksij Rempel wrote:  
> 
> ...
> 
> > > > > > -	indio_dev->name = id->name;  
> > > > >   
> > > > > > +	indio_dev->name = client->name;  
> > > > > 
> > > > > Isn't this an ABI breakage?  
> > > > 
> > > > I can't confirm it.
> > > > 
> > > > before all patches:
> > > > root@DistroKit:~ cat /sys/bus/iio/devices/iio:device3/name 
> > > > ds4424
> > > > 
> > > > after:
> > > > root@DistroKit:~ cat /sys/bus/iio/devices/iio:device3/name 
> > > > ds4424  
> > > 
> > > In ACPI case it might look differently, but I have no means to test this.
> > > 
> > > id->name comes strictly from an i2c table, while client->name is constructed
> > > using specifics of the firmware enumeration. In DT due to some (historical?)
> > > reasons the client->name has no vendor substring and hence matches 1:1 to
> > > id->name. In ACPI, IIRC, the client->name is ACPI device instance name,
> > > something like ABCD0123:00.  
> > 
> > Ok, I see. Should I revert this line?  
> 
> Just do not introduce that change (change of the ->name field) in the original
> patch, in that case no revert churn would be needed.
> 
I think this got dealt with in discussion of next version but
safest route is just have an extra copy of the name in the
chip_info structure.  Then we know it's stable against different
firmware types etc.

The few places we have client->name are all ancient bugs that
are really hard to fix years later without risk :(

Jonathan



Return-Path: <devicetree+bounces-317252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JejeGXC5QmrtAAoAu9opvQ
	(envelope-from <devicetree+bounces-317252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 20:29:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 029C96DE0C2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 20:29:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l3D7KJex;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317252-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317252-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 74D26300100F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F23388E42;
	Mon, 29 Jun 2026 18:29:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB3A2FD69E;
	Mon, 29 Jun 2026 18:28:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782757740; cv=none; b=LI9pndaKAYYCAiK0VCJ4kR3RA/WHIxQiCyD+9EK7YAIdpDJPLNk3YIHG6bDsWgtSwJXBipgPW5koC626rEEzqF+d1kqIqmiQLKbxxPU0Kzdt5t3yM1SdWaAKlt0p7TM9CvrcSGMgXz4vhr5Cz7jq+pwMiXOtf0npoqnZEI/LUjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782757740; c=relaxed/simple;
	bh=N0EtA2vc0rrL6/7QURZ91m+ODlTiqMLjTN8JLgmgwjI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BLDU9glC3/6aA3iUwAAPmQzrLjMciHP+OH35YQx1tQ8bSBWcPAgrfIzvfAx3mVTCX9E0biRw2CIeQ1IKPW0f06ubqDRsztBDv66SOy4heQx6mXJc0n6PPpCDvHyNrn2w8pTD//hCFy3/BhOqOjLvPvV6KJMyYmSIo9flBQqehP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3D7KJex; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71C931F000E9;
	Mon, 29 Jun 2026 18:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782757739;
	bh=WMJrcrY08ouDvmmmXW++01Gfe5RFBLcdbhyNzxOEky0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=l3D7KJexWvNOYTzEGdVVldm8/k4O8fbJxuKVHt3+Jz2EquoFojvJ4WU+Csf9cHENp
	 pluwwvS9nJGIMINJs8smDHtvq5PHP1hVQrcvb13BU4+yjdHhZgf1sai9gxkbPijAlJ
	 WEDwIr0QgYaXNO/LO/+gUcv3VfRTBcvXgudbPJbnpKat2ZuXya3imqGcJxPe0TrQN4
	 3U+Xj/LP3pBWPq8imS7Y9p01roVLHMAJVhqVZ3j9pnLt1F0kLWoG9CnGZQzU3zK8Tq
	 XnAIoQlN7OIaqwzW9neUV0lk7kBXpt1dGGtR1J39Gd+GsjTsKmBlUTN9fU0jlCaPzy
	 CfTKnEnRzKQew==
Date: Mon, 29 Jun 2026 19:28:53 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Joshua Crofts <joshua.crofts1@gmail.com>, Jakub Szczudlo
 <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org,
 antoniu.miclaus@analog.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dlechner@baylibre.com, duje@dujemihanovic.xyz,
 jishnu.prakash@oss.qualcomm.com, jorge.marques@analog.com,
 krzk+dt@kernel.org, linusw@kernel.org, linux-kernel@vger.kernel.org,
 marcelo.schmitt@analog.com, mazziesaccount@gmail.com,
 mike.looijmans@topic.nl, nuno.sa@analog.com, robh@kernel.org,
 sakari.ailus@linux.intel.com, wens@kernel.org
Subject: Re: [PATCH v4 1/3] iio: adc: Fix incorrect reading when datarate
 changed in single mode
Message-ID: <20260629192853.0b12a3ba@jic23-huawei>
In-Reply-To: <ajpUa1adlePVuqE1@ashevche-desk.local>
References: <20260622221550.374235-1-jakubszczudlo40@gmail.com>
	<20260622221550.374235-2-jakubszczudlo40@gmail.com>
	<ajpO9zaZbIl3x1uC@ashevche-desk.local>
	<20260623112953.000066cc@gmail.com>
	<ajpUa1adlePVuqE1@ashevche-desk.local>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317252-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:joshua.crofts1@gmail.com,m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:joshuacrofts1@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,topic.nl,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,jic23-huawei:mid,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 029C96DE0C2

On Tue, 23 Jun 2026 12:39:55 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Tue, Jun 23, 2026 at 11:29:53AM +0200, Joshua Crofts wrote:
> > On Tue, 23 Jun 2026 12:16:39 +0300
> > Andy Shevchenko <andriy.shevchenko@intel.com> wrote:  
> 
> ...
> 
> > > > +	return read_poll_timeout(ads1100_new_data_not_ready, data_ready,
> > > > +				 !data_ready, wait_time,  
> > 
> > I'd actually be all for using `data_ready != 0`, to make the condition more
> > readable.  
> 
> I am okay with either. It might be slightly clearer if the comparison is done
> for some dynamic counting or so, when 0 is not special.
> 
> ...
> 
> > > > +		PM_RUNTIME_ACQUIRE_AUTOSUSPEND(&data->client->dev, pm);    
> > >   
> > > > +    
> > > 
> > > This blank line is not needed as they are coupled, but I don't know if we have
> > > an agreed style in IIO for this.  
> > 
> > I'd be surprised if there was an agreed style, as there aren't any IIO drivers
> > that use this specific macro (not in mainline at least). Additionally, might I
> > suggest using `PM_RUNTIME_ACQUIRE_IF_ENABLED_AUTOSUSPEND` as it is more generic?  
> 
> We have other PM_ACQUIRE_*() macros in the drivers in IIO, so we have some style,
> but I haven't checked what is that.
> 
FWIW I'd expect no blank line to be the standard formatting for this.

J



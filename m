Return-Path: <devicetree+bounces-308459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NRQrGJoBJ2pvpgIAu9opvQ
	(envelope-from <devicetree+bounces-308459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:53:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E516596CF
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:53:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PO8++ZJT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308459-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308459-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CE53030086B8
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796233B14D0;
	Mon,  8 Jun 2026 17:53:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8BB36EAB1;
	Mon,  8 Jun 2026 17:53:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780941194; cv=none; b=XNoQGzkidc0TAnOaUUjEFL5ZAFaJrgjoO0ja4L5QBtkIeGFQSPeA0Zlog6rSfWWqtD95uOhw4RNNHCrlgZQ0NMrXmJIF+hGyghmXFw8ncv2G74y0PYA0gw938EXxudF2Zs8GxXXv0+QuG3hbdiXY+WHXhnjTunD2dXti2mN0OVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780941194; c=relaxed/simple;
	bh=qkwwkcO6D+ZFuK9gkY8KxQNvnZm7YrKg9Wu3aVMHRXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XOlku07AD1X/PIT7Sh++fb/JSLrO0HzzUmVquV/tvcywPeZluyyWr3WhK0gTZsGGyM8kSdUivTW3xAQ4/hH1gWd5/IMVxdkuNU6/swEf2LZ6GN6wFv1+GKGSmL6C6f3QkZ1cC5GZexsVpUuMcbIkc+3Am8IjhI4Yj/GwKCrpLW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO8++ZJT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 094481F00893;
	Mon,  8 Jun 2026 17:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780941193;
	bh=+oJtzYYP2pKAJ5zPI+wu/YkSrwtr6IMIgnwI/sMsH9g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=PO8++ZJTfTB5Xb0SGjeZkXVgdt/SPWDsRqHIy6grm4tEzG4c/k2zJOLjiPTRvsvWn
	 b8+LMn5gZTWl8iY9wz2jbyNSn4aqTIKFx8u9cwjfNRx8I906Gj+Zc8V44+SyuJq8YN
	 mB8zoBJAgaN+9WEi17PTqX0vUgbb5f/3eS0n3ffYRkAd/a9F6CchEq1ji03mUowf2J
	 m4o8LnPPVhtTYpsJNxMVBt+dOMjLfdCgmPLpj7lDClEmAce5FvJu5u1g4AnN3oMFxI
	 cbGDM4QIHyyV6NZJLnXnDRWrxFvjEJmnNg+fiOPl5S8KU9+80AWAbbXSJO+XbSVBZ6
	 iSYImJMc+k4zQ==
Date: Mon, 8 Jun 2026 18:53:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Joshua Crofts <joshua.crofts1@gmail.com>, Jakub Szczudlo
 <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 marcelo.schmitt@analog.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mike.looijmans@topic.nl, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jorge.marques@analog.com,
 antoniu.miclaus@analog.com, mazziesaccount@gmail.com,
 jishnu.prakash@oss.qualcomm.com, duje@dujemihanovic.xyz, wens@kernel.org,
 sakari.ailus@linux.intel.com, linusw@kernel.org
Subject: Re: [PATCH 2/3] iio: adc: Update Kconfig description for TI_ADS1100
Message-ID: <20260608185301.320f147d@jic23-huawei>
In-Reply-To: <aiaq1EdzvyrlYn82@ashevche-desk.local>
References: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
	<20260607183542.368184-3-jakubszczudlo40@gmail.com>
	<CALoEA-yj3hMKRa-3OpKtHKswRjddkARSBs9AnfiLNOtPiygPyw@mail.gmail.com>
	<aiaq1EdzvyrlYn82@ashevche-desk.local>
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
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:joshua.crofts1@gmail.com,m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-308459-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,baylibre.com,analog.com,kernel.org,topic.nl,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,intel.com:email,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 43E516596CF

On Mon, 8 Jun 2026 14:43:16 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Mon, Jun 08, 2026 at 08:45:46AM +0200, Joshua Crofts wrote:
> > On Sun, 7 Jun 2026 at 20:38, Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:  
> > >
> > > Add mention of ads1110 in Kconfig for TI_ADS1100
> > >
> > > Signed-off-by: jszczudlo <jakubszczudlo40@gmail.com>  
> > 
> > Better to fold this change into the patch that adds the actual driver code,
> > otherwise this is unnecessary churn.  
> 
> It's fine to do it separately, but after the code update. The combined version
> will work for me as well.
> 

FWIW I'd prefer it combined with the next patch.
I'm not keen on separate updates on build files in general as they
are easier to review in context. 


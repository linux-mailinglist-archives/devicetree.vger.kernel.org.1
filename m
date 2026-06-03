Return-Path: <devicetree+bounces-306275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oW2yIIU1IGp1ygAAu9opvQ
	(envelope-from <devicetree+bounces-306275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:09:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C9C638691
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:09:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=K53lA8AB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306275-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306275-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 84E0E30BBA62
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121FE392C50;
	Wed,  3 Jun 2026 14:01:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76FE388899;
	Wed,  3 Jun 2026 14:01:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780495309; cv=none; b=d2gikPSwc/CsD3GpFyR3l79ZCPpyyF7lGR9ES5tuPRCjPNy8wrKYZ5151zR1JAl0KZK3A1cwFWzygH2wwhqdRFzduoRnj6HKiHU4gNaqgrBI6/3E9HLcOTVzcBCWeQpVOQM6cPR8H6K3oXo2L4HoCpmmPAtfXBmWQ8Vvivd12Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780495309; c=relaxed/simple;
	bh=M315hU5DlmoQogmEpkRIOLIC3KrZiKVjBvweznqrv6k=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bAtKmmSZgUTQFOlM3NeYoj7FA4nWriHGoKZgDkwjPrsTP4QgCwV4ZGfbgXd1Armoda8OUorTEH0u2UkxC2xmxkOjIgVUoUK7E3GJmy7cp1B/6tin/eO57TplaZ2Gin6IFNuvv4/DyQ4lnF6D5lXApo7tPjkFZQ1esAhoE5m6RKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K53lA8AB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80A1F1F00893;
	Wed,  3 Jun 2026 14:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780495307;
	bh=erPqLsRee+i5flGJz3EBlNPGGuEf8itbLMLqINu7so0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=K53lA8ABvipzmSNzPIR8w9ur8yBKY3MOpDgg2TRj4vJ5J2/vRin3adsTFeUWFPyof
	 NdApjQk1a5YBilKX4pJyC+u/eR+6RQBsQM0QeFX9IpdVB/WVJ3eIsqRzT8TAkHmdIG
	 lQBEoJfIDpS+NPlvuvpIg3ZO3RkUT7jpAQcSl2scJyiJti3eAN6U8QV5Og7gT3ggrZ
	 nAhRQ9fomSPiqlcn6sa6GsZoMO4b4y/viJfUXHxBBYprIDyFmoB8QSjkRhj+utgCHm
	 qrMW/AP8R3dXl7Se/LTVglpbT9UxG0QXvsv729ueMaRYQg0xhHo+nsDbc3wChDZI0G
	 Jjp3Ims1U67EQ==
Date: Wed, 3 Jun 2026 15:01:39 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Liviu Stan <liviu.stan@analog.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Antoniu
 Miclaus <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@analog.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 6/9] iio: temperature: ltc2983: Use
 fwnode_property_present() for optional properties
Message-ID: <20260603150139.761333e2@jic23-huawei>
In-Reply-To: <ah9mmYljbmNNR4YO@ashevche-desk.local>
References: <20260525164013.118614-1-liviu.stan@analog.com>
	<20260525164013.118614-7-liviu.stan@analog.com>
	<20260527171945.152279fa@jic23-huawei>
	<ah9mmYljbmNNR4YO@ashevche-desk.local>
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
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:liviu.stan@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:antoniu.miclaus@analog.com,m:flavra@baylibre.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306275-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,jic23-huawei:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20C9C638691

On Wed, 3 Jun 2026 02:26:17 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, May 27, 2026 at 05:19:45PM +0100, Jonathan Cameron wrote:
> > On Mon, 25 May 2026 19:39:33 +0300
> > Liviu Stan <liviu.stan@analog.com> wrote:
> >   
> > > Checking fwnode_property_read_u32() return value with if (!ret)
> > > silently swallows meaningful error codes when a property is present
> > > but malformed. Use fwnode_property_present() first so that absence
> > > uses the default while a present but unreadable property returns
> > > a proper error.
> > > 
> > > Signed-off-by: Liviu Stan <liviu.stan@analog.com>  
> > Applied,  
> 
> With const char *propname defined this all may be made much shorter.
True.  Maybe an additional cleanup on top for next cycle?
> 



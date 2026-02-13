Return-Path: <devicetree+bounces-265438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMr8AQNaj2lxQgEAu9opvQ
	(envelope-from <devicetree+bounces-265438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:06:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4A11387D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:06:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1E123023D9B
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E914363C6F;
	Fri, 13 Feb 2026 17:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="JOpvuRXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85688362135;
	Fri, 13 Feb 2026 17:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771002366; cv=none; b=W3tpK/4SXUqCPkImbRfqzKzjuS7xzp+YZquaUNspDWr4XdpdqWZOhanfep6gq2aYG9oSLrvG2VCoN+Oa1kxy25xVqnumlpTEgXu8BWA166exRLru7Id46tBSPNOwYJchbFcjiI8yNWkcgREbUWQ2igvq+Md3bVFhpK9GqU2jR7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771002366; c=relaxed/simple;
	bh=eQ+/GZMQnvc4JXRuxZ2v6ANRTE6ArEiUfpVtxljjlGc=;
	h=Date:From:To:Cc:Message-Id:In-Reply-To:References:Mime-Version:
	 Content-Type:Subject; b=Io/SdHnI7C98Bf9hOEA6nw5Bn/6EggyOM8w1QAWjXUZmhHhmHQ+bsj8UFCeYcHN8SW7Vsyk1JVUjMSLcLxEZF3Gm3VFGtD4MTQXa2GteeCECZzM/aatnyzWRJykxScw6pf93U2LpaRPxNOZPPSpD3GbNzArp4ocKOAO6k6z/Vys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=JOpvuRXb; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=Yn36RHFho+Iv+Jaaez44fpXvNXeAw6xOsN5DoJWTKQo=; b=JOpvuRXbdEZiRfo7nIbEbSnP8y
	h7N6x+bRRhqNX7fv9zLhxZHQkgOCfLx00L/NyWvUoAlihD4jbDyvoHBp6OzODyAtaYY67qpLP07OO
	59LOkVChGI33L0h8B+TFy1KD9Omhgiv6X1Z1TDQSFcDhby1vyO2wbfhF2g04GSNh6q9U=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:58146 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1vqw0M-0005nF-Le; Fri, 13 Feb 2026 11:26:55 -0500
Date: Fri, 13 Feb 2026 11:26:53 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: hvilleneuve@dimonoff.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <20260213112653.6d8e1e45dc65000c7a326c6f@hugovil.com>
In-Reply-To: <aYRg2vP4Lfqm61qH@google.com>
References: <20260203155023.536103-1-hugo@hugovil.com>
	<20260203155023.536103-2-hugo@hugovil.com>
	<aYRg2vP4Lfqm61qH@google.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -2.4 NICE_REPLY_A Looks like a legit reply (A)
Subject: Re: [PATCH 1/2] dt-bindings: input: add GPIO charlieplex keypad
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=x];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265438-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[hugovil.com];
	DKIM_TRACE(0.00)[hugovil.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3B4A11387D1
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 01:24:05 -0800
Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:

Hi Dmitry,

> Hi Hugo,
> 
> On Tue, Feb 03, 2026 at 10:49:47AM -0500, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > Add DT bindings for GPIO charlieplex keypad.
> > 
> 
> ...
> 
> > +  linux,no-autorepeat:
> > +    type: boolean
> > +    description: Do not enable autorepeat feature.
> 
> Let's use standard "autorepeat" property to enable autorepeat when
> needed.

Ok, I based my binding/driver on gpio-matrix-keypad, which had
linux,no-autorepeat.
I will change that in V2 (along with driver source code changes).

> 
> > +
> > +  gpio-activelow:
> > +    type: boolean
> > +    description:
> > +      Force GPIO polarity to active low.
> > +      In the absence of this property GPIOs are treated as active high.
> 
> No, the polarity should be encoded in individual GPIOs, not via a
> separate property.

You are right, again "contamination" from gpio-matrix-keypad :)

I will also change that in V2 (along with driver source code changes).

Thank you,
Hugo.


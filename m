Return-Path: <devicetree+bounces-312925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q2cXERKEMmph1QUAu9opvQ
	(envelope-from <devicetree+bounces-312925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:25:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 903106990A9
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:25:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mAeWxJNt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312925-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312925-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 88FCB30B2944
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11BD638A700;
	Wed, 17 Jun 2026 10:50:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206D5305057;
	Wed, 17 Jun 2026 10:50:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781693422; cv=none; b=WEzqlZFfNnsLT2H4/VTj1o3HLCS6viRzjnCQKzJvC8ba9rGjpJa7Hlqyjkp5uGptkTsUoTEVu2nMA53FXgPKVThcjZ2FK7IMyZAuqp3MJD4U6//ZwBZZMibBl6IYGXHcYvpAnMYM3Gs4OOw2kebvrmyCsu2oa6KhW8ZEAe1ddJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781693422; c=relaxed/simple;
	bh=G2SGWa5N6ucn+9UK60WuNYpe8XUcdnVB88n3VTklUnM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CZk9/b5I7yLw61K8GDBeG17B8miy5N60YLVkeVTGDkr0ogOzwXI4Blf/89VAF7Ca6JhHwYSJgv/W/O6w/qL2+RK5ElMwCYZ/yiqvlw3qF6y+gWsA45e775LNPjV1YzL8xiZUoCGdk1Vo1GdDASP1exzMT4dukopQ6ygaHZ8B+eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAeWxJNt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE3171F000E9;
	Wed, 17 Jun 2026 10:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781693420;
	bh=gsH/cbSQ8Rdif7hB4wxv5EmRO0rjtZtS7++pqAxuNLU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mAeWxJNtW8Lh29bWoOM6LzkY233JeRBvzVj/kVUQ+z9HtQz8BUlcb/Z24xvODoKUT
	 kejZelGxWp3RbgL9/L3jYwagrGH6cpd4lvystsUhzAb/b5H2mcGfvH7UPGNo4/VVic
	 so/NbdAhim2IgKBUTwgsJ5JI3HYRQcmDzTh82s27Q0sPf4sstG8EO7Q/CBZWvakaDX
	 RYEq3yclOShbGJKrPlHfRubctM7KicRKO269JOF061NarkmoZGdo3pBqTw7U5wyWJR
	 UwDWoIASzYFMekM1ogB9ObAhgSs+t3Oipd7i6C+AcufozdG57J7GTPW4/AuxQPLPnP
	 Cr/gbPlr3riWw==
Date: Wed, 17 Jun 2026 12:50:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Pablo D. Bergamasco" <danpablo@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: sound: add toshiba,apb-dummy-codec binding
Message-ID: <20260617-marvellous-cunning-curassow-0113ab@quoll>
References: <20260616185619.1581174-1-danpablo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260616185619.1581174-1-danpablo@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312925-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:danpablo@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vaibhav.sr@gmail.com,m:mgreer@animalcreek.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:vaibhavsr@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,animalcreek.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 903106990A9

On Tue, Jun 16, 2026 at 03:56:19PM -0300, Pablo D. Bergamasco wrote:
> Add device tree binding documentation for the Toshiba APBridge
> dummy ALSA SoC codec used in the Greybus audio framework.
> 
> Fixes the following checkpatch warning:
>   WARNING: DT compatible string appears un-documented

Nope. We don't take bindings for staging. Isn't this documented in
staging docs already?

Best regards,
Krzysztof



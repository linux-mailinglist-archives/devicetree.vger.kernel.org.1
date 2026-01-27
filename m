Return-Path: <devicetree+bounces-259915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLTgCFDGeGmltAEAu9opvQ
	(envelope-from <devicetree+bounces-259915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:06:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6E995516
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75626300F5C4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98EE27CB0A;
	Tue, 27 Jan 2026 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b="Gxyw3xzU";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="S8+RRDZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b5-smtp.messagingengine.com (fout-b5-smtp.messagingengine.com [202.12.124.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0F91DBB3A;
	Tue, 27 Jan 2026 14:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769522663; cv=none; b=GadIAaT4IoNMvyiPHL4M/sXn+RVkd085nilTwvuV7J9NqHsS+iYRrwJAdNMRvjqRKAkevDbob9BGcKqUuCb5KBEiGDBuTfJ3FiBVEFYeBz7g6cKpN4afmakidctrjrmUyqbgCJ1Nz3H9dW8BRiNY8p9m0Yk83OSR8mMWIl4LZd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769522663; c=relaxed/simple;
	bh=gtErRORkfs7injojb6RGHjPyYTDZSEFbFhoQ24MBeUI=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=Zs0vllH8SjS8iRGVAfxocpvEwml7JDfpvIISO2kqexVAXI9Vcro8+aZd/ExoJjmISFD9qwUbCszllEQWubbsHeKYgcvBmbLqXDDk6MfUTHQoKjGyHS8xlrnGEcbUkw+rGS0bXK7HaVG6G7a9I+qY3o6u3919xWUjm/69RtBlHFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de; spf=pass smtp.mailfrom=arndb.de; dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b=Gxyw3xzU; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=S8+RRDZ/; arc=none smtp.client-ip=202.12.124.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arndb.de
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id B43E21D000E0;
	Tue, 27 Jan 2026 09:04:20 -0500 (EST)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Tue, 27 Jan 2026 09:04:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1769522660;
	 x=1769609060; bh=QL01scifO7vkZIANJWWKEAOck5tKnFadiw0MQU/QFd4=; b=
	Gxyw3xzUndKkfERd9j23YanMGakZIx+vy5aUSS7g3DSDQZ4ZUSYJkfRLvZuhyf2f
	4Hgdv3xseFxsfEOmrvHBPpqBC+9SJOa5OZIukLDt7Ak9ygYaiSkQUxcrAjCENVYA
	fcW5eLkk9sAVq9+Wy34Edw+p4UE64wMtoaHKSAxeKXszQtuN+CM78kOgYezIlIOT
	EkyffzIeomunZrakT5U5Ac6GOlUTakR5U3hSnmHOV5MES04/gds8Mo84kDyLXo4w
	982ezuUUHRKkJscM0i5dqodYrn61qN9vOZrHbU/mmAfnaYHaYEmtHtMCWIqJe9Kf
	fl1KUDoDXK0hgyk8hyxoUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1769522660; x=
	1769609060; bh=QL01scifO7vkZIANJWWKEAOck5tKnFadiw0MQU/QFd4=; b=S
	8+RRDZ/vF4mlvEcAcWkEX2Qw469tEnQHUJygzrpDw6Gwiw2Fv9n/lt0SRmskqSJ3
	Jne68k9nTjFNIbdDgPnIX+CMebYk83zVSpALUxvISbycypJYkSefnFY+X4jByoiC
	bvlJK+3FHwscir7lY63sTvuI0nPrrkjha/SUzTwI5xqSHU9/4ybxL7YuNVWfqfY2
	f2jFyA7mQNJ1aMzu9Ypzz/M8Eq484kANtE/dIl6U/Vp56Yy+A2eY8/xsjyyFDNOT
	lgJfot2BCJD/RS8lNFZqT+ZP0WjMqp/W4dB3gy1oSgYXcoKnIf62n/NuMFkyFbbU
	NGBS5dgXk1gvhJCqqOnyw==
X-ME-Sender: <xms:5MV4aQVgg3M2UZqBKk2NeRu1e2ZaupZokgVKIcAx2TmTO_v0wInaSA>
    <xme:5MV4afYzX-1eGi7e69HYhBVTSeYYKfk-rQy00KAaKGmvx1H-SY-ByUC8Ufi3i8kw5
    jtzGc1ZniN91y309pKV2s-Lg5lxnzcRnIJS7dAyW9hsANhNKq0Qx0sh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduiedtjedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedftehrnhgu
    uceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrthhtvg
    hrnhephfdthfdvtdefhedukeetgefggffhjeeggeetfefggfevudegudevledvkefhvdei
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnh
    gusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouhht
    pdhrtghpthhtoheprhhomhgrihhnrdhgrghnthhoihhssegsohhothhlihhnrdgtohhmpd
    hrtghpthhtohepthhhohhmrghsrdhpvghtrgiiiihonhhisegsohhothhlihhnrdgtohhm
    pdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhope
    hkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehrohgshheskhgvrhhn
    vghlrdhorhhgpdhrtghpthhtohepghhrvghgkhhhsehlihhnuhigfhhouhhnuggrthhioh
    hnrdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghl
    rdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvg
    hlrdhorhhg
X-ME-Proxy: <xmx:5MV4aW3bBynAqlGxSApkNtryweYO-Vf260mDGrfref8DLv37l2CfRg>
    <xmx:5MV4aVFZsDYw8CU4uQ6XFXo0Rl6ydyAlG79a_Va3vN8XyiQeFDiMvw>
    <xmx:5MV4aREexNAUZZOFc7ouDlT_tHV7HAWAJFNjjZ-F_QmayBdck1jEvQ>
    <xmx:5MV4aY7z4767d9bIYCqPqfRYs9SD_Dwheq4IWc637Paij4ajVBUYfQ>
    <xmx:5MV4aU8ebYiynelH3bpuBa2F9wj5gipW1tRFaxY-0IOAaUzcmRrf-xbU>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 3C27B700069; Tue, 27 Jan 2026 09:04:20 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: Ajt3zis9WT3s
Date: Tue, 27 Jan 2026 15:03:48 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Romain Gantois" <romain.gantois@bootlin.com>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Message-Id: <1bae4f71-9688-4e6c-8025-920dc20cdf88@app.fastmail.com>
In-Reply-To: <20260127-fpc202-leds-v1-2-ebd0cfb9f9a1@bootlin.com>
References: <20260127-fpc202-leds-v1-0-ebd0cfb9f9a1@bootlin.com>
 <20260127-fpc202-leds-v1-2-ebd0cfb9f9a1@bootlin.com>
Subject: Re: [PATCH 2/2] misc: ti_fpc202: Support special-purpose GPIO lines with LED
 features
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.15 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arndb.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[arndb.de:s=fm2,messagingengine.com:s=fm2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259915-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[arndb.de:+,messagingengine.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arndb.de:dkim,app.fastmail.com:mid]
X-Rspamd-Queue-Id: 6E6E995516
X-Rspamd-Action: no action

On Tue, Jan 27, 2026, at 14:51, Romain Gantois wrote:
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -118,6 +118,7 @@ config TI_FPC202
>  	depends on I2C
>  	select GPIOLIB
>  	select I2C_ATR
> +	select LEDS_CLASS
>  	help
>  	  If you say yes here you get support for the Texas Instruments FPC202
>  	  Dual Port Controller.

Selecting a foreign subsystem is usually a bad idea, as it
leads to dependency loops.

For LEDS_CLASS, I think this needs to be 'depends on LEDS_CLASS',
or possibly 'depends on LEDS_CLASS || !LEDS_CLASS' if you want
to keep that optional.

I would also change the GPIOLIB dependency the same way, but that
should be a separate patch of course.

     Arnd


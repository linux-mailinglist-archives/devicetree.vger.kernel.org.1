Return-Path: <devicetree+bounces-313752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q8JQC2MoNWrpngYAu9opvQ
	(envelope-from <devicetree+bounces-313752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:30:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAD16A56D3
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:30:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Etz52wTW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313752-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313752-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73B7630021CC
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 11:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D3BD37882E;
	Fri, 19 Jun 2026 11:30:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E8A367F31
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 11:30:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781868639; cv=none; b=h9RHTyAQFijlCjNyR0tpLse8KsFUaFaM8fWd5WOHr9FE46ez8DPWvWKadvs3d6A7M/1V/fzkag5gQshR4rXfGMverSj5AJbOJ9U0A+FAiZWlNDyPBYO/y24jvon2ucT3xBiBW+NCQykOdynz+j8hLZq4zY5oUeg3gv5OU2SKyto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781868639; c=relaxed/simple;
	bh=tKL3KAbOmbB0KsPGhd6YoyVBMOUEnR4k+bBexPz+8pg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=neTCfl33SdlevMRREkCugJ04jiE92U43dt85mfq1xx1W+MrPUXqMlom/7s34VAnFleMAVCbZ8kFJKMIIP4DrfUDEywBHy6RGm5Ah16Sj4RI4YlzimeHWGj57CoGmS/IQH5CabgB3EKeXEY2iYFVIfcUrFUWxbGYXRNqct2i8Xrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Etz52wTW; arc=none smtp.client-ip=209.85.218.42
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c029505b389so548225466b.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 04:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781868636; x=1782473436; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TucRX2gfPFMDDoN8Mlfxd7xl20UMCrUn0QTYPFwhHT0=;
        b=Etz52wTWkI4bhj0CdKng9/R/gYBfj6UDCv7MldiXXYV605g2pZhhKnR1hD5ht9ZRFG
         SIA/dKbfkPhB4w860ycLxihr6pn8o+UygBUrt5lRxsR/ObvXXTVTGVR89QRxZFzJvAXT
         EDeL5acLO2xO3WWMWvWjXVhBWM0e1sJJQLpLywh1xe4tDgFFzrZqhQCK2VfFphbnFFkZ
         ftrSVNRuAforeADike9HYoagXpNN2+GSmrPhHrb+0PqTb9pPQhPId5W2VWX3QldniHsZ
         rSSzP37uijWvpInZ5IORu33HZceVZylUTpVej0S7rYPWv20qI15uAeXMQ/M/k/rihdrC
         Tpmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781868636; x=1782473436;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TucRX2gfPFMDDoN8Mlfxd7xl20UMCrUn0QTYPFwhHT0=;
        b=NaifDD7+E5x39G2iB5RmxoHO49c82KUb3UCWTaZ5iYItNGMKpllxFgQn1Ja9zSFArn
         B14Rgzgr8u1gYRCnDO7u/jEuzZZLJ3DeEzjT1ThE0okRM/W6jzwgskkTckcC8oj9CfG3
         uCsfTegGNpZMkLCU9o3gKXmQTsc5Iop7HtfP+dbQViuBfQXReZ+iY6d+7pMaTfuOFn3R
         2lr/YWfD1CTPRRei9isxl0URwqRQzIo+KBE6MqM3T6uKBVNZNTay1s7QAhxc56dkhCf3
         /SpYua8Xa2SmzInCZJcOaT+rG9WxCxDY1nyCSusbwY73t3shxp3YOQNLxbOLmJl4BTYg
         Wnjg==
X-Forwarded-Encrypted: i=1; AFNElJ9D4acbO6GDh8jfPIpjxd7ymcZqmixJSiVbuTuPXEdeF1S+fM5TXne3WynJHC2vqEvyZZiHrD2fPAfO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdy9gLU6j/tBIsjnN/LUZ1lIXIaqgHFy9PPECnYn5xwCKEl7gp
	1fMzSbeXHfeT6tUEdh15y9uyviq62L3blYqIbwqAq0L2YqTT8+4quwqoWDUqOA==
X-Gm-Gg: AfdE7cmwwZOiakDo3b2JB49JEYmqmvKwRM15H3sEmJUTbUexZgUKiNTMqRIbIDnnmDm
	4jdc+L7bk1kLQLbSJVL0xsxYSA8MGLT+6BwCwyEuBbdnDAP3/Gr4aOCNVVfbQ2oETB/hV1qzBms
	9Jsuu/GbHsltbwLDhaLz6bfeQPIHoa2D3tz+5J9TXpKtnfMsgOArjttldp0A/kW1534E1gHc1LX
	gdkZH+BnMLwZuVQ+fY7rD3A3qSM9DU4weI+Bfw+y1MADp4RIRevUsM38lPGxTDzVlWiedsCaCXy
	tZPUy9BAJ8DgW/j8HAzEQuhMawn1cPHhuYfQVFGJn3gR0CozapkzIC4OjpvKW1aGa6pUMPcbxTp
	O985s+IADztXU7A+MwF2gbX6+8mjAMUm0s6OTxFBf0uhDa6k3htav9kmMf9ivNLr35cdz+uktP7
	0MK1Zy
X-Received: by 2002:a05:600d:84ca:10b0:490:e180:2e0 with SMTP id 5b1f17b1804b1-492409fbfb9mr28275055e9.3.1781868623638;
        Fri, 19 Jun 2026 04:30:23 -0700 (PDT)
Received: from nsa ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49245711032sm16710165e9.0.2026.06.19.04.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 04:30:23 -0700 (PDT)
Date: Fri, 19 Jun 2026 12:31:24 +0100
From: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
To: Janani Sunil <jan.sun97@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, Janani Sunil <janani.sunil@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: dac: Add AD5529R
Message-ID: <ajUniw8HEuAIBr-a@nsa>
References: <20260519-ad5529r-driver-v3-0-267c0731aa68@analog.com>
 <20260519-ad5529r-driver-v3-1-267c0731aa68@analog.com>
 <25mh6grzh7zh3b4uytcqnusyv5zjuf6ia4if3ce3oqzqz56ehi@le72iqv7ye3d>
 <603473ac-30e6-45e5-8a3b-c9902715cc9e@gmail.com>
 <20260614204455.408c4d40@jic23-huawei>
 <076d7d2d-81a0-49c2-af94-bd65ead66c09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <076d7d2d-81a0-49c2-af94-bd65ead66c09@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313752-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jan.sun97@gmail.com,m:jic23@kernel.org,m:455.rodrigo.alencar@gmail.com,m:janani.sunil@analog.com,m:lars@metafoo.de,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:broonie@kernel.org,m:jansun97@gmail.com,m:455rodrigoalencar@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,metafoo.de,baylibre.com,pengutronix.de,lwn.net,linuxfoundation.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8CAD16A56D3

On Fri, Jun 19, 2026 at 12:33:11PM +0200, Janani Sunil wrote:
> 
> On 6/14/26 21:44, Jonathan Cameron wrote:
> > On Tue, 9 Jun 2026 16:47:23 +0200
> > Janani Sunil <jan.sun97@gmail.com> wrote:
> > 
> 
> Hi Jonathan, Rob, Krzysztof, Conor,
> 
> One possible model that would also allow mixing the 12-bit and 16-bit variants would be to treat the parent node
> as the shared SPI transport only, and let each dac@N child carry its own compatible.
> 
> Rob, Krzysztof, Conor — wanted to get your input on whether this is an acceptable binding pattern.
> 
> properties:
>   compatible:
>     const: adi,ad5529r-bus
> 
> patternProperties:
>   "^dac@[0-3]$":
>     type: object
>     properties:
>       compatible:
>         enum:
>           - adi,ad5529r-16
>           - adi,ad5529r-12
>       reg:
>         minimum: 0
>         maximum: 3
> 
> With a DT example such as:
> 
> ad5529r@0 {
>         compatible = "adi,ad5529r-bus";
>         reg = <0>;
> 
>         dac@0 {
>                 compatible = "adi,ad5529r-16";
>                 reg = <0>;
>         };
> 
>         dac@1 {
>                 compatible = "adi,ad5529r-12";
>                 reg = <1>;
>         };
> };
> 
> The downside is that it introduces adi,ad5529r-bus as a compatible that does not correspond to an actual
> standalone device variant - it would require a parent driver to manage the shared SPI transport and enumerate the
> child devices. The actual DAC functionality is handled by the matching per-child compatibles(12 or 16 bit).
> Is this an acceptable pattern, or is there a preferred way to model this type of addressing scheme?
> 

At some point, I wondered if we can't just have this at spi level? Like
(in the simplest terms) a new spi-peripheral property that would allow
devices to share the same CS. Then we would need an adi,pin-id kind of
property for this device but the bindings would be pretty much as if we
only supported one device.

I see Mark is already in the loop, maybe he has seen this kind of things
before.

- Nuno Sá



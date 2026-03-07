Return-Path: <devicetree+bounces-272409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGU+O7AErGkxjAEAu9opvQ
	(envelope-from <devicetree+bounces-272409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:57:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC28422B3B1
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 976653013C6B
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8959B347521;
	Sat,  7 Mar 2026 10:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mpzjkylQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C009327204
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 10:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772881066; cv=none; b=rUYEl4oeskTdzACPU2oblQYpnkgz3oRD/awk+NaIzCq8uvU5erBj/8E+mAvMMLOBZupa2UMx9sA2uesDeBbFnizFjeGgWjSWACH7FmNQiFnKzJ1J6/j8LmR6dOSQbgXT9MX4EedY/IyDXgLuwrmB8THmOGL3ekRPZIrIX8JXr4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772881066; c=relaxed/simple;
	bh=3dC54IEgG6lpF36kypu94sZUpT/MA7SJFESyYqq48dg=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oMmmll5YMeOPtcd6RfRtP5Q1b/IW8yD1Dl8Z/ObbMDuGVeCK/F5Jrq6MI60V86O1Rd/PgDE//6sqpUUUNuhMQGFhyRKBjll2X0YOtVQPV8vsRMlSWUlQ8f+RDFvLbhtEBX3LwhDbi9eWBh9sXkbPzWTprifcyWKwxXDVjLPM3eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mpzjkylQ; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439ac15f35fso6645454f8f.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 02:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772881063; x=1773485863; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V94QkQoEyTd6cBgukGsABnXYIA0vAI5uUZxButFAf2M=;
        b=mpzjkylQE7nniaomMDqjQDykg4CVwAufAdxQ/clFF/7UhgRwfpzSDeEBfzAmccSuua
         Pp4UdNNL1fgmYrv9YcsZObW2+L/O/Wp7d39ixL6r0YCjp7TWimRFMh8yQX8+P8qNKn74
         uqsVyazRxT9GoUjdmTCgojj6vMXiqF6PvM3VcBSZnPcawGbuu7O1tpAaJldD66QCfOY+
         uDu7+E6PvEDWTmzu5uaMssMr8+ff7UxkFHUCd5PWiN+o0RCuw7HltV8Siu9PwFjqnb7M
         EQYVyyeaKNFF9Ke3eT0WMjDDwrZImrJrigu7ZAUmluyLcujxRmZ4AFn/i3k8h2Y9FZUK
         z+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772881063; x=1773485863;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V94QkQoEyTd6cBgukGsABnXYIA0vAI5uUZxButFAf2M=;
        b=mZbWpMVDB3PnRPgE0Sdcx59/fE+uMNv5c6IcJhqoVnqbJfKZQD0r13xv/T1/PXjqcn
         Uj98yNAG2ZU4PuhYp89Gd2KQByB+XkKSH7fnBYm+oYwZVAdk7qHSMuQOLrULnybRQ0Ez
         0pn6oB+bwXDqk7R1nakfAaz5AFkZZcBi1TSkgotjp5JogL8SFzYOdWsfqgt5cXAEx1SP
         LDHZ0paMAQd94fGg/2kwfq3ETFeDWGXFe586cysj/mq1BA96m8vA+7Y8NLXTQU0XcjhN
         yfh8NlcH4lWb1g4FihBMnZ21nlPoq1ZHtei6N30CJXpIYVq1SsYbNCgwM6ixdw/nS9cp
         ISmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL9vgR3ULPSoEtjm156yS0moAJwsjpxaDmT7fNoDsjxLmEmQT2EKHzDr8HUHMmp4fbJSreRkLdFxdl@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6KC+dA4JntCYEWnBbK4vJKzWmwZRl584De3G7aeRbMaz58is0
	Lj0Mr3BKWJ/+BRh1DC84skkp3fj3i+ivhbgU+hopVxwjHObCMMEDG4e5
X-Gm-Gg: ATEYQzwYyrwg3L7IIDY7BJ4rdOFlQX1AL9Up3Xaic52LfoM1nsZMcbKT38okZaZhrbO
	doYniSP8CpodEZnvfHXPbg3/jEll0GzxWu1NBf1NkfH4a1qsCmSl+uIezD/cMi28rQT9AOX31kn
	doVipvLG3QKDgc6TiL88OR5+sH56T5lrHI8a8NJPKn2C5+TMEkLHszi3jdJcNGwTNKebunX9mjF
	97b+LhDBAEBbRSLYXXMFpawCD6pMULU6PMWMeZ1hLelrHWS+vmxuy7D6yO8J/DWCqS7SBWFM/e0
	+DTrl03WwDhG1N7yNcP2ESzrSfYw0lnDdgr+6Be1DWE3IpaXOjVhmaDKR+2/tDdVfbLJGWd9sB3
	MA4IEagB1FMbjznuj+O2yGEyolMOUOP2QwQDxiufZpSVqjoiJMtlrGrieD4pYXNT+VQ5y/jKOto
	eCxxpdhZvGNBOleE6bdrLFU0T6DwLeFyXLVlepTRjZy1sF7wBkoIJ0hgyXEek/gcdW
X-Received: by 2002:a05:6000:1447:b0:439:beba:300 with SMTP id ffacd0b85a97d-439da31e274mr9511165f8f.1.1772881063378;
        Sat, 07 Mar 2026 02:57:43 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm11439826f8f.5.2026.03.07.02.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 02:57:42 -0800 (PST)
Message-ID: <69ac04a6.5d0a0220.2969f9.9d81@mx.google.com>
X-Google-Original-Message-ID: <aawEpAhvHEz_ocj3@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 11:57:40 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/4] phy: airoha: Add support for Airoha AN7581 USB PHY
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-5-ansuelsmth@gmail.com>
 <20260307-otter-of-imminent-merriment-d3475d@quoll>
 <69abffe6.050a0220.18164c.58d6@mx.google.com>
 <52123051-0d2d-42b2-b677-99a5de0f2c4e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <52123051-0d2d-42b2-b677-99a5de0f2c4e@kernel.org>
X-Rspamd-Queue-Id: EC28422B3B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272409-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.869];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mx.google.com:mid]
X-Rspamd-Action: no action

On Sat, Mar 07, 2026 at 11:40:48AM +0100, Krzysztof Kozlowski wrote:
> On 07/03/2026 11:37, Christian Marangi wrote:
> >>> +
> >>> +		if (phy_type == PHY_TYPE_USB3) {
> >>> +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
> >>> +						   &priv->serdes_port);
> >>> +			if (ret)
> >>> +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
> >>> +
> >>> +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");
> >>
> >> Nope, you need phandle to express proper device links.
> >>
> >> Don't sprinkle compatible lookups for new code which does not need to
> >> keep things backwards compatible. How do you manage device links
> >> without phandle? How do you manage device probe ordering?
> >>
> > 
> > Hi,
> > 
> > the phandle to SCU was present in old implementation but later dropped as it was
> > said that it wouldn't describe the HW.
> 
> 
> I went through v3 review and I did not find such said arguments. Can you
> point me to it?
> 
>

Here was v2 [0] that was clock + USB PHY. (there were clock stuff as the SCU
implementation was different) The link wasn't added in the changelog as it's
quite different than this current series.

In patch 7 Rob pointed out that serdes-port + scu was a bit unusual.

Then the implementation changed in favor of a more simple one where it's the PHY
that configure everything and in this new version the usage of the SCU phandle
is really to just get the regmap and modify the single bit to select the PHY
path/mode for USB 3.0. (it's mainly the reason the SCU is referenced directly
with a compatible instead of a phandle, in the previous implementation we used a
function exposed by the SCU SSR, while in this it's just a regmap that can
PROBE_DEFER)

Rob suggested an additional layer (a PHY) to handle this but I don't feel it
would actually describe the HW this way as that bit doesn't modify another PHY
but it just toggle the mode to the related USB 3.0 PHY.

This is really another case of not-so-organized register mapping on the SoC.

[0] https://lore.kernel.org/all/20250320130054.4804-1-ansuelsmth@gmail.com/
 
> > 
> > I will readd as airoha,scu. Is it ok for you?
> > 
> > (I actually prefer phandle than hardcoding compatible as it makes things more
> > descriptive and prevent all kind of problem in the future, so I'm more than
> > happy than using that)
> > 
> 
> 
> Best regards,
> Krzysztof

-- 
	Ansuel


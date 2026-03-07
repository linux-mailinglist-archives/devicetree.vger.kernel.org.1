Return-Path: <devicetree+bounces-272514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCXnNuRyrGkQpwEAu9opvQ
	(envelope-from <devicetree+bounces-272514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:48:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B91922D440
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DDDD93011064
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 18:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40A2372B44;
	Sat,  7 Mar 2026 18:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ik86ib/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CB21ADC83
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 18:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772909280; cv=none; b=mymtV7uGuxFQf+UJCYyPqkmQRk+E1GplMavaf2GEhRs4I1HbNo54qfJJvxd50bSS933ubmF+ALpQWmrHbyj7gRvzLdjVhflALGs9/mcmbjG+q7gEam/QmkyGbKza8qaKIcPX8crWDW4agMY3EdwsgckKbJWbGYSF+KL+cOr3J5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772909280; c=relaxed/simple;
	bh=YdVEPVjV6iHxtNwNNftWEYvRTufEH+5D6Xi8HPm8yZ0=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nBSPJUvzJaPgDw3Rpme1N2A/5BxQvChuHaAY1kKwCpC3o6XjI7Kr5gikyye5K42DDFfcrKiOyZEA7xvFJ3Hwehul88AvxLZjbOHcmYKLpXiLkuHQ4znU2r+dR9CyTqNqo0Cz8VvgCDXC5ko6d5paV6jYUMSZoAAHD/moWVpEbec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ik86ib/k; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439cd6b09f8so2542291f8f.3
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 10:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772909278; x=1773514078; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fePtVH1XrSdcxkm/f3Lu86HTCbPhsyR6IapTe3JHplY=;
        b=ik86ib/kulNvjYDMX19tyWaTGAHSiPP2Srb4IJJqR9QG2/5vRGHbWajSvdVZZfhnux
         0fjlvJKw6l7yRJ5WZJAPI+fFW9R3XwkI+niv9t8QqEm0vZbNs4SEyOnauzvbYdYkq28J
         76PA6Q8EEXp3aXDIDuU0FIZH4iDLS+Dqczi+/AIge434xrLjV+kf0MJ6hljAR2GC0TJd
         HOJ2LqR1z8ge0Tq6agU3y/Qdo90GYCoIt+bGFX5NeBJxfIsMSOybUEwbytpDJkZEiCGT
         vr/rZE7zkMvxkf9PbHW9CPq368t6HapYtV+me6HoGZzMlzHukbd4EfpnhDrzBBUqtvHV
         dp6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772909278; x=1773514078;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fePtVH1XrSdcxkm/f3Lu86HTCbPhsyR6IapTe3JHplY=;
        b=uZvI11kNXcqC2vEwRWhj7ry/91UpgrBpugZUQjnqaO9gz34GC2rADpkezOky88xLzG
         4ZLqTv8bsmFR8Hng1VCA0uo+S8CAZD/dcI551gg/bsLA8qMcaCoixQakm1mJGHime/V4
         Jjw1KmjRO+xLIfj6CS8RgIs2UhVrA8i73GZw2lz9vYUcgQmQXr3uU2fiMCopdKdEiUOv
         Q8AmZYtbZG4C2xlH6kcXuvr2luxnrve1lnki/JM9BRifx8zjEPguLy8bhRMI0Ty84bAE
         ZJ12pSUm9RNjb5rOpa9PTCDh/poSDFfg2QeqyDYpZe+9BBqgFfuCAA7qkJ3y3UclejmI
         RShg==
X-Forwarded-Encrypted: i=1; AJvYcCUI5Mx++Qn08/r4RbZk+Z8jEgF58ZGWtU6YU9BAjWzY1sGJ0BTLz8z8i+jP+tIv2XhMxFyObOgjptCj@vger.kernel.org
X-Gm-Message-State: AOJu0YyO59v8JaMY88k/CyAC9a0QLYaMrgefqN055k6+i4fWgf2oGiHy
	ez0wVmfgO9ZiQlZzVGnZMcq9MEXxGCzbVgV3a7CJTA9nBghq5BOe16NP
X-Gm-Gg: ATEYQzxwjM809AtMiUG/vmrjIishu2JQTrvmNRlFOlQ9C+3iI68DfUSb5HSxYbsKd6l
	GY7LjP3ziEdJ6u9+jzB249ht4QdJ2vF+6SaAi7PXsC5xmpdFo266+xmMHmNW4G9slTU4bmQsAox
	iHwIDTc8Ct2qkyGYNq9lpOqLAiKhnTaHHmkxVc74nu2CMMMOXKoXREp60EFnYeb+4tnmb1W8QkT
	oOUP8XeewB9Y/2mPeljSI4Q65ukE5zrqlwQ8GzW7Z+q9OiYKe6RGoIs/VYIR76d0hgFUqDO7xB1
	lLCOt/ksTsgxSF7pObGFyNC/qDkgd96Gjoiby+PjJuX9RjCcZxym3ZRyteXGLLvL3jihGYHzJAq
	YUuYOKNA6zUzzQdjHKixoNwLL14lpmvqx+8gg800ahz+iYgC8MmxdSiiWZi9EYOcUh5VVSQ23J4
	FTUevoKePMis9Bv/N/DUr0wrQ0S9earTR9qvZOTOg3rZrS+v3XCALiOQ==
X-Received: by 2002:a05:6000:401e:b0:439:b3f1:8011 with SMTP id ffacd0b85a97d-439da35f838mr11120861f8f.29.1772909277570;
        Sat, 07 Mar 2026 10:47:57 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae3c80esm11455641f8f.29.2026.03.07.10.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 10:47:57 -0800 (PST)
Message-ID: <69ac72dd.df0a0220.a3fa6.8d4f@mx.google.com>
X-Google-Original-Message-ID: <aaxy2m9QxsbU0hRM@Ansuel-XPS.>
Date: Sat, 7 Mar 2026 19:47:54 +0100
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
 <69ac04a6.5d0a0220.2969f9.9d81@mx.google.com>
 <abbf81f7-556b-4fb0-9fb7-41f4c730f1d6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abbf81f7-556b-4fb0-9fb7-41f4c730f1d6@kernel.org>
X-Rspamd-Queue-Id: 5B91922D440
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272514-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.864];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Sat, Mar 07, 2026 at 05:38:25PM +0100, Krzysztof Kozlowski wrote:
> On 07/03/2026 11:57, Christian Marangi wrote:
> > On Sat, Mar 07, 2026 at 11:40:48AM +0100, Krzysztof Kozlowski wrote:
> >> On 07/03/2026 11:37, Christian Marangi wrote:
> >>>>> +
> >>>>> +		if (phy_type == PHY_TYPE_USB3) {
> >>>>> +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
> >>>>> +						   &priv->serdes_port);
> >>>>> +			if (ret)
> >>>>> +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
> >>>>> +
> >>>>> +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");
> >>>>
> >>>> Nope, you need phandle to express proper device links.
> >>>>
> >>>> Don't sprinkle compatible lookups for new code which does not need to
> >>>> keep things backwards compatible. How do you manage device links
> >>>> without phandle? How do you manage device probe ordering?
> >>>>
> >>>
> >>> Hi,
> >>>
> >>> the phandle to SCU was present in old implementation but later dropped as it was
> >>> said that it wouldn't describe the HW.
> >>
> >>
> >> I went through v3 review and I did not find such said arguments. Can you
> >> point me to it?
> >>
> >>
> > 
> > Here was v2 [0] that was clock + USB PHY. (there were clock stuff as the SCU
> > implementation was different) The link wasn't added in the changelog as it's
> > quite different than this current series.
> > 
> > In patch 7 Rob pointed out that serdes-port + scu was a bit unusual.
> > 
> > Then the implementation changed in favor of a more simple one where it's the PHY
> > that configure everything and in this new version the usage of the SCU phandle
> > is really to just get the regmap and modify the single bit to select the PHY
> > path/mode for USB 3.0. (it's mainly the reason the SCU is referenced directly
> > with a compatible instead of a phandle, in the previous implementation we used a
> > function exposed by the SCU SSR, while in this it's just a regmap that can
> > PROBE_DEFER)
> > 
> > Rob suggested an additional layer (a PHY) to handle this but I don't feel it
> > would actually describe the HW this way as that bit doesn't modify another PHY
> > but it just toggle the mode to the related USB 3.0 PHY.
> > 
> > This is really another case of not-so-organized register mapping on the SoC.
> > 
> > [0] https://lore.kernel.org/all/20250320130054.4804-1-ansuelsmth@gmail.com/
> 
> 
> That's the cover letter. I guess you did not implement Rob's feedback,
> either. This is either phy (for phy) as Rob asked or scu phandle.
> Removing scu phandle and not implementing phy is not what Rob proposed.
> 

It was to give the full series. The specific comment from Rob was [0].

SCU phandle is going back to the old dual binding that Rob was against but PHY
for PHY would not be descriptive of the HW.

I can do that but would it be correct?

[0] https://lore.kernel.org/all/20250324154919.GA101272-robh@kernel.org/

-- 
	Ansuel


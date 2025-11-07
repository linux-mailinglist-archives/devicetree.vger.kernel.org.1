Return-Path: <devicetree+bounces-235979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C652C3EDC4
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8CCA1886C2A
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14D630F959;
	Fri,  7 Nov 2025 08:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NeDMBFIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E268526F29F
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762502489; cv=none; b=EZGPohdbrery3P3Fal3b9Ot4zN9dmH4Q2A7ondMENDVIIvO17rnoLTGoRqWuHvQ7nShwqla3tV2mNOPix7AaCRqy8duR4p/nigC2R5Qfd2LPam5Uv015q+50oAKWf+gT0TzOEBLl8uSVfkWbbnqFVc5UvXQ7nyTn/gSpPI3MrMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762502489; c=relaxed/simple;
	bh=RcXBtDck6KBjcXruX7jv8Jnj3yRxU66tLdV0Hp8iIIY=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bKonf7CtsuSdlJXxZdMKqlONHW/c7NVt7UZt2urkTVKU3ISFMaRl/vHNR+o46ONRZOg1SQRzj8pQwaM450pj4nmeXQITvkIkTLon94ih8mbmgBswuusV+qpeRrAJ77w0OEgx06iGyf7HC5CJLU+A183PR7RcP/nHoUHZuISkAvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NeDMBFIO; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-429b7eecf7cso275671f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762502486; x=1763107286; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XH3e0FMtRqniqAC/JVU+RFDrXdAf6djMDK3MFCP8upM=;
        b=NeDMBFIOxC/f7D0MXNr/KBTZOK3z9VL+HBEARQBnydScuG0qrvkl4+RjjLwIKOnorq
         9GTKdpSN8hVZofGjpLth9AFvj97HMRlbbJTsahAiZQs9CT4xqIWmGuG8RAiYrw1a0OmJ
         ax64Co5EPJrqCDQ32QDptp9Px0gOdf7DNbH5qHLiuY4uT79LqqMI6e4doCUg1yCa0ov7
         p9TM8+QsIA4aYkKoks9bwJlXOzubxD2FuCLuFRMqZepC6qQncvV/Q0ZFX9C9qKTd8Yzu
         JIfhe3rQLbFdXzdMEfPCSTpG2ROmy2LL9t27defvd+GbAfVqLDNxuI1ksWLziSob7hNi
         n5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762502486; x=1763107286;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XH3e0FMtRqniqAC/JVU+RFDrXdAf6djMDK3MFCP8upM=;
        b=LWX8NVhr8QDvHOB3ePutUkW5xRhKT0YpFqBiWYW+Im/kJf4MmjOSIIwVM0fGuULj9Z
         ZBlAcIQZR4CoHCTmUO51CTipz90wkBcDiau35IlxdhY1zm7bMkmrRnXQYwxmCQOjOsSU
         JFu1U09XdqMss1jqXoCd7PBb0QUM3Qg+FdnnoLxiSDTSj/rovHTGOZYCrfOIm46D13Xv
         C/Yw2I7Rb+Knpm2ZaLtRixrdAEXo+bjK2tuVDh2EpritIJr4TGFb6hj6umwg9vJWkHQc
         +142QLcTxJYChCQSdw1lkR+B5lcfEkBB5shJWG/bIPwuplbbNxnHuBQVsrvrFPsGEboR
         cDaA==
X-Forwarded-Encrypted: i=1; AJvYcCX6DwLnXZZUD118ZREhkLDyt4DhwL1ciwDcWN4pmkPLS7Yu4jzdxZCn5kqCgC4/i28/wRyberdfJCGS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc+haT0evfYNtsz17lgLyft1dHCDMxXs2hXwLyGL1r0omti9LJ
	QByMOrWiR2QH84CcIDeUeglOUpFZQM1mOfoDuu0A4x12nt0xUrQu0eSY
X-Gm-Gg: ASbGncscumph/Dg4lHwEZuWzcN+j1hMY393W0DkfBmwh3bIRxMMEX+vkEW2rm3NHa5C
	NsKbxzhfd5xmDEC6jlH1H79UeSWQVQN9SHnOZ8HxsMFJnB25BdVdpf0unsG9Hdw3NKgNYL+GZT4
	KbSBb/FUQgP1xX9ycAbQ8xXh8zHghGGOJtlieNRRSqcOXk+SpuV8vyN+WEae7kS48NvYsKcJLir
	WjoUMcTj6JmwCHAd8bXCB55O2peKjV/vSbKpqmsp2qHZUAllgrCXvKoVyGk/u80XNZOe03yyuIq
	7wwHQbPz5yVVw2Wlv/13cQe5+OMymE1czesmSVG6KurNkM9jygAeUHrmdBVHEpc6YIKhzLXuIcb
	zo5VY10neErHj3GDJJXb+RXn4yk5zT2QhsCnoOdTa2PuX6jEwwOn75xHPdppaGlWaH1MPbim0/T
	Ov6b3SP1W2Q+fy6yjTEr8O1PVJ6RnrBZefLTuU76w=
X-Google-Smtp-Source: AGHT+IGjhguXVafyIF03qGRod41P+M5CzC6bL9w38i5cp56iczkE/ksJNNNmhdEHALvIdVe6z6XaRQ==
X-Received: by 2002:a05:6000:2c04:b0:429:cf03:8b2e with SMTP id ffacd0b85a97d-42b26f82e39mr638126f8f.13.1762502485388;
        Fri, 07 Nov 2025 00:01:25 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42abe62b1e3sm3742116f8f.4.2025.11.07.00.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 00:01:25 -0800 (PST)
Message-ID: <690da755.df0a0220.2a944.8896@mx.google.com>
X-Google-Original-Message-ID: <aQ2nU_UVY2fdSrRA@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 09:01:23 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Felix Fietkau <nbd@nbd.name>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] clk: en7523: add support for Airoha AN7583 clock
References: <20251106195935.1767696-1-ansuelsmth@gmail.com>
 <20251106195935.1767696-6-ansuelsmth@gmail.com>
 <20251107-dramatic-puzzling-cockle-cb9781@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-dramatic-puzzling-cockle-cb9781@kuoka>

On Fri, Nov 07, 2025 at 08:44:14AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Nov 06, 2025 at 08:59:32PM +0100, Christian Marangi wrote:
> > +
> > +static int an7583_clk_hw_init(struct platform_device *pdev,
> > +			      const struct en_clk_soc_data *soc_data,
> > +			      struct clk_hw_onecell_data *clk_data)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct regmap *map, *clk_map;
> > +	void __iomem *base;
> > +	int err;
> > +
> > +	map = syscon_regmap_lookup_by_phandle(dev->of_node, "airoha,chip-scu");
> 
> NAK, undocumented ABI.
> 
> We talked about this last time and you just ignored entire discussion.
> Nothing in the changelog explains why this stayed, why our discussion
> was resolved like this.
> 
> I already complained about very poor changelog and lack of lore links
> and this just adds on top of it.
> 
>

Hi Krzysztof,

profoundly sorry for this, the old patch slipped in for this commit and
I already have the new revision ready.

This will change following how it's done with an7581 that doesn't use
this airoha-chip.

	map = syscon_regmap_lookup_by_compatible("airoha,an7583-chip-scu");
	if (IS_ERR(map))
		return PTR_ERR(map);

After better analyzing the structure is almost the same of an7581 with
only the thermal a bit different.

I hope this clarify the concern we had long time ago, not trying to
ignore stuff, just trying to respin and make progress.

-- 
	Ansuel


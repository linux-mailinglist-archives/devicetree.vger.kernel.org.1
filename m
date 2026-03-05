Return-Path: <devicetree+bounces-271315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGiUFz/LqGlBxQAAu9opvQ
	(envelope-from <devicetree+bounces-271315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:15:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7AF2095F4
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 56C3A301CCBE
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 00:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AE6C1A9F94;
	Thu,  5 Mar 2026 00:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J5YJ/04Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B324E18B0F
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 00:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772669756; cv=none; b=LDT07cuLL9+FeSuxsPsa2jylnHcBuYxGwT/zlWw9xy8hMvtMQssxZcdQJInZNBgyddK4ArwFSqMgjI5890YsXO/j/apGe7h5rC5ZV+68fPuAbVXVcnXGYXoZAKbSWqrOAbDD799JXGZmfXfiyRmXbecxqLHAW+mUZz64SbwgTHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772669756; c=relaxed/simple;
	bh=4mR/9KpKWoTBbNEf/LhaL2JbInadCOam1v9oY17Zitw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GlpMhH6pUZ1icTQETzV/5+D1cmlPgyr7+iNDJEUdbyDrhQOtl2n3H1Z+xc8VshC09nqM0sT7eBvlGXPo/9D36VyTdnG7KkaIXVFrbrK8BlDXULfXWLUKVp2V6zNWrFCMXCVLWqj3dDLTz6dvi15ZLbfYGm+YXs5NhXbLCvXpTQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J5YJ/04Z; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8cb38e86cf2so791973285a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 16:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772669755; x=1773274555; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g0JXk9p5V1fGz1+f2197Ws9DW9uXumXoOAEt9xBTer0=;
        b=J5YJ/04ZV0DVUt7NtuoiFsjDd58ejJZ6SIYDsX9PAVxaUL31KvT+9lGEbu2/dKzuzz
         NjaUqO+HlMqZ/TjCmBvQN+wmvXjkLtM7FUKeGOvc8zQ9avlRVOujsroiL96jOME2+cjl
         qvyQf2MiL5M6saUpkhnAjPF98k05zZ2ERO0ryxdXjqsoOLE2vKs4gVyu+AfN/ztxy7IC
         nDZMIcMLSoiyAZQbhGBiUuywsjTRxWW0xr2QwPoUCHiwuTMcUIkPojtcwS9WKkORm8j5
         VwITGrNqZstle9yvLncG2mISQ4gFPmsMyCye21UoRM1LgjlPl7yyAwar8iS8Ia4xV64b
         iI7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772669755; x=1773274555;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g0JXk9p5V1fGz1+f2197Ws9DW9uXumXoOAEt9xBTer0=;
        b=dqwrxZAjjhmuplvuq9wfq8hbbKRm0GViF92b3OT0Ssh6eJ+5PVAPJ75p0EC4w9zNzU
         hK0WyLMW3XoiEjCYRYRVeXtr9al1+L61sbgZwZas2OO37TrhCHAwcWdyWzfWI2/eEQua
         Tzhcx9uHGPhSzPg/9RFdo9sFnft9NdQsL5CcvCgYClub5LT5DiqQxPM7m2+kubBFQoBn
         rL3mzeT1NMIkX32AymVuWipGEaOxfm6YO7VzVr9O1rPxUYSTZSRAq5NNcgK01qZS5frm
         pZT+eHOBHqRP+uhIXYkn5joTHrCYKwAwwxPdbkv1RJj4zB4ND5050X8gB1SNmb5OGbl1
         Bxzw==
X-Forwarded-Encrypted: i=1; AJvYcCXljQZeZvBXZDTFEC/NMK61d5B/1gCNNjcBIgVX+vTU2NhKZPef6kCaYoOBlMgclEa8BV6MO2btr18I@vger.kernel.org
X-Gm-Message-State: AOJu0YyBzEmfb3Jp3IIMDZD1A2tDC/yYNCNOibTpGBgc0xQsIYk3ISOg
	LiW0HeQ+pzECnQ1Gcing9ouh8gEo2SNEnCEHD7LxcR7DXHWxaPBiE/fr
X-Gm-Gg: ATEYQzzUCq7+bfSY8dMq2erFFFosk7TEFQVonZ9/bOqf1/x6cpzbNChuRYmE1LU0vou
	keokZPtOthnHTdsA76gV2Z0z5R4ZBmez1U8Iam+AdQGnMCO8AKg2e3xoGFrpYYWWpbBppOl8Dwf
	7EAuyXrfd8ahlQKHCfbv5Vi0ZPzBN4M+GYbujvK3rxeF1HVuIJeg8h11UsoUPkADyxr+MHPR4MH
	lJZsovH+a6+FkesUKsc8m/l52u49WVgeyghVzgl3XosaM1CTambj02V4GK0NXasb/2ETWyC1GYg
	DirX1QYa0WR8cQrjFbxjZ81mzh1GIH7Kh30axtQkSHfoK1ZPbGbPFEvCqFzFuHzMsKoTnh822yp
	OMtYbgwkN9wBnf3VjfN8HVKQ3W6iCKom7t4FjOV4tmQBMRIbt1obcGZ0QbofxZRB3hYw/Gsuz+a
	Dp5DGGIXHb8y+nN5LHIAvrJF1psO0=
X-Received: by 2002:a05:620a:4405:b0:8c7:fdc:e872 with SMTP id af79cd13be357-8cd5aef1d4fmr466089985a.19.1772669754629;
        Wed, 04 Mar 2026 16:15:54 -0800 (PST)
Received: from c67c70be8272 ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf7319bdsm1775385585a.43.2026.03.04.16.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 16:15:54 -0800 (PST)
Date: Thu, 5 Mar 2026 00:15:51 +0000
From: Yuanshen Cao <alex.caoys@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/2] pmdomain: sunxi: Add support for A733 to Allwinner
 PCK600 driver
Message-ID: <aajLNxYvDrpT-qqC@c67c70be8272>
References: <20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com>
 <20260304-b4-pck600-a733-v1-2-2f54efdb8cc2@gmail.com>
 <CAGb2v64n_8RyWDieUKvbpkTikipB9ZvqEscYRRLowe+rvaJKCQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGb2v64n_8RyWDieUKvbpkTikipB9ZvqEscYRRLowe+rvaJKCQ@mail.gmail.com>
X-Rspamd-Queue-Id: EB7AF2095F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271315-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,linaro.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 10:33:23PM +0900, Chen-Yu Tsai wrote:
> On Wed, Mar 4, 2026 at 12:44 PM Yuanshen Cao <alex.caoys@gmail.com> wrote:
> >
> > The Allwinner A733 PCK600, similar to A523 PCK600, is likely a
> > customized version of ARM PCK-600 power controller. It shares
> > the same BSP driver with A523. According to the BSP provided
> > by Radxa, unlike A523, it doesn't require reset.
> >
> > Make reset optional in the sunxi pck600 driver and add support
> > for A733.
> >
> > Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
> > ---
> >  drivers/pmdomain/sunxi/sun55i-pck600.c | 53 ++++++++++++++++++++++++++++++----
> >  1 file changed, 48 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/pmdomain/sunxi/sun55i-pck600.c b/drivers/pmdomain/sunxi/sun55i-pck600.c
> > index c7ab51514531..8f9fdc3915bd 100644
> > --- a/drivers/pmdomain/sunxi/sun55i-pck600.c
> > +++ b/drivers/pmdomain/sunxi/sun55i-pck600.c
> > @@ -52,6 +52,7 @@ struct sunxi_pck600_desc {
> >         u32 logic_power_switch0_delay;
> >         u32 logic_power_switch1_delay;
> >         u32 off2on_delay;
> > +       bool has_rst_clk;
> >  };
> >
> >  struct sunxi_pck600_pd {
> > @@ -151,9 +152,11 @@ static int sunxi_pck600_probe(struct platform_device *pdev)
> >         if (IS_ERR(base))
> >                 return PTR_ERR(base);
> >
> > -       rst = devm_reset_control_get_exclusive_released(dev, NULL);
> > -       if (IS_ERR(rst))
> > -               return dev_err_probe(dev, PTR_ERR(rst), "failed to get reset control\n");
> > +       if (desc->has_rst_clk) {
> > +               rst = devm_reset_control_get_exclusive_released(dev, NULL);
> > +               if (IS_ERR(rst))
> > +                       return dev_err_probe(dev, PTR_ERR(rst), "failed to get reset control\n");
> > +       }
> >
> >         clk = devm_clk_get_enabled(dev, NULL);
> >         if (IS_ERR(clk))
> > @@ -193,7 +196,14 @@ static int sunxi_pck600_probe(struct platform_device *pdev)
> >  }
> >
> >  static const char * const sun55i_a523_pck600_pd_names[] = {
> > -       "VE", "GPU", "VI", "VO0", "VO1", "DE", "NAND", "PCIE"
> > +       "VE",
> > +       "GPU",
> > +       "VI",
> > +       "VO0",
> > +       "VO1",
> > +       "DE",
> > +       "NAND",
> > +       "PCIE",
> 
> No need to change this part.
> 

Yes, I agree. But since A733 has more pd_names, that line will be too
long if we stick with one line. And we also used this format in
sun20i-ppu. It might make more sense if we align with ppu. Please let
me know what you think. Thanks!

> >  };
> >
> >  static const struct sunxi_pck600_desc sun55i_a523_pck600_desc = {
> > @@ -206,7 +216,36 @@ static const struct sunxi_pck600_desc sun55i_a523_pck600_desc = {
> >         .device_ctrl1_delay = 0xffff,
> >         .logic_power_switch0_delay = 0x8080808,
> >         .logic_power_switch1_delay = 0x808,
> > -       .off2on_delay = 0x8
> > +       .off2on_delay = 0x8,
> > +       .has_rst_clk = true,
> > +};
> > +
> > +static const char * const sun60i_a733_pck600_pd_names[] = {
> > +       "VI",
> > +       "DE_SYS",
> > +       "VE_DEC",
> > +       "VE_ENC",
> > +       "NPU",
> > +       "GPU_TOP",
> > +       "GPU_CORE",
> > +       "PCIE",
> > +       "USB2",
> > +       "VO",
> > +       "VO1",
> > +};
> > +
> > +static const struct sunxi_pck600_desc sun60i_a733_pck600_desc = {
> > +       .pd_names = sun60i_a733_pck600_pd_names,
> > +       .num_domains = ARRAY_SIZE(sun60i_a733_pck600_pd_names),
> > +       .logic_power_switch0_delay_offset = 0xc00,
> > +       .logic_power_switch1_delay_offset = 0xc04,
> > +       .off2on_delay_offset = 0xc10,
> > +       .device_ctrl0_delay = 0x1f1f1f,
> > +       .device_ctrl1_delay = 0x1f1f,
> > +       .logic_power_switch0_delay = 0x8080808,
> > +       .logic_power_switch1_delay = 0x808,
> > +       .off2on_delay = 0x8,
> > +       .has_rst_clk = false,
> >  };
> >
> >  static const struct of_device_id sunxi_pck600_of_match[] = {
> > @@ -214,6 +253,10 @@ static const struct of_device_id sunxi_pck600_of_match[] = {
> >                 .compatible     = "allwinner,sun55i-a523-pck-600",
> >                 .data           = &sun55i_a523_pck600_desc,
> >         },
> > +       {
> > +               .compatible     = "allwinner,sun60i-a733-pck-600",
> > +               .data           = &sun60i_a733_pck600_desc,
> > +       },
> >         {}
> >  };
> >  MODULE_DEVICE_TABLE(of, sunxi_pck600_of_match);
> >
> > --
> > 2.53.0
> >


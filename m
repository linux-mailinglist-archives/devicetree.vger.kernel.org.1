Return-Path: <devicetree+bounces-91255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DF89489F2
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 09:20:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D52B71C222DE
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 07:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32086166F1F;
	Tue,  6 Aug 2024 07:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="01uWuXXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560C6166F0B
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 07:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722928776; cv=none; b=Bl+Fk0+YDnyqn8TKzRYiddgHavaLMos8Qr/hsKmTC6EcTnCIF0oku73kFyL8yHiIWoCcdHD6TlPHVmCsa4/XUONPKDY3rsfJjHgFfET/UCNWCHRvmv2FMjDuH8U5N6plsNEHolK6lwQFU4hinnzMjgYumgKAR3mp+1CWVyanWfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722928776; c=relaxed/simple;
	bh=zp0wjm4UA7+ZR1L9Jxd5aBu+0I7odBaoRNz+umgHm+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ay6yku/JpEoUYcNTIXZwmDoORyaJFeiUT1yue6ZxmDpMlSlSiISZGRNMDzLG2bCu0pSskCN1ZdtVHRMkatEY9PYJ3nvAFKRlbYH+M3ymi7IQGuM1Xq+exE2LjOm8DgYbKcj98pXWfKU57nJWrj15cLwBk8iS6mLeXawBO+g1xVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=01uWuXXT; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-81f94ce2272so7233239f.2
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 00:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722928773; x=1723533573; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nfzGRlAWiz5o9sytI1cOClf/wPk5XA5Y9igcYLSY4nw=;
        b=01uWuXXT4blvAc4JBUyGXLYrj699X41oJdLxWKEGEbZr1OtSC+Ig/arSjY0Ds75wJ7
         yvWx9IJxfShv77ehWFbobmhZMIph1igRVE8+0MZKoWks/ena8fJtUbAoLRzYxe5C71TP
         eE5iJtzo9tkB2MB6fiNk9P9RxzjxiJ4uMZahQNq8Ameh/TVWMEzZlOSHiK8owC+KHLOV
         +T3r6KISrMwM83IRTPn04ns0cfnV5iheIYuMALp2HUdvppnT68VliaJqexHzllgJZ8wg
         h7QhXsgvKIWp/p5GrCMn4aIpq+PwUAulH3OZcdT9M1ELKvRuJmcz69t5UnoN9jY/B63O
         vlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722928773; x=1723533573;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfzGRlAWiz5o9sytI1cOClf/wPk5XA5Y9igcYLSY4nw=;
        b=DBV1EU4OUL8bHZLGfjAUUaRNzRPj0gBgmQhoL36p1Yx0jMK4rnlyk3e3ndsUYLhz90
         lzZhsRpTEjjUNI5aJ0z20SYe6/0S3+uXBqmL12GCYLhlXIAlTsj63314bjhzHOCu0KS3
         yQzJ3ydZJc7BExaq6Fvj0cGO1yTA1uMjDVQ9rcFJvLZDGySERlosy7oTdTXelWDk1onj
         dZFbR7p+8JMpQVwSK76Olg8Kc3bVA1m7QfDRXEMLVs9CCmItVdTNDoQyszWGHg99hzVo
         Y9rLSz93lyJotmH+3uI9JEsT1WrUeUNCUcO8PUbA+so40uAEPcKC/P+CJZNgDF/hbWJ2
         RnQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWEi6Wdhkxkhuasi8mdZU8dI7laxVd8Xiv1hA/yG7IHXaUoflSqIoUNS4UGoCdbGjuBHh3tOEyOxllHqqPZAaW6SaelNjJOyH/DA==
X-Gm-Message-State: AOJu0YwCSo08Mx5Q1aJKmm6yJ0Z5KTZj2K4EogDkKMj9y3t9ZfeYQdM5
	1omRuXIR9gcj32k/p/7WINRdTmjZkB09wBronq6PgmYdTJ1N4SEEDRdxvY6dhus=
X-Google-Smtp-Source: AGHT+IFnAahJnmLTySZSb984oUsjSvp7OWXd0rO3qSc1wAGRJ8tkgCbxJE5Phqbvq6iIsQ85R7Bi2Q==
X-Received: by 2002:a05:6602:6001:b0:805:e2bf:f303 with SMTP id ca18e2360f4ac-81fd4361d30mr1948377239f.8.1722928773271;
        Tue, 06 Aug 2024 00:19:33 -0700 (PDT)
Received: from blmsp ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-81fd4d7223csm240373439f.42.2024.08.06.00.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 00:19:32 -0700 (PDT)
Date: Tue, 6 Aug 2024 09:19:29 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Vibhore Vardhan <vibhore@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] firmware: ti_sci: Partial-IO support
Message-ID: <iswnvyfwxq6xie2elmbzzixpriy74o4plk3adz6nthf2eekrgk@wwlgjhbygj5f>
References: <20240729080101.3859701-1-msp@baylibre.com>
 <20240729080101.3859701-3-msp@baylibre.com>
 <654f76d5-e4e4-477d-becf-8157792557cc@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <654f76d5-e4e4-477d-becf-8157792557cc@kernel.org>

On Tue, Aug 06, 2024 at 08:26:00AM GMT, Krzysztof Kozlowski wrote:
> On 29/07/2024 10:00, Markus Schneider-Pargmann wrote:
> > +static int tisci_sys_off_handler(struct sys_off_data *data)
> > +{
> > +	struct ti_sci_info *info = data->cb_data;
> > +	int i;
> > +	int ret;
> > +	bool enter_partial_io = false;
> > +
> > +	for (i = 0; i != info->nr_wakeup_sources; ++i) {
> > +		struct platform_device *pdev =
> > +			of_find_device_by_node(info->wakeup_source_nodes[i]);
> > +
> > +		if (!pdev)
> > +			continue;
> > +
> > +		if (device_may_wakeup(&pdev->dev)) {
> 
> ...
> 
> > +			dev_dbg(info->dev, "%pOFp identified as wakeup source\n",
> > +				info->wakeup_source_nodes[i]);
> > +			enter_partial_io = true;
> > +		}
> > +	}
> > +
> > +	if (!enter_partial_io)
> > +		return NOTIFY_DONE;
> > +
> > +	ret = tisci_enter_partial_io(info);
> > +
> > +	if (ret) {
> > +		dev_err(info->dev,
> > +			"Failed to enter Partial-IO %pe, trying to do an emergency restart\n",
> > +			ERR_PTR(ret));
> > +		emergency_restart();
> > +	}
> > +
> > +	while (1);
> > +
> > +	return NOTIFY_DONE;
> > +}
> > +
> >  /* Description for K2G */
> >  static const struct ti_sci_desc ti_sci_pmmc_k2g_desc = {
> >  	.default_host_id = 2,
> > @@ -3398,6 +3485,35 @@ static int ti_sci_probe(struct platform_device *pdev)
> >  		goto out;
> >  	}
> >  
> > +	if (of_property_read_bool(dev->of_node, "ti,partial-io-wakeup-sources")) {
> > +		info->nr_wakeup_sources =
> > +			of_count_phandle_with_args(dev->of_node,
> > +						   "ti,partial-io-wakeup-sources",
> > +						   NULL);
> 
> I don't see the point of this. You have quite a static list of devices -
> just look at your DTS. Then you don't even do anything useful with the
> phandles you got here.

I am gathering the list of phandles in probe.

Then during shutdown I am resolving the phandles to devices if there
are associated devices and check if wakeup is enabled for these devices.
If wakeup is enabled for one of the devices in the list, I put the
SoC into Partial-IO instead of a normal poweroff. This way the
devices which have wakeup enabled can actually wakeup the SoC as
requested by the user by setting wakeup enable.

Best
Markus

> 
> This property looks entirely useless. I already commented on the binding
> (which you did not respond to), so let's comment also here:
> 
> No, it duplicates wakeup-source and your code shows that it is not even
> needed.
> 
> Best regards,
> Krzysztof
> 


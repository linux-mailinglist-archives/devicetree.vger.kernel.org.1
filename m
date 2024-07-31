Return-Path: <devicetree+bounces-89834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6391D942EB1
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 14:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1733728CEF4
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 12:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB3D11B0123;
	Wed, 31 Jul 2024 12:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="O4TlkjaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40E21A8BED
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 12:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722429412; cv=none; b=Ydo2oet3giUbPMVU7HSqod+88BjNDDXPb6eG5umqulqjQrCG56nEb6vNunCKMMWlk2daEGEE0g6e/bMvejVLghaGQPkOkEUDL95Nm6iZ0liLf392RB1XVDgL8fjgwytUK/IRCTq/buDqZJTh9aJmqnwPl3gDCLgOF7OlMuOgeCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722429412; c=relaxed/simple;
	bh=RsJ9V+NACpeKXbCZlRUxlcMm9COBvOIORjHPho639po=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oj0VC9scz1OmM1hbQtHwe+88HkwAebW5jUS6a3DJbP6FlwUNx0KRClraUfC9O8fXAQ8PPZkDKDuy7C9WhgxyVcw6mwmeloXwPzWR4yVUIfYBYuQBX64Y87YFS3YzKa9xYcx2iXWFYbQpU16JPjR4KpIDwGJ1qyqMZUh+HfiwKF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=O4TlkjaW; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-39b0826298cso7566635ab.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 05:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722429410; x=1723034210; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AnptpaQuPvdgbkatvxSE05bjhHWwNlFkhsE34q5UbRA=;
        b=O4TlkjaWaD5JBmqJC+N4GHGarHh1QDplPjt4AjvjwcZIkfDDMhvyPUJTDDL4w8Op+x
         rmuB67HNd5q+M0Cda1HwlykW7twVJBdid8oQ9sH2+fgdfYmNFycSAoc2Ncf+EZoe7clr
         1XsXopT3PVAWdCdhOlGJWhkSl7u9/i/x+oMA+4N0EmCbWDw5pM4cq5TBFn7vbKeNh7xY
         YMumFHNKkoVPb98fT1eCKzmRpXdufslhgJAb4WCAwmk2fIsEf2qrlc7xfZ9oZnMZLrgL
         NCKVrQZSbWOOi3FFghKRRUJMx8HyQWqky4hE7/6rN5oIOuLtFV8VYTiMkK9GqmBoicmQ
         Tjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722429410; x=1723034210;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AnptpaQuPvdgbkatvxSE05bjhHWwNlFkhsE34q5UbRA=;
        b=MkT6LTO0YVelsFOiNruiD/ilOETLaC8WxpNBd/oc1dDmdDL++4K6iLtwQDhYjqlzSX
         zTMDXJ6jYli9NQd792VKYehsOB3KAOOnJNUhekVOyIa0cdVBYd5tqPxyftTmOgPLQjTM
         Ufq5o66d99RcJVZnJ2V14+dR0kOCxmv93sMW6piTxyRmrfF0SeXHLNF5S2iqeP0gVB8+
         0hnnyBCIFjcYC2ObFT4QmAuP3e9Ul+KNcnwMWHxNsKgyqUX86MFM4gXwvWt7wU9B9jnm
         Uvnv6vaHkUtVY9VIbSUdFcQ2lJUG7w4CT7XFT4zSE5gvBjzAyxhYn35Rl0ZAmhhP8T4x
         F13A==
X-Forwarded-Encrypted: i=1; AJvYcCX6PrEeplLeTZbDirjpIn5jEYqBoOryGBPGf9Sy2zPJZGTsVPegYJsqgU6m5/XubAVpMwdaJhDqPIbig9J36I9d7b7XqzUZsuBKaA==
X-Gm-Message-State: AOJu0YzHanH3VZKNOPjCUbX6gbhTXuMvEVqHSy2KBVLfmbEaCTfgbmWj
	t37ztL1lEj0gsH2StgT9b7GWE8Hs90tjsvwvxrN+e4cvm0a4bKbZ+QXyUP14O7Q=
X-Google-Smtp-Source: AGHT+IGMdEfHzed7KKq0xWC2HtO73icj1nR2eF9lSBKPV35jrF4Nl1JViRHuYqNtwFSOKO0D3RousA==
X-Received: by 2002:a05:6e02:1a29:b0:375:ae6b:9d92 with SMTP id e9e14a558f8ab-39aec2d9897mr193860285ab.12.1722429409806;
        Wed, 31 Jul 2024 05:36:49 -0700 (PDT)
Received: from blmsp ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39a22e97bedsm55462175ab.33.2024.07.31.05.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 05:36:49 -0700 (PDT)
Date: Wed, 31 Jul 2024 14:36:45 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>
Cc: Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Vibhore Vardhan <vibhore@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] firmware: ti_sci: Partial-IO support
Message-ID: <dskdxir6375ap47lm2ptp7ttnaaxhczsf6bwk73xl5pajfqhnk@4324gihbq43u>
References: <20240729080101.3859701-1-msp@baylibre.com>
 <20240729080101.3859701-3-msp@baylibre.com>
 <20240730122801.jzo5ahkurxaexwcm@ambiance>
 <x4y44ajcdi2y2dieaa6oohrptpzyiono3fruvwcdelmtzsh4ne@cgqxsz45ohcy>
 <20240730150722.bzls2qrfqwlmh6mn@clergyman>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240730150722.bzls2qrfqwlmh6mn@clergyman>

On Tue, Jul 30, 2024 at 10:07:22AM GMT, Nishanth Menon wrote:
> On 15:01-20240730, Markus Schneider-Pargmann wrote:
> > > > +
> > > > +	return NOTIFY_DONE;
> > > > +}
> > > > +
> > > >  /* Description for K2G */
> > > >  static const struct ti_sci_desc ti_sci_pmmc_k2g_desc = {
> > > >  	.default_host_id = 2,
> > > > @@ -3398,6 +3485,35 @@ static int ti_sci_probe(struct platform_device *pdev)
> > > >  		goto out;
> > > >  	}
> > > >  
> > > > +	if (of_property_read_bool(dev->of_node, "ti,partial-io-wakeup-sources")) {
> > > 
> > > You should probably check on TISCI_MSG_QUERY_FW_CAPS[1] if
> > > Partial IO on low power mode is supported as well? if there is a
> > > mismatch, report so?
> > 
> > I actually have another series in my queue that introduces this check. I
> > just implemented this check for Partial-IO yesterday in the patch that
> > introduces fw capabilities. If you like I can switch these series
> > around.
> 
> Yes, please introduce it part of the series.
> 
> > 
> > > 
> > > > +		info->nr_wakeup_sources =
> > > > +			of_count_phandle_with_args(dev->of_node,
> > > > +						   "ti,partial-io-wakeup-sources",
> > > > +						   NULL);
> > > > +		info->wakeup_source_nodes =
> > > > +			devm_kzalloc(dev, sizeof(*info->wakeup_source_nodes),
> > > > +				     GFP_KERNEL);
> > > > +
> > > > +		for (i = 0; i != info->nr_wakeup_sources; ++i) {
> > > > +			struct device_node *devnode =
> > > > +				of_parse_phandle(dev->of_node,
> > > > +						 "ti,partial-io-wakeup-sources",
> > > > +						 i);
> > > > +			info->wakeup_source_nodes[i] = devnode;
> > > 
> > > Curious: Don't we need to maintain reference counting for the devnode
> > > if CONFIG_OF_DYNAMIC?
> > 
> > In case you mean I missed of_node_put(), yes, I did, thank you. I added
> > it in a ti_sci_remove().
> 
> And unless I am mistaken, of_node_get as required as you are
> retaining the reference of the node till shutdown / remove is invoked.

The function documentation says the refcount is already incremented:

 * Return: The device_node pointer with refcount incremented.  Use
 * of_node_put() on it when done.

Best
Markus

> 
> -- 
> Regards,
> Nishanth Menon
> Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D


Return-Path: <devicetree+bounces-264763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PKKBORxjGn6oAAAu9opvQ
	(envelope-from <devicetree+bounces-264763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:11:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A74F91241B7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E1B63045C03
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0240033986B;
	Wed, 11 Feb 2026 12:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FPWTTVV4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A294332EA0
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 12:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770811822; cv=none; b=ObnvxMUyhvZPst5tXXIg/K/bfPsDe8JbNT+fJi4SOjThA71Bx0t2riQh5OaRRvsDsr6kK/fBbx0Gw142t3B8iv9kM22ukrj/XcPH+M3JWankAUmaBDdZ/RUUDLzncuuk+JrADLforEaRHGTbNjAHTMq6SkipEskiYFUhCxaCSa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770811822; c=relaxed/simple;
	bh=utn3XwOpWurKgubYBtZ684X93Erh30fOChOZ829PatU=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ktN3ERt6XMfLgtojUMHSlrxmuG/QocN9NLAlC5tnMsPqRI8hFMHtqJ+ICynpW2ewUTw14oUmjvzZ6fVkiLLnFbgJl/GhnBR9ptA291nGLCGPcsekC+YdnHF1Loup2Uz+xbV+KW0Yv6JU98nJ1exHeBlggZ34SoW2sNgvBsb7BKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FPWTTVV4; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-436317c80f7so513170f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770811820; x=1771416620; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qtsVjI2BnkequBe3oD3S5ISrfMB8iEq+0jmS+b7f7kU=;
        b=FPWTTVV4xEfqG805bXED60AmFv334Iqy0NYr+SbKcKzgQwfsZEZcLCrCWz88ImNrl4
         /XTuauj1wbVAJxbvgROkwrO+FXfKeblSXyJ+OgaK7IAgE5drlYG47jp7yEFWuG8W/xY8
         gvqB233+OvrevDX6nd/caQ8H257Xb6lAENC1cb0iN5FOR4DiFs8oZwhOL40MWafZQe04
         1v1uljd01joJJ24vnlmsKv+K+ww7CZSHpejVGhKyA0g50u7g7N/is67QLgapKlm6d31o
         hiTz21FEhRgwgVSR7CZNH4YytcueC9ZVTQzAb8qLMlrt0nFud5Wi61LClx7w+gkSPKyg
         0ufg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770811820; x=1771416620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qtsVjI2BnkequBe3oD3S5ISrfMB8iEq+0jmS+b7f7kU=;
        b=tAfEBz22q3ZB4Jq4bi/+Q9gn4a9MwLm/VZoWMfqcF35fH6IhxZZphs7utaKm116lAI
         CSWpjBDGLYRUOweh9U1S/YzGG+B3IlYRZ7Nz9zhAxWyqNO8GRAOo/Ojjp67MyOeU3xmJ
         PIRXtR3tSz15vVOghigs95D32UjZn67E5iudut9MD+1CMknVLm9TXMAe16dh6iZ13FH2
         voczII+7wIZmgfiUxwTEbArU3IHraZCaeg23AB/Ls5JeQmdJoNsp823HJ7/UJA1vye9x
         RHikkWKIOSRslqFSHZattPsL3v9FoxT7p/GwcmCJOTTcNvDYoL1PdT3sM+3wp60mX277
         xc6g==
X-Forwarded-Encrypted: i=1; AJvYcCV0vVlevQ7RHLMEhtyriT9o7hVkhV9EAKV2GCu3XvH23sTBTi0eAIwwKIAVzaxExRDhJ71ONELZ7uaw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywol1wsLSx4GlDz2fPVaun6TwbXfoNRjgOhOPZuiDIzse6iTKJs
	1tbveybJHF+Dnf2CbwNL9rcBAkrY4fGT+20q58ebqyAp/OjRERcXvqT1
X-Gm-Gg: AZuq6aKoHY7z+tvRquATKh6aXztsV1JnXwR1tkfKAJ/K8ssPC8oI0n+OfFD8DrCBr4N
	NvDyuE4ySdq9VwgvJtPG00DwjgjNaw+whXODpkcXWXiA1rqEOkzn0ZfnlFEtX4TjrA8/VhyEWpZ
	KvbNoTqTeYV7uGXp+kAn3hgIOv5ztbNXSeYfMUftm6ZdGHyzYcmM6TQAUWBpfyUJ5SzD5HPt/3E
	3eBTvimKVcmI2gSd4KA/oVxNDV58ZluO4gpBuT5XhO0CPao9LXbWT958c0bFvS9y703qxUcm3nI
	WSs2SyZcaPD14SRz4Yav+wQu6vxKjXNUkrNPfNZGtpbkaoPhcLk3RPdiFHYYYsITPk3d4JRYCEu
	IsrGr4hRMuTqNbrbpJ56EF9P1R49fe4mz2iGRJAxi31+TErhNdpw+lPqYew3rywsPVO0ZIo2oa7
	GHs3T/XYVWzK4unlOHRh2f/eS2ohbhhEKvX4RPfuS2NnYnYA1fMo+6sebXrDqos2DN070SwXmuE
	xycCdY2Qx5ScSdJ
X-Received: by 2002:a05:6000:1786:b0:437:686d:aece with SMTP id ffacd0b85a97d-43779ed492dmr9824184f8f.30.1770811819597;
        Wed, 11 Feb 2026 04:10:19 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783e3a9acsm4158387f8f.30.2026.02.11.04.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 04:10:18 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 11 Feb 2026 12:10:11 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4 07/11] iio: amplifiers: ad8366: refactor device
 resource management
Message-ID: <whgxbva3eeushqmj57xsk2q5kv3pmrffu2fzgmxyynvvzb4fyr@25arbt3bqulm>
References: <20260210-iio-ad8366-update-v4-0-15505f7b15b4@analog.com>
 <20260210-iio-ad8366-update-v4-7-15505f7b15b4@analog.com>
 <aYuPhB_e14orrZ64@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYuPhB_e14orrZ64@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264763-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A74F91241B7
X-Rspamd-Action: no action

On 26/02/10 10:05PM, Andy Shevchenko wrote:
> On Tue, Feb 10, 2026 at 07:42:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Adhere modern device resource management with the following:
> > - Voltage regulator managed and enabled internally;
> > - IIO device registration handled with devm_iio_device_register();
> > - removal of goto's from the probe function;
> > - ad8366_remove() removed as it is not needed anymore;
> > 
> > With the drop of goto's dev_err_probe() is used to report probe errors.
> 
> I think the regulator change should be split and go before the previous patch,
> because that one affects the ordering in the error path and remove stage.

OK, that can be done, but the same way, the error check would change as
well as the dev_err_probe() args, not seeing much benefit there as the same
lines will have to be touched anyways.

-- 
Kind regards,

Rodrigo Alencar


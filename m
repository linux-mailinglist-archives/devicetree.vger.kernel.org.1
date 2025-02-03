Return-Path: <devicetree+bounces-142504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C617CA2595B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA5693A24D5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 12:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52821204596;
	Mon,  3 Feb 2025 12:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="oLv++D1A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D7E4202F96
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 12:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738585477; cv=none; b=Y8xqR6pb/5CPmIDV4V6c7Plgb8EfWcKveNCWZnk8VyUx1AOZeQ1Fl+3HCQTB+gpetHB1J5lKCC/gl55CaQPsna+RkBu9homGjN+lTIOUaGplmNq3AVBNU7QrMlVOIjaKJ35/vrmqOkWd4SfDIn5r5tTuhLSIm6G+86JFl/qHJSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738585477; c=relaxed/simple;
	bh=YtbmQWrRsenA3xCb9GNs8QhaBMLEYTDtSq23s95XQKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lfNAjm8D4I7oPhoAjHbIbvlrROuIHZLwsziJCBjsc5dRXrUlTWC1Z2yUnkLTjMPVGn2nFogb1MjCYgDaWSt30eGmq7wN7eXVzc8wmjatgIhKdB14+sflvhGjcsxBYAHcOAxajjBZRW1ygiCXARTkf3IpHHI0Ao1qszrp8FFzp/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=oLv++D1A; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7b6ea711805so618742085a.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 04:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738585474; x=1739190274; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ApUlLTpGY8QIpFfh/w6kk6nMf7s8VLTCzZhJ/61KofQ=;
        b=oLv++D1AXObui7HF6XXnx0Wa37b6G3UJkQOPaI9LrvzLSLL/IphhaLVKH/FdYkWV1h
         bba39Wae7cy27pu68kmOTToixflcnEf3Z6knJOErgBZw/U+n+2oIZRz1afj8SRSkpgKc
         N2sE5c6uz3y0L/5qonYb4e+1oYRkYaStRFSNNuKQWcdqyHMLDo1dJA+dl6dyNXRKZSz6
         1R4j68BAmZYOxjLJXQB1ZIA8U2A3SaNdCFQP8muJJuPvOp7HE05gV8/tpkkUReIEiGxO
         +rSkAjiXIiAtk5cab3qSoGW/6308a1CZ2ByAdtkHYcTegQSkpQw4ATH+DtTti9RP6eL0
         6zxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738585474; x=1739190274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ApUlLTpGY8QIpFfh/w6kk6nMf7s8VLTCzZhJ/61KofQ=;
        b=b0kfmFb99egey047qQikWLf5hz1yOCxDaaR3DxAff4B7eNQaCAkDTmNT8T462yut50
         AjYZHww+a989RWEqL7dOrQqh3ZBekgjTXPk5oNhuV6xAUOFtstAolKWJe3mPxaAnbcnJ
         vcZqG0ExygPkcvFcYK3YEaOPC0UyE/kT3WSoTJ982xFjfUiPJUATm8MB3FP1rLLrGfhs
         ep3oilrh+DZl2cUvka/ogWWHV0fiC+ttPM7xBUZqANvpQU6VDVQDuVxuB5uQFs5DPEsN
         Njw9aCBaX8+lw1MXAuWtK8/ag2DdxpkSxrM30mHavDvjpUk6j0Kx8/+M/URCa3Ved46e
         JLYQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5tYgCkaUhIZkFlP12AM0RyWxeqZWAatss6bw9p2kNy3ZrqmJ2o/mkcU/7hIiowr9Qqyv1C6Usrfoc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3MhFD08Fy3Gug3cQP3nDN2w/TAYqSWs9g39CjHdQv41GsUfVP
	+GS2Irc0wcpnR9D35vzp3yDsmjE+AeNFEdEdhKuUHDpLfiI4AVVRnxG2ujnfLw4=
X-Gm-Gg: ASbGncsgiwOvozhiDMvjx6dX5rFvdEPnb9Vbju/nsxUgIpBXD3fgfCQeGg040h9ytuU
	GUKL4e5+57FjwVU2odO8CvbB4i9mFtyMRjZZH8UtNBAm9PuHpiukPoJGA6t3Oy/yeWEF/yV0ITl
	0uVbBhvSikaiWqJvW1xONRsfR13KHXPw2rivhDQiFHiL3aXH0dS92+H+A0DfsjC6cRnOfYkCFO6
	yFV/jJBvva3vxrPVgcICUBEdYTa4g5kc09INS539nmXxKGavRO8xWVMBwaW5uHVC8nyJGMz5+jF
	ATOaR0c1UqPiT+p+c7AMQbs=
X-Google-Smtp-Source: AGHT+IFeBMX4wQkkK1eZgQ8lEKlzFJNSPxCZvzrd8VL8RcDP/uXgxJnPmX9jLerE3byptPWEc3Kg4A==
X-Received: by 2002:a05:620a:2719:b0:7b1:11d9:446e with SMTP id af79cd13be357-7bffccc9b53mr2979634885a.3.1738585474447;
        Mon, 03 Feb 2025 04:24:34 -0800 (PST)
Received: from sunil-laptop ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c00a8d02b1sm518627785a.43.2025.02.03.04.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 04:24:33 -0800 (PST)
Date: Mon, 3 Feb 2025 17:54:18 +0530
From: Sunil V L <sunilvl@ventanamicro.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Len Brown <lenb@kernel.org>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 12/17] ACPI: property: Add support for nargs_prop
 in acpi_fwnode_get_reference_args()
Message-ID: <Z6C1cg3cqik8ZxvU@sunil-laptop>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
 <20250203084906.681418-13-apatel@ventanamicro.com>
 <Z6CPvteWv89Xo70j@smile.fi.intel.com>
 <20250203105840.GH3713119@black.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203105840.GH3713119@black.fi.intel.com>

On Mon, Feb 03, 2025 at 12:58:40PM +0200, Mika Westerberg wrote:
> On Mon, Feb 03, 2025 at 11:43:26AM +0200, Andy Shevchenko wrote:
> > On Mon, Feb 03, 2025 at 02:19:01PM +0530, Anup Patel wrote:
> > > From: Sunil V L <sunilvl@ventanamicro.com>
> > > 
> > > fwnode_get_reference_args() which is common for both DT and ACPI passes
> > > a property name like #mbox-cells which needs to be fetched from the
> > > reference node to determine the number of arguments needed for the
> > > property. However, the ACPI version of this function doesn't support
> > > this and simply ignores the parameter passed from the wrapper function.
> > > Add support for dynamically finding number of arguments by reading the
> > > nargs property value. Update the callers to pass extra parameter.
> > 
> > I don't like this (implementation).
> 
> Agree.
> 
> > It seems that we basically have two parameters which values are duplicating
> > each other. This is error prone API and confusing in the cases when both are
> > defined. If you want property, add a new API that takes const char *nargs
> > and relies on the property be present.
> 
> Also this is not really needed for ACPI case because it has types so it can
> distinguish references from integer. Having separate property for this just
> makes things more complex than they need to be IMHO.

Thanks! Andy and Mika for your kind feedback. I agree that having both
property name and nargs is confusing and also ACPI would not need
nargs_prop. In fact, I think ACPI doesn't need even nargs integer value
as well from the caller since all integers after the reference are
counted as arguments.  However, the issue is acpi_get_ref_args() assumes
that caller passes valid num_args. But typically the common
fwnode_property_get_reference_args() doesn't usually pass both valid
values. So, should fwnode_property_get_reference_args() pass both
nargs_prop (for DT) and nargs (for ACPI). Or do you mean it is better to
remove the check for num_args in the loop inside acpi_get_ref_args()
function?

Thanks,
Sunil


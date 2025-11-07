Return-Path: <devicetree+bounces-236212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4118C412F0
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 18:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3B4618803ED
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 17:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ABC232D7EC;
	Fri,  7 Nov 2025 17:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kMXcaIBP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D45303A2B
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 17:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762538325; cv=none; b=V4ciLLfGKsys5DD7AfGayH9cNxVSv4FX5TyDpRbk9extzEU/JQ86s1Z64GvHyi0mYnfWE9Ty99qHuDphtq0+yCw8nC1RSy3eqDpRQz5GIOgLY38dBS2jktpzcWPYegMoI8BYdyz7jV9yc9bkGy1mn+EJOzmq3C8lclryma14n5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762538325; c=relaxed/simple;
	bh=zcMWRLy2zTfSrZa7T+hCLM/4/N7QvFnX+Xx3zpNBBGo=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m0cEuq7ZvPRYeRax4hYBQxPc98mOmrG3a0HB9MJuUImf77Qi36ktkajjQ9zVm73F4j7+yAVa+sIscFxhIEE90YaP83hqzyEcx/oDlRKMOOdEP/AaNIzsI8rPVW9Rtz+2WOssp/Bbv/e9aNSwnErP91LnKdbVPUzkX2NfJ59Xayk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kMXcaIBP; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-429b7eecf7cso762906f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 09:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762538322; x=1763143122; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4Hy8PEdE/fLtMOp8zZJDYe1K5v8P86jnmwdVl01gCF0=;
        b=kMXcaIBP4T1ajPvHI5jq/hMge6Y30jyfxD7ylSxWWlnTwkKPXwJYlxcFt5R8hjXuk4
         DfJP6GP7u5O1D1Mx+4pS3l3MF+yrs1E5jtt85imr7GgLu1+emYH3OoHjbJrd/YoZcHCi
         qisvGamcAryoccGe8o6F04cDhB6+hOUV0rkcZ1qth5Zs3x6dZVYKK9OM77o4Ku/Qljie
         f5Quju1TJA6J/FsRiy0iQs3EbYx4MgBELz7LuAZhMsGtzQJQboydhzCovQb5/gGQspFQ
         U4HT52hsHwupqDYwIsSyEw20ElnMuIlWn1Q4vDcSs4lD/wSXrmABQTW8olaDvhRxrebl
         FP/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762538322; x=1763143122;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Hy8PEdE/fLtMOp8zZJDYe1K5v8P86jnmwdVl01gCF0=;
        b=ver2tPKrj+pasxHqUj3uwFco7uPvxTylwsF78ine/OMU9johFHRm1z3N78sHd4fvy4
         QKyKmFpnOBL+9t6coYhmgNLmqNnHEztcD1l3A4lCZOA0bobDubWVF/Jp9a8SmHzOTETK
         J7Uwgs4cQQ1fh/Ysv69AbPROLsqO3FppX3JP61PbZDzvEPqSlpfDEP9jf6HdnikVR0mM
         n8Nse+dpcxC+Wi8Pc4/Los2y0T4JCcZPJ0GKbCVnl+F9pibCzS2rh3JB5TvH87Y36VZX
         mNCZdi1E/xd12umlBSAOx6LR4YStl9R7203arEMfIlH2kgVO82BehLUZNlalQ/zZ07Ia
         n78Q==
X-Forwarded-Encrypted: i=1; AJvYcCWC/KHg6KHz7Dmfx7bprhU0fHGVii60LKIzUkP8AWYKe3+Wc09JvuTHt+ZfLdCi1Of+qQVeTDeg6oAU@vger.kernel.org
X-Gm-Message-State: AOJu0YxVhNkxZNnsdyQwt7tlDeRVFyR/HWHT0VllnNSxmOtq3liQjHg7
	x7lCXNDS9qNA/qfk5QFDqTh0tzpyFa5JAL39LKayOYFKZGQfpXky1cqS
X-Gm-Gg: ASbGncusHqPt0raBE7re5+NkbIaTo18tKa/wERp5lsQ3TREQcYYuMxTSWibGbirMZEk
	UCH/nOwu5JONFKza/Dn6AkLyMr+W/dQOJpkhe6W+q68Hf0RS408APf9/a+lmhBuV/a07tshshut
	xwrsYMrerca3ADMfKHZeW/NA9QValGwx0ypinZMHgVr9A0vFP0VhlQn+BpgaIDChsOuBUJ/8M6f
	bzYk7AInzR+WU4IzfumxrqGb2ZctnGP7RmFUuDBPeCsvV0YuZ1+MIAdXrZA8wRl8aDSC6Npboeo
	R/A457uhj7Sacfk/we8rFuu6nGQ5UFtfn93zDjGW38giG9tfDZpq/3OiaNKuaGWhEJfszVrdiJZ
	FG8KtAPRX5zjGchqH78lN3D6FzghyDaDmp0MW+wZZAuHbm6xWjBnTceQlMxNwqdmhS+dSKWjUKo
	EMGxQVjJl5cuK4luL5nTPdwX6zBLHr
X-Google-Smtp-Source: AGHT+IHxrsG4B2duEE/+GCKG0QyJVFEsIc/yuwXnmYOAcLA/FUrE6rMl803DqisMTH4v+FhxV5j+Ag==
X-Received: by 2002:a05:6000:26c9:b0:429:ef72:c33a with SMTP id ffacd0b85a97d-42b26f4be9dmr2506029f8f.3.1762538322141;
        Fri, 07 Nov 2025 09:58:42 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477640fb801sm45371425e9.11.2025.11.07.09.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 09:58:41 -0800 (PST)
Message-ID: <690e3351.050a0220.15e225.cf82@mx.google.com>
X-Google-Original-Message-ID: <aQ4zTvBcOb-258Gg@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 18:58:38 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Sean Wang <sean.wang@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/5] dt-bindings: pinctrl: airoha: Document AN7583 Pin
 Controller
References: <20251106235713.1794668-1-ansuelsmth@gmail.com>
 <20251106235713.1794668-5-ansuelsmth@gmail.com>
 <20251107-washstand-motivator-c5e5e5d30dae@spud>
 <690e311d.5d0a0220.2f18f8.2b28@mx.google.com>
 <20251107-jasmine-unarmored-e3f5d544a1b7@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-jasmine-unarmored-e3f5d544a1b7@spud>

On Fri, Nov 07, 2025 at 05:55:43PM +0000, Conor Dooley wrote:
> On Fri, Nov 07, 2025 at 06:49:13PM +0100, Christian Marangi wrote:
> > On Fri, Nov 07, 2025 at 05:24:21PM +0000, Conor Dooley wrote:
> > > On Fri, Nov 07, 2025 at 12:57:07AM +0100, Christian Marangi wrote:
> > > > Document Airoha AN7583 Pin Controller based on Airoha EN7581 with some
> > > > minor difference on some function group (PCM and LED gpio).
> > > > 
> > > > To not bloat the EN7581 schema with massive if condition, use a
> > > > dedicated YAML schema for Airoha AN7583.
> > > 
> > > You went to more effort than I would have here with that conditional!
> > >
> > 
> > Well it was suggested by Rob and it's honestly a copy paste of en7581
> > with the relevant thing changed.
> > 
> > > > +patternProperties:
> > > > +  '-pins$':
> > > > +    type: object
> > > > +
> > > > +    patternProperties:
> > > > +      '^mux(-|$)':
> > > > +        type: object
> > > 
> > > What's up with this regex? Why does it allow either - or $?
> > 
> > It's to permit either mux-* or unique node name with mux. Pattern is
> > also used by mt7622 or other schema. Other use mux- to require a name
> > after the mux.
> 
> Ah right, because you can have the config properties like drive
> strength in the mux node, so sometimes a -pins has one mux node (mux:) if
> all pins share settings and sometimes there could be multiple, which
> requires a suffix.
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable

Mhhh why not-applicable ? :(

I rebased on top of linux-next, did you spot any conflict?

-- 
	Ansuel


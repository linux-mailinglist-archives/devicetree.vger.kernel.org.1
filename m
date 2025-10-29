Return-Path: <devicetree+bounces-232879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C1C1C865
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5B0CB34C71D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611E4346A09;
	Wed, 29 Oct 2025 17:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oRR8M48E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8C1350A00
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 17:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761759719; cv=none; b=EQ075Y965dwtZZfNXm/5SzIKsRqbACFSEHpYI+O7sEv850fy43RUPwhzwcb1wLmgnQhX+it6GMfW2IVdWeC9tYjbL+4/ZqUgN/1Qp4ozQKI3lhCrqLEELySfJhEej0I08DwW1UxlbEoE0sf6IaPC6XoqQy+eoozYOu09dgpn79E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761759719; c=relaxed/simple;
	bh=3YsoQHmMdhSXkiQ1YQiOuYE5Gt+FiJZEoWF8rG2zas8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dFvSDLGVcSEAhy0bJXYgwQ01kwF6N6X8ZOWgjsWzBha1+FnBc+7B2ClEIALjy+WJFEVr5Rau0sAfjZ1+FWLFap8dseICURCN0ERC02NubMcsQLLKx5ewk8Urodmh+kT1rgqpIZtkBHasSkgMhzG4ThW5lmkdsmB7ITl8mZyVtwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oRR8M48E; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4710a1f9e4cso992445e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761759715; x=1762364515; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bp5MmzyV0I+sEQzAW+1cSELcdu4xFiFHcWgfaHLwobM=;
        b=oRR8M48EzF0bBMxmKfrYlhKQ6cq1z3gB7xZmadcVbFJewXmvZvuMBOX20IQ9YXrE7q
         P2b4aF/xJ86qZdt4PYfUVtDhaptNQ0Htw6U+tcU2bWY+kzrFi7LIYOWCvONe5m/bwFaE
         9NuwtAk36KzLzX+O5fjzRZtnUA1ExbPS9J+aLqVIyPV5rbCgbrmuhgzh5voFK14EHlMC
         y+qfDKTwJla2tk5YBNFTZeHRD/r/Ns5uni8dSSHromkjIQqkMsNuaCM78Q/63yAfL449
         hoclN4zbWSB+Qg9UxM+86YcI/cWVEgcnn+khGK7o4U0QeDR+kV51NpXswvkOLc2ll+BP
         WZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761759715; x=1762364515;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bp5MmzyV0I+sEQzAW+1cSELcdu4xFiFHcWgfaHLwobM=;
        b=sLjjIUmBotSqNhr63R/CQqOFWsslRadWEiAsq5opjLe4HAnGiL5Ek90SLCImzo1nXx
         4c48nN2M30lFBVH0ZSgEIB/9jK68UZR45pson9muk97X+mavTojt9/uMHaSbtQLt8Uf/
         jLJ11A9x+z9YcM2SuTOl+wS84B2amcHa7tXZW04LAkgU9Bi12HeLaylQ+B7hJ87rn7Sf
         hKyJUKO1jjSJEUzvRp7/7r1fD43xP+1U5PEIjd2eLVGXG6OgQTABNGoZzJrrkktVXW5C
         4VwzdvtMEzX/UhHDITJ6vl6A/IKfJhByh13HwOqK2D88UBMwf1ND6PfL7/1qDDzDG/ni
         FAng==
X-Forwarded-Encrypted: i=1; AJvYcCWVp2vdjdu8k2qBpB9PqLaofcNX8Jx1w0Pa9jEima7e6YUzEmsgR3Yr3r9lBD3ipgXPrI8PU/ZUSe6D@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ2oYtH2ckM3x3b/TDtsUCVHSG4Hd/C4AyGJILn5Q3AFKs7ori
	Jpg8LJ+YAQGA7ztW/RsllIjaukoYEh62EIKhA+09hzH8bp1xO0O7AyXR32wE1Q6Z+GAg22iHEFs
	Fwx2O
X-Gm-Gg: ASbGncsCMybwEEDG7l95V5PkpzSseC34ajmqzyRWSydQNEcNztvc9lCnf2QjYsYYwT6
	i2aDA/ADzp9mJO6a/9HXQG2Uhvj+UinDisjkBY2lFfy/yL7SchOIqXRp5kzPUC4gMwW2WYsWP6n
	g5W5zJgk1/IwPPZVrpE6d7raXp+8H2tE5F9YXEv+D2D6/nOEYcUetdtQBxQGPR4Jfm+wZx+Fffl
	r/rCb3LJY5xOteFseeu7J3VUdNYPKe1LohuMc3ve1kuKvp83kTnYrDUxq+NiPO6aPo1kAzqtgxH
	TekHS1ilQUNj/+BV6Ti5bs/jI6NHeYufxtZZjwIoY1iYxBAS9WDMHMkDtHYM94TT8SMDKVvyDnk
	Q1AyvWNP7ztxBx0G2+9qbEMTCxhoce6RlQw+aLTsTE6aWlJL8EJrI4AtMRIuF23kSaJJlp7+3cc
	gBritDsg==
X-Google-Smtp-Source: AGHT+IEvnE5AI/oHuamFCmDgJIugCBHLrTL3fV9Zgnw1uKtQsvpcxCNbv0qgJbuzWMppKbsKMCH2fA==
X-Received: by 2002:a05:6000:144c:b0:427:606:b220 with SMTP id ffacd0b85a97d-429aeff141amr3274433f8f.51.1761759715371;
        Wed, 29 Oct 2025 10:41:55 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-429952db99asm27580927f8f.32.2025.10.29.10.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 10:41:54 -0700 (PDT)
Date: Wed, 29 Oct 2025 20:41:51 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: syscon: introduce no-auto-mmio
 property for syscons
Message-ID: <aQJR36s0cY34cLrr@stanley.mountain>
References: <cover.1761753288.git.dan.carpenter@linaro.org>
 <230cf12861a4f0b9effc72522444d3e28c1de2c9.1761753288.git.dan.carpenter@linaro.org>
 <20251029-ambiance-snooper-43dc00dcee68@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-ambiance-snooper-43dc00dcee68@spud>

On Wed, Oct 29, 2025 at 05:33:48PM +0000, Conor Dooley wrote:
> On Wed, Oct 29, 2025 at 08:27:05PM +0300, Dan Carpenter wrote:
> > Generally, syscons are created automatically and accessed direclty via
> > MMIO however sometimes syscons might only be accessible from the secure
> > partition or through SCMI etc.  Introduce the no-auto-mmio property to
> > tell the operating system that the syscon needs to be handled manually.
> 
> "System controller node represents a register region containing a set
> of miscellaneous registers."
> 
> If this isn't actually a register region, but is instead an interface
> provided by SCMI or whatever "secure partition" is (optee?), why is the
> syscon compatible being used for the device in the first place?

In the case that I'm looking at, it really is a syscon.  So right now
we're upstreaming it and it's an MMIO syscon.  Very straight forward.
But later, I guess, they want to have a new firmware which will only let
you access the same registers through SCMI.

regards,
dan carpenter


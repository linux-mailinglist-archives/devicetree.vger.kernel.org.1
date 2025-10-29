Return-Path: <devicetree+bounces-232896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE6CC1CD30
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 19:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B40B3AB667
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E4BD34CFCC;
	Wed, 29 Oct 2025 18:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hZSaB6st"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B073563FE
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 18:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761763670; cv=none; b=tzWVdsGSH7xQb2euK6J+y7euonzzJfeupjnHN//cM6zW0rROXo+zpqKx3l/UtI29nfvdPoa26X6vy5yETb1JWe0sCsIpPK76W3ayhd7dxtHtf0nwzjk50nNGBeKB1XnFWt5gGM1H37mFhUid2t6ec7GjdqnHzGUEIWrX+x/r5yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761763670; c=relaxed/simple;
	bh=0Tr3LCSHb84ftOumUd9propiyWY/G1DK/xvBH3c4z0k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H4c4VhGIG7wFxo9Anj5BVXQsG8B5JXTuZm8rkhEPymI1eCh0zOHgnJUlQLG9Caks2WqxgUdHNr3yTe0DNI94+cSOHPUbuFbAkIwHGaQaOeTtdhkoDHX0aMH9n1nuoI54oh0WTLMgfW/qD3ZRnLHSklAqKq34UaCi0G3vxCmOD+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hZSaB6st; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4710022571cso1879475e9.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761763666; x=1762368466; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n7UlL3GKzUDEprO6nc/X4PQZdsoNuJnhVXYl9pMuUgU=;
        b=hZSaB6stfLACJmEqNsUdwjSf2xtOI5p6B3TGS/c5ftCfg7bSAZ6/pTAloV+Cwgxl/t
         Bh2YMigTgCP3OfdV31YYEMKAdOoKj5hgVHMv/pMpFtJ6as6GdbSu8R27zJoLBI5S7fOn
         xn9UWzWrK1orsjyrfi+0oo3e4MhBxvQ7znYr7cdFedmj+rF27Y4USBbK2t+M7iJhxg6C
         EKIQCWOsxGvLOIY1urX8aAOEQCdqq0mqYGLnCj6KFUmOBML8/nftx5THwq2utv+lqbiS
         PeLeRNI24xFY5zFec19VrJEUSLqbLyzbMJND7suffct6Ll1SbcwiAJjtBtNdEaWevh/q
         9hOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761763666; x=1762368466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n7UlL3GKzUDEprO6nc/X4PQZdsoNuJnhVXYl9pMuUgU=;
        b=wWntiCIHOhaLKae5mkLgtvw/Fb3Zdcx775yZvJ6ezBSwmYGso9ROUV/d0HVHdanskB
         F6/8uKhnOJ2MB94HAg9ISL1k8/D5BisLORYdya0ml5woKsUyh6lz/n+PCPSTp1HAk51b
         qUILbGaGJJWwvwbUEECnsxWFXPvjNpXwm+i/cxjXpYYWq2R3unoYWe7bBqZLeWrAEXeq
         7/qt5Tpi+9I6IbB20d+OtaR4zmjaL11T13h3kO1ilx87lNYMGcdJBYo2PeMK06iZb4dw
         A56UtPzpM/U6DW01lBmapWfTWPKTnqolizRVMUlaJoEoWn37WlxvkrZc7TAeA+hg4xkY
         aV5A==
X-Forwarded-Encrypted: i=1; AJvYcCXUBheUQSHJdqlEWYBY3/oOoaAnr0WnwBM71KSwRNeKV0loA2XFjabKgHImcdcNaHaYRF915xsjuQQz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+tJnRzVd2m5x1wbqIyr+1EqsMbHfYSD/psnQuzOBD/TQEquwm
	+1xaLo897FCvj/2dy8ZH5NyKT7kcfiK3fXx86yLn1BE9orm8sbINMGB3yzWk/sL/RdMqbrvrylN
	m4jY4
X-Gm-Gg: ASbGncurOM3s5gSQD0fIh08laboZaMaKr62ZxjWDpnkq/KuluwGpyQ8avENHe5gofhC
	a9TzSlLwZzpymZcHlztVmFTqo8n15PNvvHkaasgUc5ycsLhQAt9BfV9cEuAQUJIakTOftCHbHto
	GAgm6H8eYa/b3DUTlAGERkHCkC3Kq2VZj5lLpftEIkD2sT5Y6018vUbVH9LVdyxQTIznRVl4aik
	mYT2QgvrE1aqfz0EVr+r33d3rLTeHnOqVxry+zuZQK+hEwuxPzjdTmKXsu1mxuoVAGZtnlJnrSB
	651SW4MMCM9WRi0Sbi1xylvMvUMeUq9+zI7Ja8GkMeZ7AsnOjus8d24Cjzcm9nlhtZ4YwzTyKh3
	1HerNe8tFSfSLhak+hUnAHFpL4DIwHhkpcVYrLwC4w3tLTLkq8fGDXgb8K5DKBA5qgT+UvmvRy0
	WCRLTyjAY5GFk0IVjL
X-Google-Smtp-Source: AGHT+IGpoPX9hNhKmRBMmW2j12M72FSxxCuC4T9cB82GM76vjMbsT/vObteBlRgx4MZwjCJgYtHIEw==
X-Received: by 2002:a05:6000:26c3:b0:427:45f:ee1a with SMTP id ffacd0b85a97d-429b4c8748cmr573409f8f.25.1761763666459;
        Wed, 29 Oct 2025 11:47:46 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-429952d5773sm29704529f8f.27.2025.10.29.11.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 11:47:45 -0700 (PDT)
Date: Wed, 29 Oct 2025 21:47:41 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: syscon: introduce no-auto-mmio
 property for syscons
Message-ID: <aQJhTbNJkezeipoc@stanley.mountain>
References: <cover.1761753288.git.dan.carpenter@linaro.org>
 <230cf12861a4f0b9effc72522444d3e28c1de2c9.1761753288.git.dan.carpenter@linaro.org>
 <20251029-ambiance-snooper-43dc00dcee68@spud>
 <aQJR36s0cY34cLrr@stanley.mountain>
 <20251029-embroider-plunging-6356f50c7acd@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-embroider-plunging-6356f50c7acd@spud>

On Wed, Oct 29, 2025 at 06:37:26PM +0000, Conor Dooley wrote:
> On Wed, Oct 29, 2025 at 08:41:51PM +0300, Dan Carpenter wrote:
> > On Wed, Oct 29, 2025 at 05:33:48PM +0000, Conor Dooley wrote:
> > > On Wed, Oct 29, 2025 at 08:27:05PM +0300, Dan Carpenter wrote:
> > > > Generally, syscons are created automatically and accessed direclty via
> > > > MMIO however sometimes syscons might only be accessible from the secure
> > > > partition or through SCMI etc.  Introduce the no-auto-mmio property to
> > > > tell the operating system that the syscon needs to be handled manually.
> > > 
> > > "System controller node represents a register region containing a set
> > > of miscellaneous registers."
> > > 
> > > If this isn't actually a register region, but is instead an interface
> > > provided by SCMI or whatever "secure partition" is (optee?), why is the
> > > syscon compatible being used for the device in the first place?
> > 
> > In the case that I'm looking at, it really is a syscon.  So right now
> > we're upstreaming it and it's an MMIO syscon.  Very straight forward.
> > But later, I guess, they want to have a new firmware which will only let
> > you access the same registers through SCMI.
> 
> When the programming model changes, the compatible should too, no?
> 

I wasn't planning on it.  I haven't been asked to upstream the SCMI
module but once my thinking was the transition would work like this.

Step 1: It would work as is with an MMIO syscon.
Step 2: We would upstream the SCMI driver which would provide an
        MMIO syscon as a fallback.  At that stage you would still get an
        MMIO yscon regardless of whether the phandle was parsed before
        or after the driver loaded.
Step 3: We would set the no-auto-mmio property so you have to use the
        driver and update the firmware so only the SCMI interface can
        be used.

regards,
dan carpenter


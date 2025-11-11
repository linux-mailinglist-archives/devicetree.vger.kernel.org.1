Return-Path: <devicetree+bounces-237146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4B3C4D576
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:13:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23C093B3F7E
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34B6350A3C;
	Tue, 11 Nov 2025 11:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZxwgTHmc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1098C350A16
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762859201; cv=none; b=qPUP4lPrYn5xa747RRBf7Tf4gGXiuCUhQfnEjMWe8cnGNcL84hQ1+LiorheoHnGpwruqTaqb8Rp0SVa4CrmhxDLQaKbZtZCJ/UPAmOOV4sbhHq+GASzfJDMnP4mOBwLsO3IpWyMLmtUFGbdqnIUerzBEFSbhz9Fh0wJ1YzYmNRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762859201; c=relaxed/simple;
	bh=wjKmAWI7i3OKj2wAozsu3qUnx7HDyiUxDn1DPfUHvzk=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZbL/Ra7uNDkwiDEjIPDMBqhucgc8q+SUY5KGw9IXmlXfzWuyJ+tHuvYgjvvC6Zj8gWxV/PwGZy3vpVvKIHIizCWqzODCsLB6bjbmFTPu5iO6P0Xcio7kb72RR0hj55RulEDU2rxcxG5j0SDEDXCh3kQqUunlif8vSqMvdM2nECI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZxwgTHmc; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47778b23f64so14542515e9.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 03:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762859198; x=1763463998; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GqeaPnqItnFtRKGsXgxFGwXrKkh4CIZ1QtjFn5LjAOA=;
        b=ZxwgTHmciUuwxls2DCH5W5AN9wmbMX7MGvOWyOX/c/n1+TSf1Cia+uBicCNxPtF4ju
         lEbeZcOdExtSV21ae2RHQUpgEno6go1rm6j5DeYWZF8S1NLMKeN+5FUR8u0pXHX2va15
         658RzEX14yA/ItojnlTIe74hxRJndrBtXzlT5hbQnceekn9vTR0WMLm803Rm+e2c2p/k
         bE0vxJa87pFe81zn2s57NH6RZXfyyt38y4YN9IV9B7iSJszEeDFNDZlWjzrfXU4Sa3Ei
         o6ZjvLbXkBOZKehIJNZ125yFOpgOvWhHJGCKfSriE1ElfsiHclElIlNrG425NAhDDO1P
         RLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762859198; x=1763463998;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GqeaPnqItnFtRKGsXgxFGwXrKkh4CIZ1QtjFn5LjAOA=;
        b=uEZ4w4DLdnFk/6CVqun7XI+/FYWJRE4b7r9yKQ+WPxANy3siT7qOeA9dewXhZo5/2j
         NmkCJCvyW/dY6ALsE2xUaCgLZv1pNSDsuw7rNjaCWh8KlceiWb5WwmKgSgTRcPWn3o4H
         tTxh7rqBbqW7TYaPwrorwwMK51loHixi0bXI1MuGR1f0EIR8qecGzQMx8Dz3MMyu9H54
         YyOv6PUybcicSPHBWCkIrTWNM3zeUSSMLLS1HC8X18lpDs2goDTtFIld+2jeOv0UUHhO
         Uv1xBvvhKRgnHVvjz6/69fZEZwtEN4PnHAHLM9pS32HR6bdR5Ef80gCaEk4+EBXBAlUl
         GHmw==
X-Forwarded-Encrypted: i=1; AJvYcCV8TxS85xqBEUbMxUm1PJnZKcD3Dw/F/KCxKmnBP9NrWOxZlvfyk8pRYKF5nn8ApeOttZVHOmD5xwXn@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4BsW4D/FSZfKqA1Iy/3uW2cKCIMEubg3zxxmI+dyN57Ssk8iL
	AtYBz7QiLk3nKLgf/UVScGAZdREDG/9ttfRnPxnWWcNPz0kabezNB/dr
X-Gm-Gg: ASbGncuv3xn6ivyu8uc7oz0VQS55PS0zN62+aaLOyU1qz03Ap1Mccm6QOuNS+QrXPso
	4JnMDZqmsLN7a06tvOc3DzEqZ2CCrMg442eGBHMMOQ8UVHjfG0UpmI2YzGkRA9gYY/3aZRzs1rW
	RIMsL/pcsFLFxj6XZyW3aaukB5QrSnrV7b0/VpYZ13yZGvyuc2lDFrHkjex18zB7iqZjA3ZAL2l
	VeZ8pM37qMwtFNxiFISNYi7wctLCHHLo4sZ2v6+kTv/TItdfltV5UdZmQs1pu4JkkvJL98PoPTK
	GoUpH+ttfZXBpeR/Qwe8kPwHQr6TCulWvd4sju3wXXpZ9hUDf1y+ersBuO4PLuMU9KrcRroP85B
	c587KcKZhbOASDgMAdTW3FzTOQ/U+5Wh3HuIbweBdqoKAvVL90+CXVyd6As6P+B4wzV0LS3Nqx+
	fUm9zk7qkigj6E3xLgOsI1FJ4WI0hN
X-Google-Smtp-Source: AGHT+IHo0/ZJIgGnENwBn854yp6ABmQngtssmchs4xiNiUy0O6fPJmQpRDhvemlWrdEyLklYh4J5vg==
X-Received: by 2002:a05:600c:6a81:b0:477:429b:3b93 with SMTP id 5b1f17b1804b1-47773263384mr69643045e9.18.1762859198228;
        Tue, 11 Nov 2025 03:06:38 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4776bcfd021sm306780595e9.11.2025.11.11.03.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 03:06:37 -0800 (PST)
Message-ID: <691318bd.050a0220.855f2.f45f@mx.google.com>
X-Google-Original-Message-ID: <aRMYu6AcsZV1rSEw@Ansuel-XPS.>
Date: Tue, 11 Nov 2025 12:06:35 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Sean Wang <sean.wang@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] pinctrl: airoha: add Airoha AN7583 support
References: <20251106235713.1794668-1-ansuelsmth@gmail.com>
 <CACRpkdYOXSm5BaHgij_=L32kq+fkx_ggSJ7G5a=064FDvMR4EQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdYOXSm5BaHgij_=L32kq+fkx_ggSJ7G5a=064FDvMR4EQ@mail.gmail.com>

On Tue, Nov 11, 2025 at 12:46:48AM +0100, Linus Walleij wrote:
> On Fri, Nov 7, 2025 at 12:57 AM Christian Marangi <ansuelsmth@gmail.com> wrote:
> 
> > This small series introduce support for Airoha AN7583 pinctrl
> > support.
> >
> > Most of the changes are generalization and cleanup of the Airoha
> > pinctrl driver. These are needed as all the array in the inner
> > function were hardcoded to EN7581 and didn't reference stuff
> > from the priv groups.
> >
> > Everything is changed to match_data and priv struct so
> > adding AN7583 is just a matter of adding the structs.
> >
> > Also the schema is generalized where needed to address
> > for the small difference between AN7583 and EN7581.
> 
> All looks good and bindings ACK:ed so patches applied!
> 
> Suggestion: since this driver has:
> 
> 1. Exactly one group per pin
> 2. Use some accelerated GPIO operation, .gpio_set_direction
>    in struct pinmux_ops
> 
> Have you considered implementing the new .function_is_gpio()
> callback in struct pinmux_ops to tighten up the GPIO strictness?
> 

Thanks for checking this. No, wasn't aware of the new OP, will check it
and send followup hoping it's not too hard to implement.

-- 
	Ansuel


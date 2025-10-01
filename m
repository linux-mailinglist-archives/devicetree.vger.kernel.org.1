Return-Path: <devicetree+bounces-222900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4DEBAF486
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 08:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25E452A1D6D
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 06:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7011DE8A4;
	Wed,  1 Oct 2025 06:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uo3s4eC9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DC61E51D
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 06:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759301241; cv=none; b=LfzldwXpHo1FNBYvYqRTCO3GmBDUJujEAaVoGlvcyQ3Is+QI670vJh2CRv3NwwgPitrTuye+rGYMhICsMN312qEf6M9QyUYZQVOdg0soUoqg53J9gm2RkcLF+k7mXaKiHn94uTq+Zmw50JOE2AiOipEcmV2U1qRkdxfcHT1lZzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759301241; c=relaxed/simple;
	bh=oq5an/fFkig8qvVoZG7Z4PYEyXusdmyfEix6wDVL5NI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fT6MlRaDFd5WsTVqUcA02c6Ax1bABJm9+k5LANXqWbyt4utx0vgGJq3LSljFucGfawsKSsVYXEasJBzYXXPe4JeKoPjRjKgLN/iupNfL0Rj5+WfpHjYa7H8IUx0MtzNq9iDXsAr0CMLE9EunKbD1MqGGfE2GTnl6KmMTmiz6/Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uo3s4eC9; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-32df5cae0b1so8094530a91.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 23:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759301239; x=1759906039; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rrg8YiOupFAOsk+i3SkSSloZ647XAd/cSDAukzzjg7U=;
        b=Uo3s4eC9Ry6aZhjOS59UdGuQzjgaYDMTXHQMAlr/9pkLoH8TtwryDTQ6Ek5b9LnjnV
         GWghcRdOouo2qyvrFbzP6o1VN5I23bZCNWfQ+kvSHyEqAKwez5B7xEZgX0j4LukuMcpi
         XRNU2oe9YyEVkAIjabi+QsntA3yvU8tmkVddoPGbVEN5fnNn/No5sPYDWhcQyc8mjTgW
         /38ucGa0LbHmZHAawfW6gmzDTAHCco5Xy6iZQfxZuk/r7yxij/TqrRu/ycYfWkBUmNXe
         VsqCrbGkm7KKUT2u4Os84ZpxPcW6iLtCevvzqliFqYyBDe0lGiCSsUzYc0mbtJPPHOEM
         quNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759301239; x=1759906039;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rrg8YiOupFAOsk+i3SkSSloZ647XAd/cSDAukzzjg7U=;
        b=Loy9kGmJ1dgvXdcgU2ip3h7MH5DyWOaq/sHQtvLHrWnGMVQrfmeywkhFNIFVr31z/A
         BAneKhv+KeUy6SVkdewu+0FgEppjDZUbqmbuPfLiKFt221PFPscyhU21GR/Z90LNPBXc
         9zVKnmps8+26cz/TuxTOGahpP7m4vT2v/KvaH/TLs68tORusXEJcUh873kKDpOQCgGxU
         olfQ30hRyFoj1MQBKUTwch1qxNry/5qAA4cm++EW0arrSnoghnyAX4fs9oguaDqFOV9t
         ntS72F2/KnyxOASPAU2KNf3LFzNVQzy4cIpLfXF2uQuRyhkC91ASJjq/w0AG0S+YceOD
         ULew==
X-Gm-Message-State: AOJu0YxAB6Kq4wGmz9u2YqocwsLQIaUTKtjJKcNsjYI8Sk7WzPsRqdGQ
	NytyyVFnHhm9Dt9nnVphzxYdsKCqsYWAElEreQW5eZ0oy5aWmHuoarC3
X-Gm-Gg: ASbGncufbWUegRIsBtQrUAsW27TDfaaxtxw/Gecl06Ji+pC3S4if9a8+gzhtGD/7E6V
	CD8J0dL/wG2AY/FhPLfPCng9h2vKC5fEpwuj24pH1FmqHhNK5F3EiotBROYL1oQYP5ksB9PU9oU
	7IiyaDePyxTDQu7IBAVDC9FVSSaaA0A79NDKjd3X1WzbhmIYBVLk8wlg0XH20it6Rx0HE+s1pqL
	IN75tSHKq0UbIgkAKRk/2x2bnSr27rHGO+o9V2kDvXjeNZLTqn7vhscipVUg0Xw5ERDCxbGGS9H
	z1RdPV0oVLSbKNxTbx8EvCZkrPaRMOBC3qUr9YNcfBxg9J9Up0CK7G7HxZoiIeiG0VR84/fT2oV
	1PYy0dm/dVlbIclmbEMUtFKBF2NlPq9pNz1Dw1HN21T5Nbg==
X-Google-Smtp-Source: AGHT+IHqcjg7cX3i0cLBfYp3CcUQtOuDhdAqQoQ+5y0QHajwwC6YPvB0Ubk+8W/P1F9XaXoOJJ99KA==
X-Received: by 2002:a17:90b:4d06:b0:32d:17ce:49d5 with SMTP id 98e67ed59e1d1-339a6f06af6mr2501078a91.23.1759301239132;
        Tue, 30 Sep 2025 23:47:19 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-339a6ea0d5dsm1501579a91.4.2025.09.30.23.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 23:47:18 -0700 (PDT)
Date: Wed, 1 Oct 2025 14:46:47 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Joshua Milas <josh.milas@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com, 
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com, chao.wei@sophgo.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <ik7co4cfasicx7ent3grhdk4dkvmdgtxc7jcsxwmkmmb46v42u@vwkayyqswv6k>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
 <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
 <ad86009bff38ddae0b291d3edbf958ce6363ece2.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad86009bff38ddae0b291d3edbf958ce6363ece2.camel@gmail.com>

On Tue, Sep 30, 2025 at 07:03:24AM +0200, Alexander Sverdlin wrote:
> Hi Inochi, Joshua,
> 
> On Tue, 2025-09-30 at 07:54 +0800, Inochi Amaoto wrote:
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> > > @@ -0,0 +1,88 @@
> > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> > > +#include "sg2000.dtsi"
> > > +
> > > +/ {
> > > +	model = "Milk-V DuoS";
> > > +	compatible = "milkv,duo-s", "sophgo,sg2000";
> > > +
> > > +	aliases {
> > > +		serial0 = &uart0;
> > > +		mmc0 = &sdhci0;
> > > +	};
> > 
> > It is better for adding gpio and other serial there?
> 
> I believe, gpio is long time discouraged here.
> 
> Link: https://lore.kernel.org/all/CACRpkdYErJH5RUjL+jPC5vnaqGiOqBwHsr0E42wOWrpBGrpS3w@mail.gmail.com/
> 

Good to know, let's drop it.

Regards,
Inochi


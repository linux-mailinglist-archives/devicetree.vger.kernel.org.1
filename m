Return-Path: <devicetree+bounces-139493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5EDA15EEF
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 22:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1D613A7264
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 21:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605D6194A65;
	Sat, 18 Jan 2025 21:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zkeL+S9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805301F95E
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 21:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737236126; cv=none; b=Qn6ULmVwpiIZa/FtE/ffL7tgzKbNs8IDz9qgdgKLspOtH/CihYWc3m9mrOU17PsFe1PSEOrEHtYvl8hXnI+WT38SJIiJ3M/gBvIgfrC32ZdemzmDPdE1uTy1llAUbQFo9rwH3E0DjcJQ3Gowiu3dNSdwPgNzV2v8JOvb8VSSeTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737236126; c=relaxed/simple;
	bh=qQOqPpSi7XIsmrHuVlGOVgHW6wGmVfV38Jt6+pI0tAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VOPqrufzszjxr15uVuHcdmoK5e/96MYFf2ldcq5fiM3i0AkHpsIFUFwya1gUB4fdW0RVXOWFumijgp01zX4bAIV7PUgoK4Jv+RK0Hm3Tt65d3Y3NLlj9KkaCYQ1NaoUIJED96MAicLk+3Cln0PziBUrJel6w3OVwVYzw7hIBsJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zkeL+S9H; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-303548a933aso28427601fa.3
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 13:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737236122; x=1737840922; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4pAHJkXoFZdgHisVUkzvL4I/Edqgv9mE3mnJ+Lw62oI=;
        b=zkeL+S9Hkc8tMWIF/R38kUWJyTVAOmvkAxNpJQdDw/lkYtCJOvwBe8uJ+KkhVF1gxV
         0Qn9W1E1VulapKZgRpDx7At9cXIPkjG8sn/khN7Znyyw+5VvHEogwpiDhEL0hpaog07V
         7/l0BDMbsShZhM4KiQUDiaH8LuzwfrxmZmtgnW0K2b0jwUh+vxo7Zbr15uQ8fyRPtlEa
         KpStYyCBMyfvMQX5up5yJKGfxlglLNta+VpFD4b6OzHO40or7LnBaGgNhKY/Ztg7HVg4
         miHb+fpjwpCnZyH3Gv3xKFLbdJzWl6iOkvYwq192erM7JeCzySy2D0+kab3cY7LRGxIj
         RjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737236122; x=1737840922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4pAHJkXoFZdgHisVUkzvL4I/Edqgv9mE3mnJ+Lw62oI=;
        b=BUuG/QHEZdXM/vOj0VCDExsIJA7y3UuNJeWK71zWME0MQLqPxvgWR2PdAqpkLt6EQ7
         4Ijzw2xHjPL52B4qAEYw5HGYxUmeV5YBcdJvkTapg5+DQFT0GZmf8GZgO094mR3P2zkQ
         c8PEniOnnRfTF4gRAAw5kfgI0n4xRUxFkR7c8aWQt1Aez5i4tpxUu7MF5NDPM0NzCtQo
         85yXKjBYXEGPvAXEzfWGlLqnfAuUjBzrprJLp4U9tzmrpEsctm+6wxj7hPiVN4BoBOZA
         U0dirYX1Xfq1qVFKUiMXnxWodw0kTUaC/Ru9UejR2dX18LR4iJSP4uRttgNviStfrcjh
         w+wg==
X-Forwarded-Encrypted: i=1; AJvYcCWqbFl3cdiRAXLIrYT9JZL5PiT5hO9zeh8c8T5edpDLUDDe31OnGuQx3y49/f6IZa6Jn0k/W41r9R3n@vger.kernel.org
X-Gm-Message-State: AOJu0YyBRUaJe8jzL+8PRmNTOwmaTjzRN/UKRmVIxazt6t4keFEjqogL
	8dmxduR/uGIFSw6ng5gT9d1H2+MZitsv/7LplKS+g900lxaWpTCmsRiSOc5I2Rk=
X-Gm-Gg: ASbGncs7b+C0yph05kLhKHqgRCc5BJHNsXQaE7Uljm1Kn4c12WVHRnNOqTCmiAitF83
	iNf2pR0l1e5fyTRxFEAVJcK2cfPgpbWnYDPOGAVYiWepCtT6e3EChCn7KAo+JADaVxABziG9XwC
	b+DvEiLUb0D2WkhH3uerhjvYYqYuRetLYViRTICE8oi2Kqw1dCAHUXwzH9T2yt27AZOrvtZihLR
	hBZBScx07zXWyC6YxorMrQdHd0kY/F6R1GMX+pCZCP/zWeW7wQqoDDRFP98zQA4EdS3Lk+6dbAn
	+GV0HW7R1jkfa35VxviocOq7xao9C/KOnyJT8BKoNn8ooglFQA==
X-Google-Smtp-Source: AGHT+IEe70NKsSNS6vODeZanfRqTTZhK/r5j+Z3Dmevq5/rL+i3YM7BD6wYBdurTwDfOej9kcBleRw==
X-Received: by 2002:a05:651c:896:b0:300:1d45:871f with SMTP id 38308e7fff4ca-3072ca5bce5mr25037041fa.5.1737236122551;
        Sat, 18 Jan 2025 13:35:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a3308edsm9034701fa.4.2025.01.18.13.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 13:35:21 -0800 (PST)
Date: Sat, 18 Jan 2025 23:35:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sasha Finkelstein <fnkl.kernel@gmail.com>
Cc: Maxime Ripard <mripard@kernel.org>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alyssa Ross <hi@alyssa.is>, Janne Grunau <j@jannau.net>
Subject: Re: [PATCH v4 2/5] drm: adp: Add Apple Display Pipe driver
Message-ID: <r56ycfx6eeampdduxy65v7tczwyfzgh6z64wmvivlxzt6ww2nk@6y7otqj5hoy5>
References: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com>
 <20250114-adpdrm-v4-2-e9b5260a39f1@gmail.com>
 <mu7qiybhj7tu5hauk7izfxqlookc3awpknhjk74zwpkbznei4m@kewap6vivzoa>
 <20250116-vivacious-congenial-nightingale-cb2f6d@houat>
 <2alm7gds4k2lnbk36gjdw6yhzhpls3ce5baycdiv7lsigxsbzn@rhwdgnphwwp6>
 <20250117-neon-unicorn-of-plenty-bbe639@houat>
 <CAMT+MTTrvXsYONQj0V5U+dPJtCBOAQ-Lfg7NONMB6onMvJ+3QA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMT+MTTrvXsYONQj0V5U+dPJtCBOAQ-Lfg7NONMB6onMvJ+3QA@mail.gmail.com>

On Fri, Jan 17, 2025 at 03:17:32PM +0100, Sasha Finkelstein wrote:
> On Fri, 17 Jan 2025 at 11:24, Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > I was thinking about using drmm_ here, as the DRM device is also created
> > > and destroyed each time. But I might be mistaken here.
> >
> > Ah, right, it makes sense then, thanks!
> > Maxime
> 
> Not sure i understand. The drm device is created in probe(), and is
> destroyed by devm.

devm on which device? The bridge's lifecycle is tied to the mipi-dsi
host lifecycle, while the drm device is managed by the display device.

> I do not see a path where it can be created/destroyed without a trip
> via probe/remove,
> and so tying the lifetime of the bridge in question to devm seems correct?

-- 
With best wishes
Dmitry


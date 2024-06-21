Return-Path: <devicetree+bounces-78283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6AF911BE6
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31BDF1F24706
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 06:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B437169ACD;
	Fri, 21 Jun 2024 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MNqjrq2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DADF15AAB8
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 06:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718951793; cv=none; b=iQQdwOCh6gML82jBP7/ZWWeuN73UehdF+apC8H5TsIvkIQAirMYGDSeJs46WE1Tb/Mvxt0Guqx+Ny6D22/0lvexCssPPiTRI5Op4lR80agF9drboDnWxF9r91sYkh20L5vlgPR5UZtfVkjaUUH/qFCaJCfIQ+QsrnSIw8xThrUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718951793; c=relaxed/simple;
	bh=CVS282gt2BZWPwQPDlqAhA+HA7+K+GqzDLs7+w8xVd8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a2siDhQw6IQKVV8RtuvYqF173mUiyXsCMGuz6O+91tsbZEnq+PXcSKohJJp1pNOtSr67R0WGboa4ITthUJIE1nQP3OpS2PkbLSJ1s+jmDrYSIesArWhG3gavqxXAefxz2jJ9XAaz2/XhIz+LNs3h+Sp5cXzNsP+Nw2p/N/NYn6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MNqjrq2V; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e72224c395so17618631fa.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 23:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718951790; x=1719556590; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t84QCKmcGG6leq57fUocwApo4rYAfiNNtCvL1L6ActE=;
        b=MNqjrq2VqXKu27a79zcGloNaX0z5sanz3mjweXyhb3vMyJUIKUepracAmlSFfNXVcb
         YCbFeqCs4EvgQImLQPRzUJjSPjHTwHdR+pbvQxspWMd1g0EmGfkvp/bi4tVk50RlCg+v
         2KxVWT39rXj4vgV+TEVzq5qYAE7jUTevJjHlZIz93CVcEst29W253RQNyStleXFbsHDP
         0LmlgT1gfMHLmEilRP6m2lHuCLE8DEK6uD2pb9I6SJffGIfDdY8wWn4ifSWhWKJ8PCVO
         suJ6Yb5QKxYUwG3DIfvI5RItmwqYfSibhjGIclfuozyuj80PqprCHG5wy8bJhrQ5pQkH
         BLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718951790; x=1719556590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t84QCKmcGG6leq57fUocwApo4rYAfiNNtCvL1L6ActE=;
        b=XEqErV/CzNXeM2BS8/KfKERHlnmN3n/M2zdBRZNgSYDmauOulwKCZzOfA92rRSWLiI
         Zn9JVItfvepxfVoVEwL6UflcFawdJEfpktiL+WLwl8GJUr00EKid735vpzCmssE11N0K
         y+LOFvbCTonOQcQtvw8B9zo12RhAcBL/Ut6dAtXUXYl3A6AdN+/xitePcyoHDcm80mpd
         2CYEDEI/zzhjEoGdmGcKtXRrhytH51cuGtCCUGXyrKB9Q8c06lH4HHMv+oQwmFHJ/fGx
         IKfwDsGQAHKnxja024L60oNRE1s/lKl9gAJYoAt8rauwgohRJnzIdJtY1T5UMANvZXa4
         8WyA==
X-Forwarded-Encrypted: i=1; AJvYcCVGZJUVIkJFGFgsd4LTdbM6I7Y0dqI2qcDpM/eGxl1Hhc9f7wexYSqdnw0Qt2QaOoZCD2Cnwe93KBo0okVADx+yrSGSkbl7S/tZag==
X-Gm-Message-State: AOJu0YwE6n0TvnZrunMShF78psbg1/5SJA9Nt56selNG/hsxHzFMyQNg
	cQfOPh+mID0lZfSLo97mtEE+ujJLG0s2hXv5woDFln3JCPkmvMCBmL5Bv2sbFsc=
X-Google-Smtp-Source: AGHT+IHNQA4rAEB1gsQiFKB1DRLQUV1eNXrZZZgNrFk1UE4XSqGk74c+o2JCR/eCFrAouqmLHi/0MA==
X-Received: by 2002:a2e:a0d6:0:b0:2ec:28ae:288 with SMTP id 38308e7fff4ca-2ec3cfea4f5mr49183721fa.39.1718951790215;
        Thu, 20 Jun 2024 23:36:30 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42481747c76sm15065785e9.0.2024.06.20.23.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 23:36:29 -0700 (PDT)
Date: Fri, 21 Jun 2024 09:36:28 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: p.zabel@pengutronix.de, abelvesa@kernel.org, peng.fan@nxp.com,
	mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	marex@denx.de, linux-clk@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, shengjiu.wang@gmail.com,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Re: [PATCH v8 0/5] clk: imx: clk-audiomix: Improvement for audiomix
Message-ID: <ZnUfbEBDaKqIJU0r@linaro.org>
References: <1718350923-21392-1-git-send-email-shengjiu.wang@nxp.com>
 <171895121238.3616871.12573343188535489268.b4-ty@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171895121238.3616871.12573343188535489268.b4-ty@linaro.org>

On 24-06-21 09:26:52, Abel Vesa wrote:
> 
> On Fri, 14 Jun 2024 15:41:58 +0800, Shengjiu Wang wrote:
> > Some improvement for audiomix driver:
> > Add CLK_SET_RATE_PARENT flags for clocks
> > Correct parent clock for earc_phy and audpll clocks.
> > Add reset controller for EARC function, use the auxiliary device
> > framework:
> > https://lore.kernel.org/lkml/b86c83a520f0c45a60249468fa92b1de.sboyd@kernel.org/
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/5] dt-bindings: clock: imx8mp: Add #reset-cells property
>       commit: d7d9ef1f40dc0639ba0901097139fcdc4bedb32e
> [2/5] clk: imx: clk-audiomix: Add reset controller
>       commit: 6f0e817175c5b2e453f7ad6a4e9a8a7fd904ee4a
> [3/5] reset: imx8mp-audiomix: Add AudioMix Block Control reset driver
>       commit: b7604e8b805a6e52161ff98728122005e6975a46

Dropped the this one. Needs to go through different tree.

> [4/5] clk: imx: clk-audiomix: Add CLK_SET_RATE_PARENT flags for clocks
>       commit: 163e678c0b24d0e45f617f4496c4ae9b1afd8d63
> [5/5] clk: imx: clk-audiomix: Correct parent clock for earc_phy and audpll
>       commit: 22fb849ead1b109f868e83b309223d906e4b7d96
> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 


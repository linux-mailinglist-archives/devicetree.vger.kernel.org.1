Return-Path: <devicetree+bounces-192726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8114AF7AC3
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 17:17:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 820C6165778
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 15:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 164882F199E;
	Thu,  3 Jul 2025 15:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FAsAGwib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DEB2EE97A
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 15:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751555503; cv=none; b=aBNMLI619Mju8TbYI3AwG6IP7qiDtwK3f2ZXe2ivHDbEartPBqKwpChEL6OncLg1VFoyBWFk1ibYZ6KbtVAhg5uGakbCJEBGfpA8StL/lnr7SBymXCqQQUimqNbfKLW1cHApnzq5Fw1+yS24mBrPCMbDL6aCErU7fEgxhz5u/HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751555503; c=relaxed/simple;
	bh=RbxVGJNbXM6OAp0vOrGJKnDsx6+rYr6yWLn2VhGH7Ho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GmR3mUFtIHejbaZeXgvIvqPy02dgTQdSABjVMKugF9tzIPfCWAcKb+0MQqtIQOgReZBdzl8qts5ui7hZDFT+cHbYF/BjrBNOJpmrT6U8H5bnVb3h7eWmU1GW7OLQVaHTnkqyfmUgCk/zA7/5dey1UJkG0Cay0SUUBh4cfWjFa84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FAsAGwib; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so11990598a12.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 08:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751555499; x=1752160299; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FxkvsrSL+5JDtGQsAevbH9zmJ4Ly3BiCGEDd5Aq9Bn8=;
        b=FAsAGwibJLZY4/pQfaLQPndB2E4CSKCBnRWArGBsgBJMdnBOgk1alHsZKQwPHykWDC
         zogWqrZ811ugLKo0VHjcgGDunzlhr/Smwjzhn5t03E7rSLCzzv6ogG2/BCw3Fjfz97hW
         zWpQs621C5BqvpqImQaYEZBug7w7gcHMNYUSrtMP5Yd3r1igW1nhdHs+pfmC/4z2n6KS
         JKkiYK6Jl7gXWmHeXW3DLd83tBTWs8TMeTRajldhu8fwzeeioR97wXk4D+cpEDNvcpYw
         MaObdp1leTci4jh7X5hFxcFch/WkObjMQ6IGAdg+yiMv3WDPyp3XHqBJZSEvKZ0jtANZ
         zg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751555499; x=1752160299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FxkvsrSL+5JDtGQsAevbH9zmJ4Ly3BiCGEDd5Aq9Bn8=;
        b=Mz1CbU8BnwvblBB4ojSi5tzg8VXr7EAYjSvxcUev12VGWACsZdnyaC6CWnjW+1dClk
         eHsLiqt3JKIaNE5oVf7wmb5Pz2Z7icrzPaxNcV+zsfgi9RvLZ1CXpGqdVhH1mo4MX244
         gpHlYQlU0AtBtCowbVAbCWv91Z0y0L9Sl7786STCwhFUeoe3reD23U+38hFl6sd2x77K
         P/RZ0JNo40YwVa523XUB0CfQ11vaSfgl80E/kcFcMHD8hWXIao3HAZ2vpsNjtDmuz3wk
         g2036iLAovCEJZbeXWbx654UBaqEefhF+OlBSVR/BREJuJg+U9skcI0Khe3xASmr0lbB
         NTTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqEAKkn29D2gOZ8qQY7O1loDKLYs+6+RTvjgduzvZQF9T7f0034lvixxLpo3unOFtXTiQ27QosPwVg@vger.kernel.org
X-Gm-Message-State: AOJu0YyBdP9bgCNWfn87LMaHoDgAtzRctBx74ULhiaW3F+hCp++upt8K
	0pUH0u1yiJRqu5n0/oaex3QC8TzFo+yerJvmy82bqlI1bi6/C4KubQXWXWGP5s9+hf0=
X-Gm-Gg: ASbGncvEOJHNE6w6Ibq09IjFSZagrUQ8OMS08tbt0O+qSu4bWPGwohSBYx2bwi7dsCe
	SwYmBGejGMSwqEk4CqxeSUE0sAQnfpN2nbsxIp/P0Izkytm3G6k2tGakBzcjKE4ZameXfYau2tv
	7OeDhvWKTCHnikwHY55xbkubYRdDaoX/ADv/jpIOB+zTP757MTVS2/AnvBBXohHEIcKdy8Z92Iq
	107orChRIcoWhkgKhIsj4z84jr1CpifOAuv79ubXH7hPbluq8lbfhSC+6kS2bTh0r5V5dPCxHY+
	LWdxkR5aqo6hqQ/Z4bY39fMXrftonWNLwtFiE00JOxKK7S9D3R9dj28ehTQ=
X-Google-Smtp-Source: AGHT+IHdpH0Sd2LIExCI7zlJsSgp4lqg2r2dh7poJIycXB81JioP7FOT54h9vFTuZ+M/bEMSFmF3pw==
X-Received: by 2002:a17:907:72c4:b0:adb:2ef9:db38 with SMTP id a640c23a62f3a-ae3d84f7aa3mr410481766b.36.1751555499231;
        Thu, 03 Jul 2025 08:11:39 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c831b3e29sm11077956a12.42.2025.07.03.08.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 08:11:38 -0700 (PDT)
Date: Thu, 3 Jul 2025 18:11:36 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>,
	Frank Li <frank.li@nxp.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Subject: Re: [PATCH v2 2/5] clk: imx95-blk-ctl: Fix synchronous abort
Message-ID: <aGadqB5pP6DjNuRH@linaro.org>
References: <20250703-imx95-blk-ctl-7-1-v2-0-b378ad796330@nxp.com>
 <20250703-imx95-blk-ctl-7-1-v2-2-b378ad796330@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703-imx95-blk-ctl-7-1-v2-2-b378ad796330@nxp.com>

On 25-07-03 11:40:21, Peng Fan wrote:
> From: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> 
> When enabling runtime PM for clock suppliers that also belong to a power
> domain, the following crash is thrown:
> 
> ---
> Internal error: synchronous external abort: 0000000096000010 [#1] PREEMPT SMP
> Workqueue: events_unbound deferred_probe_work_func
> pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : clk_mux_get_parent+0x60/0x90
> lr : clk_core_reparent_orphans_nolock+0x58/0xd8
> Call trace:
>  clk_mux_get_parent+0x60/0x90
>  clk_core_reparent_orphans_nolock+0x58/0xd8
>  of_clk_add_hw_provider.part.0+0x90/0x100
>  of_clk_add_hw_provider+0x1c/0x38
>  imx95_bc_probe+0x2e0/0x3f0
>  platform_probe+0x70/0xd8
> 
> Enabling runtime PM without explicitly resuming the device caused
> the power domain cut off after clk_register() is called. As a result,
> a crash happens when the clock hardware provider is added and attempts
> to access the BLK_CTL register
> 
> Fix this by using devm_pm_runtime_enable() instead of pm_runtime_enable()
> and getting rid of the pm_runtime_disable() in the cleanup path.
> 
> Fixes: 5224b189462f ("clk: imx: add i.MX95 BLK CTL clk driver")
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>


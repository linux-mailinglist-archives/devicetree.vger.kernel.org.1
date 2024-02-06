Return-Path: <devicetree+bounces-38916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B96084AE93
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D3F61C22DB8
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBE1128807;
	Tue,  6 Feb 2024 07:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XbghAlBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6DC128802
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 07:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707203032; cv=none; b=eztHSDC2a1vEyMpcmW75rZ9/4AlLFxnSRapM8xlR6Uy8eEotgU7spzrsMjhWZuZkOEtccTkROoLAe5ele/m2MjX3gbPvdGzkwpdkxMN9absKm1B9r+G+a8PH58kfeL/xPLQJMtrg8u9xDq/41EkqPVoLIzMIN0UOg2lJgi2Sdhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707203032; c=relaxed/simple;
	bh=4dr+StkvSBR0t+D/6NoA7qsAWnjOTvWQDsHMcOuahgk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=itQWPVZgwwiv8BIIA4hz1E6DLTrV70isrpGnwV1ze2uU9CQvXE2KmPOaiT9VUYIo6ARJy5Q4l+tFlOjpZC501UpU+qBBBvgaaUVCEXvDzUA7qQnSNmlF/c7Bo6kpxskD09PX6/8bUMtarK3DiXwk5NVEbIrpnjx41hblmikyYko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XbghAlBW; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5dbcfa0eb5dso569326a12.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 23:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707203030; x=1707807830; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ntf4diCkXjlxXCzGb4I0nLh28i5PRQS5BHKq4RdjOpU=;
        b=XbghAlBWWnGv7SZW/Kopc67FI51PklMs6bsa1cCitxOHvKDDUd4KYGVoVzHmndyEEM
         ErcO9crgoHKYSxD67zD+Xtcc4/QfwjE78wN2/k9UXczhxvBlEmckvZ+OQr2YLJcEJCWc
         u2LcN9CmDwvlmxou7SmXp5u6ZswAPuuiU3SsFL3DPnHSlhpbC4Qra5fZQ0fAOFlS2iDA
         y+DLCwdBoKA9jyi5gicvwi13G3OYj8ckdnulutCEiBJ3GMcjK9JXX3tUD/z2BU/hrKoK
         2YNI4L/scwVKBeptSpzvxAbj+N+zbIi/ABbY36nXDUSeY3WGYIdaehOQ0OXlDga+Z8x/
         3q3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707203030; x=1707807830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntf4diCkXjlxXCzGb4I0nLh28i5PRQS5BHKq4RdjOpU=;
        b=HwVinnqp/Q073+tr7doA1U4Hg/6i0Y3y2WvFTcCpF9MaMrdLyS3PRp4Lxsw/j/QiO9
         wIyQ8Z5B4HTXaE9APkpZW+fCBieR4F2N6b8GhBNTGq4h1p9ibMuFLDx5yj5Dt0UcDLVo
         UF7xwfWplpwHXSxjxRp9SlLwWIK/Tbg/h1AFhAKF1QOf4O73X/lSv4zzZCXarACKrxoc
         MTcIKoSM9CCqRUXDclcaa4NKO//rnp+vWsp/XOvnkbpldbAlyY9rjTg7UTYrjBHNJ2Yi
         jqcmAmMSiuuCG+uXN/qLDSjXEWAqAu/bAiWm1j12Va0jSEua/aMZ7LWgvnL8LrjVfgE3
         jmfQ==
X-Gm-Message-State: AOJu0YzOERtW5ooKWkxug4GtvXrmktzcpnvxF9O0A64Vk4n40s7HTMF/
	h3AP6eQbP9O+XaPEuB8v3J/LPpUCl2kdyOAz0j2d1+GIZvHF1T/m
X-Google-Smtp-Source: AGHT+IGbi/zlALTPqTb+9HnLFOYytAiWqXqOnA20Axe5hiNB4Dx2REW4YsndH3G8xJQ7uuumoVd6aA==
X-Received: by 2002:a05:6a20:9c8e:b0:19e:9ade:463 with SMTP id mj14-20020a056a209c8e00b0019e9ade0463mr280531pzb.24.1707203030258;
        Mon, 05 Feb 2024 23:03:50 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU+miE+OHEUb1eDYa0ITG9GkJdB4sIKpZyFrLRzMd1mkdxkOxyY3gWWnxX81jpSB68OKbGG0GdLrnUYT+/wED0fs1sAmBj+t3RiOJP22moJUNPAiYnOZU35G2H7abvTevK2xJFBLpxDyWEKeBbAmolri8uHoVSPGcqCZpeLN1zvctRjE2cci2ipdpSdvmS4LyURVUBzMsH2Tsz8iTv1Ysc1j/ViWU8Fl8eT4SlTOJG83NjVWITVTEXLUjGzPfHJBb/6h9RkGwnoFGPegWRappaLV/3tFWkZ0Pxf8Rp+QKOJzZ/+t0RAl2uCIQVPSgoNpy1Ebo+q8gF8EZg3qj3ydBfbAA==
Received: from dragon (144.34.186.27.16clouds.com. [144.34.186.27])
        by smtp.gmail.com with ESMTPSA id o1-20020a056a001b4100b006ddc7ed6edfsm1077755pfv.51.2024.02.05.23.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 23:03:49 -0800 (PST)
Date: Tue, 6 Feb 2024 15:03:38 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Enable PCIe to Data Modul i.MX8M
 Plus eDM SBC
Message-ID: <ZcHZyih/a1xZAXEy@dragon>
References: <20240122144501.169941-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122144501.169941-1-marex@denx.de>

On Mon, Jan 22, 2024 at 03:44:44PM +0100, Marek Vasut wrote:
> Enable PCIe support on Data Modul i.MX8M Plus eDM SBC.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


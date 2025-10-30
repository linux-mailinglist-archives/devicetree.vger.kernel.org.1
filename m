Return-Path: <devicetree+bounces-232998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E7DC1E1B4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 03:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6877E18839C5
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 02:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CA922172E;
	Thu, 30 Oct 2025 02:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bovUsrHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675F0153BD9
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761790593; cv=none; b=DAsPJXP6qmufawBgYUfQrnUeSQ4CdrUJ52G/lX82YGsZqjfXDFumKUyyfgT6bbPsMPL7i7NR/X7Zn4XqFSwDq3l2Aih9OLuoGFO77oS0k2H+g471BLYlO9rQUBa9DhD7yFH3rRjkNy6Nv0LvCRzmWFHIV1utSWhDpzW8j9AjtKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761790593; c=relaxed/simple;
	bh=B3CAAoANZ8AdYUQ/vBMppNZHRyDpgu6a7ycm90jmpdM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IkGTvmMG6c7W6AqkoLPCrnqBLKd//1e1iy8QC++VMLn9wHh5hKlQ38E3rvJnM8Br0UmbVQg28z//AH4/diJWZSuHR8e+ZBVfVACGdGKk56510cp9S/oTUhCdJtRXY4sgTFFlodPpgJLEAxwAwmFI4rg2Vfv3rwfIREQ+0nOl1Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bovUsrHC; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-33d463e79ddso653860a91.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 19:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761790592; x=1762395392; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=skyS+Cuyodx+9RItDMBTIU91z9/i7AQUnbc/OyIR+As=;
        b=bovUsrHCfGt7YGFaza8N393yO9/cWakiXQ1Q9kZ5EEo45hMl9HTWy3XRcoPlMxfL/M
         k1xDxNJAC5fZbRBAqn5VHnYlmaywN3lFR2xjyPpLDFbJOUYp4ZbEYkpZOY0J+ABlOb4o
         3aaFAWJq4e++8ayUmIZKmss8QWTdjAS/1Izxag2BJQ9fe1EoD/YZ6BKpt3PFg9qIhC+/
         syMadwLvJvgba5qk2pS1usH4JpKq2MK954XP1aVdkbmTeTNF3JPkdlRnoxHmw1WAvsZs
         zRYoc1cAAAtq+arqFC/k7p0lfbaMSVZ6lnm18UVhJKgyRnm12jfVCPD51rp4YrIQOutf
         tfjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761790592; x=1762395392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=skyS+Cuyodx+9RItDMBTIU91z9/i7AQUnbc/OyIR+As=;
        b=D6PjWIqliWtUMxxkG6wF3F0y3Yg+29OzcmMAbuu35MrhAAyNiQTU9c5bd5h3I05IZj
         CH6J6Pn46OlJCuzA2H/zO167/Rf910YWs2Y5H1bXCRXUGEVVWwtqFu73yECjkCfpQBnw
         rLI6vJkfywcRYKhYB9hVWvhH0Zh00eBauF/GqG1VbJRmdYKEfYHUXHGDnywYh3VlK8hH
         q/m/3IreDTqrVVpn1B0DtmnPdUltxO49+Wm+pVeX0EMcrxm8y4rUHhCxbCe4/r1mS875
         wQRt8gFMoLxDT6hvQo6VGaZ+UUXvlR7k9EjXcV2e5X94yP2xGcmIUbNBaJqjCd0U+1EG
         7oPg==
X-Forwarded-Encrypted: i=1; AJvYcCVI5zjFnQ//KeMoEQE6vPkjeyQeN/8X42WCGHfnkqIOgc3j/vfnhQiBqn8WPJHy7ExjgCsn9jykUp4f@vger.kernel.org
X-Gm-Message-State: AOJu0YwAgtWI8pWDC3Fv3MZss7y/yM8GLVl+oyCLoddrovN6ag/87w1d
	/ahu+4hrhcMtBQpXOeIapNVa4fhiXOBZuV1C8OoI+gNn3wt7ZW05E4ms
X-Gm-Gg: ASbGncsaAWkuyI9JeUtdW8AW4zy5QO9O6mZQLZ3w8mPK3DXgC7uH+1RBU+hfEB5cDuy
	QTx44q2ZIkJModMXmmPx4ZrX9FhNc6E2rKKrQK9BPNOKWgfqByf2WGOC5eobTvOwenwhmHikrjf
	Lz+/Y1Blh1suD/2MK+Bl5JJaMjxc0CMfzETeZQLTrMh2YFkscViCrgTq3OA/jglc7Xe9nAVoTyb
	7Eiz17a+7DGXsdA2ChcI05T5263T+QjdaQMw2ODER1KL8+qfsOTZajAd3wBqu39wf1Wq4Je7VLS
	Or9I4vN+yMhCryukAMuF01RTVMytFmruPB+QRgrJfMZR3Cok2MznW7U5NFjx71ni9DPd5lute6r
	DN2D3K9131xkkZkfi/NKQr7JxeYOW/t5qFGumFFqa9PAwIsH4dQIk+TaDD/GMUB3oEBFpaRsIuY
	A=
X-Google-Smtp-Source: AGHT+IFhl6dhnMtg2Ql5+VRs8APrxjowbgOu4JakifHuDRZCkhJocdr+tQp+x3ll8cCXsnDbLGKBuw==
X-Received: by 2002:a17:90b:2d8c:b0:339:ec9c:b26d with SMTP id 98e67ed59e1d1-3403a25bb3emr6580820a91.8.1761790591601;
        Wed, 29 Oct 2025 19:16:31 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34050ba1472sm580887a91.17.2025.10.29.19.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 19:16:31 -0700 (PDT)
Date: Thu, 30 Oct 2025 10:16:22 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Yixun Lan <dlan@gentoo.org>, Inochi Amaoto <inochiama@gmail.com>
Cc: Han Gao <rabenda.cn@gmail.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Vivian Wang <wangruikang@iscas.ac.cn>, Yao Zi <ziyao@disroot.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/3] net: stmmac: dwmac-sophgo: Add phy interface
 filter
Message-ID: <kvkmvw2a7n3zils6rx3casv7slgzvli5cwlukmixly2loju2aw@vsuigze4wgwu>
References: <20251028003858.267040-1-inochiama@gmail.com>
 <20251028003858.267040-4-inochiama@gmail.com>
 <20251030004948-GYB1549833@gentoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251030004948-GYB1549833@gentoo.org>

On Thu, Oct 30, 2025 at 08:49:48AM +0800, Yixun Lan wrote:
> Hi Inochi,
> 
> On 08:38 Tue 28 Oct     , Inochi Amaoto wrote:
> > As the SG2042 has an internal rx delay, the delay should be removed
> > when initializing the mac, otherwise the phy will be misconfigurated.
> > 
> > Fixes: 543009e2d4cd ("net: stmmac: dwmac-sophgo: Add support for Sophgo SG2042 SoC")
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > Tested-by: Han Gao <rabenda.cn@gmail.com>
> > ---
> ...
> > +static struct sophgo_dwmac_data sg2042_dwmac_data = {
> > +	.has_internal_rx_delay = true,
> > +};
> > +
> you forget to address in this version? see
> https://lore.kernel.org/all/ljyivijlhvrendlslvpo4b7rycclt5pheipegx3fwz3fksn4cn@fgpzyhr2j4gi/
> 

Yeah, that's right, it seems like I have forgot too much things.....

Regards,
Inochi


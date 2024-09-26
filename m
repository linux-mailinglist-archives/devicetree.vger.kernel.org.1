Return-Path: <devicetree+bounces-105715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8D098792B
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 20:38:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45E311F228AA
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 18:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40B6171088;
	Thu, 26 Sep 2024 18:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="d6IMymuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4B3166F14
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 18:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727375899; cv=none; b=BpyoTYslR+wu95kOqG/+M9Pzn5ZzJ4HUOx2wvJb35BrPfJ3A6CU2LPSg2CmAiVeZYsWEFdWuBOPvtRNiVenbdN1ryyxkrSTYTB8vmmfKKuBN/QyoJeGqjfQGvcUAfvNBUZyDY6En81H7lL8/IXyfbfNHgAz5XXfFNRDmbkUpZY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727375899; c=relaxed/simple;
	bh=Pswf06lphLMF/i5bWhc6m+ZMJsBUaCR3EjeR1OCkADo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f1++kv9o2Mi6NhfO01SbgKpuFmskx1g0EEBPcl31rVJ3JITwULhIoAW0sX6jb7MAxjb15xpshYI8OXkRtGywLwv43U5ti2zgqAtEglWVqvzeyd5aZiYquVvGFHt5FXcsBXuyioWeB/jOhufMhIYDwlHsD4smtyAFuGvO25jTh9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=d6IMymuy; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20792913262so13901285ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 11:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727375898; x=1727980698; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5wX3yfYV/mjWNT23soPJLCRyd+y00sgy5yMqJgQHE9o=;
        b=d6IMymuySv/pYQy+2SZwsNyoX9x8xKK0PiRSgHTvj2CB5YkSJaPHFCUAM2OiFZ0M6L
         lsnKyTAOIVnufCUUZFnpG5HK9cGLruhB1ntQ4m+3I8dlZ7eKihTxFTufp9LWnQa9i4e4
         dOtTQzXkl3oNAypgexDHjYUtJgfWvy2ognojiMt6j6zXdIzQEPv+pRJMk4fgV1LMtavx
         41d6wrKLfZ0kWPSx6OYPHc6US/Bg5tU45Q0vTyGti1+jR17AN35gPfATDZu5wZRdrCBH
         ajExs6AS87pk5MuSmuSTi8CiAoaKg5Lrb2cI+ilVsU2L7EEcG0aEDYa8N0962IaPNC3w
         X8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727375898; x=1727980698;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5wX3yfYV/mjWNT23soPJLCRyd+y00sgy5yMqJgQHE9o=;
        b=uq410FDM/k1KLJYqKxvqUbECHsky/fUig7h+VZVYJHHzpbrZDGDbSuWVq2gXzFPfMg
         xXMg/Sjx473gIqi3B7Mrusn3rzPuf059GwgfNBT946dMW+IWVOQK5Y46X13332eFdzUu
         mO85WWCFwCxPk/3drPRPI6Rl60AsZvdq9RWDWAYR79FLmbPLaUoywsBItdySXPBK0BOk
         VM1TJd4NPalahVQ9b/ktrecVdl698OyBsX0MzCUBEBb/nYKdwJMtju33YCRPfMlVQf0g
         ciU0goDq3VRHnpJ+vX85UKTj4K1+xPPcN0fTNpDKzXmQswYSeY8jsqu6wfidiMa+mQ5t
         bKvw==
X-Forwarded-Encrypted: i=1; AJvYcCV+ycimgVKHVRjARuNhj0I8N0i551Seg6Gb6/wLEHKKqfoz+2Lk5Gi21/vNOqKVTKcPHQNmmUr91B24@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf3ZOaLy/mCppNd7DcFWhE4E75mUpGmvyNUEl7zgD0AXB9mC/D
	WON4kijoNnuQWzj0FdJFGbtmFFQr87/WTRnoQ22dVZik6cTT6DWhX7GYa5U/eeE=
X-Google-Smtp-Source: AGHT+IEKfxNMgvf/9cfNHDk1L1k3ZzFqoQULZZZyf4LyzYdJuned7eyrWwn9WXqk+pz1avbSzydFmg==
X-Received: by 2002:a17:903:24a:b0:205:8407:6321 with SMTP id d9443c01a7336-20b36cdcc32mr8316565ad.9.1727375897777;
        Thu, 26 Sep 2024 11:38:17 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b37da2195sm1594075ad.104.2024.09.26.11.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 11:38:17 -0700 (PDT)
Date: Thu, 26 Sep 2024 11:38:15 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add the dwmac driver support for T-HEAD TH1520 SoC
Message-ID: <ZvWqF9DU+6i9O1VB@x1>
References: <20240926-th1520-dwmac-v2-0-f34f28ad1dc9@tenstorrent.com>
 <5e379911-e3de-478c-b785-61dbcc9627b1@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5e379911-e3de-478c-b785-61dbcc9627b1@lunn.ch>

On Thu, Sep 26, 2024 at 08:23:12PM +0200, Andrew Lunn wrote:
> > Regarding rx and tx internal delays, that same section in the manual
> > doesn't specify what unit is represented by the delay_ctrl bit field in
> > GMAC_RXCLK_DELAY_CTRL and GMAC_TXCLK_DELAY_CTRL. It is only 5 bits and
> > a max value of 31 seems too small to represent picoseconds. The vendor
> > kernel [2] uses properties named "rx-clk-delay" and "tx-clk-delay" but
> > doesn't indicate any units. I see ti,dp83867.yaml adds vendor specific
> > rx and tx delay properties so that is what I've now done in this series.
> > Note: the hardware default value of 0 for delay_ctrl works okay for the
> > TH1520 hardware that I have.
> 
> I assume you are talking about RGMII delays here?
> 
> Do you have a board which needs to set these delays? In general, linux
> has the PHY provide the 2ns delay. You only need the MAC to add the
> delays if a PHY is being used which cannot add the needed
> delays. Occasionally you need to fine tune the delay, and the MAC
> delays can then be interesting. But since you have no idea what the
> units are, i would prefer to simply hard code it to 0, unless is it
> really needed.
> 
> 	Andrew

Yes, this is for the RGMII delays. None of the TH1520 boards that I have
seem to need this. The hardware reset value is 0 which seems to work
okay.

I'll remove these custom properties in the next revision.

Thanks,
Drew


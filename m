Return-Path: <devicetree+bounces-174713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E365CAAE2B0
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 16:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEDB5527FE1
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 14:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4F528B504;
	Wed,  7 May 2025 14:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="RW72+a1q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D979C28B4EF
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 14:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746627121; cv=none; b=jc58/wPNbtEKUcMoyw64uAGvDOQei+D1OtgSB7fKCBfvN+Zhvq9GSmsUiTvMF88Boh28QIkBOPfyKVBiaTFhLbXb3Nasq6tHItqITN8w86kUD8DP+UCU1EVqha4/5HtcjOLZ8fw5Q3pz4IAf34sN33hencsGz4PGiwZ0SqPaB54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746627121; c=relaxed/simple;
	bh=WyCz/ArAVmQO+g1cZbQC9HYihMwNLT5tXWBdJxpyI3o=;
	h=From:Date:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FcH2+lizE5Hz2STn/vAKgWnJpxSNd0iU34pIJL4Y30A14hEa0H5e74YMxWVeir2BJw0YE3NLqa5QL0nhWjiA+0KmMiHk7/rFIqXHlo9VdDwmC3ooSu3NnVSC7i3zQTQ/AJxXYeUQ+dkgz+oRK/JmD3E1am5/XTu+ObTdTs7zwvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=RW72+a1q; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5f4d0da2d2cso13418584a12.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 07:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1746627117; x=1747231917; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xp53MoIMHo7AsEpO8Qe4lYIdt8fxx6H0xofmt5rFOgc=;
        b=RW72+a1qzFrEk8+0g5TjeMhM3Seef2Ya9K9OUP1ZZ0+9GQUAM6+XEp3Lry/LNcW1la
         tL2hdZ5FcbCJlJ6OIdHxsXbVs3RcJI5IKfLczh+qAEOfivvlCl5iFIAJTU0t6vxp8Oz6
         /ywZV3oxlC/LPAQP3cSkJkdrEy/qIeW/ESNhnfNnxv71sHdR3cNZ5cIFwLZ9bXuBMGLZ
         5LwjGDLUIbwQSrnfprunfLqdRiDCWUil/m74yw+WGTHD0GUa4Ht0qIsPB/NUL9BFMIH+
         cFIW/+KXbYJoK4LU98SrKGAsJsuMI70r3ps2K7y4LHIwyqTXX0OWEQiB1v6WRgEHo6c1
         mdbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746627117; x=1747231917;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xp53MoIMHo7AsEpO8Qe4lYIdt8fxx6H0xofmt5rFOgc=;
        b=BcndtGNkkFOd++ciL+r/tx0qIW48xxiMAY5NjiRk9bHUmgw67xfsAaUBzmDm9St7aD
         Z9Hb/bL9id+DiJQMAFwy2XIRsgGi4ClGRyY7Aj09jhykrpt5oUHZpvOSkqBE3W8hiSB+
         iCZBL7VTgocfWKqdCjVmvhBs4JU5Tf6oxqOBkDA1dxi2NJnNh7fxitL567+lcmkVl8KX
         m96esaUbeuu6SEXpnMx0dW3BvYwHGRItDfvc/Ry+OFrrJTXgvzkK9Madw6doC01zpFdG
         Qilg7Z9Luw4u5ubA/+Sr4SSSjQorLdTxgxRGEezLJsUDInob6USTd99GboNaOzaAWIZZ
         RO6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUYZEFzEpertFLKLnjW/wSrogQ/DRovCyNUxlRk77lc3kgOWFP6IISiNQIcZLOHsiv+r86xx+cHGFRd@vger.kernel.org
X-Gm-Message-State: AOJu0YyzzYuK/bTS0hnqkplyun5zDhPKrMcrUM/l0kxw7XS9JJAL0p6o
	E7pcDp4QIDpAgjdYjtApoxIXF8/+5w7ytCExr2mmCA6JDUo7QlGaQ4QMyA12rRw=
X-Gm-Gg: ASbGncvW2OdSeTGWY8QtVVKXboSbXDv2lNKL2GkW3mdNwVHTJN9DJzaXZCl+59oKsys
	nT7MXpYSc48TjLlh6jnbsYxUBBe7ewU4TlkcoWAuXrXnbP2AqsmHsxliS+aoB1reArmxLipM+ye
	E2Ntoa8Dk1Sdu0vlyCRDlxbJUaatqGsWohL/W+yL0HEzLIp5HFgZnCOQvFOxMEPizpl96XfKZUN
	mJhWpgZ1ECgWXZ/2Ou2fG3dAuKFW6mdxgnuEUQt9iNRpSTOTdu61XwNgO08CD6S9TdqE+xGoeI1
	zPaJadbYDeiokAp2wAwAvw0Jp5+BV+LEkXBtJgJmV5LJVx+Wl5TlLsnWYhwiL2GST1VHeluQvdc
	Mg+WqlA==
X-Google-Smtp-Source: AGHT+IEAIOFFJLOZCm96czkAy45BL7wcAh0Bc4vKalFIoRDdZw1taF3C6vTBolVNjObPDoUwRAM9aw==
X-Received: by 2002:a05:6402:5c9:b0:5e7:8501:8c86 with SMTP id 4fb4d7f45d1cf-5fbe9f46ef0mr2916040a12.22.1746627117121;
        Wed, 07 May 2025 07:11:57 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fbf761f95esm806596a12.63.2025.05.07.07.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 07:11:56 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Wed, 7 May 2025 16:13:24 +0200
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v9 -next 08/12] arm64: dts: bcm2712: Add external clock
 for RP1 chipset on Rpi5
Message-ID: <aBtqhCc-huQ8GzyK@apocalypse>
References: <cover.1745347417.git.andrea.porta@suse.com>
 <38514415df9c174be49e72b88410d56c8de586c5.1745347417.git.andrea.porta@suse.com>
 <aBp1wye0L7swfe1H@apocalypse>
 <96272e42-855c-4acc-ac18-1ae9c5d4617f@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96272e42-855c-4acc-ac18-1ae9c5d4617f@broadcom.com>

Hi Florian

On 09:32 Wed 07 May     , Florian Fainelli wrote:
> 
> 
> On 5/6/2025 10:49 PM, Andrea della Porta wrote:
> > Hi Florian,
> > 
> > On 20:53 Tue 22 Apr     , Andrea della Porta wrote:
> > > The RP1 found on Raspberry Pi 5 board needs an external crystal at 50MHz.
> > > Add clk_rp1_xosc node to provide that.
> > > 
> > > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > > Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
> > 
> > A gentle reminder for patches 8 through 12 of this series, which I guess
> > would ideally be taken by you. Since the merge window is approaching, do
> > you think it's feasible to iterate a second pull request to Arnd with my
> > patches too?
> > 
> > With respect to your devicetree/next branch, my patches have the following
> > conflicts:
> > 
> > PATCH 9:
> > - arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts: &pcie1 and &pcie2
> >    reference at the end, my patch was rebased on linux-next which has them
> >    while your devicetree branch has not. This is trivial to fix too.
> > 
> > PATCH 9 and 10:
> > - arch/arm64/boot/dts/broadcom/Makefile on your branch has a line recently
> >    added by Stefan's latest patch for RPi2. The fix is trivial.
> > 
> > PATCH 11 and 12:
> > - arch/arm64/configs/defconfig: just a couple of fuzz lines.
> > 
> > Please let me know if I should resend those patches adjusted for your tree.
> 
> Yes please resend them today or tomorrow so I can send them the following
> day. Thanks

Sorry, what's the best wasy to provide the updated patch 8 to 12 to you? 

1) Resend the entire patchset (V10) with relevant patches updated
2) Send only updated patches 8 through 12 (maybe as an entirely new patchset with
   only those specific patches)
3) Asking you to pull teh relevant commit from my own git repo

Many thanks,
Andrea


> -- 
> Florian
> 


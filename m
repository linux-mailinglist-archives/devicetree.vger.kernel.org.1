Return-Path: <devicetree+bounces-74265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E1E902803
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 19:51:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 661041C22013
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 17:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE70149007;
	Mon, 10 Jun 2024 17:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yE0KIRH9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7F11482F6
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 17:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718041888; cv=none; b=ntw8q08rlR+1XvgeBvGQNQJusCDgsFMpMYYlIEM92bNhxVHzmbTje6LkGLMaNLdns6X7kqPBLf3weo04IWUrI8x8ZR20pxTCmq18z2VvwRXTcm5RTCnLcqDOl5Eg/5lhQVtK96wYjKien/3tvhtRUieguwNVFGdR7oabMzkvxOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718041888; c=relaxed/simple;
	bh=FneSkAV3jCsGNrND9Mj7IMRiPZCTqIkhyvxDpV4xx9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qD+OaxW5XrDAeE+yG+P8GfiY6v3tNODCMbVjIpzFghyY4TdgWhwrkbt6RaVzrJSF5CblqRNsxdO7xx0zyxD+r4ID4DS76CfTO6Z0TPYc2W74/AR/mk9XMX68GjN5moa3E8zwhf0nJS/tH22M9HS6oJ/0WrLIjG/SmmfSB1DmPhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yE0KIRH9; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1f64ecb1766so36507305ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718041886; x=1718646686; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XqAidOJkzifwbi0aDp05YiJHEtIMzMs4UmIa/z6sCUY=;
        b=yE0KIRH9+P2WH31mEKxGqMl6YrJ2kM3lDc2H7CjK/4nFbG5zIHxnzLypiGDiDe/EAb
         l3Z/OxaYHvAH2OT6OlwkH78xLTO70SVgHxRXOafcvewJa/zCXSig0+QQc2oxsHw1S0dw
         6ZjN5wl3WbVAzNk9ng8ceDT5j7zAz/5es2/MNLWZea2MhWYhg0M/XrzmjtYKIyjaE8Ws
         M8l26/4sWYlgJbrY0binfq0UVC3bseNp1YnissWeCwLV8uskDnPxd325dW5/Hj2qOtsv
         pA2YbEZgSQbumZZiNtXJ4x/m/1kJY8QXwjII1o+rBNnxLD2mMHanz73u1tCDsVqYSdkC
         NZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718041886; x=1718646686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqAidOJkzifwbi0aDp05YiJHEtIMzMs4UmIa/z6sCUY=;
        b=mfC1vHZzpbtcA6NOh3l/ODU2/zPQDCzR5hBMiE6/29bTyKPuO439syGcAOq2YXrtAl
         Adm1qDkbb9/7j3Rct4nJFjnaIAZ5SW9QFBLMmitT5K2/DtKjZq/WA7d8MqIC5saVH25C
         dnnbiRN+njJ3pozGTiRJdMZ40/ORLLgWpwEKF4EGHcVBCWs6xKU/SwuCz2iU1WXVW/eM
         qkP8CoyPQ57vq1L8st2cMI87uIboWmkas8cMiRrnBBzXYmEWRMOTgS0b1Qql2G6UVO/O
         bmo0H7GdJ3v9wO/7sVDxFWvjPTfd/GwwJvhumsRyYKP2Qt/t5nwy2a95Dfqgn2UMlvnZ
         8UKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpnizBHwAhok0FUUWuvLrf3lMp0njA+F+6CbhpKyttGyywE5NxmAAkxAgqC8aoXf1HDayTrf5dtyGPY7/+vmhUficsjwnkQCB+Ow==
X-Gm-Message-State: AOJu0Ywge8H25Zsnv8+f1Y3T6RntEJSWBrYsSDI9ucCbvd6OCSE3lroU
	63jn0uSjyYUL96/7dlMpw11F4nYVItSqoNp+3TBDh+GRlurMESrcy0Ned4zBpu8=
X-Google-Smtp-Source: AGHT+IGI7ZtC5yMFeVhgobcpC4ELjQ0rXq8graZvm2aNnJqlgdJJt9Tf50Z+1bVL5t64KhWiB1DChw==
X-Received: by 2002:a17:902:cf04:b0:1f6:f5bc:51c5 with SMTP id d9443c01a7336-1f6f5bc5391mr72332595ad.47.1718041886043;
        Mon, 10 Jun 2024 10:51:26 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:129d:83bc:830b:8292])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f70eeaedf7sm27441255ad.84.2024.06.10.10.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 10:51:25 -0700 (PDT)
Date: Mon, 10 Jun 2024 10:51:23 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Jessica Clarke <jrtc27@jrtc27.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	linux-riscv <linux-riscv@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-sunxi@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 03/13] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Message-ID: <Zmc9G2syeLF2rBZM@ghost>
References: <20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com>
 <20240609-xtheadvector-v1-3-3fe591d7f109@rivosinc.com>
 <FD6771F5-5739-469A-9C0B-952AAC62AB68@jrtc27.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <FD6771F5-5739-469A-9C0B-952AAC62AB68@jrtc27.com>

On Mon, Jun 10, 2024 at 06:49:30PM +0100, Jessica Clarke wrote:
> On 10 Jun 2024, at 05:45, Charlie Jenkins <charlie@rivosinc.com> wrote:
> > 
> > The D1/D1s SoCs support xtheadvector so it can be included in the
> > devicetree. Also include vlenb for the cpu.
> > 
> > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > ---
> > arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 3 ++-
> > 1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> > index 64c3c2e6cbe0..50c9f4ec8a7f 100644
> > --- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> > +++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> > @@ -27,7 +27,8 @@ cpu0: cpu@0 {
> > riscv,isa = "rv64imafdc";
> > riscv,isa-base = "rv64i";
> > riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> > -       "zifencei", "zihpm";
> > +       "zifencei", "zihpm", "xtheadvector";
> > + riscv,vlenb = <128>;
> 
> thread,vlenb

Oh right, thank you!

- Charlie

> 
> Jess
> 
> > #cooling-cells = <2>;
> > 
> > cpu0_intc: interrupt-controller {
> > 
> > -- 
> > 2.44.0
> > 
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


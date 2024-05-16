Return-Path: <devicetree+bounces-67369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1ED8C7DAD
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 22:29:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90B4C1C21475
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 20:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155FC15820F;
	Thu, 16 May 2024 20:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="f7I5TVmz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C391581E9
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 20:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715891332; cv=none; b=br+ZvSgXU4kXqnpseg2saEQUD/75m6WZZFDKJ/Kf/+w8nFqNrv/32HWFhfW6wU8pv8fuw0OyUDgM8uI66dv4vtmY0OZwYp/7zR911esm3O4XOSjyqWkuxmf/byGCBqJObPmdkv/RNjwtCif7ll/maVtnypH+9hQElUnFGSCkXQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715891332; c=relaxed/simple;
	bh=kC5VynHMsC9YRLX685duYC0SDWhDLE4h76tMsTIxJ7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CmtQWROAUSvir/JQi/MyicTKyc8SpJVw0MesMRtFWEhDaNLtBiNMBQ1jdSJryuiufHxJj3jA1zMAeY2GNQu2OaYYohEPq6VPZdZk/NRCooXrAOQqN/rf64kSwqdnzUiZBJ6sKC5E1s4sYJRlMGtMTGNahJWZ3qrP9ALL2Yo5Rc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=f7I5TVmz; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-53fa455cd94so552818a12.2
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 13:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715891329; x=1716496129; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y4kKN9JX8nIOafaZ0J8qaWRBKY02LqUa/O7jwO2X8Tk=;
        b=f7I5TVmz2dloZY3tjfcb5pTQNrPv0mLDrOCxzWIsorznjnTAKpjQIk2IS1USv5ZOZn
         h6qMS3dnyGPXkfUm1kBhXc6bMUxqcsLHmZdxBi9uvrn9j/N9YOgOgJgi4w/PuAsk9b0P
         N+M/GOHyvHeBcMonuA7mFVcbdF1avWueWc+YH4IB0t5NLsCgMfHxqgDuExKmFr4AAb1k
         /3734/J7SJPaw2Lqh6tJEkGsr/kQSlBIrGkK+dz/FLwqyhTYVkuBUGcmGllwhJXeHwiY
         zSGH54rdSKfee9jJiz5ZGDxT6uEmbTQwF4+9sPh9DU5dWSKE9GHevui8DxO7l0zlHQTS
         aiZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715891329; x=1716496129;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4kKN9JX8nIOafaZ0J8qaWRBKY02LqUa/O7jwO2X8Tk=;
        b=tOIKBTUMgK6JIhx7COvtXt458p7QmkXOLhp8tyfCLCWpz9aWtQ1wpi8ogZs8n5omcd
         vjAm70p6nyoy3T8VVxHb1u7INDBqIt+Oj87AJ8c1vThducqw11aTyFC9gQKmyw3K9sql
         cP6p2SibeaZVdIwayA+fREjL6wTkh1eMnwFmM9IQHQpaWafxcv7kZ4SANTpDVug9ukFV
         MsySMi6xC39aEHzwK/o77u+Uy7mW/GluDSjjWWE+sV7UzdeV/z0pF0AhHXn+YqUynBuV
         fHDOZeR1/OJ9Je+Hsm1xS/NVLb0rm67MTLL4ugdWGhZIc7cF90rCE2WBZbuyxSsyrHUy
         Vrwg==
X-Forwarded-Encrypted: i=1; AJvYcCX7hVvm5T/FBk5MiRsh5vIrpaGk6KsiuppPAbWFIglDPUARSoEg/qRCw+P6qfdO/eVqOI+cdYCISkTDbBBmyCeNqDbFSNb+zRCHiA==
X-Gm-Message-State: AOJu0YwnEv48qJfJHTibcyEemtEpS4h42D9St9iyF6Ys7B5SS31urQke
	chFFwPJ1+YlbyDyRyp0bnO53JdskPI4W6HDCaUM8YOksho9g/NefBztZDmkRUBo=
X-Google-Smtp-Source: AGHT+IHTvY9bDUnWjwEIw7wiu0tFvYg1zAisbkSsd1SW/ziLhl1A+ZDZh7r1nudePVmEtMwYFsaJKg==
X-Received: by 2002:a17:90a:db54:b0:2b6:3034:4ae9 with SMTP id 98e67ed59e1d1-2b6ccd6bceemr16825092a91.35.1715891329488;
        Thu, 16 May 2024 13:28:49 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2b671782dcesm15524206a91.53.2024.05.16.13.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 13:28:48 -0700 (PDT)
Date: Thu, 16 May 2024 13:28:45 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Andy Chiu <andy.chiu@sifive.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Evan Green <evan@rivosinc.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v6 03/17] riscv: vector: Use vlenb from DT
Message-ID: <ZkZV3yxbxab4W6I4@ghost>
References: <20240503-dev-charlie-support_thead_vector_6_9-v6-0-cb7624e65d82@rivosinc.com>
 <20240503-dev-charlie-support_thead_vector_6_9-v6-3-cb7624e65d82@rivosinc.com>
 <CABgGipXg68VEGt=oZZSENmbqs4-g3PB=CBobNwgqQjLHfxo+VQ@mail.gmail.com>
 <20240516-grandkid-monday-86c698ca4aed@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240516-grandkid-monday-86c698ca4aed@spud>

On Thu, May 16, 2024 at 05:24:25PM +0100, Conor Dooley wrote:
> On Thu, May 16, 2024 at 10:00:12PM +0800, Andy Chiu wrote:
> > On Sat, May 4, 2024 at 2:21 AM Charlie Jenkins <charlie@rivosinc.com> wrote:
> 
> > > +               if (elf_hwcap & COMPAT_HWCAP_ISA_V && has_riscv_homogeneous_vlenb() < 0) {
> > > +                       pr_warn("Unsupported heterogeneous vlen detected, vector extension disabled.\
> > > +                       elf_hwcap &= ~COMPAT_HWCAP_ISA_V;
> > > +               }
> > 
> > We only touch COMPAT_HWCAP_ISA_V and the failed case only turns off the
> > rectified V. So here we have nothing to do with the Xtheadvector.
> 
> There's nothing t-head related in the tree at this point, so doing
> anything with it would cause build issues.
> 
> > However, I am still confused because I think Xtheadvector would also
> > need to call into this check, so as to setup vlenb.
> 
> 
> > Apart from that, it seems like some vendor stating Xtheadvector is
> > actually vector-0.7.
> 
> The T-Head implementation is 0.7.x, but I am not really sure what you
> mean by this comment.

Andy, the idea of this patch was to be able to support this binding on
more than just xtheadvector.

You are correct though Andy, this is a problem that a later patch in
this series doesn't disable xtheadvector when vlenb is not homogeneous.
I am going to wait to send out any more versions until after this merge
window but I will fix this in the next version. Thank you! 

> 
> > Please correct me if I speak anything wrong. One
> > thing I noticed is that Xtheadvector wouldn't trap on reading
> > th.vlenb but vector-0.7 would. If that is the case, should we require
> > Xtheadvector to specify `riscv,vlenb` on the device tree?
> 
> In the world of Linux, "vector-0.7" isn't a thing. There's only 1.0, and
> after this patchset, "xtheadvector". My understanding, from discussion
> on earlier versions of this series the trap is actually accessing
> th.vlenb register, despite the documentation stating that it is
> unprivileged:
> https://github.com/T-head-Semi/thead-extension-spec/blob/master/xtheadvector.adoc
> I assume Charlie tried it but was trapping, as v1 had a comment:
> +		 * Although xtheadvector states that th.vlenb exists and
> +		 * overlaps with the vector 1.0 extension overlaps, an illegal
> +		 * instruction is raised if read. These systems all currently
> +		 * have a fixed vector length of 128, so hardcode that value.

On my board with a c906 attempting to read th.vlenb (which is supposed
to have the same encoding as vlenb) raises an illegal instruction
exception from S-mode even though the documentation states that it
shouldn't. Because the documentation states that vlenb is available, I
haven't made it required for xtheadvector, I am not sure the proper
solution for that.

- Charlie

> 
> Cheers,
> Conor.




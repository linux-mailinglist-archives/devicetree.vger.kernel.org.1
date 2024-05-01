Return-Path: <devicetree+bounces-64376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4588B90B0
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 22:39:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BA3D1C20DA7
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 20:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C471635D4;
	Wed,  1 May 2024 20:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="1k+HxI3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9A517C6A
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714595965; cv=none; b=VMzeTmCZjsSSFoQtPyCdcBlu5VUHHOgvW0GxiPpCPgzuBo8T8KRGPSmDBptM5G8HUnHMl1IqjLYpwNQ7PkiGuIYdS80yvGVlD9y4d+r19o/y8Jt4oDyU61Eru8FNt2x/UrDZ+ZwIotKh9+3fN+pUfKMT6NYmeZarw+1NCYDK1W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714595965; c=relaxed/simple;
	bh=2GwCqwpwUIKYGDSmrRTVo6q9dQy7rbyy3/yglpIabsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=diK1TvzT2Tpfh0KwiA3r7JyMlWPgGlBVxVNoWphIdfEmM1mo44FflkyGnRB7MdiJpSnxzekUHQjqBWL/VPcJFpZpnAiP21H2lv36mE5ZWSpShfzdvocQwuFbM3iLF3NiB5YFWGmp/HwMarAJ3BLi1SitE3jHtiM94ucGdRRea1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=1k+HxI3L; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6f074520c8cso6856609b3a.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 13:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714595963; x=1715200763; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AKSbKmCdqNYp/TkwU1C8PV1OsGdgS8t0tRM69B6F3C8=;
        b=1k+HxI3LYeEeCx0TrCDMtB6bNLA4aUDy2MM0w2Sqovz0iFf1plgNpqThgzXbQJ3gJX
         2tUO6CliziAf94ZAHDK5iTJkCOjv0l7IIn+FKS+o6xcUPeug3k3sSeMszkeNxV8MbjVD
         s1VzYdSfL1X5K8blvTS0XGPQso/eYwjJ6THlUkizhclk9cSkYtXdKgdExTSLp7elJmL4
         bIbnteKkjBCVyVsoI7b7lQ+3f8aKA25T/uQiZug32ZkVK8gRLsFBI04wc6ll6HjRwmHz
         LVF1rn2wrWMHMyPZCoMvlfYNy42bHrjL5k+eSH6PGybMAxLV+3CfhpsWV/VloYc4TtEP
         ovaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714595963; x=1715200763;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AKSbKmCdqNYp/TkwU1C8PV1OsGdgS8t0tRM69B6F3C8=;
        b=Xoh+lnecfR83sKSekroZ/9+st+e4Bb0Ne3jL9HhVttbYIySXlgRbNd7x51wM7Izb9v
         +tw0rqak4F5bg+gcHoIsWe41R81mNld8W/oyCSdE4sD6taJ9feo4AOtB/TXwzUTNAhuu
         MT7A3can2PbvFRXvaGQY7QI2OYNO7NRb4MjhCBqg7Y/hdH7CzQ9s0zNHxiGtOtEyDr51
         zqlo73NLzAtKwoCsaOdJNrrhZNB8R8euYBe2xAupSy/TLBAmcxrvU1AVtFXG3RTNAqOo
         ycWUF1CHy8XYjjZ9IjbWjMXUtpcq9ZASJQMs8f8EF0HSCVLEKHhxuYoToB4shV/mDD55
         6SAw==
X-Forwarded-Encrypted: i=1; AJvYcCXngTRaDPQkioz9Hegc+heyLSL3D1lDyhWSTCiKAZUIDNQY6zaMcHbmbr1gTBWKXmq5d0k/42JPlQu+287HO1dSmzwjfTWbWxgerw==
X-Gm-Message-State: AOJu0YxQ5m8vNWXJye2xinvnEl6dTjwOMBrM30yo2yhFAsNBVesVjy5r
	9dd8F/fPWUaQ+LrydsDwThxF82FX8aTthuqGvIgW28MgSEY9Lmwg9Ntv656yjlk=
X-Google-Smtp-Source: AGHT+IHt+rl59slOy1iEvfvZBlyLdzZV/krFCrpw2Eo+5Hs2TZHpo6k/cWFEA5ZGhA3qB1CbXECo4g==
X-Received: by 2002:a05:6a20:5617:b0:1af:36df:5159 with SMTP id ir23-20020a056a20561700b001af36df5159mr18100pzc.59.1714595962795;
        Wed, 01 May 2024 13:39:22 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:1dcc:e03e:dc61:895d])
        by smtp.gmail.com with ESMTPSA id v22-20020aa78516000000b006f03a06314esm23032553pfn.195.2024.05.01.13.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 13:39:22 -0700 (PDT)
Date: Wed, 1 May 2024 13:39:20 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
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
Subject: Re: [PATCH v4 07/16] riscv: cpufeature: Extract common elements from
 extension checking
Message-ID: <ZjKoeLcs4YDsDztT@ghost>
References: <20240426-dev-charlie-support_thead_vector_6_9-v4-0-b692f3c516ec@rivosinc.com>
 <20240426-dev-charlie-support_thead_vector_6_9-v4-7-b692f3c516ec@rivosinc.com>
 <20240501-probable-unfunded-746ef6ae1853@spud>
 <ZjKcfZsWgR1AY3AZ@ghost>
 <20240501-hazy-reformist-8ff36ba53450@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240501-hazy-reformist-8ff36ba53450@spud>

On Wed, May 01, 2024 at 09:15:44PM +0100, Conor Dooley wrote:
> On Wed, May 01, 2024 at 12:48:13PM -0700, Charlie Jenkins wrote:
> > On Wed, May 01, 2024 at 12:37:14PM +0100, Conor Dooley wrote:
> > > On Fri, Apr 26, 2024 at 02:29:21PM -0700, Charlie Jenkins wrote:
> > > > The __riscv_has_extension_likely() and __riscv_has_extension_unlikely()
> > > > functions from the vendor_extensions.h can be used to simplify the
> > > > standard extension checking code as well. Migrate those functions to
> > > > cpufeature.h and reorganize the code in the file to use the functions.
> > > > 
> > > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > > ---
> > > >  arch/riscv/include/asm/cpufeature.h        | 78 +++++++++++++++++-------------
> > > >  arch/riscv/include/asm/vendor_extensions.h | 28 -----------
> > > >  2 files changed, 44 insertions(+), 62 deletions(-)
> > > > 
> > > > diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
> > > > index fedd479ccfd1..17896ec9ec11 100644
> > > > --- a/arch/riscv/include/asm/cpufeature.h
> > > > +++ b/arch/riscv/include/asm/cpufeature.h
> > > > @@ -98,59 +98,66 @@ extern bool riscv_isa_fallback;
> > > >  
> > > >  unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
> > > >  
> > > > +#define EXT_ALL_VENDORS		0
> > > 
> > > It's not really "all vendors", it's standard. Otherwise, this seems all
> > 
> > This hooks up into the alternatives:
> > 
> > ALTERNATIVE("nop", "j	%l[l_yes]", %[vendor], %[ext], 1)
> 
> Yeah, I know what you're using it for, I just find the naming odd.
> > 
> > Where the "vendor" argument is supposed to be 0 if the alternative is
> > applicable to all vendors. Is there a better way to convey this?
> 
> s/EXT_ALL_VENDORS/STANDARD_EXT/?

Sure :)

- Charlie




Return-Path: <devicetree+bounces-139393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6EFA15A9F
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 01:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19224168DD1
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 00:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E73DBA2D;
	Sat, 18 Jan 2025 00:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="BRwuL2Os"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC732913
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 00:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737161698; cv=none; b=ME0LPK/Y+EmsDw8RZjfL5Dx6oCTdIHNXq3P/NgMAz6YBcNa+WE2dDZWdtq+b7MLvtfsBXSwkyxN5yfOyE/8Zpows9fklZ4f7DoIy+K5HOgbddRkYvIjOqHU2YpMALAY/7jYTLqSU/NVkxlu4mVUPmYP2bjzYACPAkYvtH2JCSz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737161698; c=relaxed/simple;
	bh=M7oBI4H7N6m4mBGRniQTDCMYCH3P2mjeQlWVWMjzUxE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nR/EE5/Rty1FgtYAW3kyn+bhir4FEXpdqubamiZPhxUiTMByAjtDzP2yjb9rokRAiXylyEemfzBN0MqTXNzcCFLw+bId7oKC7ffYQI6tVSdx9c5s3Es2XWCNvGCRuU1eyWefzvLlUPJzRRi7vXE4B5XoClTT7CcgDsYNIswlpo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=BRwuL2Os; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2163b0c09afso53643255ad.0
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 16:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1737161696; x=1737766496; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Oh7xoLJnLSSPfOBgNZ9CVgKPTBxDOvq1hKFuaUcbeH8=;
        b=BRwuL2OseuN7mMqWHfKxexrvI1Z1LohDCfKVl3PYPP98LD5EyFyafXdXtgSi97wtr9
         nkBbHpTdEXHAEe24F0hF6ENZ65+4DJyAWL4SemPckjoY4H50N+vsXJib/WG48CdtkVlK
         402Deb1whGeaNp8ia1qfLuFmih6vuPZP3NjuDx9+5iSsXHu9MWb8HYfIELdYJfFIZOS6
         zJAfgDJQU1OTc5jsPNtljqjFBx0Ct4wpzWv37bUZoP7jc1hB2y+3Ip39tFw1O1bQTJmo
         YRh7JEH7wDeEMI/RLJaPs6sTwFtUqwNCmiyGSXNVxNP7tG0PkxdYXQsTdVvYErsiRcQY
         lHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737161696; x=1737766496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oh7xoLJnLSSPfOBgNZ9CVgKPTBxDOvq1hKFuaUcbeH8=;
        b=Eo/5+9DMzt9BwD2Hvazw3cnuINsiKxU96J/TT+O1l8lPcYPkqyb0hattcsV3HU9NFx
         Dli/GEhRSzSLmOUak6jxLpCO2xV5kJE28zenu9ASl7wB+/EhnUi+v+yNNYB2BqWl0na7
         nd+vFYVFraBALNKsYlxug00tzH7JuWQhxTG1NRVsiBKcd0vFLX7IE2l13jN5QbjQ8ra8
         EVK6VM/RleEPQknKZQN6ckAKwB8UpQUtYw/cuXM//1JOsIzceCVVTwA1RUsO+AgQ4yz3
         HE0KRtyV/6Bsinya8eUhvYv+J/u5C8H/6poc/E8uZsOGrg4aFAo2j3DFRoQyr0umiagb
         J0Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVT6BROs0jpsXTTM0mTsiv6njijh3E0t/L0snsM5BwiTqhdoDF2sY9uZTxY+XPt++5EZUAnYN0E/sns@vger.kernel.org
X-Gm-Message-State: AOJu0YzCB1AUNbJR32rcJjPwOxdYk6FO+Q88jrfY6/GAA54iYWUkJUXj
	t1D0qiuzviKL5s8vDIM0hYSHpaqQJIMkHPAq4T9aVjZoO1nYT6HmwPgKPYZwiiQ=
X-Gm-Gg: ASbGncsq0G7j48Luh0hP9VhHz9muftbnA2eMdb0thHqdej3Dnz6nxSvuArx3hlyGDwl
	Fv5EPuiDOLD3Di4X7kB/bi2z7kDh7BgywES9owo5yyHXf5T1CPlCdzEuHQKaCohyjE7kPfXW2sF
	TrP9DbSuhhYdtgRqrRlyyyn8aIVpSNcy06ucxqPcMLMLKgmRaxnYHd2Q6WBXIWysRv17vEV885+
	LSjhLbBP+utdzWCqyqcUreZ0JjsauIS86+luzBjaxEjGxGBEj7w4MgWlzVDz3B8MA==
X-Google-Smtp-Source: AGHT+IH+QJ6x1rOPrK+moxSefvMOt20/u1r/HPVB4Hmq9pgG4JuLRNbdKxVVE7KEC65D6Zs6fmYniA==
X-Received: by 2002:a17:903:2342:b0:215:cbbf:8926 with SMTP id d9443c01a7336-21c355b053fmr66620035ad.35.1737161695697;
        Fri, 17 Jan 2025 16:54:55 -0800 (PST)
Received: from ghost ([2601:647:6700:64d0:d0ea:9b9e:5556:aa82])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d4042desm21920935ad.242.2025.01.17.16.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 16:54:55 -0800 (PST)
Date: Fri, 17 Jan 2025 16:54:52 -0800
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Eric Biggers <ebiggers@kernel.org>, linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Andy Chiu <andybnac@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 5/5] dt-bindings: riscv: document vector crypto
 requirements
Message-ID: <Z4r73Iq5IWM8Z633@ghost>
References: <20241024-fanning-enrage-bcc39f8ed47d@spud>
 <20241024-pungent-lasso-42dd3512a3c8@spud>
 <20241025022411.GB1781@sol.localdomain>
 <20241025024224.GC1781@sol.localdomain>
 <20241025-defile-blaming-12fc1e3a62e0@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241025-defile-blaming-12fc1e3a62e0@spud>

On Fri, Oct 25, 2024 at 05:53:49PM +0100, Conor Dooley wrote:
> On Thu, Oct 24, 2024 at 07:42:24PM -0700, Eric Biggers wrote:
> > On Thu, Oct 24, 2024 at 07:24:11PM -0700, Eric Biggers wrote:
> > > On Thu, Oct 24, 2024 at 01:34:33PM +0100, Conor Dooley wrote:
> > > > From: Conor Dooley <conor.dooley@microchip.com>
> > > > 
> > > > Section 35.2. Extensions Overview of [1] says:
> > > > | The Zvknhb and Zvbc Vector Crypto Extensions --and accordingly the composite extensions Zvkn and
> > > > | Zvks-- (sic) require a Zve64x base, or application ("V") base Vector Extension.
> > > > | All of the other Vector Crypto Extensions can be built on any embedded (Zve*) or application ("V") base
> > > > | Vector Extension
> > > > 
> > > > Apply these rules in the binding, so that invalid combinations can be
> > > > avoided.
> > > 
> > > It looks like that part of the spec is wrong, though.  The Zvknhb and Zvbc are
> > > correct, but the list of the composite extensions that at least one of them is
> > > included in is: Zvkn, Zvknc, Zvkng, Zvksc.
> > > 
> > 
> > I am attempting to fix this in
> > https://github.com/riscv/riscv-isa-manual/pull/1697
> 
> Looks like at least one person agrees with you, but I'll wait til that's
> merged before submitting another version. Thanks for reporting it.

It's been merged now :)

> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



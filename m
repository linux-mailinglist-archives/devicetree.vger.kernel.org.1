Return-Path: <devicetree+bounces-89753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FD0942A47
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 11:21:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C58921C243AF
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 09:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6BE1AB51B;
	Wed, 31 Jul 2024 09:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ilXaq/dB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5362F1A76D1
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 09:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722417676; cv=none; b=nExTsKdr6ggatEhf6FQxpyzuqGPBvB4QVd/ceNwp93OmGMfG1pLSHTFbsjFcM4Fo4lxBGN8jCv4Ar52LgSkfNMu0Fs8FAwlgvffqGkykyWdbZAUcDq0b8IiSkN8nMDzwWTFvfCZbrB94qw1pVwWCKSKbRKY9VBm3Dhc19NovEqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722417676; c=relaxed/simple;
	bh=cnT5wqUVzDuz/5cZp8Yjlz64Hy6NEUy0SoJibqkgiPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5FLbZJoHh7EQ+CQrKAL1jwWwN8Yemuba94La7wUFCbX3Yb+Hp4bUMcLCdVgOsARHnFDzMAQn8drtTBiKjc/azTbIPyVuqPb05/ZWYqr/JtOqkpi8+mgUyDPEkZghMvUBvUEydBYMZ5FUhPhN7LIJR3HGW11/C5DOQYpumiJoKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ilXaq/dB; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-36858357bb7so2691816f8f.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 02:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1722417674; x=1723022474; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u/qpTJRAl+gvdV7bUrhFzBBY9zM/wQim6oqoBtynaYM=;
        b=ilXaq/dBTfrnJjqnloNU/2tMCO9QYU4DvFHHYtGtJRZ77yx6Bo/qiOAZ5Zlrbgwyod
         lKX/61ULB8iijUF39t7KdMMGoYjYTke11WBmkJp5Mwv7759krRPmacsR/zb6PJxwTOGk
         GrlLvkSy9ApsJuhHbqPEfcfbbGb0hK4ViDy6PoIIAwKb4Ug79wpD3sshX9XjcCBLBObn
         Yn9XY4In14Xdt15BM9gYsZ8/0kzjx7bgsUnjQuOBcKI7bGAjul7zlLs9W9Cj+gsmJUHe
         supKBtxpo8Oi7q09Ydj7Bsq/DExNqxr/DKFa8VOvKBy9fZw2dS7fip7fjAvwvOiF006D
         GROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722417674; x=1723022474;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u/qpTJRAl+gvdV7bUrhFzBBY9zM/wQim6oqoBtynaYM=;
        b=GX4vYacl0xpJcRU2KEnejKwPK/mNAXuGuZhLjYmTn6KzaqqDuhc9ozKCkdXuDlkRUi
         ToyPTHhU1OJIVOvYJRFcfrouNk3iJx278IDs8NZ782fk+1BmiW6NLq8x4+3NuhTKwuVh
         1wvxqdnkP2OfqP/PKQo4X3R5gqXcpsxxiVWT36EHZ7TdeoJafaiEirosUwRjomSBJ8SM
         sdfGEFbkAbmUDdkB/9epmv9WC5N6hyG/A5laVJN+auIjHMod1wuxQ3TurdJlKBtkkKIC
         ITbwEJBjLMAZUrArA2bFBpblWX5BKYjWvEw3MJhQcbCimPh5j/tZyvrFpSCPkG1I+Rhi
         uPBg==
X-Forwarded-Encrypted: i=1; AJvYcCXyVqGP7X6KPoPoiKu+qAkfBr3iO6QlKvjDuH797ljQWLniyr2hfPhyrgUBwSn3XVvLHbNkoWxmNzFqj9XSTpev3GlrwDUFLFt13Q==
X-Gm-Message-State: AOJu0Yw5ebxfdKFrMC6ksMuZEkadg1BzmozwsugmZT1j8QYNFybh4t47
	bQJrGRwud9UoM0gz8leZzCCgOIwmUwn4Q7TI81QzxyqzRAybA3WN3zZ/kE3Ysbo=
X-Google-Smtp-Source: AGHT+IFNedUVNOOS5mp++68QmWlLVDtW+9dpvo4dm4U/i/Dgou2+lFIJYCAAaKRlPzCMYiIRYjEZww==
X-Received: by 2002:a5d:6787:0:b0:362:d382:2569 with SMTP id ffacd0b85a97d-36b5d08f68bmr8441211f8f.44.1722417673355;
        Wed, 31 Jul 2024 02:21:13 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b36416e2esm16592253f8f.0.2024.07.31.02.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 02:21:12 -0700 (PDT)
Date: Wed, 31 Jul 2024 11:21:12 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alexghiti@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org
Subject: Re: [PATCH v4 03/13] riscv: Implement cmpxchg32/64() using Zacas
Message-ID: <20240731-a49ee87a149ba9bf333378d0@orel>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
 <20240731072405.197046-4-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731072405.197046-4-alexghiti@rivosinc.com>

On Wed, Jul 31, 2024 at 09:23:55AM GMT, Alexandre Ghiti wrote:
> This adds runtime support for Zacas in cmpxchg operations.
> 
> Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
> ---
>  arch/riscv/Kconfig               | 16 +++++++++++
>  arch/riscv/Makefile              |  3 ++
>  arch/riscv/include/asm/cmpxchg.h | 48 +++++++++++++++++++++-----------
>  3 files changed, 50 insertions(+), 17 deletions(-)

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>


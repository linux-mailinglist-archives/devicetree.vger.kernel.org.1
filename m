Return-Path: <devicetree+bounces-62343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD958B0DB4
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 17:13:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEE21289915
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 15:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E364D15F321;
	Wed, 24 Apr 2024 15:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="zLfthbTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E086115EFDB
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 15:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713971625; cv=none; b=c7gN1r/C3oPtbldhNE8mZsswsDjyRVNFRz5yYI88cp9bXOBEK0992Y4guka62xzMjVGbWXwbw8HLzErBrj7TUJtO/dNIoE8e9TM46BETTjLNkPadm5cbQfPbzT5wosD2WoHMcWlCzbBVyGucFgoqpWs3fxTKuxkttKAF3wUQy8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713971625; c=relaxed/simple;
	bh=tEDlSX60cFF3XIZCRG8/CfaawTF3zEUuH5YM6XnT0N0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B+VcVv6ZPn6ig1UXQl95DpK87atlJfvvs9F/aCJcu63M+KihLaygxSpiQvPaRrm7tQuHg0/C2uz3Nz6s3e+d3SulAIpxN7MHiAeUVSqRNd+bVmP5DGeUYnWzQ7ijTzUBEzezf4biL8S4xnIM9KoUOrE3CE/F9JBk7KuiUT8rGEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=zLfthbTS; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-de5809cd7b0so314762276.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 08:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713971623; x=1714576423; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DAuwXMJJnpPJzeS/QdiiNtiBKl3H6rCtZl+q9pQNJBs=;
        b=zLfthbTS7c1drv/pKmPJo6pEB4SEyr12UYCnlEzLK+7jUqg1QT4VpMMfSEf8zJ+tRf
         ZJ1r6n2Bta7gk8tb9mmnUyc4lVovzkaKtCAu06rcPteUDdrGILU30EJuxWsH8ae6k527
         y0C8e97FsDxuXqFY4QOx+97woh/xkfJrPT2U+HnVI5p5WWNsnZ3A8mLCAItpgBjzE6wc
         KTpg+iiMMtytJAkTZSQ+zPH9etwMJrXAUQGrZuYi/5NnxNL88tvvfPy7Htk8TIl7h5Y/
         pzOLiTPfAABY3C4L4nAKI5u1R3FiuUNhQs5x0VKtsICRj9iEXa+n40LS+okznaJfGnEk
         U0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713971623; x=1714576423;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAuwXMJJnpPJzeS/QdiiNtiBKl3H6rCtZl+q9pQNJBs=;
        b=aJHm2yqBLz+GP6mMZIt9EJ/jFIs3ccTlMakw0zyi5VZJoDEIurQp9sloBXWVYU19U7
         igten1Gp1Juf92sSC1c5frO1ykwgTw36q0R167iOmTKUDX++lzufzsSMcpMce5npTsjy
         icbX1sYfN2RdSLRMXeaJVT2k0tdh8lvnxsAewa1szieffCn309MsRpp/V6DUgf1A/MPK
         iIBozDv9i94so9qRtKKZmoFtwDjMXNzzBrLNjuNDoOBBuxX+g9NVStOFV1jsil4WRuuk
         oOWF3eMlxUOO7vCRP3TYwg/zdLw5T9EI3KbhQ+04jhjrXnJEwp0nu7Yqj/TPlhJFkL4C
         vgbg==
X-Forwarded-Encrypted: i=1; AJvYcCXeHYgMIi2m5g2K3gTRXSKk3XUHtv96IiAk/QNMdlfkfYRtJ7HSnSGcFMK3bIPtZ7207oXczW3q8xpv+XJrwjzhdJTUghqsKFOVqg==
X-Gm-Message-State: AOJu0YyUWruh22hDj+0IAxbvMe1AekSeJGpWa6U110oyFJk+6bgPbEqw
	C0+UHmlvze5nZdxAnStkwdmozoyAunlmrGMhK2qp1Hu61oTurzmSfYeFQEC2DQA=
X-Google-Smtp-Source: AGHT+IHhTz3fBZ7peK0ohgK/fsX2BIM1DNpAIBuTraurnQaZqdLiFfMgwIqo7gYns2h/SqUcyMxIMQ==
X-Received: by 2002:a05:6902:238a:b0:de5:51d0:9a8d with SMTP id dp10-20020a056902238a00b00de551d09a8dmr3433052ybb.55.1713971622828;
        Wed, 24 Apr 2024 08:13:42 -0700 (PDT)
Received: from ghost ([50.146.0.2])
        by smtp.gmail.com with ESMTPSA id s13-20020a056902120d00b00dc73705ec59sm3141332ybu.0.2024.04.24.08.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 08:13:42 -0700 (PDT)
Date: Wed, 24 Apr 2024 11:13:40 -0400
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>,
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
Subject: Re: [PATCH v3 06/17] riscv: Fix extension subset checking
Message-ID: <ZikhpEgEoMX/rObu@ghost>
References: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
 <20240420-dev-charlie-support_thead_vector_6_9-v3-6-67cff4271d1d@rivosinc.com>
 <6c624361-a968-498b-a9fb-ea2aaec70ce8@ghiti.fr>
 <20240424-wildly-goofy-c81aac6f8cd7@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240424-wildly-goofy-c81aac6f8cd7@spud>

On Wed, Apr 24, 2024 at 03:51:54PM +0100, Conor Dooley wrote:
> On Wed, Apr 24, 2024 at 04:22:02PM +0200, Alexandre Ghiti wrote:
> > Hi Charlie,
> > 
> > On 21/04/2024 03:04, Charlie Jenkins wrote:
> > > This loop is supposed to check if ext->subset_ext_ids[j] is valid, rather
> > > than if ext->subset_ext_ids[i] is valid, before setting the extension
> > > id ext->subset_ext_ids[j] in isainfo->isa.
> > > 
> > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > > Fixes: 0d8295ed975b ("riscv: add ISA extension parsing for scalar crypto")
> > > ---
> > >   arch/riscv/kernel/cpufeature.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > > index 48874aac4871..b537731cadef 100644
> > > --- a/arch/riscv/kernel/cpufeature.c
> > > +++ b/arch/riscv/kernel/cpufeature.c
> > > @@ -609,7 +609,7 @@ static int __init riscv_fill_hwcap_from_ext_list(unsigned long *isa2hwcap)
> > >   			if (ext->subset_ext_size) {
> > >   				for (int j = 0; j < ext->subset_ext_size; j++) {
> > > -					if (riscv_isa_extension_check(ext->subset_ext_ids[i]))
> > > +					if (riscv_isa_extension_check(ext->subset_ext_ids[j]))
> > >   						set_bit(ext->subset_ext_ids[j], isainfo->isa);
> > >   				}
> > >   			}
> > > 
> > 
> > I think this should go into -fixes, let's check with Palmer if he wants to
> > take this patch only or if you should send the patch on its own.
> 
> I think splitting out this and patch 1 into a new series targeting fixes
> would probably make things clearer?

Okay I can do that. I will give it a bit more time before I send this
series split into two to allow time for the rest of the patches to
gather comments so I avoid sending too many duplicate patches.

- Charlie



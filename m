Return-Path: <devicetree+bounces-22888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 825B980921B
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 21:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B40D11C20979
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 20:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1CB50259;
	Thu,  7 Dec 2023 20:15:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61528170F;
	Thu,  7 Dec 2023 12:15:18 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6d9e179b217so402185a34.0;
        Thu, 07 Dec 2023 12:15:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701980117; x=1702584917;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ytNDdKy1mnEm3e+yRbuE/HnHivt5uF3IXJRUZqNhUno=;
        b=mEa0a6rzS1oeICoVtcbftTkkjs341I0HaON9WkC5oS+ilW4BTpjvvAlMbjZmtc7P+r
         8d8TeFDbnhtPH/wAEC1to4Ce/SkDY0omOVRJjBAF3ysAgRWiSwyu/FCst/Zeqiwd1JJD
         yqeAzJFYE8OAx3i8JR2OpUDycclC4OftS3T3DMKu5U2wvlCN4FXM/LjyveyIzVQHd6LH
         zoRW2r/nLCWW8bXFmO3Dt7Fe8N0/YpglxGX1KMA5RAJ7z+Yb77xwDb83svvcS4FD7M7O
         QOyhRUS41jwZeLyQINBO3t6NHWLMaUTbehJzKYJfNXIhwdGd/E1x3HqD/Ajyj3YXzXTJ
         AlRA==
X-Gm-Message-State: AOJu0YzX77qTx0j0OLLYmQlGpuW44n3qtqxENWMjKcJ5/hxA8OI2Tflu
	qiIXTAq/9VbElyNoEsnzp9d//eEYew==
X-Google-Smtp-Source: AGHT+IFFpMDZK/yIr6hZpE4r1FjYZtPYedvtJwcGCyDCOPoNAYk8TdQZMuSyWAZEu2Vjduf1L9uMfA==
X-Received: by 2002:a05:6830:124e:b0:6d9:d144:c9a9 with SMTP id s14-20020a056830124e00b006d9d144c9a9mr2599082otp.22.1701980117581;
        Thu, 07 Dec 2023 12:15:17 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l16-20020a9d7350000000b006d9d3d0e145sm84403otk.10.2023.12.07.12.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 12:15:16 -0800 (PST)
Received: (nullmailer pid 3350191 invoked by uid 1000);
	Thu, 07 Dec 2023 20:15:16 -0000
Date: Thu, 7 Dec 2023 14:15:16 -0600
From: Rob Herring <robh@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, Frank Rowand <frowand.list@gmail.com>, linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 3/4] powerpc/machdep: Define 'compatibles' property in
 ppc_md and use it
Message-ID: <20231207201516.GA3348285-robh@kernel.org>
References: <e6cf01d41502b15e688b6f5aa5c3b68c62b8ac64.1701878821.git.christophe.leroy@csgroup.eu>
 <9da79892e7ff433095a7bf42e86aef02ab86b5c1.1701878821.git.christophe.leroy@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9da79892e7ff433095a7bf42e86aef02ab86b5c1.1701878821.git.christophe.leroy@csgroup.eu>

On Wed, Dec 06, 2023 at 05:13:34PM +0100, Christophe Leroy wrote:
> Most probe functions that do not use the 'compatible' string do
> nothing else than checking whether the machine is compatible with
> one of the strings in a NULL terminated table of strings.
> 
> Define that table of strings in ppc_md structure and check it directly
> from probe_machine() instead of using ppc_md.probe() for that.
> 
> Keep checking in ppc_md.probe() only for more complex probing.
> 
> All .compatible could be replaced with a single element NULL
> terminated list but that's not worth the churn. Can be do incrementaly
> in follow-up patches.
> 
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---
>  arch/powerpc/include/asm/machdep.h            |  1 +
>  arch/powerpc/kernel/setup-common.c            |  2 ++
>  arch/powerpc/platforms/40x/ppc40x_simple.c    |  9 +++------
>  arch/powerpc/platforms/512x/mpc512x_generic.c |  4 +---
>  arch/powerpc/platforms/52xx/lite5200.c        | 10 +---------
>  arch/powerpc/platforms/52xx/mpc5200_simple.c  | 10 +---------
>  arch/powerpc/platforms/83xx/mpc830x_rdb.c     | 10 +---------
>  arch/powerpc/platforms/83xx/mpc831x_rdb.c     | 10 +---------
>  arch/powerpc/platforms/83xx/mpc837x_rdb.c     | 10 +---------
>  arch/powerpc/platforms/85xx/corenet_generic.c |  2 +-
>  arch/powerpc/platforms/85xx/tqm85xx.c         | 10 +---------
>  11 files changed, 14 insertions(+), 64 deletions(-)

> -/*
> - * Called very early, MMU is off, device-tree isn't unflattened
> - */

Certainly an out of date comment as the unflattened API was being 
called.

Reviewed-by: Rob Herring <robh@kernel.org>


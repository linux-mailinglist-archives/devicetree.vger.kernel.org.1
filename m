Return-Path: <devicetree+bounces-12742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E94C7DB4FC
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:19:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FF371C2096B
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAD55D276;
	Mon, 30 Oct 2023 08:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Mx9IRwdv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8F4CA7E
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 08:18:54 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090D4A7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 01:18:53 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso655580966b.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 01:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698653931; x=1699258731; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ASGohF6wcQzyEKbt+mevQcb55fbQucBQCkmpGWTsGto=;
        b=Mx9IRwdvmnLyEA+4C1iP8h+hI0+6auDl0La07+WM9VkAoWZpQTqfmUx42hy28yEBHr
         amB803/yl4qMmRx85DmnnNcZe9b5RTsdtozq1EprI6UIfvEiy/TZq5hOppdRExHgGIG4
         0nKyJ+8f2QcEm6sAYtUuOc0HypV1nkyb4RAUM4Ze2KIyYy8GfhuplAkkTTZuTVJEM842
         sRCQqR4Krdi10UmMmoaogTb1c3ArqgpBAbqhqUCP7pFTbvUu+E/aljzv+Nu6XLSC2XH3
         RCx5dcQ1yoOsxkWuKwSwOYwLuAo16R26nO7Llkzex/btNPfPVnr2rfptYkZQutEl6WQq
         B3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698653931; x=1699258731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASGohF6wcQzyEKbt+mevQcb55fbQucBQCkmpGWTsGto=;
        b=IEO2F+kJAlox/RSMEcVIc5XpVAx7qkjdMfxNYW2Yf+MKNAsUzXaGdEqEO6hIQTYVYo
         kSLIOE6UeV1jPeXiUMTovxIPiO7eKMBE5GgLqIA7qDlo0W2/rodDmL4JwEbY1YDketmh
         uynO6uryyPe90NWULdjm1vSFUfT+hWpXoRJ4t3QjtXLjXmIxOENHGluGzn+A0o6tYRv3
         qRBBMOEE+GwGidWUDjOoAhb4HExLrX2zMRnQDxXaXqTTKi6LIZBnb7LIyvOuz6HAZIvv
         VemKVcJMUVFVpnkTL0NETNTVcOrpu52YOl3NuewdvpE8WygKRHvC7zkexJ+jYqgVpDhq
         LWCw==
X-Gm-Message-State: AOJu0YwFr0CfjI6XC7BPMZbqKBE205/v2fk7zrIWFDmoKKM9c7rxjkNU
	6oxDj5hX1P5iuTGXGOkwy9UU/g==
X-Google-Smtp-Source: AGHT+IGdqsotN4dfRUTxJ2PytrYg4PIok+Da6/rxiuFLYsQNc0JOO256uP9qD7cm9yibCS0EteAn8w==
X-Received: by 2002:a17:907:7ba0:b0:9af:9c4f:b579 with SMTP id ne32-20020a1709077ba000b009af9c4fb579mr9498421ejc.18.1698653931212;
        Mon, 30 Oct 2023 01:18:51 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id n11-20020a170906b30b00b00989828a42e8sm5528320ejz.154.2023.10.30.01.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 01:18:50 -0700 (PDT)
Date: Mon, 30 Oct 2023 09:18:49 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Conor Dooley <conor@kernel.org>
Cc: Daniel Henrique Barboza <dbarboza@ventanamicro.com>, 
	linux-riscv@lists.infradead.org, apatel@ventanamicro.com, palmer@dabbelt.com, 
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
Message-ID: <20231030-d3db6c3f8cf46bbdd8191d65@orel>
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
 <20231029-kitten-provider-1602fa805c35@spud>
 <680a2f25-59e7-4757-ba93-1de7fe1279e3@ventanamicro.com>
 <20231029-sappy-ought-98fecff551fc@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029-sappy-ought-98fecff551fc@spud>

On Sun, Oct 29, 2023 at 10:21:55PM +0000, Conor Dooley wrote:
> On Sun, Oct 29, 2023 at 04:49:30PM -0300, Daniel Henrique Barboza wrote:
> > 
> > 
> > On 10/29/23 11:53, Conor Dooley wrote:
> > > Yo,
> > > 
> > > On Sun, Oct 29, 2023 at 09:35:00AM -0300, Daniel Henrique Barboza wrote:
> > > > Following the examples of cbom-block-size and cboz-block-size,
> > > > cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
> > > > The most common case is to have all cache block sizes to be the same
> > > > size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
> > > > cache operations), but there's no specification requirement for that,
> > > > and an implementation can have different cache sizes for each operation.
> > > > 
> > > > Cc: Rob Herring <robh@kernel.org>
> > > > Cc: Conor Dooley <conor.dooley@microchip.com>
> > > > Signed-off-by: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
> > > 
> > > Firstly, odd CC list. Please CC the output of get_maintainer.pl in the
> > > future.
> > 
> > Ops, my bad
> > 
> > > 
> > > IIRC, I mentioned defining this to Drew when he was add zicboz, but he
> > > didn't want to add it - although he seems to have asked you to document
> > > this. Drew, change of heart or am I not remembering correctly?
> > > I think he cited some interpretation of the spec from Andrei W that
> > > implied the Zicbop size would be the same as one of the other ones, but
> > > I cannot find that on lore atm.
> > 
> > The reason why I'm here is because I want to add Zicbop in QEMU riscv,isa.
> > I'm pushing a rva22u64 profile implementation there and Zicbop is mandatory
> > for it. In the process I added a riscv,cbop-block-size DT because, well,
> > if both Zicboz and Zicbom have their respective block-size DTs, then it's
> > expected that Zicbop also has one. Or so I thought.
> > 
> > Drew then replied in the QEMU ML [1] that riscv,cbop-block-size isn't
> > documented and we can't add it as it is. So here we are.
> 
> Yeah, I did read that.
> 
> > If riscv,cbop-block-size isn't needed because Zicbop will use the cache
> > block size of Zicboz or Zicbom, that works for me too - I'll add a note
> > in QEMU explaining why there's no riscv,cbop-block-size and everything
> > is fine.
> 
> I just wanted to remind Drew why we didn't add this in the first place,
> given I had seen that he suggested that you add it in the QEMU thread.
> And in the hopes that he would be able to dig the link back up to
> Andrei's comments, given I wasn't able to find it/couldnt remember
> recall where it had come from.

Hi Conor,

Thanks for the reminder. I had forgotten my own opinion on this :-)

I found the messages. In [1], I advocate for the block size DT property,
but then, in [2], I reply to myself saying we could probably wait until
we have a prefetch block size that differs from the management block
size, due to the "reasonable" interpretation of the spec that management
and prefetch block sizes are the same.

I think I could go either way. The nice thing about adding the node is
that it's self-documenting. While we could document that Zicbop will use
cbom's block size (and if we ever added a cbop-block-size, then we'd
change the documentation to state that cbom's block size is Zicbop's
fallback block size), it might be better for things like hwprobe to just
have them separate from the start. FWIW, ACPI already has a separate table
entry for Zicbop's block size.

I guess after letting this ping-pong back and forth in my brain a few
times the ball is currently resting on the "let's add cbop-block-size"
side.

[1] https://lore.kernel.org/all/20230914-892327a75b4b86badac5de02@orel/
[2] https://lore.kernel.org/all/20230914-74d0cf00633c199758ee3450@orel/

Thanks,
drew

> 
> > What we can't do is add stuff in the QEMU DT that's neither
> > documented nor acked in the DT bindings.
> 
> That's a welcome change.
> 
> Cheers,
> Conor.




Return-Path: <devicetree+bounces-255797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D874D29410
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E61C308054D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB30330B04;
	Thu, 15 Jan 2026 23:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FZEeQQgk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEAF29B8E6
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768519740; cv=none; b=paBwR6nK4c0A76PB3ODOndRlLBgMy1ba8Y8H3ioYxBoWsQ/xj6u8iLEK71XkGj9hFd2U1aZC7kXrsRN1XfYo0jI+EVseFwd2Po/U4rkoHmmKplU1kEhPfGkzZpX7y2l/kEzk9/vneB+SskU0PG5vL8IjDg+wDKm5blORm4Wv7N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768519740; c=relaxed/simple;
	bh=txanPurl5++EfE1uW4IYSyRpUU5HE1HGm9IY19TLNDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pYJsV01vabdWnxLLZtopud6ZpSRLXRh2pSCevGtPYST/mJAj+7l1lcg13LffC8OAVZfIRaEBX8yQQRz7CR9VCkP/UhFZ9NC4ncl9hpwVyiGOcHO2ySJOKDOonyrnbpHNbBL4kviOwavFdYoB2VKX+/17taCnCFj8gKU6Pnw6fbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FZEeQQgk; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-11f3a10dcbbso1458827c88.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768519737; x=1769124537; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EE4G2+Ee4dVjEHE+oRCN2fxuWRapI0YlnZyPBEUQyIc=;
        b=FZEeQQgkDc/a7srTgmW6420Utj0jwLuaffrlAdZ4f2hGOUq+NjU141TtYwSnCMZ8FE
         rTyII6kuUna96R5YPPirqbGmfUVowJW+9tmNKp231o2SM63S1g9v+Omb0HWtwVZzh0me
         i0OE/hPyMadJv2OQZ3yRQ5dYpy6c4HDPcY0GF2KWIumMxxCnx6yKxJcF1jUDr5KwlHEQ
         H+GqOrKha7HDyv9Obc+FsRPl0EsBjifIKr6Ys3fd+7bgE6651D53NWEke81u8UdtR6Vb
         jZCKlND6RI8AL8B6khUow02Bq5tfjfv+JEu97y56YZzkLIpcqhkIOlzZPmyQraUWL7U6
         BFfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768519737; x=1769124537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EE4G2+Ee4dVjEHE+oRCN2fxuWRapI0YlnZyPBEUQyIc=;
        b=KfhzKG2U5mrKXT+VYcbbz9/57hO6IAJr98kzYxAiSTidUxhVa+f7ztrv1J7BIcXcv8
         gnd5IXzMwLt9mVwdmZI+uTcIxEo+sdIXnPGzaUcp+C5dZ+oG12lRd4VIKXKuFtMfGZzy
         1YHY7AwEopGy4xAx7eYnQy5T4gKPwUMIb0dffMwVuVpt/zObwoIvbftmFGCbbDPXBXUG
         YrIq7ChZLJBzMQEEqKlOYAbmsOSwriMu3dgaXPYq7+pV6jbpEoq7bPM/BIlgsiq5CMCn
         eu4iT5wdoZQGRh9TpI9seO3k+WrIpVbGJ5iJcEVZut4DYFvBvLDKpTiybNGpuOn8SPnr
         zmSA==
X-Forwarded-Encrypted: i=1; AJvYcCX/Bq3FXd7VY1bDGV0lziNZvqkFJNo4SPJaM9VMN423HCgWjy4AbjZqdoyI06L5+ou3AGy+miErPS1O@vger.kernel.org
X-Gm-Message-State: AOJu0YweSiYJ8lIVOhVbfkI+B27fFZvacUlcaUfbiKyFvYGx5vtUIDYq
	a0t2E4VjwF+3HOi4L9f6zpfFrrk22oZHHgmwAybdBBEMinG/BZCGfKG9
X-Gm-Gg: AY/fxX4mP66nyanafn00jhuhBNGdZF2Z3PA4wzANeWrN0ItJgtLnThSMag5lvvKwJl+
	cvZOmQ6C7sh7yVHhz9GZ1PTvlofckrTC9HDKJEwplqq6TO8Y1dEc0If9RqYCM+N+Wk7ZlOz6dAh
	IrCOd9l+hsDcOHzQZ7hsDVQeyXp5hVugk2jxSOA3Pb5rVvOpMtYvZn/5bKo6130nZDhCG9d8JZP
	GE4oCDLTRSWgJ/L/ewpPq2NZ15V4V/9lVabXQDP2Reipykto1mIIGCcQTx5GIJDRn1XWRAjY7gw
	Ex1IxJkwkIrN6/FADPEuIAOT6weQIhiUfOZ9fjaWM62h5hbSgw4P7nCop8t63jSKoq0VYhboPWF
	G6rmU6C9gGJVaN5XwZUneSnUhWjrDuoRg83L1gAN9VLSmyUpWY7peU5bR9TsuM/jam7ZqEmH4Wm
	j7TboDejKV3w==
X-Received: by 2002:a05:7022:628c:b0:11d:f440:b757 with SMTP id a92af1059eb24-1244b35ad1emr888785c88.26.1768519737468;
        Thu, 15 Jan 2026 15:28:57 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac5842csm1005165c88.1.2026.01.15.15.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:28:57 -0800 (PST)
Date: Fri, 16 Jan 2026 07:28:52 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, 
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Longbin Li <looong.bin@gmail.com>, 
	Ze Huang <huangze@whut.edu.cn>, "Anton D . Stavinskii" <stavinsky@gmail.com>, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, sophgo@lists.linux.dev, Yixun Lan <dlan@gentoo.org>
Subject: Re: [PATCH v2 0/3] riscv: sophgo: allow DMA multiplexer set channel
 number for DMA controller
Message-ID: <aWl3_1g1Fw_50Blo@inochi.infowork>
References: <20251214224601.598358-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251214224601.598358-1-inochiama@gmail.com>

On Mon, Dec 15, 2025 at 06:45:57AM +0800, Inochi Amaoto wrote:
> As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
> the SoC provides a dma multiplexer to reuse the DMA channel. However,
> the dma multiplexer also controlls the DMA interrupt multiplexer, which
> means that the dma multiplexer needs to know the channel number.
> 
> Change the DMA phandle args parsing logic so it can use handshake
> number as channel number if necessary.
> 
> Change from v1:
> 1. rebase to v6.19-rc1
> 2. patch 1: remove a comment placed in wrong place.
> 3. patch 2: fix typo in comments.
> 4. patch 2: initialize chan as NULL in dw_axi_dma_of_xlate.
> 
> Inochi Amaoto (3):
>   dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B compatible
>   dmaengine: dw-axi-dmac: Add support for CV1800B DMA
>   riscv: dts: sophgo: cv180x: Allow the DMA multiplexer to set channel
>     number for DMA controller
> 
>  .../bindings/dma/snps,dw-axi-dmac.yaml        |  1 +
>  arch/riscv/boot/dts/sophgo/cv180x.dtsi        |  2 +-
>  .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    | 26 ++++++++++++++++---
>  drivers/dma/dw-axi-dmac/dw-axi-dmac.h         |  1 +
>  4 files changed, 25 insertions(+), 5 deletions(-)
> 
> --
> 2.52.0
> 

Hi, Vinod

Would you have any suggestion on this patch? Or this is OK to merge?

Regards,
Inochi


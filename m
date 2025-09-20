Return-Path: <devicetree+bounces-219630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C67B8D248
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 01:40:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B18C18988D1
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 23:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AA4286D70;
	Sat, 20 Sep 2025 23:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaukMz9X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603DA286D56;
	Sat, 20 Sep 2025 23:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758411600; cv=none; b=t6dN9iN+09bHmWTjPXfiEwCsXknXesuDNuYlWUe8ghcXQHFL66C/1mWqgCfBaePza8gF6PVaj0RM9yIEM2i3qJoiJEZJpHxnDP38snACHL/1AQy7cm+HNbv3I85IMkLr2FJ8BXG8oQ4Y8U6Z+Ae5FBZvf0qkVFhT3nOevIPQTY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758411600; c=relaxed/simple;
	bh=lfvyd0eukorymeOecy6sHOks87edoKZdQD+c2emmFSY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rlakniJ7OKvKNGHUWGuZxOaM/pjOW9wWhAadUnoMQRDuOk+PMK3F0qw9q6Zz2a7DZ/T9yQn8lFmCSa+ay5OAb4GRKzHml4s2ZFZTC4aoPiqnWXkxgC5lSwFxAUJ1qgUV2s62kKZB8mW2XaPNF7fYP7RhjqLbqmG0Cx5QtyNStJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaukMz9X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EB60C4CEEB;
	Sat, 20 Sep 2025 23:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758411599;
	bh=lfvyd0eukorymeOecy6sHOks87edoKZdQD+c2emmFSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SaukMz9Xoi0diaJjnjmHRiVBc537RfPRUW1pOODJmnUlIWzwGyFP6vFppIwF64T6y
	 a6zADKvBaY7vgMAJij3nZsG/usijLhtUmfBkXrvD3vqd/cQb9Fc6SINpMiS/nL8BXv
	 y7/Jdvevo4K7x9xJdlkZk7afWGfG09vyzxtuLPOz/zAQKLjb0Mdp9GyN0t606pLVxL
	 jw+wgWXeyMg3E1cbl2FPGlt2WtgticSI1O2EthcydwnGJSlt0ZxcZ8I6Xa91cRwbWy
	 +TbfbVOXiSBghYckrvx5De/EI5iL6hcNe6yPfMbTDjZCUa+CBT9IPUxpJ1e0RIldxv
	 u44ifDIGb8usg==
Date: Sat, 20 Sep 2025 16:39:53 -0700
From: Drew Fustini <fustini@kernel.org>
To: Han Gao <rabenda.cn@gmail.com>
Cc: devicetree@vger.kernel.org, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] riscv: dts: thead: add zfh for th1520
Message-ID: <aM87ScdxI-D2O6sP@gen8>
References: <cover.1758228055.git.rabenda.cn@gmail.com>
 <38abc793c2fcb9dd26c89bab10dd4450d91ced4c.1758228055.git.rabenda.cn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <38abc793c2fcb9dd26c89bab10dd4450d91ced4c.1758228055.git.rabenda.cn@gmail.com>

On Fri, Sep 19, 2025 at 04:44:49AM +0800, Han Gao wrote:
> th1520 support Zfh ISA extension.
> It supports the same RISC-V extensions as SG2042.
> 
> commit cb074bed1186 ("riscv: dts: sophgo: add zfh for sg2042")
> 
> Signed-off-by: Han Gao <rabenda.cn@gmail.com>

Reviewed-by: Drew Fustini <fustini@kernel.org>     

Thanks,
Drew


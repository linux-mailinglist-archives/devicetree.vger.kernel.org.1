Return-Path: <devicetree+bounces-204916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB4BB27402
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 02:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4330F170BAC
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 00:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFEF71C5F13;
	Fri, 15 Aug 2025 00:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="NXDusvXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269453398B
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 00:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755217718; cv=none; b=mWsfe/mPTwP/w1j4BUMu62hCRtXb4xgc6shmJ5C1j3O2baN4f+NcXB74HL+6da35lv+jvCBL3EdNkCFUgM+DvY+JLv8QQ9LLxVfF9Nu7SsUIHO4vPd+25qVPM4FhtQxJDr1qazTqCCPhEUVJFiIQBjkeSnMnBaSCkh8rORskDpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755217718; c=relaxed/simple;
	bh=yVKMqWKrf5rQ1fctBmoCT+YVt0KEBHfv/Hl5qX2iIME=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Um2Yypk9SvwOAHtc8brnFF+LgLE/Rc4qnq7fe9QBGF6NbH+QKqEVnd2JvKGAF1hqiVGipFkxLqbigkRt5XOrHLvDp622n7YqAyQW8jaeCSXN6KDeBysqfpnx7zX7Abd6aaGuS+SXJhJExRvzDLMGQztS+XsGjohfl4oeNXIOZho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=NXDusvXL; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e932be1b11cso571912276.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 17:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755217716; x=1755822516; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WhYHAOHHcTMvb/JsfZaG+H6/8e/UtvwiyrLLiJuYoaU=;
        b=NXDusvXL6RDgCRCDxKUzEN3WI/0qcEQ2PSOIsIplk50EGECaDRzbcUDEU3Zly74X6b
         SPQOPIrjBciSruYWWrG38SLwXySiwpcO+bGJOGrJ0yV72ChYATs/Ubdl0+/YwT5JBt+e
         T4lZPNS5vSdQgeq7O1CL4Jkjld8LLC4618XEjFGDObi8Ddd+u368ArYvz/E3wGH/Csvt
         NaUwTP2vssEsTWD0ED5gbpJTEOXHw6XhHMnk7MVmVe69ZPaD5zdhXD1BAv82PI/HJ/+G
         br9tNcr1lb45TBfub/uy9cnqllsnE54QUx+M3lHw4pkTqMEzbYT7H0OJgZraD6GGk7XP
         YRdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755217716; x=1755822516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WhYHAOHHcTMvb/JsfZaG+H6/8e/UtvwiyrLLiJuYoaU=;
        b=HEiOTBf90fHD9OEElVI4cCDcyjhQe4oD29FbW2YaDpssESK7irTWNrqVoRyFljdg1D
         FyBzER95svQUITzxccINYX8Xe5I/QHsXuRMkgOTNl1qDpH6GVYL9FqfFEOjk1lymWSWw
         mJuFZQzwi/LfmhHAip1PPezfBrkrZEVKuDGUxVhguBI8J770AmOc6/4BUHYFKSNRlmKM
         c5qWZLC8odbq6sKjyT2uDD2Lux0FnWULITWuzIRI1p4Gf6UncZW7BP6ccIkOhM+5jrYO
         xvlvqJM1zXGJBY/hEoYrWkNe5ymdNoEnzVF5lrFQouBmO4Gw9pF9IYNSeRZMBJQ3mjAG
         C7HA==
X-Forwarded-Encrypted: i=1; AJvYcCVqAx0QjWpamEOLTS4RwteninWJWXmMLz+yY/WLV6/vnaLgQj4U3vtr6X42d1RWv/2Y4Uuggpz8XUbF@vger.kernel.org
X-Gm-Message-State: AOJu0YwVx+A2SWvMjJyHZmx6SThfrnYYYctNtGWtl+K9PjqK0a72/Q/A
	MR4jOGwIdVLl7YkwyrvoTKr35qC4edpRk7KswPBNJUPsm3rahcVu2f8BwpT2XhaDI/gnDXIjcHL
	c0nGCLgyYT+kgyGnIzSdfWtfxkJ2yjVV++9WUyDgPVw==
X-Gm-Gg: ASbGnctPniOId6u8IiUhzyqksHNyUIHCnq9Ljr/slF4PwcfnuGLs94mlZJTwH44LYgR
	k/8L1s/CHxvTSblJJ7yCYu407uSTNJB1UPCXJSlIhD12ivUIJnwEzUIgTmKzbu9I0f0jwB2sk0Y
	XYwDOceAUcKDLfk7QlVfyqWU63P8L+cOsuLBPPozMLv/HLm74t+FDryMqGGljKBKV12FoOkhWoa
	3FIO9Fz
X-Google-Smtp-Source: AGHT+IEWHgZsAdK4qEvDGvsR02TXcwc61mkjg/mahmDjUByNY1vc8hT9AhSsb4gPaZW5ujgSq5lJQRMSMiPVldUmqB0=
X-Received: by 2002:a05:6902:70f:b0:e93:2f07:3fd2 with SMTP id
 3f1490d57ef6-e93323846bfmr333872276.5.1755217716217; Thu, 14 Aug 2025
 17:28:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com> <268633D49B18C3E7+aJxMHPhItPq9ioto@LT-Guozexi>
In-Reply-To: <268633D49B18C3E7+aJxMHPhItPq9ioto@LT-Guozexi>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 15 Aug 2025 08:28:24 +0800
X-Gm-Features: Ac12FXxnSnbbKz6jQ95n94znx3YpWdrJ0lK8qAhRBPKv8TxP7rZpNGXhbYfh50Q
Message-ID: <CAH1PCMaMm+aDXG4AfPbZ_iJQW2cuKY=VMU2_C1k6Vi3cBBSthQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] dmaengine: mmp_pdma: Add SpacemiT K1 SoC support
 with 64-bit addressing
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Alex Elder <elder@riscstar.com>, 
	Vivian Wang <wangruikang@iscas.ac.cn>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 13, 2025 at 4:26=E2=80=AFPM Troy Mitchell
<troy.mitchell@linux.spacemit.com> wrote:
>
> Hi Guodong, thanks for your patches!
>
> I have tested it using i2s and dma-tetst.
>
> Tested-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
>
>                 - Troy
>

Thanks Troy.


Return-Path: <devicetree+bounces-66220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F9A8C21D5
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:15:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11CA8288589
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 10:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85333165FBA;
	Fri, 10 May 2024 10:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxCBCHgs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602D9161935
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 10:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715336130; cv=none; b=sWOlmArYspZ8mTTNzX7zTnADCl5IeEyuRXVWSBlEHuZPjXiPsPwR5ocYvVbVW6rDofPSU5kAvOlaL+5c9/kYRL2eC8Lm7G/pKlYVmn4OpbtPNvAzXyldCfLdVBQmUu+w1VxT44vtjNs9q0zoWnM+mG+l6p9713YKZsTQHZ1mHqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715336130; c=relaxed/simple;
	bh=fuG/C5uoVJeB5he1R13vlv6JaFjBkCsdLihkGnNnFR4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fRbOUesdYDd9VjJX7808mS7aJiYZqiRhQy2DA3yKKqocK/2FGrv8wvqjuMLDJIfa0mZ8mujIexsL/ZxhTuU4hfdhylomWoyVgSnnjDm71m2VchbAsa4vQXubDixqWi6D+8HufglJmALP6CTZM5tNHatNaFlF9k0+wAOClX9z6sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxCBCHgs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9C66C113CC
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 10:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715336129;
	bh=fuG/C5uoVJeB5he1R13vlv6JaFjBkCsdLihkGnNnFR4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VxCBCHgsdSsdVgufVwqveZLVdPBZrMMyOVrsjnq/5JjtrevNb5Npyv/d25+uZFbeG
	 yMi4PyqOBEoY/YlWCW6O2AeItytVFwxtsSQk09lg1buIrTkGdUGTFD7MvZPgs4MGzV
	 xgD5FnlEZy/wY45+nzk20kPi/q6S2xB8Jl+77/qPvJJfbd0MCjEAUA/STKcLm/PZLB
	 ijgRS3pXuesFHm1LY+/M+lol2X9aS1ekFQhAM0WrLR37XZhpXdrDJd31oViQ4FiR2O
	 NZskjCwRxYQiIrrMzkjyGAcGxAIVXUAXPMUcrJXuwTXxhAk4yKfbf7ZJjL7yO9xWz9
	 UXDnxMgBBmubQ==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51fdc9af005so2945840e87.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 03:15:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWFVI4h86D/b6QiYW6QERHVNmPL6wX4X9fdhkS309Nf4I7qaeOD4XrNuPz9r9U6hP27yhW4bNwUFwXXSzq6vZwS2Nud7Z7HYb/Qmg==
X-Gm-Message-State: AOJu0Ywuf9xUxcDeYQXU3Nt/eFiMZp8Qaq/6g4mivWm1efTx4mUl5gLM
	p4nlPKJcq8LYQBj6a5h5j0oupdeB2T/VCoOeX7RHHd7hVb8Es3bXL/khN/3rtTDNcYeGtRN02QK
	EPW6+cJf/y/H5DH1LNq09aA3k5T0=
X-Google-Smtp-Source: AGHT+IHpA2hPeDINGwm2WivqVOTAivdj4Jj7oKDeK5FXs6PTXHahRnc0Iu44THVQzOHir8WHa1oL8OV0PP9125lWzzU=
X-Received: by 2002:a05:6512:3e17:b0:51d:605e:f0ce with SMTP id
 2adb3069b0e04-52210278698mr2442032e87.50.1715336128324; Fri, 10 May 2024
 03:15:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1715222938.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1715222938.git.zhoubinbin@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Fri, 10 May 2024 18:15:15 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7+htp6nX6gTtdPSjN1H7UNgOv7M7=Jn5eJuqWfm0=OwQ@mail.gmail.com>
Message-ID: <CAAhV-H7+htp6nX6gTtdPSjN1H7UNgOv7M7=Jn5eJuqWfm0=OwQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] LoongArch: dts: Add more support device ndoes to Loongson-2K
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, loongson-kernel@lists.loongnix.cn, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Queued, thanks.

Huacai

On Thu, May 9, 2024 at 2:18=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
> Hi all:
>
> Now, more Loongson-2K related deviers are supported, this patchset add
> these device nodes to dts files.
>
> Additionally, we remove the "disable" state of the ls2k1000 clk node as
> it was unnecessary.
>
> Thanks.
>
> -------
> V2:
> patch(1/3):
>  - New patch. Follow Conor's comment, remove the "disable" state of the
>    ls2k1000 clk node as it was unnecessary.
> patch(2/3)(3/3):
>  - Remove the "disable" state of the clk node as it was unnecessary;
>  - Add cpu-alert trips.
>
> Link to V1:
> https://lore.kernel.org/all/cover.1715156107.git.zhoubinbin@loongson.cn/
>
> Binbin Zhou (3):
>   LoongArch: dts: Remove "disabled" state of clock controller node
>   LoongArch: dts: Add new supported device nodes to Loongson-2K0500
>   LoongArch: dts: Add new supported device nodes to Loongson-2K2000
>
>  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 85 ++++++++++++++++++-
>  .../boot/dts/loongson-2k1000-ref.dts          |  4 -
>  arch/loongarch/boot/dts/loongson-2k1000.dtsi  |  1 -
>  arch/loongarch/boot/dts/loongson-2k2000.dtsi  | 48 ++++++++++-
>  4 files changed, 126 insertions(+), 12 deletions(-)
>
> --
> 2.43.0
>


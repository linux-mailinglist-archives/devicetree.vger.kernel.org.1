Return-Path: <devicetree+bounces-49382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F168762D4
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 12:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1DB0B20DD6
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 11:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6008E55C3E;
	Fri,  8 Mar 2024 11:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doMV37OR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386425579F;
	Fri,  8 Mar 2024 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709896434; cv=none; b=YFV7UxBURextze7ysPpdfDc68vwIcK76dDGb9Gve5oyfcXjKDEyygfH6iAYk50QdTt5BNRez430k377erVi8jaPuwbvgek0vJX+vGvF3XIGBUUJvJYqvzrqphaZN90uDzxvJAhOTVTTXEPanNWsoOKdcy1RDUBEXe3iY/WkYIOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709896434; c=relaxed/simple;
	bh=BuVBYWsmwX49Fhqo92Z/bLaqCoqyW2giAASonkICntE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TxS6/kfiY9gpP4wQVIGvpfx4gO4HB6jkzgCcnMRBzTmW//Q59Y/UPE6YnlYltycOP6kLaHRBYBmcdfUO9+KTRuQkC+YlINDpmA+JBc+B7LPAVSX9vLuMqHVgO8Rrugjaf/8Qg3XGs5fZ4DLcDJrKlgf873t8q4GQQvwtmkpESyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doMV37OR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 028C9C433F1;
	Fri,  8 Mar 2024 11:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709896433;
	bh=BuVBYWsmwX49Fhqo92Z/bLaqCoqyW2giAASonkICntE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=doMV37ORVKZTbNjfPd4LkcsHbDf049CRhYmqAaYiZNZzN0W5rrAo62vjMjGmvTH+G
	 K5Qhjgkb4HYKgoy9fIQJhgA3hxzzfQ3z5QUQ5ZXp7ISAsVRwHMcupZvmRJf2aiODVM
	 +v3CAZ3cd+auEYFqjnurAqd04Y1Wx/86wQiYHLAYjnLG4oHr+byuwM0q1JEzkB+D+9
	 q0pNsb5HMfpq+IEE300mVQ1bhreNlnxa2Vp6ehI4/d1+gGrUAS6M9ufFTPCVsbFPn9
	 1sS5xV3/Kq10al9t2op0LupDCYk6jNcOiY1UUZxyZCo0UO/rGB7wxfYgRFTOUDtZbF
	 U7osWCGz+9gaA==
From: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, Thomas
 Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, devicetree@vger.kernel.org,
 Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>,
 Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org, Atish
 Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Andrew Jones
 <ajones@ventanamicro.com>
Subject: Re: [PATCH v16 0/9] Linux RISC-V AIA Support
In-Reply-To: <87edclou4v.fsf@all.your.base.are.belong.to.us>
References: <20240307140307.646078-1-apatel@ventanamicro.com>
 <87edclou4v.fsf@all.your.base.are.belong.to.us>
Date: Fri, 08 Mar 2024 12:13:50 +0100
Message-ID: <877cidou1d.fsf@all.your.base.are.belong.to.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org> writes:

> Anup Patel <apatel@ventanamicro.com> writes:
>
>> The RISC-V AIA specification is ratified as-per the RISC-V international
>> process. The latest ratified AIA specifcation can be found at:
>> https://github.com/riscv/riscv-aia/releases/download/1.0/riscv-interrupt=
s-1.0.pdf
>
> It's been a been a long ride, and I got in late (v10)... Thanks for the
> hard work, Anup!

Too excited! ;-)

s/a been//

> Note that Alex' text-patching/IPI series [1] needs to go into the RV
> tree at roughly the same time as AIA.

...and missing reference:

[1] https://lore.kernel.org/linux-riscv/20240229121056.203419-3-alexghiti@r=
ivosinc.com/

> I've not caught any regressions for kselftests on qemu for this version
> (with Alex' series applied). I have not run it on real hardware.
>
> For the series:
>
> Tested-by: Bj=C3=B6rn T=C3=B6pel <bjorn@rivosinc.com>
> Reviewed-by: Bj=C3=B6rn T=C3=B6pel <bjorn@rivosinc.com>


Have a nice w/e,
Bj=C3=B6rn


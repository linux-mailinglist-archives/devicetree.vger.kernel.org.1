Return-Path: <devicetree+bounces-250608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA1FCEA69E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E34F730305B2
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6B4132D0DB;
	Tue, 30 Dec 2025 18:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="dkYMB6tm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E7832C932
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118004; cv=none; b=k+EECJQ78N4krv0yrx+K/U0WrJU6tsso7wC7U0CkbV/nEVyaRmO4d9hm9wfhWuwgIOqRHJAPpLxoG4PEzu2tV6T1oHCIgzqJHwmQyFVB4u1SlD6gcDXfZ2u0o97K4H43ipCPKRyPBVE7AWLAEP4vSM3zVzd+xudU7B/pduBYJkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118004; c=relaxed/simple;
	bh=NVJUvkx71xFKaq/BSEtekH0aZkiHJKOEY4q0BFJIAW4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sda7+w0SXMia4fOeQ7anWDmjOwaIOEcLwHv0fmFdnXXj5b1j73Yrd+hkTKPxh2o1xdDWU7IioWUl6qg8U/CH3h91hbGhZN+DCZzs5wqoRaQqYjVk5JjnA+6VRbRTnZ0Sd7CyDtfvW36Jaid3T5jP1EOM1YC9znwTmT2Mpe1ZElE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=dkYMB6tm; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-88a2f2e5445so129173946d6.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767118001; x=1767722801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4yVj/w5JDZnyERJYSMulDshPdYjkZAshZuWaOUGklxI=;
        b=dkYMB6tm3eAgxVBr0tnU8jpDlfsAZYtmDUJVYiBh8YF2E78nP2Le/QM3Ct6DRo5422
         PQaMnXu/bOq1Fb2Sw1j2dlFZ9S/8epZ9tsTiF7ZD99gLwLDWQCsEXIJIQTTkKDDn+IIn
         QNdVBIiLjxXN0Ocl356BAiaAZa+m1JKhaRxRvQLCwOMotqEZKas9VaHziBUVzssrXjMq
         Y8xx3O0DiMOSEF14Oq4Db0GJpv2/7YyQFS2xPoH4DpjEOzFyBfhJsxE2xP/jtPGfbVas
         TKPYhrScSWfG+NMi6dAsGkZVckR+vXcuo2l4vFB69x6MQ3+HsPl36vj3omE54aexdOvl
         1JgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118001; x=1767722801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4yVj/w5JDZnyERJYSMulDshPdYjkZAshZuWaOUGklxI=;
        b=cb09jfl0KlGEIAH/ZxNFe3b98DR86YUHQkSKTq0nsBRdeedobgMnqZvG04fd9NoT04
         AgCeKf5z1nYMNrJ9E3QhVpTPGrH7wL/eVQwm9M9LJnNFydPuahrB0JY/fgv1n8Lb80IK
         oUUl0OjjWO9yU6RYez5xO9RkR7AGTxO6s5oXcu1eeW/L/k9q6xjvhr979hqZee1VbYDL
         lgUNhjNiBjtuzSYpOcucG5pfswjOntXzHHmcbWNCuUcTSGjSE+C+lBvqghDRBFD/YZkc
         oEofapgxw5gw3NonMoLrUj6OwkxcVB70ndhTLBsehzR0fJwf2THihlgvYpycG/byC6fj
         EKIA==
X-Forwarded-Encrypted: i=1; AJvYcCVJijxydPYav6DBnV7uDua2bP+6auo6Z+nTE/5fUcCS39bdEw2uogxTol8CTlm2JOqklsVAmMEGQ+kh@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb03iwQUk1OGQJBY0GTyJue3feW7rJB3ufPp9Ay/5yUdkgEvue
	WZTRdmpF3nZgrAVq8t4ME+BaRZEu6T5ektSbUiizFV07ADH1UF2nnH+WY/OW8CHBbjg=
X-Gm-Gg: AY/fxX4Bn0DzPgHsSqXcXGXvOj3viReJHoj33hWH1TTa9a26QX8IwC16VCt2vekMP6b
	NyIbpNHzcJorA4ihapy4xs2e1qiROXFMeyVpC9HrjbLDbB0N6qgy8ghWybCOzBCQaHgif96uxHP
	l/xQ5y7ca1s4jKezL3sYcdfISdNAQu5ZbXrNQbhJKpr8c+dSugfzgl6jhxlw41l1kSiVPQFzFoG
	VzmG7uCVZ7XChKfEv9DO9QotMZPBY5/KKNyGVyjYFzKcJv7ew1YjCmOVdxqeoien4IWdSmr6OIw
	7HRrE6kOW/hXOmKoR4yzy0IGjtfQHgsT5xivCMJaF1xCDt5lNj2XG3C0VPXLhXdVY79pPQ205kk
	F5IRi04bFBJuzquygnhaFXqG30unBpCqPFT4Psgf/RjUCKdJMo2XfC96ikR2GbSBQW33fl7OJ7a
	fGGQUxyWePtMg07TcOcWfBWq0ywthZPCNKH0bwuHhMhuDD8xw8mD0=
X-Google-Smtp-Source: AGHT+IGutbAgelJ7VpLiqCRVpc5Qslt27XYYdm9lZscZshp31OHqvrlSlOewiedfwdLZdpnsi4JpGQ==
X-Received: by 2002:a05:6214:5b85:b0:88f:e9f0:77b9 with SMTP id 6a1803df08f44-88fe9f07bd7mr289091346d6.58.1767118001338;
        Tue, 30 Dec 2025 10:06:41 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d99d7e8d4sm261620256d6.41.2025.12.30.10.06.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 10:06:41 -0800 (PST)
Message-ID: <13ac4110-5ef9-4469-9fcc-4168479758dc@riscstar.com>
Date: Tue, 30 Dec 2025 12:06:37 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/13] dt-bindings: riscv: Add Supm extension
 description
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Guodong Xu <guodong@riscstar.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Samuel Holland <samuel.holland@sifive.com>, Anup Patel
 <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, linux-serial@vger.kernel.org
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-11-3af3f3cd0f8a@riscstar.com>
 <fc719e92-10bc-455f-b402-c93bdbf878cf@riscstar.com>
 <20251230021306.GA3094273-robh@kernel.org>
 <20251230-outing-discourse-723547cc14da@spud>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251230-outing-discourse-723547cc14da@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/25 11:22 AM, Conor Dooley wrote:
> On Mon, Dec 29, 2025 at 08:13:06PM -0600, Rob Herring wrote:
>> On Fri, Dec 26, 2025 at 03:28:47PM -0600, Alex Elder wrote:
>>> On 12/22/25 7:04 AM, Guodong Xu wrote:
>>>> Add description for the Supm extension. Supm indicates support for pointer
>>>> masking in user mode. Supm is mandatory for RVA23S64.
>>>>
>>>> The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
>>>> state") of riscv-j-extension.
>>>>
>>>> Supm depends on either Smnpm or Ssnpm, so add a schema check to enforce
>>>> this dependency.
>>>
>>> I have the same general question on this, about whether it's really
>>> necessary for the DT binding to enforce these requirements.  The
>>> RISC-V specifications are what truly defines their meaning, so I
>>> don't really see why the DT framework should need to enforce them.
>>> (That said, I'm sure there are other cases where DT enforces things
>>> it shouldn't have to.)
>>
>> Does the specification have some way to check it? What happens if a DT
>> is wrong? Are you going to require a DT update to make things right? Or
>> the kernel has to work-around the error? Neither is great. So having
>> this as a schema makes sense to prevent either scenario.
> 
> The reason this whole mess exists is because extensions got redefined
> after the kernel port was merged and the bindings defined. This is

Redefined, or just new extensions defined?

Was support for any extensions added to the kernel before they were
ratified?  Even if so, did the meaning of the extension change
between when support was added to the kernel and ratification?

> almost all a hedge against there being future redefinitions. For now,
> and hopefully forever, this will just be a list of extensions with
> citations to their relevant documentation so that we can say "this is

Yes, this is good.  I think the bindings should, where possible,
just refer to the precise definitions in the (ratified) RISC-V
specifications.  But I now agree that they can also encode
logic to enforce things.

> exactly what this means". The added bonus is avoiding messes like people
> implementing development versions of specs and claiming support, because
> that just becomes "your devicetree is wrong".
> 
> The dependency stuff exists because it is far too easy to miss something
> in a list of 30+ extensions and dt validation can reduce some of the
> complexity required when checking what extensions are supported.

By "dependency stuff" do you just mean the DT binding logic?

Anyway I've come around to the idea that DT bindings actually
should do validation like this.

>>> And now, having looked at these added binding definitions (in patches
>>> 07 through 11 in this series), I wonder what exactly is required for
>>> them to be accepted.  For the most part these seem to just be defining
>>> how the extensions specified for RISC-V are to be expressed in
>>> DT files.  It seems to be a fairly straightforward copy from the
>>> ratified specification(s) to the YAML format.
>>>
>>> Who need to sign off on it?  Conor?  Paul?  DT maintainers?
>>
>> I generally leave this extension mess to Conor.
> 
> And generally I do without that much back and forth, just so happens
> that a couple of the ones in this series are the less simple cases to
> deal with.

Thanks.  I may have a remaining question or two for you but they aren't
that pressing.

					-Alex


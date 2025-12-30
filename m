Return-Path: <devicetree+bounces-250600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C1816CEA614
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:01:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4F34C30039D3
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A7562D3738;
	Tue, 30 Dec 2025 18:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="l1Ic1D2j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAEE1FBC8E
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767117705; cv=none; b=Oumqh4NhcFx2r3DSlfqplPk+cVSvTR2poaV5TNQjmlt3TmOkmRRvSlo3qLqy8OUtO+4IDLR20QIgLj+3dqHOwKer9BxuxrNqC+QrSn+UZ7uwcY23Nz3nVHsMpIyYPhPW/F9CeAqW5HwrOrmAMuOngLTxlwhnCdT6nVO5QMDEUd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767117705; c=relaxed/simple;
	bh=beErfPEX0OlO3zNKallVZwgEL90BA0LTr5E6JCdy4ic=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s9eTQvT7mYjnO42O1nUp1FWpKgVJMpxdzgJXoWutkj0AkJmrYksUYuRQRyXVa5E7mh8GoCxBE387V3Xqvqtlj5lvP9leC/nic5gPkxR2Y58Gy2Z02o5FGwBj1/5+CnapILPp/Ac1Rc2qiLs5Wxv6yZdfTeiwpETCHMwXWNnvZcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=l1Ic1D2j; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-3fe3cc80bc3so2801251fac.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767117702; x=1767722502; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aLZJiVuRd6YrPeNX7NwPmCHPzKyPI+OhqBEP3ZsDFnU=;
        b=l1Ic1D2jkjlwxD7YTzyaGHWxfgkb2JjWaxDSpKTONgujDHqqOOstMHPEFj/NTiA7oB
         aFdRML14Qjnx/qswkhBD84btUalQndukpk1zHapVQkZt+ugjBQuJXBxSzPfUYJbCZ6cm
         d0AtN96XoBHQpNUJwgk7cyGHAirhZB99aEPToUb0gGTutXXoTXINBjfU6E/+AVrazJaU
         he0bOzyo6+iiiZxz3UOjcKcPaJMFqv8F4xTPgdoPv7TSN0zULAlKM8L1Kfmb4Vqsr/Kc
         8sEAx30UBYTR3YdGiHNa2YJvD52mHLCpLTwjZWACd7Lf1wxVjQULG+zF4DbtX2YWlkZj
         2MVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767117702; x=1767722502;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aLZJiVuRd6YrPeNX7NwPmCHPzKyPI+OhqBEP3ZsDFnU=;
        b=csTvVSX2N2vLhTPIUDW2v0MpDMyIn5cuf4XKRYVRsggMmgMj/iQt4Q5vbXcw2h0Fe3
         gI7Q7zmq8e9Xss7X7wuTnm+/7Pmst2UIZ1kG4eS/AUykUM1AhiEihpe3/MHFqhfW7ORX
         Wb5uHoITyYdKn7HXz9b3N+5/+3f0T22gyfa6UAZs8vcUD/2+fWS2mrOsimPMloadbdR6
         I3H+lfT+1v2UFMhhwlJM6qItlgjjVxOhuSGa5Io7Oqk5aUPka9sf6NIJIwczsXJsyOlJ
         52pvcEF+rkO80B916C4DuemDbfDoEenj629z1yEEqGVskI6rSS9s/cAhCF1zzKEtaGW/
         LjIw==
X-Forwarded-Encrypted: i=1; AJvYcCVTo77HiuMNe3kEaZMvJJdbn1Ex6XvL6YxuEsenUY7UnxNm1U0X1tD/0+tc66H1BMrzlaRrpRQwc2OO@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmy91GF554WUBSAZqglGoKzvSoRleQXGM20dZIrekBGwcKvrsC
	tQEUmPAV6Jak0P8nD6Vt//S7kosx9TuGIFvsHZ4XftCE+SHYBUlc8WQaflrV57zLciU=
X-Gm-Gg: AY/fxX5Kb94h1kUjU1lxRnGhpVRTbyypnMfGA33/i856KMzPrAOisjmDTa5dN+XgCcg
	ue3wmxWB+hEmsFUqcvqWOyCESuFb9dv8fJ0EerlUJTGj4YWvKl1KBNEV7SDfqsHQNVO0Dl8XcA1
	UgJSlCvvLgkvQs1w69IgBkYKfMGRCgLTqDh3erdH7q3XLhZ73FqdT4PmoaWuXZV2Tt6fEG3rdGq
	QzMImCvGfbHxtlqVsbO3f9YvyWzw39oS2g9qtIchUBKQRLImdhtKWxpzXt9deCNrv/Hwk01CdJh
	yMf1B7Sd3d/kWpyjSZxDtpMF2QqboJ+qy05Id0i7a7eyWwk959UlenEGhcFXoz2VfMIVjqa4Ter
	GLFh7u2Y/GMASsP/hRWwW7x0YQxNrHOaT8rXpDN4hWfW9cn4T4+FzkU+TBSuDAib0HjeF08vXPZ
	fkaG7UeKLbUeQgj0AJeDEWijneuffLgDNSFw5IcT8qcAmxgdQGBac=
X-Google-Smtp-Source: AGHT+IGi1m7SjVdJNAYRLqjlgNp7VArCjUE4lgUnF+WYS7qgsHMtSCI3u2nAje+cfetZUiRTlAYy+w==
X-Received: by 2002:a05:6820:4309:b0:659:9a49:8eaf with SMTP id 006d021491bc7-65d0eb2ef39mr10935767eaf.51.1767117701855;
        Tue, 30 Dec 2025 10:01:41 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c096a8c2ecsm2612131785a.23.2025.12.30.10.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 10:01:41 -0800 (PST)
Message-ID: <2ab3f704-22ef-4e75-bedf-95c1956e312b@riscstar.com>
Date: Tue, 30 Dec 2025 12:01:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/13] dt-bindings: riscv: Add Supm extension
 description
To: Rob Herring <robh@kernel.org>
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
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, linux-serial@vger.kernel.org
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-11-3af3f3cd0f8a@riscstar.com>
 <fc719e92-10bc-455f-b402-c93bdbf878cf@riscstar.com>
 <20251230021306.GA3094273-robh@kernel.org>
 <80e18a32-543a-48f5-81f2-4fa64cb8bf8c@riscstar.com>
 <CAL_JsqK8hRsVWV6WfbZ6hF1PwFfOJhyOrpWwoOhviAgv5ZxKUw@mail.gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAL_JsqK8hRsVWV6WfbZ6hF1PwFfOJhyOrpWwoOhviAgv5ZxKUw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/30/25 9:21 AM, Rob Herring wrote:
> On Mon, Dec 29, 2025 at 9:14 PM Alex Elder <elder@riscstar.com> wrote:
>>
>> On 12/29/25 8:13 PM, Rob Herring wrote:
>>> On Fri, Dec 26, 2025 at 03:28:47PM -0600, Alex Elder wrote:
>>>> On 12/22/25 7:04 AM, Guodong Xu wrote:
>>>>> Add description for the Supm extension. Supm indicates support for pointer
>>>>> masking in user mode. Supm is mandatory for RVA23S64.
>>>>>
>>>>> The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
>>>>> state") of riscv-j-extension.
>>>>>
>>>>> Supm depends on either Smnpm or Ssnpm, so add a schema check to enforce
>>>>> this dependency.
>>>>
>>>> I have the same general question on this, about whether it's really
>>>> necessary for the DT binding to enforce these requirements.  The
>>>> RISC-V specifications are what truly defines their meaning, so I
>>>> don't really see why the DT framework should need to enforce them.
>>>> (That said, I'm sure there are other cases where DT enforces things
>>>> it shouldn't have to.)
>>>
>>> Does the specification have some way to check it? What happens if a DT
>>> is wrong? Are you going to require a DT update to make things right? Or
>>> the kernel has to work-around the error? Neither is great. So having
>>> this as a schema makes sense to prevent either scenario.
>>
>> I'm really glad you weighed in.  I actually have several questions
>> related to RISC-V extensions and DT.  But for now I'll focus on
>> just this...
>>
>> To answer your first question, I'm not sure how the specification
>> is "checked", or what "it" is that you're asking about for that
>> matter.  Also I think we have to be clear about what "wrong" means.
>>
>> RISC-V is defined by a (large and growing) set of specifications
>> that are developed through a well-defined process.  When a spec
>> is *ratified* it is committed, and it won't be changed.  These
>> specifications are ultimately *the* definition of RISC-V
>> compliance.
>>
>> I assumed the "wrong" you're talking about is a DTS/DTB that has
>> been committed but somehow does not match what a RISC-V spec
>> says, but I might be mistaken.
> 
> That's correct.
> 
>> Anyway, we can flip that around and have a similar problem:  What
>> if we define the DT binding in such a way that it doesn't match
>> the RISC-V spec?  The (ratified) RISC-V spec is right.
> 
> Sure. Any time there is more than 1 source of truth, they could be
> mismatched. But it is 1 spec and 1 schema to compare, not N DTS files.
> Checking the schema matches the spec is much easier than reviewing
> every new DTS file.

Yes, I understand that and I agree.  We *do* have tools to
verify DT files against bindings, and at least in this
domain we don't have tools to verify against the RISC-V
specs.

> The only true fix is to make the spec machine readable.

But barring that, we can define the DT binding and try to
ensure it exactly matches the RISC-V specs.

>> My thought was that we should have software do the verification,
>> and recommend the software (e.g. arch/riscv/kernel/cpufeature.c
>> in Linux) be updated to verify things before committing to a
>> DT binding.
> 
> That moves validation from build time to run time. How is that better?
> And what about other OSs?

OK I concede that encoding the logic in the DT binding is
a good practical solution and I take back my suggestion.

> I'm very much of the opinion that it is not the kernel's job to
> validate the DT. It obviously has not done a very good job given

This is exactly what I wanted your opinion on.  I mean, I
already agreed with this statement, but the existence of a
different (RISC-V) spec as a source of truth made me consider
that maybe it wasn't DT's job to validate some things.

> issues we find with schemas. It's fine to have some checks in this
> case if the kernel can't function (or use/enable the extension)
> without the dependent extensions, but there are lots of classes of
> errors the kernel doesn't need to care about.
> 
>> To me, C code is more general and more universally understandable
>> than YAML rules, but I'm biased by how well I work with C versus
>> YAML schemas.
> 
> Personally, if I was going to do validation with code, I would pick
> python or any language that can handle lists and dicts natively. I too
> would prefer C for everything, but it's not the best tool for the job

My point was about DT binding logic versus kernel code logic.  But
yes I agree with what you're saying here.

> here. Even if we decided to do validation in C (I'm pretty sure we had
> a proposal to do just that at some point), we'd just end up defining
> our own data structures of validation data. Because at the end of the
> day, most of the validation information is all the same structure of
> data (i.e. a list of properties with lists of allowed values). I'd
> much rather follow some standard (json-schema) that's already
> documented than try to come up with my own poorly documented
> invention.
> 
> I do think there is some need for code based validation as there are
> some things which can't be expressed with schemas. We have some of
> that in dtc, but that only works for core bindings. Some sort of
> python snippets of code in schemas is kind of what I'm thinking.

The main things I take away from this discussion:
- DT bindings *should* encode constraints for RISC-V extensions
   to enforce certain requirements from their underlying RISC-V
   specifications.
- The reason to do this is that the DT tools we have can help
   ensure correctness.  And doing it in the binding means it can
   get reviewed once, and the logic will apply to all DTS files
   that adhere to the binding.
- Doing some validation in the kernel is still useful, but anything
   done there needs to replicated in any other code bases that need
   to parse DT files.
- Conor owns this mess. :)

					-Alex

>> In any case, a "wrong" binding is a problem no matter what the
>> reason.  One way or another there are things expressed via DT
>> that must match the RISC-V specifications.  And yes, we do have
>> tools and bindings that can verify things related to DT.
>>
>>>> And now, having looked at these added binding definitions (in patches
>>>> 07 through 11 in this series), I wonder what exactly is required for
>>>> them to be accepted.  For the most part these seem to just be defining
>>>> how the extensions specified for RISC-V are to be expressed in
>>>> DT files.  It seems to be a fairly straightforward copy from the
>>>> ratified specification(s) to the YAML format.
>>>>
>>>> Who need to sign off on it?  Conor?  Paul?  DT maintainers?
>>>
>>> I generally leave this extension mess to Conor.
>>
>> Sounds wise.  Should I address my other few questions on this
>> topic to Conor?  I don't want this particular series to get
>> held up on unrelated discussions.
> 
> Probably so.
> 
> Rob



Return-Path: <devicetree+bounces-229200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBE4BF4E22
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EE417500DBC
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B6A27B347;
	Tue, 21 Oct 2025 07:10:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF325274666
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761030610; cv=none; b=DtgkpeGZw4llo+0g/XCbmNxSBo2YrtLLffenochMR5DdfoSMGuip4qoyhV5HJU9REr6FO4mII+SDzi8Xocyb1qUrN+naC4puO9E3RWI4/MMHmbouX5uEzDbqIp9v1VM/Y0BoTQF+R4XBjaDSx09bMJ/9MR+jrcjY2NAyIYdvboU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761030610; c=relaxed/simple;
	bh=EaWOviValG7y7rDuZFiVJwGc6tgKAHv5i2TxQg6KxAs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aCnC4obB68Ag36vRWGVtLh6wdY65N1wRdSZw3sXhJPivndIHGzY10GpjrfD+lLUqNMHdgBpO041hHPZ2tDsKy1YyJzsYo9thKwAz6bD+mGH+urETqW4tOu3GiTWXF9n1dnBQW3KJzlaU5QNNwLglR/VAMKiLJxNF+gAlKYC9MRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5d28f9b4c8cso4551719137.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761030607; x=1761635407;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hx+KW0owCtgL2l75gelOTcl0W9UjxPp1nCTrQDZYmug=;
        b=e4q58ZeuzjcAsbuZg9kiClBaBTaTDFMZYwH5UWWPM84S8FkNSCkbVDMk1vYNKM0Nnq
         k07Feu3ypzF+eQtDQe77sJJzzC1IjcFiz4Rc3/vBECKq6q6En22/0VvP6yn1TLktwHEt
         LFjPVSgL4e4P6VZdQ6HEZsK2Hhi3rtvx56o7SEmfxProfAbetZcnF0mC5l34o32gYlcJ
         p/aUv2p1A6aoNwuO8bqZVg6dyEKusg6j4PQLoNBo1vheaBaB98/I5u+i6nflhcFuGXQH
         T2lS3piotw/lBg9BMM+wuoHl3y6HTPdTUNSk9mcej+WcL0VGSoONllumGA9x3OhNHXXD
         /kpw==
X-Forwarded-Encrypted: i=1; AJvYcCWMb/ULs0/IePFvkpKJLRQHIfhALEk2T3BOGk2zQVWUmXLngT2O/EecsVJ3ckGBnB1LYP6o4uHN7/9q@vger.kernel.org
X-Gm-Message-State: AOJu0YytNVcjDFWUzJBmI+p6CnfVHAWjxuYmbqjYUkE8OF9oVppblaHq
	OhnFP+zLA7rP0NEU/qtaPLdDQD5la50PcMOuqpl6cXMtaAlTKdpcJ2hxAC4uJQh3
X-Gm-Gg: ASbGncsa0Mf+Esl9dBR4Xz1UkzdeUzPjp09Sy7LsHLA/JZ3DACiO5M9odzSQIcJmmn/
	1fiSWVV/MvW+wol71Zoabjei/0tHBUUmNEtcfFsGNYbquD20BDmJxhrr8dTkV5DKFXbcGcsiZnZ
	l4Rz6Az9n5EB22Xw0s/jQqJ+uUC5Xw9GaauSEEkYK0WLPsZEhkPPEecntGYCoisZ1T/1CY1b5g+
	0btJWoV1Urmg/UxPQqVeIvK2z8olpNMszVTgJ7MsEMI+cfccST0G/+XrZ9WncqQJ3NXiXNNECrK
	QXQbiwSOny31CZ3h69dbj2g+RhIKEJHshR3VfbgCaWU6wgJV1glBCMg8L/9bqBJm6O1bINPUA8V
	YIw3cNpgtKiOmyML3XIoR/JnofHo8UsQygHjDLt9R2K6/eenc5oBYdUhO9ZwVINUtdEhDISbdGy
	3hhRiwTW0qO1noKO+A5OhBEqes3p0a4kJ786h/66A9oRLThHagpdPOyxx9lRU=
X-Google-Smtp-Source: AGHT+IEZyq9j252hY2vpi8YRQlmlR3RUwBpvYTrQAPwhk5taTegNJj1hnsBeWQ6aMPtIsJTK3x98/Q==
X-Received: by 2002:a05:6102:a51:b0:5d5:f6ae:3908 with SMTP id ada2fe7eead31-5d7dd6d3bb4mr5351069137.38.1761030607345;
        Tue, 21 Oct 2025 00:10:07 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d96c0ba5b8sm3335225137.2.2025.10.21.00.10.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:10:05 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-932e6d498b2so683815241.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:10:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVp2PNKaLVZtgZXQ4sIGgBU2cBED4YRrL+qv5YQFwpaNTChuhxjdvmHccBhP6ulGPca2AR1+ph6kZqh@vger.kernel.org
X-Received: by 2002:a05:6102:548d:b0:5d5:f6ae:390e with SMTP id
 ada2fe7eead31-5d7dd6d62camr5385724137.44.1761030604638; Tue, 21 Oct 2025
 00:10:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017115123.3438-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdUCSRKAbD=DfJxfFGpfKTRkt=a2BO+HnwTqALBeeECOkA@mail.gmail.com> <aPaSF2lokJ748cTx@shikoro>
In-Reply-To: <aPaSF2lokJ748cTx@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 09:09:52 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXv_R6POTQe=MEcEOraKhjhzwrW5skkWnzgvijF2qAykw@mail.gmail.com>
X-Gm-Features: AS18NWDdpjVO6Fys_8jqiH_KABjmm-PcYwNOkQaFcM5LilJ7ylXgPRFU02A3n_M
Message-ID: <CAMuHMdXv_R6POTQe=MEcEOraKhjhzwrW5skkWnzgvijF2qAykw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: sparrow-hawk: don't reserve SWDT
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Marek Vasut <marek.vasut@mailbox.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Mon, 20 Oct 2025 at 21:48, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > Or better: drop all these swdt = reserved commits?
>
> Maybe. Since Marek is maybe interested in fixing FW...
>
> > TBH, I always had my doubts about making them reserved in the upstream
> > DTS, and there does not seem to be much gain in doing so...
>
> No strong opinion here. With "reserved" I think I followed your
> suggestion but I personally don't mind.

Well, the proper mechanism would be that firmware using SWDT would
override the status to reserved, preventing the user from using it if
it was enabled in the DTB passed by the user.  But (a) the current
firmware doesn't do that, and (b) we currently do not have a use-case
for enabling SWDT in the DTB.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


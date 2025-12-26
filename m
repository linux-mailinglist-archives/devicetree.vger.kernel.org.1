Return-Path: <devicetree+bounces-249781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA2FCDF0CB
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 22:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E0E7300A86E
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 21:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B7A0278E63;
	Fri, 26 Dec 2025 21:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="eM0cnaRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F329927F756
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 21:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766784518; cv=none; b=g17uqFhoikfNSruY0cFFGuyVL02OBHiPeK7GLr9/Zf2mz8Z43LCX74JrtuhEM9Uk76w/9SCyxU0iyUUYUEuUOAzDYliOfxCWYViPCny51n5u5ZtgWa0V+qJEJz6e2fcBaLOIJ/QTf4hQRe7I0d9+RwbOi8pvz4hNtn1aA2jMQNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766784518; c=relaxed/simple;
	bh=ZhGFWm8Y7M3qzky9yCK/bA9/qroETuciVky1Ja9nmpw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DkctvIb8oGEp1d83F68OHkGAoBPbOuB6i7nxR33UxoNeh/ociL9H2uwdLKSR+F6kLEX6dFyAIGKuwDlmuu+qZOsukt47IFpaStOvFKlWYZ4AKMM+ByL7jOwg8pw2G6FJLccNbE5S5aRuKfLUJgnh6PwnlLNIhAizJ4XKcKpLcuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=eM0cnaRz; arc=none smtp.client-ip=209.85.219.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f67.google.com with SMTP id 6a1803df08f44-88a2ad13c24so72789656d6.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 13:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766784515; x=1767389315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fm5dxyjoGTgLB5EfhliAJ+8GZyHW/7sdxpOXkZhyc4Q=;
        b=eM0cnaRzB/SvQPYR7gBvZY7rfY1koUSb4dPNYT66DTGqmpm6Cu+WIf8w6We7UmMvIC
         LSMu8rbh1FZlsC5wBi82tm1mU7+essMJu2jgJ9nR5PYAsxauKvR+Pxi0u8EKmUtqIyZS
         UoplvFmVS+Dz+PosAoBiIQRbq7TdqPPd7ZarO1zQASSZ95BQe1BVGE4SN8tKxERL/uUR
         dXvsFXF2n39qecpCRXagMzvezGc9noAOFo1gRwjKgHqS9gbd9PtGKoCOvyjzRngFrJzy
         DLJC+zr6bzYwVQCPy1xrNU5H8OjsmNGaFW4Ii4c1hIU8rbmzXXqz5se0CXn+66YsySMJ
         04+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766784515; x=1767389315;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fm5dxyjoGTgLB5EfhliAJ+8GZyHW/7sdxpOXkZhyc4Q=;
        b=XwhR8MblTPArkPJhPvhdEjY2mBxfexuisVGDEolpHTfGTdvun5mCHqh9sTKujemEkY
         M6OIwmO2VAFxpodgSyxWftM0QntBjQ37rRzQKTA+W1AtOrmQ31y2xzY16pu99HcORvb4
         7bFrocgkJo91R0iROcV1AL94fFyPRsMihzKbVAIMlxApHlQmUNT/Frs/z8SCONkRMkS5
         0hZ3DBN4kQv8jjruCme/jrf8EFM3P8NK3zl7NT187Wq29qjvu0pFhXfEmr5GovE4rkB/
         ZdkHJNo22oOBJxqWnESy+L/0+TVWVTnCNXMZLCDUKJu9nnOUh6dlrUd3LW1DYjOOELk9
         Dugg==
X-Forwarded-Encrypted: i=1; AJvYcCVRW8RaPFPifG8KNAhX/JT7szDM0PdWwTb3T9tnxpFAUcfWbsxKdNBS3vDRXoHDHKENo6snFtlgHW1D@vger.kernel.org
X-Gm-Message-State: AOJu0YxtBaO4g9aZeV1NiWJ7D9JGthHgLtWwLIPa6Tzev3WdcXhQ+RYk
	xRBI2ytqqHFuJZQJ8GCnkGwwNzkmpLnVeLg6hcRDp+cU2tLw0YTQMF406R7rhWqwLWY=
X-Gm-Gg: AY/fxX6QkUSmxPsYWhqujqRtHZ+dqTAv0YtMKLfuI6ErvEUsGVB0fCNqNSkur/IGTOj
	4jiP1Eb5ve9zKH/AndxzyDmV/GekKwBvE7ek7v+mkhkVynnekpqHt+PZIk/snvF2Da64w1X8P5s
	JEA7R2Dmfua3T4rHbn30lJuki5eHtCa0chYCv4u23ZKVg8H6h4NrP/ZmjgxOktmu8Z2cMW3fkdx
	46fucA9v7Ec7wt7UYA1XcWhZc8QFzOf6vtNBATWAkpYZEfhY0rFAZSV9GxckUjjgGyzoJPOyvCs
	bA0gpAmp251hNtHDThekwnR1gGdQs3G2oZqPCJCsTnGsUWS8cy5cN26Jks4HzxRJ3qc4YgDIAzX
	XYLnBcMH/MltUgXWIgOoDrWS6fAiWPlIXKbTNBcytL8RVR7aLBdTWYp7cR54/M9xGEr7Ky2Y7A9
	DUZeUHqGGr+QkEtxePe2J+0GA3l/OIvYSAsJaJzIvB9RwrjW7gGmE=
X-Google-Smtp-Source: AGHT+IHacwFIf7+7Gu6DCHAGNcJqj4mIg/TsHnBOgw2K659NvhFpRoQ/eMLaH970LQj3miK0Jz/+jQ==
X-Received: by 2002:a05:6214:1403:b0:88a:2578:9fa9 with SMTP id 6a1803df08f44-88d84528e20mr297151096d6.2.1766784514736;
        Fri, 26 Dec 2025 13:28:34 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d99d7d5f4sm176833206d6.40.2025.12.26.13.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Dec 2025 13:28:34 -0800 (PST)
Message-ID: <8851c155-300a-4241-a5be-5163ba54e47c@riscstar.com>
Date: Fri, 26 Dec 2025 15:28:32 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/13] dt-bindings: riscv: Add descriptions for Za64rs,
 Ziccamoa, Ziccif, and Zicclsm
To: Guodong Xu <guodong@riscstar.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Samuel Holland <samuel.holland@sifive.com>, Anup Patel
 <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley
 <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, linux-serial@vger.kernel.org
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-8-3af3f3cd0f8a@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-8-3af3f3cd0f8a@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/25 7:04 AM, Guodong Xu wrote:
> Add descriptions for four extensions: Za64rs, Ziccamoa, Ziccif, and
> Zicclsm. These extensions are ratified in RISC-V Profiles Version 1.0
> (commit b1d806605f87 "Updated to ratified state.").

I think stating the RISC-V profiles commit ID here (in the commit 
header) is good.

I do *not* think it's necessary to include it in the descriptions
for the extensions, below, but I seem to be late to the party in
expressing this opinion...

That commit ID is related to this repository:
   https://github.com/riscv/riscv-profiles.git

I have a few other comments below but generally I think what you
did looks good.  I have one overall question though.

> They are introduced as new extension names for existing features and
> regulate implementation details for RISC-V Profile compliance. According
> to RISC-V Profiles Version 1.0 and RVA23 Profiles Version 1.0, they are
> mandatory for the following profiles:
> 
>   - za64rs: Mandatory in RVA22U64, RVA23U64
>   - ziccamoa: Mandatory in RVA20U64, RVA22U64, RVA23U64
>   - ziccif: Mandatory in RVA20U64, RVA22U64, RVA23U64
>   - zicclsm: Mandatory in RVA20U64, RVA22U64, RVA23U64

I did not verify your statements about where these are
optional and mandatory, but I assume they're correct.

> Since Ziccamoa depends on the 'A' extension, add a schema check to
> enforce this dependency.

All of these extensions are related to atomic operations, right?
Don't *all* of them (not just Ziccamoa) depend on the A extension?
Furthermore, the A extension is already mandated by RVA23U64, so
is it really necessary to add this logic?


> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> v2: New patch.
> ---
>   .../devicetree/bindings/riscv/extensions.yaml      | 34 ++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index 385e1deb23996d294e7662693f1257f910a6e129..a6b9d7e3edf86ecfb117ba72e295ef097bdc9831 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -237,6 +237,12 @@ properties:
>               as ratified at commit 4a69197e5617 ("Update to ratified state") of
>               riscv-svvptc.
>   
> +        - const: za64rs
> +          description:
> +            The standard Za64rs extension for reservation set size of at most
> +            64 bytes, as ratified in RISC-V Profiles Version 1.0, with commit
> +            b1d806605f87 ("Updated to ratified state.")

The more complete description says:

     Reservation sets are contiguous, naturally aligned, and a maximum
     of 64 bytes.

But as I read on (below) I suppose using the more succinct description
from the glossary might be best, forcing people who care to go look
at the reference documents.

> +
>           - const: zaamo
>             description: |
>               The standard Zaamo extension for atomic memory operations as
> @@ -378,6 +384,27 @@ properties:
>               in commit 64074bc ("Update version numbers for Zfh/Zfinx") of
>               riscv-isa-manual.
>   
> +        - const: ziccamoa
> +          description:
> +            The standard Ziccamoa extension for main memory (cacheability and
> +            coherence) must support all atomics in A, as ratified in RISC-V
> +            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
> +            ratified state.")

Similar comment here (but also with a similar caveat):

   Main memory regions with both the cacheability and coherence PMAs
   must support all atomics in A.

And I might say "the A extension", but maybe that's a bad idea.

> +
> +        - const: ziccif
> +          description:
> +            The standard Ziccif extension for main memory (cacheability and
> +            coherence) instruction fetch atomicity, as ratified in RISC-V
> +            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
> +            ratified state.")
> +
> +        - const: zicclsm
> +          description:
> +            The standard Zicclsm extension for main memory (cacheability and
> +            coherence) must support misaligned loads and stores, as ratified
> +            in RISC-V Profiles Version 1.0, with commit b1d806605f87 ("Updated
> +            to ratified state.")
> +
>           - const: ziccrse
>             description:
>               The standard Ziccrse extension which provides forward progress
> @@ -795,6 +822,13 @@ properties:
>           then:
>             contains:
>               const: f
> +      # Ziccamoa depends on A

Maybe more than just depends on the A extension.

					-Alex

> +      - if:
> +          contains:
> +            const: ziccamoa
> +        then:
> +          contains:
> +            const: a
>         # Zvfbfmin depends on V or Zve32f
>         - if:
>             contains:
> 



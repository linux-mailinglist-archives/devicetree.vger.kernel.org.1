Return-Path: <devicetree+bounces-249782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 466A1CDF0DA
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 22:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBCC7300F9C8
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 21:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 782DF30E0D4;
	Fri, 26 Dec 2025 21:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nZdaslMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D8530F55E
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 21:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766784524; cv=none; b=rL5+Zol+/LA4kxS+zijvNZJx7O3r0UTAqyoq2Ow65DmqUIfJZZVrg9rq3rWqVfko4TY/Sg/jIIRAPxfbQiS8+THGYhfppbBu7KYvWxaFvHzg/rlvgrgWJ/UhJceBMPl7sOFP9oPE26a9busirlnz3qtmtmCVd0lO7I45KuPLzFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766784524; c=relaxed/simple;
	bh=ymKjegIEukCZBaGND8eURmKdlGa4343mvcuoS+wMnww=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n7bNeQTToSRFHSNJvQfw2FVZoxGuj+CeDMzJ517xl4dP2Re8mob0HSS2ShnbTkm3W+MXAD5yIbCNQIUE/NVzWdQ0naYSvZz7xUfM2fILYSqQGJNRSunIchO3CYtHFZPY9/8G3qlO9VuP2Mc04sGJ6DSl1OgHc3k85KkrOfGNgfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nZdaslMS; arc=none smtp.client-ip=209.85.222.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f193.google.com with SMTP id af79cd13be357-8b25dd7ab33so526081885a.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 13:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766784520; x=1767389320; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GPFEcRLa6bpej+0ne5q5GKQT+KIJ6FmG8KY9UAp494Q=;
        b=nZdaslMSmYhu/gupaRnbO+pdjuQtBnOPpI8/1Gl4C4hjKYF7m5DnDaq5+elYujByHA
         8o0Frq2cSr1SgfczI7l+EuSncI4WPUL3zWtbUuIxipZG7YZx1HjoArf0sg59XGXPgM24
         YE1SGs7ZwfsZvYYdaIQMDH8kmPyt6HEI07F5H7ElyhhChrwR9lHsZJ3QVZOOsJ+sUycm
         grOZ3SBDuKfA6vRWj+lvJ00/MfiHxmskmdNqhJmTd2TmHC9EbHlW/Rx5Jgj6SQAL5pNP
         RIFZ0mtZwQjtPJqycneh0hgMkdWwCU68K630DmqdTNQof29CJmF4abKR3zMT1alD99yd
         RrNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766784520; x=1767389320;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GPFEcRLa6bpej+0ne5q5GKQT+KIJ6FmG8KY9UAp494Q=;
        b=Sg7NDhpjyonDWFRYoT6Pl8xMNJqkXSow/2HEAcfcJjDk99/NuD0i6Ph79yuKZ5elTp
         X78rEuSkv/wNp11VcjE73KvewqPX6pgqfLHo163OHn8wqkAxrTTCwNQ2G0Pl6lA7ceT8
         3FV6EodUKe5kJe5w60OKGXyWlAz0qsFLxazL9EAbIHmSvzzNc1cWMaBhdCSb/I2eRpPv
         BgRv1VldtqVk0N2j2ow/CDm554PHrPlc0DDjzIPwkr8ZhVWeobS6lmynbNbp7CN8hUDB
         UJ8BQAAXjO+2206sGSGl6ix9Q1W1f+ERPm2fCrUrwPwwa6Yzlwwxni1i89OXlbwTvt3u
         tbsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBlmEPbxihsP9XiEQ3hko0mqI4oTygEaIw5XJbmz4+TUCi+v9tfk0FeazKrtSnmXBjr3Abdot53nIO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8cmyJWGB0yNLpfZqD+tL40g8vFWeLwkUmHVdQhJlbxf2ICNZN
	HXqCuBZZX7kmkQrvBGWVgG8+iTYPhCdlk81uaSYXxDrV5pJFUs0pm/o3PWq0Lwozzyw=
X-Gm-Gg: AY/fxX54WTXvjnPTSVT58TjLFitgyIpFRo1GqmimGphjWODoQlDLoo8wudfLIO6XYhv
	9Hn1rVTOqYsHvFNLvC9cw6o6lZBtp3lYnPt1Jwu0c0NfqTsQtRvZYQQGKybClIw5Rttjch0mml6
	jMY48cCPB9dOAzvy0QXZ5BaBVYoReIPsJ0wPYgaMaTL99qdWsBYKD8iCB6g00niericSRJAsT0w
	5zNAlOh5WpG4xYX0x0JJ8jb0Ks1V1LCSPVb0BMjKLVVH07EgAMwG5n56DheMuMz46Vx10/yaXSq
	FdEYMzzvykvphjy8Q5BXjEjkb4PbWG0SioStBXSHpXLoiSELo2o31efYO/kdXl8/VFJn1vvYh0y
	5uhQyMebQNjtCW/OUqNBgdBmu3r/ptREVknfCeuCm9qpPEAaINthx/j6myPQxPefUGZCmI9OiXg
	oFjYMleWiWmeEhiZLsMasq6XXp0L8QEKAVtDalkXtnc7F6a03RxmA=
X-Google-Smtp-Source: AGHT+IHxk83GWhcfAeMb/H9cfylA1VgJA5ej5ei+26m7wuK7chT230ft6Z8P14rw6S5mJmDD/1J6GA==
X-Received: by 2002:a05:620a:2699:b0:892:7dd2:9f0f with SMTP id af79cd13be357-8c08fbde5b5mr3491225285a.19.1766784520424;
        Fri, 26 Dec 2025 13:28:40 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d99d7d5f4sm176833206d6.40.2025.12.26.13.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Dec 2025 13:28:40 -0800 (PST)
Message-ID: <6925aa57-874c-479f-9f5b-f0fd6ede685b@riscstar.com>
Date: Fri, 26 Dec 2025 15:28:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/13] dt-bindings: riscv: Add Ssccptr, Sscounterenw,
 Sstvala, Sstvecd, Ssu64xl
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
 <20251222-k3-basic-dt-v2-9-3af3f3cd0f8a@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-9-3af3f3cd0f8a@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/25 7:04 AM, Guodong Xu wrote:
> Add descriptions for five new extensions: Ssccptr, Sscounterenw, Sstvala,
> Sstvecd, and Ssu64xl. These extensions are ratified in RISC-V Profiles
> Version 1.0 (commit b1d806605f87 "Updated to ratified state.").
> 
> They are introduced as new extension names for existing features and
> regulate implementation details for RISC-V Profile compliance. According
> to RISC-V Profiles Version 1.0 and RVA23 Profiles Version 1.0, their
> requirement status are:
> 
>   - Ssccptr: Mandatory in RVA20S64, RVA22S64, RVA23S64
>   - Sscounterenw: Mandatory in RVA22S64, RVA23S64
>   - Sstvala: Mandatory in RVA20S64, RVA22S64, RVA23S64
>   - Sstvecd: Mandatory in RVA20S64, RVA22S64, RVA23S64
>   - Ssu64xl: Optional in RVA20S64, RVA22S64; Mandatory in RVA23S64

Again, I did not verify your statements about where these are
optional and mandatory, but I assume they're correct.

> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> v2: New patch.
> ---
>   .../devicetree/bindings/riscv/extensions.yaml      | 32 ++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index a6b9d7e3edf86ecfb117ba72e295ef097bdc9831..ed7a88c0ab3b7dc7ad4a4d2fd300d6fb33ef050c 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -160,12 +160,26 @@ properties:
>               behavioural changes to interrupts as frozen at commit ccbddab
>               ("Merge pull request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
>   
> +        - const: ssccptr
> +          description: |
> +            The standard Ssccptr extension for main memory (cacheability and
> +            coherence) hardware page-table reads, as ratified in RISC-V
> +            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
> +            ratified state.")
> +
>           - const: sscofpmf
>             description: |
>               The standard Sscofpmf supervisor-level extension for count overflow
>               and mode-based filtering as ratified at commit 01d1df0 ("Add ability
>               to manually trigger workflow. (#2)") of riscv-count-overflow.
>   
> +        - const: sscounterenw
> +          description: |
> +            The standard Sscounterenw extension for support writable enables
> +            in scounteren for any supported counter, as ratified in RISC-V
> +            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
> +            ratified state.")

Maybe you should just copy the text from the RVA23 specification
for all of these.  So something like:

   For any hpmcounter that is not read-only zero, the corresponding
   bit in scounteren must be writable.  This was ratified in the
   RISC-V Profiles specification version 1.0, with commit ...

> +
>           - const: ssnpm
>             description: |
>               The standard Ssnpm extension for next-mode pointer masking as
> @@ -178,6 +192,24 @@ properties:
>               ratified at commit 3f9ed34 ("Add ability to manually trigger
>               workflow. (#2)") of riscv-time-compare.
>   
> +        - const: sstvala
> +          description: |
> +            The standard Sstvala extension for stval provides all needed values
> +            as ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
> +            ("Updated to ratified state.")

Or alternative to the full text in the spec, you could copy over
the abbreviated description listed in the glossary at the end
instead.  Something like:

   stval provides all needed values.  This was ratified in...

					-Alex

> +
> +        - const: sstvecd
> +          description: |
> +            The standard Sstvecd extension for stvec supports Direct mode as
> +            ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
> +            ("Updated to ratified state.")
> +
> +        - const: ssu64xl
> +          description: |
> +            The standard Ssu64xl extension for UXLEN=64 must be supported, as
> +            ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
> +            ("Updated to ratified state.")
> +
>           - const: svade
>             description: |
>               The standard Svade supervisor-level extension for SW-managed PTE A/D
> 



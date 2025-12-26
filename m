Return-Path: <devicetree+bounces-249784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8CECDF0E6
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 22:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 760CA30285F5
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 21:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4533630F812;
	Fri, 26 Dec 2025 21:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Tq97YNnN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070411B532F
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 21:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766784534; cv=none; b=RHjPSZ+hL7DouQRMZ3cxNFmvIaT9EVmdxMaeIwalHKJWuV/ODGD0TzVCXrUK+QmNISycB9LI6gMSp1S5agm5D4oIbX65A70sqUo3jtL0n+bGRFmAL87UmC+s1v7Bm/SJW4vc037J63MPAsJx0nQZZkJsW81+eNMPUAUleVn99hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766784534; c=relaxed/simple;
	bh=NspC7S3ikTMUwNzaq52BA472WHff+d7fgODKBGfPMtk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iO7Zo20Cirj+DOW7ukYBl0veGoXX5BZyDzn2IC1cxjwjXmLYCJ6Q4MswMPo7TEYxBFQpMbhmlBc69zo1A0nDYUWJdm+Dm0cN+ubME7LWMIYxgh3pwZ+XgE7nqihbCzSxI7M2pnOmQ0mZUaytwhnb1miOpzKDiup7H+KPl4YafOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Tq97YNnN; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8b2148ca40eso1170403985a.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 13:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766784531; x=1767389331; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nntctK0gEdJs8MBuE2OMh+NNa2bU4c08j9CTg1079CE=;
        b=Tq97YNnNwqXEjYB22akOkiNSUBqFu2zAbhh8GFPHNGeJb9qIZgxaN9nwUxrGV83eWk
         Ug0/KSQwi3zp0qvgAdKshfnWLH1rXzOL1V+Mp5e3pBs0yJiF5M9REjMDQiMGtAHJ1Jq+
         yTT8HdMIbbFnrvwA5qKkT3J7jPwZo41jBp6nIJDg8l1L8SiOzIWIIJ0RwNP5nZfkuuw5
         xTkdGKfXVjquky0lLXsqMBXHyF0VJyAd65PpJxZUsMvvKISAK26rctCMWgyjJEjQYhj9
         bpU/uYu+LgxMaLN3F3gAEiKDS26nGvMV5Q4svqtF2nTry84cRHkgqSklLo5+youVzU0V
         67Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766784531; x=1767389331;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nntctK0gEdJs8MBuE2OMh+NNa2bU4c08j9CTg1079CE=;
        b=jWsXhpqmKH/eCiixnKLcsi9GzWck07VSTXT3JUOnq27dX78eM8jpKP0EZa89CIwJMQ
         N7nWsJPVw5XyYLHpPrMS5Xx0XjMgp51Cap2tKv1F6opfVf5t+8/23XLjTBSo2ANW5QGl
         IJ+SBaqLYl4RWEK5UEZXhF+OW7luF2i/czAqokQidlmmyBU4TxNW3gq3f2qcnFAXKqgW
         aBvBKII5biabx+KDhIt9tF7yC2MkWM1BBWdvBCKEap+9kFZfZh0mFPT3Q0BsHcubmrsM
         m0AV05Ww0juTvZDoKX1gI7A2ajmV04S0lmKjtdU400nTHrAw+6YtXCVgoMbp5QFnsIgy
         co2g==
X-Forwarded-Encrypted: i=1; AJvYcCVLP8lN1cN/xSB/mD5R5D+KWU1dXWQsYo8mcFfqvJQNMeu+ywrvHvYuM48io8nOUqjSnD6LA2So/8xZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzbBuMzRzDHfbQp0IVzjveMP8KzCX6HdncyrP8ejHl6GVUEG4U1
	rTXnMQ6Udnr5EXUDVp2OQjbAvNVvuUCtfv8jxK+PB9BhpB+Xe1H1dWGpF1BDaUCtSMM=
X-Gm-Gg: AY/fxX5csUSK0F8+JXPlckVGyRblMVtxfkXL+fIg5QH+T031hSlYvtyAUzkKJ9E5OjJ
	L7bwr4Qx1ZElW3t1cdthsVluLqYu6/rEBCSYWlNkhiBhNitsy2KS4UMWjBJPBtxy+oUs814qQgh
	cu0Rzaitc+Z6mnrzAB4xsoUjVEEMZu7Mhlp2uRiwEFh1gtWaICORuEAHKaYYxnryktM/RCI+bkU
	nmSA9uTfcpQqo3tauY5Em4G2vkl4tA5tqtQq1LoZ5WxJxjlCH6R0/4hFEScXZzkoEwnGw1T7+tB
	Uwy7eYl2JvLCA6d2EGQxUDgfqgSTeOlsSJUSP8qRYfrPkEtlvEo4+12gb+X5NNHIaU8STuSDfk4
	KX/BcuYJadttWlmVHLShDaqcc/Zq6xf8POQ9SuOi8UCrdjcayo1zf2jweXIgYqbwa4khh8GbwHA
	Wy4oeP4aBX9P+pVDOoXBV8sW9vsVyQstYwDiPHD524Xa/1pLKyIlE=
X-Google-Smtp-Source: AGHT+IEy/QOrxe2SQiRFQjJ/+nrpNVPGTV1wSqBMtHRM+j197OQHW+EwApB9rAJn4Nlwz0TrLac2kQ==
X-Received: by 2002:a05:620a:454d:b0:8b1:ed55:e4f0 with SMTP id af79cd13be357-8c08fbc6077mr3782302885a.39.1766784530950;
        Fri, 26 Dec 2025 13:28:50 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0973ee08dsm1824350585a.36.2025.12.26.13.28.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Dec 2025 13:28:50 -0800 (PST)
Message-ID: <fc719e92-10bc-455f-b402-c93bdbf878cf@riscstar.com>
Date: Fri, 26 Dec 2025 15:28:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/13] dt-bindings: riscv: Add Supm extension
 description
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
 <20251222-k3-basic-dt-v2-11-3af3f3cd0f8a@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-11-3af3f3cd0f8a@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/25 7:04 AM, Guodong Xu wrote:
> Add description for the Supm extension. Supm indicates support for pointer
> masking in user mode. Supm is mandatory for RVA23S64.
> 
> The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
> state") of riscv-j-extension.
> 
> Supm depends on either Smnpm or Ssnpm, so add a schema check to enforce
> this dependency.

I have the same general question on this, about whether it's really
necessary for the DT binding to enforce these requirements.  The
RISC-V specifications are what truly defines their meaning, so I
don't really see why the DT framework should need to enforce them.
(That said, I'm sure there are other cases where DT enforces things
it shouldn't have to.)


And now, having looked at these added binding definitions (in patches
07 through 11 in this series), I wonder what exactly is required for
them to be accepted.  For the most part these seem to just be defining
how the extensions specified for RISC-V are to be expressed in
DT files.  It seems to be a fairly straightforward copy from the
ratified specification(s) to the YAML format.

Who need to sign off on it?  Conor?  Paul?  DT maintainers?

Thanks.

					-Alex

> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> v2: New patch.
> ---
>   Documentation/devicetree/bindings/riscv/extensions.yaml | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index 1066b7e65dab89704dbac449db4aa5605c95b9d3..4997f533b2c0defad88fd59413a6885b5b9e109a 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -267,6 +267,12 @@ properties:
>               ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
>               ("Updated to ratified state.")
>   
> +        - const: supm
> +          description: |
> +            The standard Supm extension for pointer masking support in user
> +            mode as ratified at commit d70011dde6c2 ("Update to ratified state")
> +            of riscv-j-extension.
> +
>           - const: svade
>             description: |
>               The standard Svade supervisor-level extension for SW-managed PTE A/D
> @@ -892,6 +898,16 @@ properties:
>                   const: shvstvecd
>               - contains:
>                   const: ssstateen
> +      # Supm depends on either Smnpm or Ssnpm
> +      - if:
> +          contains:
> +            const: supm
> +        then:
> +          anyOf:
> +            - contains:
> +                const: smnpm
> +            - contains:
> +                const: ssnpm
>         # Zcb depends on Zca
>         - if:
>             contains:
> 



Return-Path: <devicetree+bounces-247062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C94E3CC3829
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:19:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6A1F304D482
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA72223D2B4;
	Tue, 16 Dec 2025 14:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="sD1d5H7W"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17222356A4
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765894559; cv=none; b=ASiUWJE1xnsg+opHktuTqXXapV8hFlF1/ih7i38HOCcjKfoRY/cA4Udy8fqLYl3+nyNPnTylFXfllNYvC5Fa3AGBWO6PROL3oYK0iquXxCJo2vHTiytkNIPB2/lHhP2taprB/82u0urLSipEkp6Fv12cNLCHjZLBT0t+jR9TvBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765894559; c=relaxed/simple;
	bh=/Wododm6Hj52N73BD32ughfd/z1UEFrBFZydemobFr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WlFZhwhlUZZkBnp7hS3RN25Blf8TXdysjvVtcobukQBGH258cCnBFFj847CDyCF8VBIEjhzBMFfLKjSR+51xvrXZLXxKOMAxVHEFvL5JBCk/9cGE79KiFrJwJ8dzQTmdP53M3b6Dx5b7SRWC9Liqamz6b8+S0rJrqxe/aOTOQjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=sD1d5H7W; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 543FE3F2BA
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1765894085;
	bh=s6OKug5US6pxBUrhttaNzk4ojcTJP4aLJKCdbICH8xs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=sD1d5H7WGth/KLpe1mq5A/NxoG0qzYGrsqUpx/hsRkJ+sgCf5lGdNv0mhbDeq6dBM
	 0D6NVWhou6rl0RKIt1Ucn+wDrRPJ8SmEDTd1SDvk511EYqtpxkziVyAmhmSFuXTh1Z
	 z+TXcteu96lGKcsPMEYKDMwvA2MYZnQ4Tn6f4jlto4Hqf8xgJk3evZkXyX8Puml4HB
	 /+scyfSBz/6TYcfmcbqpvWYZjXQXvrB9WXSvNFomXXyQ56cc0NjRwu29Dl34cifAWd
	 U4OLlQxGVZp+C/dWJi4+iapScQzWihK4WuSzp9mmcOdJ3JaWpZokpoA5pfsNwk1VNu
	 NNmRAqSKeCLX80Qw+HzFDNMOF/2W9rIo1m77oz24dtLir7tZkqdFCrq5NOn653kHBY
	 k3OU/F1uCoDhBkcfMiUHAepT8nBDoPXe3ey2RQvtEjOukGnWfUOsF0o48niABRTl5B
	 jl88Asf9jkwNQjiCGDrjFMo+NykrMOI2XWB9Y38QNlqG+1qDBoZTpEzN0Mt8EBcFdr
	 KDZP62csfon0IhTvwoxOWUJWRqvSFwvJRIwU96jBnl3WcMMDsEMGp5LyGEHAQcQIEP
	 bZMwTeXH5KpTYoCDOxF+7Pj5eqElkT2gnw0ZxL3nbbJtpOKXytnhUK4RdA3kMIfN9e
	 5joPJjQN61xwLqVs4OLTr4v0=
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-6411e349b73so5650506a12.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 06:08:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765894085; x=1766498885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s6OKug5US6pxBUrhttaNzk4ojcTJP4aLJKCdbICH8xs=;
        b=b+S3YfnE4ceI3/DT1sk0vyiVFbMSYTbRKxYbcnkAh0w/JIen7DpqiJTPFYTb3/BcNH
         /7+enhWATPy1gvpX5jOm1or450IhOSbEUK38ZRTPXzkzyxVZcXO640019JZVe7GihCU1
         1VCNZDkxdJUdqdWnKBFTXNEJLKiTWPI/cGuDqvJ95tfQ34Sofo/dCjwd6EKdiwC3iOcg
         pr9XgfqeTHWEg9tZvWDFGhqW0yyf2vg9e7xtSr2rDALALHGwP6IBkQgYR94PCWgh4WlD
         hXhV5MlkvawmqUcaTwqDRytd2CxuUquH9jihfc2rwCR60or1Y4RpWJo4xnfZA9qobxg6
         48kw==
X-Forwarded-Encrypted: i=1; AJvYcCVmkAQjNmDnvzdhhV+7c6g7/lHnnAS0+jNcOOfM6ffZmgCKaeYOI9ERfGqU0UxxPJRpczQ9goaCk0Sb@vger.kernel.org
X-Gm-Message-State: AOJu0YwLb1XN+n/PPGhkxR8jBo+qADDKEFMmXAl3xiVXV6AMOrenu+4z
	CKnCPw5WUqNzfPpGJtMc7LD1QYP4DPB8AiXY0gL66sM3C4YfRiHKJxA1+23JuxMpKNig48C3b0T
	Zut2EjswIOiZbWhl6QSrJxHMZoreShnep/Ga/TfOYNBVWx2SNvVzvartGJxTG27XelvXJueCGlz
	J5UGI=
X-Gm-Gg: AY/fxX7rFZL9jzTP8iTR7g6pzmgEDfIWBbITwvIkAbh/We+0ahY3z3pBgML5SkUWPaV
	41MGNsyOsTmPJfoKZsRltkOaBbNtGB3Boddh4DR3Q5J7gElciuieNCu3sV9mDsbvnWxMsd0rXp5
	nDEVzsE9rDIyBdnSBz1xhzvInW2oQqePdYcd4nlrz5eZERQyDrz21NPbnxbUV/nb4+IidfRpV8z
	83P7gyogPPP/piy+9Pjr4DtrjzVj0GmoE5X6a4tENmtXwS+NN9IeXn8iedIMFX6xMCws2pNpouh
	m3FIk/6PNehSMOcBc/D3DsUxSoM7MKL18VRg3la6i9Q6N2DwFKcI5m65qDWVhl9zLACRWz12pBL
	vR6T3AI/RhjYjxERIxy6Brgxe+pVEdWCpmtsEEYqAWUxveEerIAQ7vWsqAAw3oHoGuwg6yKNBJT
	MmCmks6YI1iA09tw==
X-Received: by 2002:a17:907:60cf:b0:b7c:f82e:30b with SMTP id a640c23a62f3a-b7d23b1c3ffmr1594363966b.52.1765894084884;
        Tue, 16 Dec 2025 06:08:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtqWjNEWPbxkffOmFNn2OFkrwSQdkzVjA6Bq6rV9Lw/Z0LSQ+mn+A/wq7Eqay9PrsgCg2JGw==
X-Received: by 2002:a17:907:60cf:b0:b7c:f82e:30b with SMTP id a640c23a62f3a-b7d23b1c3ffmr1594361066b.52.1765894084492;
        Tue, 16 Dec 2025 06:08:04 -0800 (PST)
Received: from [192.168.103.125] (dynamic-046-114-006-010.46.114.pool.telefonica.de. [46.114.6.10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa51b859sm1698504466b.43.2025.12.16.06.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 06:08:03 -0800 (PST)
Message-ID: <e1383a10-84ac-483c-aca4-7f2b39ccac16@canonical.com>
Date: Tue, 16 Dec 2025 15:08:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: riscv: add SpacemiT X100 CPU compatible
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
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
 linux-serial@vger.kernel.org
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-1-a0d256c9dc92@riscstar.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251216-k3-basic-dt-v1-1-a0d256c9dc92@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/25 14:32, Guodong Xu wrote:
> Add compatible string for the SpacemiT X100 (RVA23 compliant) core.
> 
> Link: https://www.spacemit.com/en/spacemit-x100-core/
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

LGTM

Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>

> ---
>   Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index d733c0bd534fb63ed7c0eada97c42832431f1fc1..cce87092dc7749f49066154d9a256af6c7b6c19f 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -62,6 +62,7 @@ properties:
>                 - sifive,u74
>                 - sifive,u74-mc
>                 - spacemit,x60
> +              - spacemit,x100
>                 - thead,c906
>                 - thead,c908
>                 - thead,c910
> 



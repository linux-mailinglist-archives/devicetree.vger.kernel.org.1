Return-Path: <devicetree+bounces-146785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3759DA3630A
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 17:27:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F29216B4C2
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 16:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F74267700;
	Fri, 14 Feb 2025 16:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Wkc1leli"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C6B2676E8
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 16:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739550413; cv=none; b=RGN7IDt6EbdsF3sWB5LaUDCUi9xJYJmSutt4yU9yF6vGYUY4yyYiH4BYIl6YBrodees6dAGEcMF6ZBDEBd7SJ+BViG9Kljt7FoFVi57otqJj0NvP2ICOH0UTqn/Mx4WI9ASIT3oW90KbrFSyEvGjeNcOCu2+xRpnjpKUww/B1/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739550413; c=relaxed/simple;
	bh=fqAE2/JMrhghnr7h0URaZiiOx0VrL9ZGjPBLMqFnJro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kwtEBNpuD0uSXTIaCEW0uqmlYn0GDxFa4hB0Xog7Xx+DcH4/pulylWiyQ0cW4CYhiQK9+UTxAatif2xUSqtQbxy/kWJXxHofF9PINUXgvKVaSOljP8RHn6kPIzknZ+WoxTT7VjigWWREdMwTsSlAZRygEIGjBBUXk8DoHz338e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Wkc1leli; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-439685e14f1so6406585e9.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 08:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1739550409; x=1740155209; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yYahPJ7CPZFZpNoRGXLgzm0+xcyc7qKygSX7eH5P6s0=;
        b=Wkc1leliZ+w2KIRn+bLsx5HAJjW4tE+MWqMXc08vJk/7jQwQaQAeh+P2Vc4mAACGVm
         bDF+I815anelrpZyZFhT1Sd2D4PucCh6nRQzJjD3+g6ECOIUw6JwDdCZrIrMSmdHjA++
         3KZ9fplf+SPRQIPTNWOmCwpOLabFM06K6mMT16dPVU2EhyAiv1nYDZVHzUGvHsDauG6A
         piTZAeEom7z5NmvGdNclX8CoVDyl7dcsf8bASoaDneuYcM/hTQaTVP8xccLD9Bvv53cn
         dOJTiWOi7LW+D3PLeRlFTVys0KqQGTyGT42/MVLaut72lr2GJ26ebOaXcw2dHDdPgngP
         stjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739550409; x=1740155209;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yYahPJ7CPZFZpNoRGXLgzm0+xcyc7qKygSX7eH5P6s0=;
        b=tMMeAK4EO4kkOUulxVT1mNLSYntS8UWCh9X8zH2yBtqkS4XEJeCQ2q0nC8O/P/vNER
         jmcBc7Y3waWtbyjhnsggejTgrUjKww3WOBSnyIWGSzqmg5+HtJYZ3V1kjQLBC5+NbF4A
         72BTUNfwAif+rrvHk6bSx4z9uyldaUlrBI1vW3f5G2yABjJ3W+5CMzJf89JUqfxnexn6
         xScAMylKtkRu90WawUL4GlDgHWl9ZzRAAP3HkvdrhQeuHVCqdkHQHdn2DLyxzmIFGxW1
         xavMBMrHbYHng9HvAdf2JMLRqidbGLy8CNf3/KXyxtBeN/Ta5EgxehRszYitTpE/8OIa
         TqPA==
X-Forwarded-Encrypted: i=1; AJvYcCX/WA9Gu+IK1TZD62hHetfZ3ma2PGBUDXl8EDTb/Rw8fXsUT42fVvGGwbeS4FN4zcdRkUNMcpibVu3V@vger.kernel.org
X-Gm-Message-State: AOJu0YwoKZjeisvE/52HGER8WR2a+hOTzH4yQzjEJ2JLgfhEmrYymGx1
	+kFCp0Rg3PAdNUs5ISaAPpZU8J8kzZ7G01boyzIlTTncokMqfbPAssA6n6NT724=
X-Gm-Gg: ASbGncvq+e2ptcIyP8AB7iiswA+ly973ElWj8BHr2lwELcUD6R3dGyDHrUz0nlnlJmo
	wvwa75t2i8YxYP5bMu/VDiR8Sgxgb8dcJta09UE0eBVwqZfQhq6gkuiZ91vsYqVT8sbv/ZbcRfR
	43vYAKlkh0xYv/9Ehy9a5CcDJnKSoo2AnLgoGZghn1Wq7+/DXO0x0EnvEtFpB9Rm7hAx1ET4PXX
	Rtb1fGmG+iUtcgGTmgWfBGExuZ1/tvIHFqNkfZELAfpVDStqVaSNCUGjemlFO295VOoYikVR9dF
	1nk8GN38R8QY
X-Google-Smtp-Source: AGHT+IGD0ZwSKP2SVlV7tCbb67DNu8v1KQBEuuR8bN5t8fbcPighOdQVzKxfEH8x4T2JZ2zth1XX9A==
X-Received: by 2002:a05:6000:1546:b0:38d:c2d7:b5a1 with SMTP id ffacd0b85a97d-38dea26ecdfmr12656044f8f.19.1739550409013;
        Fri, 14 Feb 2025 08:26:49 -0800 (PST)
Received: from [192.168.2.177] ([81.0.8.231])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258dab74sm5084116f8f.32.2025.02.14.08.26.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2025 08:26:48 -0800 (PST)
Message-ID: <05ec141f-8d2d-456c-830f-f5ea2adce671@suse.com>
Date: Fri, 14 Feb 2025 17:26:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: riscv: spacemit: Add Milk-V Jupiter
 board compatible
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org
Cc: javier@dowhile0.org, rjones@redhat.com, abologna@redhat.com,
 spacemit@lists.linux.dev, Albert Ou <aou@eecs.berkeley.edu>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Matthias Brugger <matthias.bgg@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Rob Herring <robh@kernel.org>,
 Yangyu Chen <cyy@cyyself.name>, Yixun Lan <dlan@gentoo.org>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20250214151700.666544-1-javierm@redhat.com>
 <20250214151700.666544-2-javierm@redhat.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <mbrugger@suse.com>
Autocrypt: addr=mbrugger@suse.com; keydata=
 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
 PVrr2NoUqi/bxI8fFQJD1jVj8K0=
In-Reply-To: <20250214151700.666544-2-javierm@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 14/02/2025 16:16, Javier Martinez Canillas wrote:
> Document the compatible string for Milk-V Jupiter board [1], which
> is a Mini ITX computer based on the SpacemiT K1/M1 RISC-V SoC [2].
> 
> Link: https://milkv.io/jupiter [1]
> Link: https://www.spacemit.com/en/key-stone-k1 [2]
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>

Reviewed-by: Matthias Brugger <mbrugger@suse.com>

> ---
> 
>   Documentation/devicetree/bindings/riscv/spacemit.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
> index 52e55077af1a..077b94f10dca 100644
> --- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
> +++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
> @@ -21,6 +21,7 @@ properties:
>         - items:
>             - enum:
>                 - bananapi,bpi-f3
> +              - milkv,jupiter
>             - const: spacemit,k1
>   
>   additionalProperties: true



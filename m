Return-Path: <devicetree+bounces-244935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F31ECAA4FA
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 12:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 99D1030208D6
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 11:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC88E2E093B;
	Sat,  6 Dec 2025 11:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QVDJzuqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2026561D
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 11:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765020006; cv=none; b=hqtmx1WMuZYvf6O8UW1l7gkkmo8sDTAQTKnoNCfoJSc5qdLsiuFZ69OZ1D1LLEHo+IWH2H1pTEciwEMsfXXfSGi1e8SkSwPhLGwrxIj6rVRQ5MDkyqxw6Hevktez9FOS4DxhKN/cyyxa0kmB6qAxgtf0pHnp3JdPe5BuFzwzDWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765020006; c=relaxed/simple;
	bh=u8F6jXBXD1WPH8zSaLzLXa0fcNqkd5r5AejhICxhNHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cOh/2JfwBNYfUMmcG3eCZ88UG65JGBzaQ0yPMYUt/TmWhwBTm+9twb34fJz6l/huvGLBmYv/mgePHfDOWvKTfDiLZRxkVN3bIfa2oEom7ceXee3JXeJ8M/cxTgaMwZ+s0Nqgn9/nUM1ib1YJ5r8igNZ8wFdrqM0O7xgZ0bbHZO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QVDJzuqv; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so19717945e9.1
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 03:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1765020002; x=1765624802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yq9rhuNEa0+4uQkglFFSVr44v4sksoXrRImSR0Ne2k0=;
        b=QVDJzuqvaeuYbYvkZbaZCH3czSLSKscRL7/dANK4YQcQU7yXyWv2m2l+/YQa5MUpyD
         j1NTxR/i9MeoGIGAbT08oNWA31SjUMnu9XFx4WLJhN4QkgbNilrhrrgFyEXZwCC4Aobf
         ppX8HFwmDOxO21uIwbQ7QZD8UpM0WIBbZXtege+5SqAq8TkSs8iJ5YjDdIKNGBGzSggf
         bZ6k73k/CjCICVTzqKqZm6Cbrt0TRTkKBVsnnkhAnqi7dFS88DXv+AjHYHUftqEhywK4
         LH7EAprwub+GZKgj9YG8cySPG/LJ0lqyiZKMOPw45CVd0DQoMZi/oHIvqNc/TyPmkMZG
         CeCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765020002; x=1765624802;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yq9rhuNEa0+4uQkglFFSVr44v4sksoXrRImSR0Ne2k0=;
        b=o/KZFwC3Dzqk1bpzWAu6b7e+8HLqtR8vMTSAIUXCBP44BdFkhET3cGTQ/cZCFJaFG+
         91kpDFjBsOeIYio1U1Nwbn8eW361+a8mGGl/vyHTfnwiN37HSyfNeObHUOh/qBdx02ab
         j1yQcwVahhg/24TA5NkIiW4A21xZccm7kV6GzT4JPow+T/Rll+rCPwgIZeRcsVTfZq77
         z4UKgO8WHaco9gl+jjiU+x5zyiWouTLRB35ntTax1PR5kp93fdbVGa4TEg7gVN7YNbT9
         ntLTZJL5C89WHz1GrLJHwXNpXdz20RHlloGPS9GMnmto6FT5reDluZQxTpYRyPcf2meV
         qZjA==
X-Forwarded-Encrypted: i=1; AJvYcCW8YGkeKL/F644TmPglgsiHD6Q+msbP9gY3hFR9nwE3f6YudGmtgsB2MwLpbBYZ1kEGvuGzwXU6gd3l@vger.kernel.org
X-Gm-Message-State: AOJu0YygLPR6EVYViiVuZL7ObJDANdnds/gWZGUz1mLHAT69OOM5rBlJ
	Xr2qrOgFtOTEfJIavOq2El5v8MeAQOy1MpoZswaQ9bAKeIRz4llYPHKht72cGK+60jQ=
X-Gm-Gg: ASbGncvrPJGzRyZka2xs9JYgCL2WeiomXLW+YsGFLS4No6YWlFjxB1xB4ywKgUjU3zp
	7dmA/BlccTMP6D8C6w0yZl/rArpCyFDUB80M9HLOTJbb/kSmmpm17v4GhbwRF0IVZinvDS1vqhY
	eGIUoL1Q3pchby9gtTWsJA/67VJmCFLUSkjgVBnivqBEiKFYIrt4TJBHXqw0AyxPh8u40l/KR+f
	ilBjiw3mY25ifTpWG936r9gL+cZ200ovpyPP9hPxnDa+UUhwCiyMpS0s+SxdDfkswaTX75KEDq0
	/IVYWhZdLeQHRTxuuKKS5zDps8KlxjNADEXBykjK+1YWVj0IwLTglf7khUB38gf9ytHH+cpTTNf
	Rj7NbrNwulvsWQlpJ3XCYwSRxAMM5R2GNeXoXlwd23cwPYedCxzyx3xXM46OINgnpu8gklGIe97
	f9luersYAUDvyc3EYFmEg=
X-Google-Smtp-Source: AGHT+IFEgphPkYo9atYAEhSGN6ZsRn3wGRyDsC5dsg5UTtGzf5Qa6Sl3JSqY/PLn1LaGeX69E7opig==
X-Received: by 2002:a05:6000:2384:b0:42b:39d0:638d with SMTP id ffacd0b85a97d-42f89f1036emr2447913f8f.28.1765020002426;
        Sat, 06 Dec 2025 03:20:02 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353f80sm14173665f8f.41.2025.12.06.03.20.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 03:20:01 -0800 (PST)
Message-ID: <b303c634-cb2a-4e92-a833-0e3e70c7d56e@tuxon.dev>
Date: Sat, 6 Dec 2025 13:20:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] dt-bindings: clock: mpfs-clkcfg: Add pic64gx
 compatibility
To: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
References: <20251121-tartar-drew-ba31c5ec9192@spud>
 <20251121-unclip-shabby-a7a16e865146@spud>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251121-unclip-shabby-a7a16e865146@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/21/25 15:44, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> pic64gx has a clock controller compatible with mpfs-clkcfg. Don't permit
> the deprecated configuration that was never supported for this SoC.
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


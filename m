Return-Path: <devicetree+bounces-82045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D805B91E40C
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 17:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 724C81F220C2
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E034F16CD2E;
	Mon,  1 Jul 2024 15:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="HS38yrSu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAC316CD2C
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 15:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719847627; cv=none; b=eYqnPb+IGY13GexXpk2pBrjZ66VTLMaA/j2ydPDLY35PdjoXrgN+wYYXj3A2fUy6OCD2rDQp55leMSB7s0KZw7R0s48E2DMYaeCurio+46GQ5U6VzF/9rS8zmwLIVMdLtAm7Yu+qoKU6WEm1dIfQ63RhVXLIiJ1763cODLxzJ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719847627; c=relaxed/simple;
	bh=prvpyfxMSkwGiYfGgE9IF5heVeaqD/cLLatLbI2ZMVk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gQ9HTSIdkPL/uwpZonz3uq+DWaCBoG25Buhil63HseHN2zoBKL796GToi8K2++Z5Zc3YKUTCOnmRgTyshjNwod5dO6ZQItnszx8tC94sCXkBNIidBOhswWPN6ZjSFclCV4z504VhDVmPwOzesQWP6rKEfyapf5jrDuSP3WtAN8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=HS38yrSu; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6ad8243dba8so17972436d6.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 08:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719847625; x=1720452425; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VGtKsAafTDSpHUpnTbaoLrGWrMjaJvN7kW+LOjav24E=;
        b=HS38yrSuSAHHbb7zdeWv9fkaaDyJQUVptdBAY547TOBtrWl1y/20gzRPS4/yoaOV1L
         /aWjtRDW9dMcjc+44WHEUEx3UG8j5C1YHMnyxXWHvFli+uIFwyP+UJUBUkeEkmD/l5Uf
         SfvlDB912kdrfbPQqpc8lIOiwUMlu7HbfnKhGFBvBAPgC7tSsv+y6LubSms4X7i9FvWL
         4hvXOunkih0sh0OkY0n8VOTKC1oFSFdwcZHMaQG0/aSqO5iH4GPTVvEb4cw1DhiEYbK4
         Tx2/dgBvG9TiNaOkEPgYbDEXwjofjvBwKTuKxY7TpEvr5eZaiX4W8XyHNdFTkZUQwJfz
         dzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719847625; x=1720452425;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VGtKsAafTDSpHUpnTbaoLrGWrMjaJvN7kW+LOjav24E=;
        b=KTJf7cz68C3zMk0O07+8KfzFopXYNRW2UFT9QacVWE7DvYRfhtwk6unyCqbol38z7G
         tncXH/4eMDHPcV0uahGXU9O1YyT6dktU5NTn3XcvOUvtUoe1R4qQEHCeD1/iBgJw3bYs
         KK+9kYhviIo/L6ilaHTO0sLHhYXtACn/mD/aiEER1vkJtW3tSxkQ4z3DGk3PfU2viwg6
         Titn2kjlCaAN1GAHUlf2qrmtgaUehuxdWMJUBUXLNV+RsJ/SoaGSzOwc/sJOw8wmygWq
         V5tOA0oHOaqsGEJuR/Wzj9IH3FOnrt9ezPmu9Gpky/VSQnCZVN1PlDB/gL9vEI8Lgmx/
         SfAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmPXlTdbRAKbzpVNShXz6ffWUaZR3rwePaeGTmbgT4P79rLhtftevjfdAJ42jDgJhd0gpdrLQDhsh/JJNRUnYebd2W729m7NepUA==
X-Gm-Message-State: AOJu0YxwlVXuovv+iDw0amVtoSJgbQ+gb6yNTbwdOVRsNfLYEq/fSAVb
	z5toumwTLwSlGNX016vFmS8dVONe3k0BqTtEmSVk1C9y/zTRQAiRW1aLs6E7o10=
X-Google-Smtp-Source: AGHT+IFm7J11+wdhrgMT/TGaX0Rc7thLKL2Wg4raKr9nb+KKvQo276Bk7ZpHF10bnd8Q9L9dV3BTgw==
X-Received: by 2002:a05:6214:19ce:b0:6b0:4201:3840 with SMTP id 6a1803df08f44-6b5b7148e19mr79621526d6.40.1719847625201;
        Mon, 01 Jul 2024 08:27:05 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b59e581ed4sm33779996d6.69.2024.07.01.08.27.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 08:27:04 -0700 (PDT)
Message-ID: <0cc13581-5cc4-4a25-a943-7a896f42da4c@sifive.com>
Date: Mon, 1 Jul 2024 10:27:01 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/13] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>, Conor Dooley <conor@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>,
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>,
 Jessica Clarke <jrtc27@jrtc27.com>
References: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
 <20240619-xtheadvector-v3-3-bff39eb9668e@rivosinc.com>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20240619-xtheadvector-v3-3-bff39eb9668e@rivosinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Charlie,

On 2024-06-19 6:57 PM, Charlie Jenkins wrote:
> The D1/D1s SoCs support xtheadvector so it can be included in the
> devicetree. Also include vlenb for the cpu.
> 
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 3 ++-

The other C906/C910/C920-based SoCs need devicetree updates as well, although
they don't necessarily need to be part of this series:

 - sophgo/cv18xx.dtsi
 - sophgo/sg2042-cpus.dtsi
 - thead/th1520.dtsi

>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> index 64c3c2e6cbe0..6367112e614a 100644
> --- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> +++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
> @@ -27,7 +27,8 @@ cpu0: cpu@0 {
>  			riscv,isa = "rv64imafdc";

The ISA string should be updated to keep it in sync with riscv,isa-extensions.

Regards,
Samuel

>  			riscv,isa-base = "rv64i";
>  			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> -					       "zifencei", "zihpm";
> +					       "zifencei", "zihpm", "xtheadvector";
> +			thead,vlenb = <128>;
>  			#cooling-cells = <2>;
>  
>  			cpu0_intc: interrupt-controller {
> 



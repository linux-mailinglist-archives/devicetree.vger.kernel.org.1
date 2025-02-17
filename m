Return-Path: <devicetree+bounces-147289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 372A7A37E30
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:16:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F18B188C74E
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC761DED7C;
	Mon, 17 Feb 2025 09:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VgV45f/e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2B1DED58
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783720; cv=none; b=mcNa3p+96ufHjaJXL4N3X1P/wDC9GEDlrmDMG2GX4XhrHJSnucqKBRqpxQlPd3taO1nOI3OQHDX9RWBMkhc8cuOaAZybCQypWiCBolNuxItumeo1mUlmprTbPjN9lSVK3VbtgPFLlxH9CHGCsQ7IPl9RO7xmNTlghbycsbvqYxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783720; c=relaxed/simple;
	bh=f3MTvzcR3GA/z9r5gc8v5gx850whg98+ehNQEjHsoe4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=kHrELBaakgxLZrysBpqaoPTKTg4hvhHWdyk1DzkfWOp06WCTn9v1DYTr6WWO6mIHHzjKyHalYdz2/Nlt5hcdM4intw+ywCH7ImnRjTqrfI3hlnr9JwtxCYCr9zTGB7AkzwLMjNJ70Emm3gyRYeGvIc06eGXfvyBv3+OF7OwzPFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VgV45f/e; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e02eba02e8so2809379a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739783717; x=1740388517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B74dWrHkdsECoNtjQdU0Obn3rg7n8WfP2B8f9PshJuY=;
        b=VgV45f/eXOdtTQKIIp5ME/L2tEjhGqZ+qU/Urjbw3MUC2L/hBJHHWc3d9n6L9C6XB/
         mG8b51v/4jGBqp5TsrpiVCecZlo16glo4LmuqfMjRNDE1XyCCYRsnAO+4sEEicXoL3G2
         gttnmqwOkI5tqSCrJiDNHWq3WeSLi1CELxeeu6u6I1TwisBJ5drvyuIDdYbWpg6tl5fA
         N/bARgIzTuRBjqJTrN83eeFUDLBrP62EHZC7FQ/bkhhwVdEWpU+oMNOuOHPp+UeiOhOB
         Kw0gSwuMrHpYUQYHDotku1fyiQuoZ61E6tXSleBfdmaYTrzFL3HaO0xzs18PQKA1fLZa
         zX6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783717; x=1740388517;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B74dWrHkdsECoNtjQdU0Obn3rg7n8WfP2B8f9PshJuY=;
        b=W29GtYvQmRqg6z16VGSX/j5lgX1zUIW3s3BF77R9TA1eg/GhOvW08noUOYZex6UbDr
         KjqAsEoTY+RAVOSG51ZiLs9wow+uLMrXWB5ulJoN3GrU6jKJZDaMlpCyeCHlm+lwJhlq
         CUcEfXiI4Fmovlolq5sF54Ub110iU0Z6Cv1Pw5DnctW2WPAh9EfZtiyqQ4vi/GRx2Mtm
         0Ug8r3cG4r0F76TcO/V/zen3WbaETC1ni4qHeAiQcVfxNoskoF2mJUyHZiE6oFHgMYmB
         n0py/MMxIVjJQ/47RT1ycTgNQn/efp6y2wfHhyVGFapv1LH+5VRIejI6NsOd6k2/NRNc
         mirA==
X-Forwarded-Encrypted: i=1; AJvYcCX5yfZ3FVHFi0bCXvGBm2MXE0HIinDzrvowci85cwFYSynqXurNlqw3LRAg4C9+OjVAa/XL3CG869ou@vger.kernel.org
X-Gm-Message-State: AOJu0YwbT+PNx3kGyf6P+io6S16m36wx05MwfiDcYOe8eEqH/Bywujfm
	/u+LBtKp+LNjoHFic6MgXq0prdqdZVPcrLp1dZJlF2J0EeWt4oH0bu+KJmaiXr4=
X-Gm-Gg: ASbGncvew2vDQh6wHvhRIx5l0afA9FooI4Si3bjun1EYeA9nNNE6KJDR7maHWZRXnP6
	Nyx3RrYrHFzvWkhu136qBCv8VY0qC2RyIFXkwu9700TXrGqTFXHSRAAIq2TwxEaRlKp7s7B+pOF
	vjH6bPOc5czC0+pwpyfDlHI54mxIxEAsI227VnWneL2U47ar2SIbAfybYlpoGoQU4nX/lcqFkO0
	U3sl047J7Qymwz2MwzVC4UwStoKipOAXW/pxPKmvr2bSexYF6jGNsyaNNvgV5hcFWJUVgm7R2H+
	Drj+QTItczrRx6UM1PEnt3E=
X-Google-Smtp-Source: AGHT+IEMrhkZcva4RBS+kkon7q84KVXR16ulAthaujUtAZ/PxslVHVSNe/geC5YVpS+ivaoXq+QuxQ==
X-Received: by 2002:a05:6402:27d3:b0:5de:c9d0:673b with SMTP id 4fb4d7f45d1cf-5e03600514bmr8825804a12.1.1739783717480;
        Mon, 17 Feb 2025 01:15:17 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece270b17sm6933732a12.62.2025.02.17.01.15.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 01:15:16 -0800 (PST)
Message-ID: <15ab9baa-4644-4b4b-a6f1-ac71afe8465f@tuxon.dev>
Date: Mon, 17 Feb 2025 11:15:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add power monitor support on sama7d65-curiosity board
To: Mihai Sain <mihai.sain@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250211143302.4102-1-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250211143302.4102-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11.02.2025 16:33, Mihai Sain wrote:
> Mihai Sain (2):
>   ARM: dts: microchip: sama7d65: Add flexcom 10 node
>   ARM: dts: microchip: sama7d65_curiosity: Add power monitor support

Applied to at91-dt (with some small adjustments, please check), thanks!


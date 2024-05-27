Return-Path: <devicetree+bounces-69499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C58A8D0010
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5923284762
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA38C15E5B6;
	Mon, 27 May 2024 12:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e705L0vj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BE315E5A2
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716813149; cv=none; b=okRrS6WomitvVh43a5wmEHJ4hh+4j2iMqoUG4m+PZpTXKY7K9bQJQgyEmEtyOc/OtVpzMc/W7v4RUrvIO/9tI+r0SoY7kdhhyeu8vvUuXQi+TfWlJKEwAyXS+vqIWcmVW9BZU5owFCcyCjwAYNd6h1j7vUqPikp8gwvVmXexjwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716813149; c=relaxed/simple;
	bh=rnqsOytKGdvFtP7GzndEY/jYWumhHSQsg16lS1MaIfI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AdgFPIGZ0ozyOY+QRKc8G6sS09Nz9Mg8plTARvCWBqhJVBrI7nhFLRSCqhxy6wp0zGqOPcgmbtmbOBt9syzdpSh2SRVA5AbqKGxdMjlenuSJcAf3l7HC5NJkrJxo8VRLmD+FFT6TaYzx2KrP3VsOGGFn7Wn7OqFFYg1I4fDPh+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e705L0vj; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-354e0d4db6cso3289767f8f.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716813146; x=1717417946; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2LH60MjHH8V3Y/MHRz+sxRspAdqRVMIz1oGtP2AJuC4=;
        b=e705L0vjItbqo7tda6UhsAhtO7hE4FAnybuOCPhRG/hjY9/qiNVqbTjo3yOZ651D2y
         EVQsckLQ17tV1sY0961r+9mkc5eP7RDv6GvUX+70n7z2UUyeoAeV7xAFtgQl7/gOnf6k
         vegqUKEQS0H1bqTtIgmqsFMoqyfhmXrKUhiVw0242+5MkW0SZ14mYdHyuMAnQYAgr/A5
         uIlN9P1uMkgjJ+olbGkOKbq62wZRuSATjduQpcmhIEIl2+q/cow1aFq9UssxP+WmbuSX
         DAMxUMaim8DtjAex5UkFv/PtB6UX1/LZCXbrZ1XSeRBUbQcznj+ulxlLfZw+45cFg+7b
         4lUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716813146; x=1717417946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2LH60MjHH8V3Y/MHRz+sxRspAdqRVMIz1oGtP2AJuC4=;
        b=hqwULeI2vDvl9dFDzB8REcS4wpYzPtImhuBKnyV0X+6HDlZF8LhdMzCGjhbld2oUDh
         u8y2b+XDiJPNZGS0+Z4LaDtfwXpbhbDQ6QRamHWuWGkNb+4lc23OM1rPBr3BNHS05biY
         xztqg/PLx+Ji+/B1LM7UF5M01tzn0ES6NLR42MSz/K9f4wcaB9BU/lqDmi0XbwsF3oqt
         +wCFSRBGMsn/pU61Bly+v2wfbRum8TI1t+9/XyqY5n7LkvVht/Bb8s0naJJwGgyUAUeg
         OxSXs/fnQZ8DWcJNtCQklt4ybVclEqqPsxAfBbQM8+xsLiq8HsqEyzOBaLjeWbnQJoX3
         pLBA==
X-Forwarded-Encrypted: i=1; AJvYcCWQcs03HBVsDGfw4tLX9o6fqmJtss0A7q6Xrwlq0Xa+H8BoX8rX8LtBHSgzoTP1QoN/rcYFZli+LBRnL4ngL0pCOGSk4IPXVmbvpA==
X-Gm-Message-State: AOJu0Yw3TOxv8dK1bvVYKQlY9baRbgB0JstSDc5Af3R6oajToK7UXoTQ
	N0IAzcq8nPiXC4Vw6QMXwntPWrUFChshkHqlJaHKGgaVpVg140VDjvkkEkRn3N0=
X-Google-Smtp-Source: AGHT+IFScL7PwcRWWZzRdhlutLL5PCMA2/UEQrr/FT9eoSRAKDmQ4MrszI5UXOAcIH2ZMj6lZ+4O7A==
X-Received: by 2002:adf:face:0:b0:34e:2a63:8500 with SMTP id ffacd0b85a97d-354f75216d4mr10124015f8f.16.1716813146487;
        Mon, 27 May 2024 05:32:26 -0700 (PDT)
Received: from [192.168.69.100] ([176.176.152.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a1c9363sm8973250f8f.72.2024.05.27.05.32.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 05:32:26 -0700 (PDT)
Message-ID: <4019c30c-6457-4f9b-adb6-b89ce02e87e5@linaro.org>
Date: Mon, 27 May 2024 14:32:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] MIPS: kvm: Declare prototype for
 kvm_init_loongson_ipi
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, Huacai Chen
 <chenhuacai@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-mips@vger.kernel.org, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240507-loongson64-warnings-v1-0-2cad88344e9e@flygoat.com>
 <20240507-loongson64-warnings-v1-1-2cad88344e9e@flygoat.com>
Content-Language: en-US
From: =?UTF-8?Q?Philippe_Mathieu-Daud=C3=A9?= <philmd@linaro.org>
In-Reply-To: <20240507-loongson64-warnings-v1-1-2cad88344e9e@flygoat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/5/24 20:51, Jiaxun Yang wrote:
> Declear prototype for kvm_init_loongson_ipi in interrupt.h.
> 
> Fix warning:
> arch/mips/kvm/loongson_ipi.c:190:6: warning: no previous prototype for ‘kvm_init_loongson_ipi’ [-Wmissing-prototypes]
>    190 | void kvm_init_loongson_ipi(struct kvm *kvm)
>        |      ^~~~~~~~~~~~~~~~~~~~~
> 
> Fixes: f21db3090de2 ("KVM: MIPS: Add Loongson-3 Virtual IPI interrupt support")
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> ---
>   arch/mips/kvm/interrupt.h    | 4 ++++
>   arch/mips/kvm/loongson_ipi.c | 2 ++
>   arch/mips/kvm/mips.c         | 2 --
>   3 files changed, 6 insertions(+), 2 deletions(-)

Reviewed-by: Philippe Mathieu-Daudé <philmd@linaro.org>



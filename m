Return-Path: <devicetree+bounces-245256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 164F1CADC5B
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 673B0300EDFE
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078F026ED29;
	Mon,  8 Dec 2025 16:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="hPdx6GsT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170B622D785
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765211899; cv=none; b=SBNzKnKjPx/EDobabfG2FkUjeNjc03o25c+VIq6WHQoVYLHklqTy8hF7aBDPW8ndGzpQFagahYCLSu4vKs2Nc0NyuQUr0QuGyMu4qCstA9G1myMZjFK4DXFZ3bzRaJ6AOfgBEzNa3xMTN3DltEbz9JYyv/mX92nWsOegEAKnMGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765211899; c=relaxed/simple;
	bh=3Jn8acQZ7QuhgQ7B8N0UAPFkcToKf6t8l6ew/re6yPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JxRQGegUzOjqXJ8s2FKrsoVo/ElfEpypZiLAZhecvEhDEeVOo9ISd/X9AO2dnIqx9ODBQk4+z+rVlMeyVF3muk0QAIoQ0BL7JBvw0F6tHFv5PJPHTjkq0QeFH8PMUsLHkbnUSSA7mVntXMF1fg7irqWuQTZ/IOAGRs9hZMSVeSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=hPdx6GsT; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2B9CA3FB60
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1765211890;
	bh=aTNY4Xh/ROKfLe2vsQMihdbK2756ZAjBs/JjXED0kyk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=hPdx6GsT1Wg08tlNN56mtcgUj4d1Q4dD0uIvO1ThLzjUfVnm6hz2wwj3ee60Xdl3N
	 VCqbj/2omLvRM7oSyEGM09Mjs30MuC5yPWfy9bgyyHADkhGnJX1r3AUvz+5BnjQtKR
	 ZD1VX1HhJSVIqz6QaiPiCaTbT8oevMFSpXluguzo33KcHSvCtcqXYvL5myHhD1MOAa
	 PRggQxtDoS/wRjg/KZqxthksA7pk+TAyLOT+kzOuYGrgaHtD1AK4gE8M5FGBxZOBr0
	 uEmfHztGvbawdCppuokKTqRK5+uwwwDw3I/qVhuAJ4/1QTJOFFpG9C8Yr1yiVXb79H
	 LZ/z9GlL89mACOhLiPknLBtHrjO5iBCZ1dmNoEaGUOtT/t7588oMkOf9Yk93ewFsFj
	 yOrpcD+D+WJTERjikcgilffAkvYjntQxc3KO5NdaPbvwPJmesN6yAceC1m3Stu/r7O
	 dxCN0R3+41u2J5bzJR+CI5LSG3NO9v42mYHFjeca3T1rQmncQst3dUmfFVvx4VPMx8
	 5YjwpO3xrXGQS1I+dkHhDinZIpY5ixvrT7kDwOgH4ZAddC6XAEtA6GYMv2ADwW5msg
	 XNnZLVNN59ZF3NHjvMvfhyUaiM2nz3YqHDrEP73yHiFZzrHQXHDvPKGTNP6Rr1nUzT
	 Mb1hVSOM5BULUyCZajkH1PcY=
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-47777158a85so52778185e9.3
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:38:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765211890; x=1765816690;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aTNY4Xh/ROKfLe2vsQMihdbK2756ZAjBs/JjXED0kyk=;
        b=qA3bYbE2d4memIny9CCKDTLegqYmesoKvaRFeApdKoUQrK51TPbXg6MEttmhHtb/6K
         VFiRbBPLBUyPUIawc5K5iXIEog022cqDO1IEq4jdxPKmbxPOT94+UTwbdWNT91VudPVP
         RpKvFrHuODG9pGuWE57vjFRQE9vZdlC8eMgo1EUT2GS+3gzM5D92N5m1YdMwBRRRvfGt
         7GmaOJMed4osEKr6Ba28fxKSMWh1sg9Es9weJe9iPBVJJoUhhaI+U/8bgUPDzUVCzFLS
         oQ3DSLw4HhuwhWSzuxFrlRd+Xrz1Z7U1MTQcRidntcMUVAzbTTJOvfehN8jSDQ9qSo9/
         TQ3A==
X-Forwarded-Encrypted: i=1; AJvYcCXbSnB7XtRvsb1Lib2LNQBE0C6QYCBAznpfc7sl7zn3VrCT9oVlPVZGf1BtxP+kHmeWt1xm2K2Ud1sq@vger.kernel.org
X-Gm-Message-State: AOJu0YzY4es6MrVf14byX9ZzSzw4jz6iSQUzLghqRTXu/fyh2KJ03zlf
	IOlfd+QU4qG3QZtnd1HXkMQjOTgVNWnhoJ54yzD9BQKM7qk+TSdRJ5ZUa9LhQvgyqR9H1kFFupi
	kVw/N+9xdQewWaiBl2EBQFpyb0RCe9O7qVwQk/OG83EtLKDIv+/HPvwaRqAoZGhCtwzwuyAcxH4
	FcU0Q=
X-Gm-Gg: ASbGncuYpFqeMFBpdQqJ3pmXhCMGEA7AsTF8VUs0fTlkPgShk56VTCbVe/0DwWudJNc
	0EUkTBHgUH8uCYzFtlz/mcgdx9dx3ssgIw1jyB7TWP1+2FMAR27RI4kI5k7dWEyv665hc44jR2X
	EbL2d9Z97+lSx0OXAVEhq0sWubrluNTlNcW6UvQKgwBOFtS2uzlS6rMeGjPEVUP99eKMlbNAj6I
	us4HKBauop+H5NhV3sLnhmoC2juA19KmLxKfUqchvMkT57ne/RheUPrWibrPZXE6dT3IgMsy4q5
	WAnymdP46/OkWiiHuFuQ1TPhyJWDhTV0qhgEJ5d29YJNTrzsfD/3ZZ/Ztkl5qnxpMyXTveqIDRj
	+LU0/UPEIZzkbxlx6A3cqR1XJbIVW767fvO/zkTyvvU8Qrep2WO09x6Pad9sT7PwF2XYMftpfND
	sIZKIK79k=
X-Received: by 2002:a05:600c:a48:b0:477:9d54:58d7 with SMTP id 5b1f17b1804b1-47939e43adcmr74225125e9.29.1765211889673;
        Mon, 08 Dec 2025 08:38:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWjq5KbylI+YdbbKo6HpBQI4IH+OKq2snRjF/orQKP8xyyNE6QdOCUkPtdXSTe5KyQiB8V1w==
X-Received: by 2002:a05:600c:a48:b0:477:9d54:58d7 with SMTP id 5b1f17b1804b1-47939e43adcmr74224985e9.29.1765211889203;
        Mon, 08 Dec 2025 08:38:09 -0800 (PST)
Received: from [192.168.103.125] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbe9065sm26455128f8f.8.2025.12.08.08.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 08:38:08 -0800 (PST)
Message-ID: <a18850ad-b6de-4444-9daf-a4a653f4f9ae@canonical.com>
Date: Mon, 8 Dec 2025 17:38:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] riscv: dts: starfive: Append starfive,jh7110
 compatible to VisionFive 2 Lite
To: Conor Dooley <conor@kernel.org>, E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Hal Feng <hal.feng@starfivetech.com>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20251206204540.112614-1-e@freeshell.de>
 <20251208-jogging-morally-9b787b7ab1b8@spud>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251208-jogging-morally-9b787b7ab1b8@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/8/25 17:29, Conor Dooley wrote:
> On Sat, Dec 06, 2025 at 12:45:30PM -0800, E Shattow wrote:
>> Append starfive,jh7110 compatible to VisionFive 2 Lite and VisionFive 2
>> Lite eMMC in the "least compatible" end of the list. JH7110S on these
>> boards is the same tape-out as JH7110 however rated for thermal, voltage,
>> and frequency characteristics for a maximum of 1.25GHz operation.
>>
>> Link to previous discussion suggesting this change:
>> https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com/
>>
>> Fixes: 900b32fd601b ("riscv: dts: starfive: Add VisionFive 2 Lite board device tree")
>> Fixes: ae264ae12442 ("riscv: dts: starfive: Add VisionFive 2 Lite eMMC board device tree")
>> Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>> Signed-off-by: E Shattow <e@freeshell.de>
> 
> You can't do this without modifying the binding too, as this doesn't
> pass dtbs_check.
> 
> However, is this actually correct? The frequency of operation and the
> temperature range aren't a superset of what the jh7110 can do, what is
> the actual advantage of having it? If there's some software that this
> would make a difference for, please mention it in the commit message.

Appending "starfive,jh7110" would reduce the number of compatible 
strings to check in the OpenSBI platform driver.

Best regards

Heinrich

> 
> Cheers,
> Conor.
> 
>> ---
>>   .../dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts     | 2 +-
>>   .../boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts     | 2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
>> index e27a662d4022..7544efa95de4 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
>> @@ -9,7 +9,7 @@
>>   
>>   / {
>>   	model = "StarFive VisionFive 2 Lite eMMC";
>> -	compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s";
>> +	compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s", "starfive,jh7110";
>>   };
>>   
>>   &mmc0 {
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
>> index b96eea4fa7d5..b9913991a1b7 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
>> @@ -9,7 +9,7 @@
>>   
>>   / {
>>   	model = "StarFive VisionFive 2 Lite";
>> -	compatible = "starfive,visionfive-2-lite", "starfive,jh7110s";
>> +	compatible = "starfive,visionfive-2-lite", "starfive,jh7110s", "starfive,jh7110";
>>   };
>>   
>>   &mmc0 {
>>
>> base-commit: 5e5ea7f61610239fca058011e7d4f342b34d1558
>> -- 
>> 2.50.0
>>



Return-Path: <devicetree+bounces-272593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kZ9GMPyerWmP5AEAu9opvQ
	(envelope-from <devicetree+bounces-272593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:08:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1732323104B
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:08:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A19CE3012245
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 16:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A8F92EB87D;
	Sun,  8 Mar 2026 16:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="SvRMD8N5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86892765C5
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 16:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772986106; cv=none; b=b2Fd5MaWzXJyS6k5RL7/yLqg/FGHUceNG8r1hiDQdmkvM/rsWV676fBXrjPdA5eRmeUNxpqijiv26EFLui8ibkzVPV0jRk5kCch2Sd+fPGUR16LcGrQ9oQaSrF1dVrgOPjEd0xtRSqUBrl0lt+63ahv3HFaSyw6PTbKtRcisMLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772986106; c=relaxed/simple;
	bh=qr+yRas0Lg7PSMMl3IKLLNzo2/6ainKqFE5cwl801rk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fzdy9T1Q9ytlEaHT/dHEed/UvsXYZl725ZcuVtjCdYSPsH62gjr+iXL1HqDWQ+XMR7wfbDWNY6Freu6tEWw73V7VSwcOA2jpHYNc1ab5+eNq7xVx5R72rDk0DGQ7XZsq5/D1qOnWKWUCeYy3aP6NEUVmKLDiYHYwMEI+16b9vsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=SvRMD8N5; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-439b94a19fdso6714998f8f.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 09:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772986103; x=1773590903; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wSh7bLkjMFDN2+k0Og4RkpgntElpEZk2W1y0Ds3/R6M=;
        b=SvRMD8N5LUFygcPqXGdqB2CZNpkEKeujngtEnlH6bxKMvswAUdjrpLch76sMdeWvwJ
         wvEQxQDiBs6etHzYulltwTCYS8VRsnj2vYKCixu+QdPeMV4m9HvS3udOvTcOC75E9hMg
         8AoWzXTHpoorVVcTF50QgUmiVV0iWGLH1lTJ/eK370QkJkffSJkMVkZUee20vvHMFtIt
         rEvODRj5SnVR6LBQpGFr8ezNPmo1kEZGb5pd+uqs8K8Itwp1POoP6jTOkKB4rWcjTwGk
         OyZpBUwszDd7xxHNRYWpf+adT0zc4JDCzSJi7kKlrHELd/0ttGRlQGpoZaIRdkEcV5MA
         TM3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772986103; x=1773590903;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wSh7bLkjMFDN2+k0Og4RkpgntElpEZk2W1y0Ds3/R6M=;
        b=hDLwBME06F8NCvUYEkuO5M5CHd3QnHzNUdu24sRfGrRJv2m/MBUxA+NQcBpbGLONhk
         0bFQHahXpzUX2adEKuc2l5FFVavshPjbEQFVdLh+DRsnnLP4DNzgPhKJW4rSIAeRXdks
         mpWXoEADGpvPEHA6aKUTRaBBwJb3UeyZujByNVX4T4MNOU0KKbB+TgLwt/EthElTPJtD
         okaNAyGb5/2vJhs+jPxfu00d9jdKkBNRG+ADU88TIa68WSlkqAf6T54m+s9WuSdAIscY
         Xceqc2lJs068CbBCwhdT+F1lf0WiV17BrZ0tTLNkYIxhTr0gVWk6cQXYICKWHwj7MVEn
         c8KA==
X-Gm-Message-State: AOJu0Yw3Fq5JLQK4k+FJ1dLT0pH9QEsMajJdLRYp2P6XKa2AwokvQ1Eu
	bmbrq2ycZrRr+i1OWTNc3OKHjMkbWif4HWWLWs8GGYbf8INteMLTkb5D9/5irHNxY7U=
X-Gm-Gg: ATEYQzzvoiX1TYvjpz4G35reIqo405RERf0KlrhT0uIhrIECWT0G46yQJa/l/Rj8qE/
	kPFcJHdLYs6xjcR7plJ0WJZ2FmsCWI3KE/sgX4gS20BZ1y7yVd2mC1yjdyZpKHa0dAczZe5FZTz
	aBpDz+CQeOHMkTAQsI2KrerbhhOiI+NCsNhEuaEfERP0b42e1+OfRgv/DwTNmtehgnKcubHRf/3
	IYyGJ1w7XuBRMQ4lwlFGTtqtBCYFbvmRxWw4Ovcs3DRlDYoFm7x7Pa/3c/E2uZ8udQtNxvgua9Z
	/EMBvcqYZXHC5wprLutGhrZ2LvUaLFf56tkMFR3PhWb66161hf2rxHXpRg7wNguJBLJl1Snq5C2
	9TUa3L5jROf12Kc4Hq9KwKgc2eG8uE86j8BXmmY8EAPX5U1zEXDtn5iPexmslj/3SyTj9qHAUrr
	PpQmKnwYsR6w2b1cHvYN3ih1RM7aVt5Q==
X-Received: by 2002:a05:6000:2c03:b0:439:cb79:ab05 with SMTP id ffacd0b85a97d-439da88bb1emr14215350f8f.36.1772986102899;
        Sun, 08 Mar 2026 09:08:22 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2b9d8sm20725300f8f.21.2026.03.08.09.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 09:08:22 -0700 (PDT)
Message-ID: <9e9bb433-3409-4e9c-b499-6f15eb1a4eb1@tuxon.dev>
Date: Sun, 8 Mar 2026 18:08:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
To: Akhila YS <akhilayalmati@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1732323104B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-272593-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,microchip.com,bootlin.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.978];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



On 2/27/26 17:14, Akhila YS wrote:
> Akhila YS (5):
>        dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
>        dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
>        dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
>        dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
>        dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema

Applied to at91-soc, thanks!


Return-Path: <devicetree+bounces-154277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A01B3A4F8D0
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 554A87A7D64
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED90E1FC0E0;
	Wed,  5 Mar 2025 08:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oUDbmfB0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1731126BF9
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 08:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741163416; cv=none; b=DelW1YH5p8Ob8RcgsM9JL1t1Sr1PT7Q2OHYFXXpgLoOJDjbMZG6VGuwN4z/EXAL74zBwXmSlpxDOIE2AUNHlutURlUtxAzgnsbtOvp78rUDgeFtZNR2+cmzSo99HsGAnDwXl3fFn8tHfLcXfPIUfKoGW+WL4PoodwxkLd0cI3Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741163416; c=relaxed/simple;
	bh=7zIERAh8EpXhm6h89t7KnxUmJQwcOwho5sALkg39q5w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FykOxCSe3CVNIz4oJ26qEoIYYcr/IHHHIjHwSGQnv57tKFqLaWf45VfC1+gf26ngTztsMblkXmyzOn93XePDh0FUJ0T+mDqJ16s2dbt6SSkFGh1LvwTmwyZVGDQ2c8T3ix1TzHPuIf1AaSzQptQvjp756u5cjjftmgkyEGmCOqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oUDbmfB0; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-390eb7c1024so3763088f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 00:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1741163412; x=1741768212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/pRZw5w+2U2qZZUcZUPyn53QbNuJsJLbWvkiinmtjsk=;
        b=oUDbmfB08255YHGP697eyTIiS1KxIiBBUIf2ONlLq5Qth9GngoetTc0sbam+3PZt7y
         pgJIz+ieTPJj6PRMiGucNLwRpzzE6RzYMQn3zCZfAg6aTfFzrN4Rdc9SQFDoECM6O5Gv
         cYTm9pKHCoPWTEfdmu+nqQArpyejEPUu1RX1ElPS27y38zja9tLGQFRxbyjwpn9S6IZP
         HgkJQAhXKtqTk/xx98GxleyVx3/drECyDm8qIkVZfMzzGbVyilT020ADZ+iryBNPn4xn
         J5pb62vgk1vzQVR/eyxfWmSmyij8ZaQ1ZG0PhxL+9vtBTQz6TiEnMtxhjzNtzWlcwIoT
         4/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741163412; x=1741768212;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/pRZw5w+2U2qZZUcZUPyn53QbNuJsJLbWvkiinmtjsk=;
        b=W04wScUQkFXXEFs+nnLdOXaI0SyrfyntwVKGdNLm6XqAIpXxFg6cnmfTTr5dVWYss7
         E0KD2UZhy3ZN90qk0c6cobnSfHPkjbbfs7bTGl9bqnuGHbXnj4zGW4vUAyKPJY8UIW++
         G7K9nnOhHhmzmwMF4uXJfxjQsDyxENAY1FFVDejafgmJtFowjcI44U59i0a8jeCgpouM
         oms2QfA1KAm6PHiA6XbdfcXH0Kh3WBUhHd5pNAdnFgCF/bqEhu2f5mdTPM1ACI6PLUCl
         0wPHaJoKfcs8IpwJqVUAzqvHX9qs6PNDKBK58aPFv7f5aPLm3ae0f8omBpgYCX/K5JN5
         iRmw==
X-Gm-Message-State: AOJu0YyRkZ9CyUvF9US1WInxfT75OpQ7KefSBLE3aYspvR3t+f0F9K5J
	f96DbbIkiKcO7s1A+NUXWsUUxwsAyHwhrKikaAli79MU7zjm9oSbsTiBRXfXkpQ=
X-Gm-Gg: ASbGncuowjl2IsC2mEuIiJMSq+pRrEtzYrDRgyee0SeU0leQY6VM6Gw5XrKRXJucXcL
	KHctWTT4Zes/WMJIfoRgX9+aqBox3poc2GAAk9yTUXV+JXgJFzEWgPQdsGamRVeaZqW6sGrViOJ
	63RubhXbp6nItJE0FcHZX2oT/acdje5ri4eMylyzdarGly4lVUCuyWGlIfItvtH8A6VnbC4Rukm
	sfE5st97q1ufRinTP10wthXZ4fnQNw0Tl9t2HooT7hCVMgyVaQCRy6eiEXoR7KzDgtN9Qnvr8N7
	vywosD6Lgs3Q0yLKFE6qZEnVlIUqWSFX3Xbw/UEt43BauQ/IRXIw+w==
X-Google-Smtp-Source: AGHT+IFSdzvWtn7tTFdb3Ley/k3biVDCTE4cufgwD5dIqDrEulteNMEUpYhuCzwhg513O9Qc/kl5+Q==
X-Received: by 2002:a5d:5986:0:b0:38f:4d20:4a0a with SMTP id ffacd0b85a97d-3911f756bb8mr1512469f8f.28.1741163411612;
        Wed, 05 Mar 2025 00:30:11 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b7cdbsm20550527f8f.54.2025.03.05.00.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 00:30:11 -0800 (PST)
Message-ID: <1e33b374-0454-4d03-a673-75f36e6fabfc@tuxon.dev>
Date: Wed, 5 Mar 2025 10:30:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sama7g5: add ADC hw trigger edge
 type
To: nayabbasha.sayed@microchip.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250304-sama7g5-hw-trigger-enable-v1-1-61b5618285f0@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250304-sama7g5-hw-trigger-enable-v1-1-61b5618285f0@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04.03.2025 08:15, Nayab Sayed via B4 Relay wrote:
> From: Nayab Sayed <nayabbasha.sayed@microchip.com>
> 
> Set ADC trigger edge type property as interrupt edge rising value.
> 
> Signed-off-by: Nayab Sayed <nayabbasha.sayed@microchip.com>

Applied to at91-dt, thanks!


Return-Path: <devicetree+bounces-92301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD78494CA39
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 08:12:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E03A41C2289D
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 06:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F320716D4E5;
	Fri,  9 Aug 2024 06:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="AVfiVP6H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DBA16CD22
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 06:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723183874; cv=none; b=E7xYtKfXbUDePpdgMFdkUdsei0rDS1BXIuaEU/6O+1WDr5ga6YYtKnDluHIRVZHooUqLLQZIzc+K5NnTAsB7LoUcSczd6xf+WOwy5ubO48Hw2oQfS7Iou3sHBgLu0Dhm8zuLHno3Sql2vPu3zxfVLsBNHjFvEf8bxaRpliND4mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723183874; c=relaxed/simple;
	bh=DK9wHN3B3sjbgIF/cgn/lP24QN2ym60nTyxuZgAVStc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=WwCAcl536q5s7RFTm8QmwQ5gwQ3TCl2flU/3ecQb4s+7Ap6H25jeQVQMwmjBO48FUReIAPDvkSQK7NHwWA1SL1YFZ4uJ/XWf1CqDttlgmFpWlwVGorX6elQiZmtHyJC4UIn/Scr5J2QoHHN+cj9tN20HOBgP6RV1NjZhYfuAT9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=AVfiVP6H; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5a10835487fso2250447a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 23:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1723183871; x=1723788671; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N9PyhnKMVWQaCf4o2NQtMNkal2Q790c3esRFssorUHc=;
        b=AVfiVP6HNPQ0O/oeIEBqRjsPAXkAQSnC2PJFmzq4L89ke9T8yqLmESYnXz3QUJO29+
         n+gFCcFsdIgdU7OUNmKmIOPTfDb814JgC6D6+HOnyzgcsfcyKTU+z+66fy5K1CB4VCJ4
         8xbAlj3zCSLnng6Ia6LUqGcHVdtLMOQ0YhVtV70uZWpD0kwBvAtbO3HPvNSL+ilZyzCC
         GOKZWAAU2yRGJjDLRKeBV2C0l92zr0glSWW4xgeY0v4q0+xvqZX5uX9X/gS2h3IjTE0i
         AKsxFNIop54N1QuWygubx/8Bihau58plpu4O+CtQ1N1/T2X7dsPLde2H0anT7xXiaIuq
         RN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723183871; x=1723788671;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N9PyhnKMVWQaCf4o2NQtMNkal2Q790c3esRFssorUHc=;
        b=oXsLV5Qxv9qZHP4GiVxwQCI5ZTMYdnQwKBcSf63fwuM8nL10PCnMoQVUHIa71xZBm+
         KyRJjcoCyK3e3vi/LO//122QMLeZ01pvGK7fFztDWGYEjoNkN7OHYxq1IZpvC9Ey2Hds
         VVXH71bKww8MQlF3JTrl03Tjy7yabdMBwGTe9oCqGX7gAcpVv+BTxfOPGc7XzU52lKOC
         5GJLdr0Py3z69KDil0E6DDmBQyTiPtcQKUYJ+2GFv0qUCeeeqPPV23eRQ1ZJEvNOKtVK
         WXdVEj/W1gTJL/duXwnAahsy375RbfxXx3psx0r8HN5I4hXEiJqsLTMYHEZWn+OPI9D0
         O0yA==
X-Forwarded-Encrypted: i=1; AJvYcCVG5rnONP+kIQDUpOGZQ3zDQVMwthaBjvrdI95qZT/aVDUHp790q2LU9JfEc1jGf795mhtKYo2nyPi0mzUzencr5FyIHF/rMUlrcQ==
X-Gm-Message-State: AOJu0YwtDvT18NuhUAUQVdMxGPGns/EnQQrR2MlX6MkZ4cm08AWvARlE
	//97noChq+RSVxR30RYoJGO/PgKGi6TW10HxlJakjdsEb2PqKYmX3+IRe9R41Mw=
X-Google-Smtp-Source: AGHT+IHLST63qpgl3Ee5cLbJ2wBmYq4bMRL0nCYZftLPRBUtKZ73yES2yg3rJsqZ0uhQnU2Ve8UHIg==
X-Received: by 2002:a05:6402:234a:b0:5a3:b45:3979 with SMTP id 4fb4d7f45d1cf-5bd0a56cb16mr423549a12.17.1723183870917;
        Thu, 08 Aug 2024 23:11:10 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.180])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bbb2bf95d9sm1245136a12.10.2024.08.08.23.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Aug 2024 23:11:10 -0700 (PDT)
Message-ID: <5f45e6d4-8e6d-4ac2-a926-88c123e4cd26@tuxon.dev>
Date: Fri, 9 Aug 2024 09:11:06 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: at91: align LED node name with
 bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240701164952.577277-1-krzysztof.kozlowski@linaro.org>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240701164952.577277-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 01.07.2024 19:49, Krzysztof Kozlowski wrote:
> Bindings expect the LED node names to follow certain pattern, see
> dtbs_check warnings:
> 
>   at91sam9g15ek.dtb: leds: 'pb18', 'pd21' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied to at91-dt, thanks!


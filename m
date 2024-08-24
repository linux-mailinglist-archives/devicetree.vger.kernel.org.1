Return-Path: <devicetree+bounces-96401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AD495DE64
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 16:32:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50A112830C4
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 14:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF4E5178388;
	Sat, 24 Aug 2024 14:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KbK3j85p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBA7176ADE
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 14:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724509944; cv=none; b=YY/tYMoVjhx3lvhCc7nAYFm0LaXYTvC4Qig9/JK9RDRN157MXzStR549zLIaa4te4++0v2Lbaj51Aux2MsHYXBru1QThKGbH0Pp5NTp3GYV/nYZpqLcpTLGz1i8jX/ZxxpYtbIkirobIkM9YkH/qTNsmSczf9G99j+M8/B5FVHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724509944; c=relaxed/simple;
	bh=DguyKs9nIdgiM35CLVoOBmMRDj6H5AHNIznN0BoAbcg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=X8VRpWEkDW9nG3qi5K6AYjSxIHChxEIRchZwRg5sKdZu/IenvGlvCc6UrZTsUAj2gMXoSZmd/aRLaLu8p/NHYbKMJQ7M7dg1hnGNMlaVd4JYqWdmhOrMd8VPRi1jR5Q7WfZ4PtHoVbay9oS0NS0db7BVlYlVrbKnyUz9ufPwsmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KbK3j85p; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a86a0b5513aso205143066b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 07:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724509941; x=1725114741; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FxkKnCfGm75wdEytACBKZw4a5zm6SPbgUczbsalGslc=;
        b=KbK3j85pOoQFVlz8VswZaQmaRUq4lRPIOJvD9D5OXJiXb3uy9BMOuIjdv9a+Hr4ewN
         xDRiTIlTpGgqVx5f67I/HLKmXvq8WzqceLm1YoJfxqiCNOkfvYW9uVc0uQZoz6IAptZ6
         WpMWNIRDK9Ecmn7K1B+hAg3ZFBiT+hXttjduQRLCG9vtUeofoiCO9OM70jpf0BRB2kAW
         JaQaWcgYwsPG4mMk4/V5kk7Eg29baY9lc47Skt6FtoAg9OQR9clg9NLN35vdoRYvVzhN
         KYOrp37ndeCXhxoBS5FQbCfiSbcX1/7gjIPXHhknqNbKhEao/SHxuy11sGdueMVLwFAz
         TTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724509941; x=1725114741;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FxkKnCfGm75wdEytACBKZw4a5zm6SPbgUczbsalGslc=;
        b=cst38s/xImteZVub+AuNDmIDSrAPq9pMT8WEP6dScdsWxjliGN/mNKrliJjrnJrX3T
         FzU0sDrcR6XfaqgptA2X2l4O4eiEV6KBfzlfJxVJK984LEfGq8slOOQnHC4vKZ5RdQTj
         0tDkXmMKuXVSCOYDkAkKEk9lHkBKWRqWX7QB/qyatAjywPb0Xy5lk8Z7ktpGUY1dpFad
         DITGquvIc+SoXl99/MnL1Y6yG4B9cM01zdBG6x0KIAh0OFv/q7yt+yp9QA5RYZSISJWk
         bGDwJZm2+tKwcPZ/wAjFFALxC0DabbE4NiqGB6uGdgYB51JJnNqCyQ47ZxVa/0/6hYdS
         H8dQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkOUjbYySNF0xttGNJ9XIgWEHf7pA1/utP7ARGtteTEhSTV8kFq75H/ptk3eVlTOq/HKZUwlx3pMgw@vger.kernel.org
X-Gm-Message-State: AOJu0YyKKV7YzLiONrL0F+eqN2am2OW5BTS1TvxidzatoUPr8IYVMZuD
	C8ukcx0Ml17RzHn6CQwF5UVo2c3+XO7Wo7mHaZ3hanjRrXMgVrutmhHf4QFXrG0=
X-Google-Smtp-Source: AGHT+IGUDSJmT75t/n3hVit0finEeyZFMRMLVOMS69aLxoBMz95Jx4PjAGkAk+H23b7eP9fleeudYg==
X-Received: by 2002:a17:907:9724:b0:a86:95ff:f3a0 with SMTP id a640c23a62f3a-a86a5188d5fmr383961166b.3.1724509941384;
        Sat, 24 Aug 2024 07:32:21 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f222b23sm413681866b.19.2024.08.24.07.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 07:32:20 -0700 (PDT)
Message-ID: <b6307e8c-1ef0-483e-9091-83949166743c@tuxon.dev>
Date: Sat, 24 Aug 2024 17:32:19 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] ARM: dts: microchip: change to simple-mfd from
 simple-bus for PIO3 pinumux controller
Content-Language: en-US
To: Manikandan Muralidharan <manikandan.m@microchip.com>,
 linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240814061315.112564-1-manikandan.m@microchip.com>
 <20240814061315.112564-2-manikandan.m@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240814061315.112564-2-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14.08.2024 09:13, Manikandan Muralidharan wrote:
> The pinctrl subnodes that define the pin configuration of other devices
> under PIO3 pinmux controller are not simple memory mapped nodes.Ergo,
> change simple-bus to simple-mfd.
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Applied to at91-dt, thanks!


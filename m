Return-Path: <devicetree+bounces-61200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 950898ABF31
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 14:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F6C9280F45
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 12:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F266111733;
	Sun, 21 Apr 2024 12:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="k5ilTl9u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4C79FD
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 12:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713703256; cv=none; b=X0pd1aqFDhBwkhbbCDz590oVc0dZwQOQsyXP1PFisf6GwyW62SqighCY/j4ob8e4usN+UM/Sz5cyK4PRjfQHYdFbfDEvzjgkk6oewoZSII+sqtOTsCrxET1Yb2l0B3OfVO3vBgeL1Q14NWeDQ5nrhTS8UXT4Qfw4Cao7CnqCHQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713703256; c=relaxed/simple;
	bh=dW1kOcEifwRzl1KNeRx0Q79M3bKyTBZ23icIQkSBoC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SloyeKiwgu3LghhAmGsB/yyJekl9Kt5NLRKIqml7WncKEcR9CY6qpufhApmjBCTziUR2ha3MfqRGveASyKsQ35fcldHNgW2IOzIAD7a0gyiU7dVrEfuzxfZNykrwqyvyc7DeE44aE520i1cFq6aoxO2zW/Q2gVh00x2a/bUP2zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=k5ilTl9u; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5176f217b7bso5805736e87.0
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 05:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1713703253; x=1714308053; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DDWs0sR/inffoYLG1YK+PRz8MadYcoIAfPJ+iCtLyCs=;
        b=k5ilTl9uVwQ3IJe8PL8Re1gBrCk0vxhLsmoR7dcSvB1zkrmeSJxd2qUTzUUAqMLhPF
         gtjiguUqpkOBAjGsl+qQb+JfkHCXj2DpIGaPbfoN/4qXf6dbLU3bzUn3v9JBmg08eJDc
         cN6/TWWcqe7wmGq45MJNOpAjXDec+3jpAdl3kveqfExGJGIzIjuM/kfWWDcrWGMheoRX
         cFpLY0y77Wy8xg3nvFbqodSy33jCr+cz8pklaG/7TJnnbmTmoWAVOWpF4d/WdodIgxc9
         voGTYsFGesegM05FKWRX6Ok6XaPlQKsgB9LZfgjygStXKALbRO//ILlENrRfAnDVyWCg
         EKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713703253; x=1714308053;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DDWs0sR/inffoYLG1YK+PRz8MadYcoIAfPJ+iCtLyCs=;
        b=eUSNGFtelZoCIgPvdLVsObddUJ1bRD5gjt/sIYEXZRgpYu1rbuWZ7jXoCpwUDxnc1X
         YzEXsjInPR+qww9sZzYD6p9DhVo8xZDTuKzCpHTpAx2b10g02o6rEzAOzv4CuOkWIhli
         z8MPNJkOCmtb+AY4DertiF7sA0j8SHmGl2T1ntdudhdX/YYPiVm1u1iHIti6p5VmdqFE
         GEDYCcy5AiXw2+elbvY0p81aHayEJnq1S7FjzwwQgDFiZzHRexcJJuWd4AMRHN7EzNtX
         l5O3DFRzmrYg6sePFIsFA50neqxw/UpwMDAywYwBle9F8d3y8Y7a+HQYUdJ67OBsGg41
         gBBg==
X-Forwarded-Encrypted: i=1; AJvYcCW879fgACkB3aqqMMiH9vp827XlDNQmBXgdgH/GXZj6TVApDS/QXO6frJJw37D/O5brUkI6TgyVQ1BVWTzEDfRWIu/C/ZO37w/FyQ==
X-Gm-Message-State: AOJu0YxCCSxR96rxKmozAc8Z5hWc3AErc7J/bTpmvWTA8RWMtKWMEFOh
	KUry/kcqR5w8uFCYcuQacTm11w3K102amTkRWVLaw1m/16EJVZs8GFSjHy9VClY=
X-Google-Smtp-Source: AGHT+IEWdOo1Q+ZLBU7EGvnAwixYTvlLURdGzWdqXO7xeJZLJ8TnWUAGg5TAEz2bOh2jpRN43KzqzQ==
X-Received: by 2002:a05:6512:2158:b0:518:8c8c:db58 with SMTP id s24-20020a056512215800b005188c8cdb58mr5854116lfr.65.1713703253107;
        Sun, 21 Apr 2024 05:40:53 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.53])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906319000b00a5544063372sm4499209ejy.162.2024.04.21.05.40.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Apr 2024 05:40:52 -0700 (PDT)
Message-ID: <7145d28c-307a-423d-a744-f18a9a0c4141@tuxon.dev>
Date: Sun, 21 Apr 2024 15:40:50 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Fix the regulator-state-standby definition
Content-Language: en-US
To: Andrei Simion <andrei.simion@microchip.com>, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 mihai.sain@microchip.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240404123824.19182-1-andrei.simion@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240404123824.19182-1-andrei.simion@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04.04.2024 15:38, Andrei Simion wrote:
> make dtbs_check DT_SCHEMA_FILES=microchip,mcp16502.yaml
> 
> at91-sama7g5ek.dtb: mcp16502@5b: regulators:VDD_(CORE|OTHER)|LDO[1-2]:
> regulator-state-standby 'regulator-suspend-voltage' does not match any of
> the regexes 'pinctrl-[0-9]+' from schema
> $id: http://devicetree.org/schemas/regulator/microchip,mcp16502.yaml#
> 
> at91-sama7g54_curiosity.dtb: pmic@5b: regulators:VDD_(CORE|OTHER)|LDO[1-2]:
> regulator-state-standby 'regulator-suspend-voltage' does not match any of
> the regexes 'pinctrl-[0-9]+' from schema
> $id: http://devicetree.org/schemas/regulator/microchip,mcp16502.yaml#
> 
> This patch series proposes to correct the typo that was entered by mistake
> into devicetree definition regulator-state-standby by replacing
> regulator-suspend-voltage with regulator-suspend-microvolt.
> 
> --------------------
> v1 -> v2:
> - drop "boot" from title
> - put in commit message a snippet with the warning to explain the chang
> --------------------
> Andrei Simion (2):
>   ARM: dts: microchip: at91-sama7g5ek: Replace regulator-suspend-voltage
>     with the valid property
>   ARM: dts: microchip: at91-sama7g54_curiosity: Replace
>     regulator-suspend-voltage with the valid property

Applied to at91-fixes, thanks!



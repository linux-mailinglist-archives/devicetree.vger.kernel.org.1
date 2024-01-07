Return-Path: <devicetree+bounces-30044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0F9826402
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 13:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03F7A1C20CDB
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 12:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E6D12E4F;
	Sun,  7 Jan 2024 12:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SJSeNe7T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC6B134B9
	for <devicetree@vger.kernel.org>; Sun,  7 Jan 2024 12:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a29c4bbb2f4so93719666b.1
        for <devicetree@vger.kernel.org>; Sun, 07 Jan 2024 04:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704629515; x=1705234315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ya/Yl2D3ZZIg0tgv9iI31ETnltEikc6jZze+aQ9QZf8=;
        b=SJSeNe7TenOk4eUtWeV+KJsvBd3tTLaWhNjxDIw4VS6rPN+1Js9s5vT2aiRhxd+HcE
         P4O+rRvMzE/ieoV+4ryEDHMP22dOVSK9Zr0A8RL+2mMPFyd6MuGrDF+nd5nkbvkW4lTw
         8ByxKZyo23Ihg0lVGPY+XV7Y1ldlPlI3OVOllEoytZ8HpNgcsQYOjE0TcRXBXdaWYZZc
         BFk2CpYnAMGLRbY+8iL7b08jGFCMCT61CVYJltqSShyqq4xus+UgPgKD177DjThKrYTO
         ZlPesnxCS6aZKiQTJYsVVemnELij7kYZFL+KlzakFbJKhnDYzmOrkwygayawlsxf+AiH
         V4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704629515; x=1705234315;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ya/Yl2D3ZZIg0tgv9iI31ETnltEikc6jZze+aQ9QZf8=;
        b=SCFc9irTmOXggvePGIKimn+4fyaIiFM82DxdwJ4SWfQEEyfoJoFNFY4Ze+6TbQPGe2
         LTdcb3DneGSAXbeFFIMkJdEq4H7hhQpgVQPdf6cwJTIkarUeWABeU6bTyoqg6ern+lvO
         Ci2uPXEIt56d/XL8D9Ev4CpcsfvpZSYG4hSaxL1bTVAVJ03t0n+vraBSVvGPQqTlm78j
         5dLVY40mSePH5UxCUiGvHp3a4iDB8AHQpH1JWdb48iD7Pf5p6DwXKQ0Gxd+aQhgRVZjy
         xuq6e4bFeSIuMIWL2poUODt9XY/pGlyS0vwOx11Bj/6H0pQ3scil+uQQtEcxgVwfBO3s
         Ak/g==
X-Gm-Message-State: AOJu0Yx1bH2MRZ6lyiP+NvVEeZGQQiRm2gdBCYt3BjpVtSxHAlQxwBq0
	tRDEiTaWZx5GhbOr7XarsPjXDk2V+7adXA==
X-Google-Smtp-Source: AGHT+IE+fboBCA1eLWmQ/CJBrFlopFf4jSL25Q1/iuzxXzsVkL2/BdaM2CzaCUiWz5arN9AI9l1JYQ==
X-Received: by 2002:a17:906:b319:b0:a27:361f:f604 with SMTP id n25-20020a170906b31900b00a27361ff604mr818351ejz.47.1704629515062;
        Sun, 07 Jan 2024 04:11:55 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id ft33-20020a170907802100b00a26a5632d8fsm2989401ejc.13.2024.01.07.04.11.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jan 2024 04:11:54 -0800 (PST)
Message-ID: <1d214914-9ff1-4756-a9a9-564410013681@linaro.org>
Date: Sun, 7 Jan 2024 13:11:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS : Correct entry for da90??-watchdog in DIALOG
 SEMICONDUCTOR
Content-Language: en-US
To: Amit Dhingra <mechanicalamit@gmail.com>, Nik Bune <n2h9z4@gmail.com>,
 Steve Twiss <stwiss.opensource@diasemi.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, wim@linux-watchdog.org,
 Support Opensource <support.opensource@diasemi.com>,
 kernel-janitors@vger.kernel.org, devicetree@vger.kernel.org
References: <CAO=gReHEWnw0fnktH0Ka-bvJdy82HHsoyAuZXyPoEzMDzNu1qQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAO=gReHEWnw0fnktH0Ka-bvJdy82HHsoyAuZXyPoEzMDzNu1qQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/01/2024 12:59, Amit Dhingra wrote:
> Commit bd888a4377ae ("dt-bindings: watchdog: da9062-wdt: convert txt to
> yaml") updates the files itself, however the MAINTAINERS files was not
> updated.
> 
> Update the MAINTAINERS file entry with the new yaml file.
> 
> Found by ./scripts/get_maintainer.pl --self-test=patterns
> 
> Signed-off-by: Amit Dhingra <mechanicalamit@gmail.com>
> ---

Already sent:
https://lore.kernel.org/all/20231203113159.92316-2-biju.das.jz@bp.renesas.com/

and here:

https://lore.kernel.org/all/20231106095349.9564-1-lukas.bulwahn@gmail.com/

Best regards,
Krzysztof



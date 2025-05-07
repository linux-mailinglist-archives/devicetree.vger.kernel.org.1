Return-Path: <devicetree+bounces-174640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD1BAADEC5
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 14:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B1009A675E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 12:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD42025C83B;
	Wed,  7 May 2025 12:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="XzKgwmCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA062580E0
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 12:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746620024; cv=none; b=ijtu0tzGAvKDHmppqQxQ3M7XaU2j+LxTzz0KXq4ti9/tt+qFO4LsoP4izKVfe0cfGt50o2GfuAUp6JgNvGo0i9DNx8jGhz9RITTdtyUb7G/Qo1ora6SK2hqOCzNsfn9V2KpVI4bUJS3k1t+KSnCXW03ATLKKNp+FydnIHPwBmMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746620024; c=relaxed/simple;
	bh=u3YGbEuFNryf6SNWwXAZAEVAEqJ9fVFoDM0PMM9rdH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qe5KOzdSzVYvazcGaGCdKcoLAmSuzuq8QyzCGLfg23/2nX0WWyZOxkm1jbVRZyk69O0wKO38e1fg6QDfbJUIWtOt424G+PYC7qTGmXce84Iix4X7rmBmtUt4H0Sew8YWMog/hoBT1ptA7HTRPRzWw7Aqol3dZUYsT7Cq82wYUpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=XzKgwmCr; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5fbee322ddaso1378388a12.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 05:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746620020; x=1747224820; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sAeRVsznyaBFX32tf0NMNXsCTB91G1fsVj/Eu7YcKtM=;
        b=XzKgwmCr5eP4SnDRYbZ+ORSsN+XQDM5E7ofz2+1e/Nb872dQea2i812h3Y2qYYAX4u
         00Z+1iIXsua0+v54l4j2rMZrhQuJRQMzYjZZjl8q0hAMmK0n/poLRKvrVh1FDQErc0xa
         Rl3+/D7v6uZtXpDE4qoUCxtJyRuSF4EnlO/vU3NSGbIiku+zmqYq1xHtHuraiflHoNqu
         L3GrwvM2uGx5/cg0CuYRnGkXs+ndDIpVgk1tqKn65xt99kjnOFLEKJQ1A4Zs2Hmj8sMQ
         WmMLtSP3lGugkrqlCjdASWR97Ww3eqiQwBx9GMlhTigvVhFNWS4RJZHxEFjEKUNnLwWa
         1pEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746620020; x=1747224820;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sAeRVsznyaBFX32tf0NMNXsCTB91G1fsVj/Eu7YcKtM=;
        b=R6aEmrq4hwv4XO4M3uLxZmBvaJ+X4owJkvvJ4KeQvV+Sm21j9ZkhcHyCJQbn6Bkyzz
         gtyWoglcv+7nIYs0poJhl2KS+KjxyfaT7dDA+F29jqEH023u0UPpRg+CGGytQjuaFk9t
         K96WFeX2FEmzt6OHr6UmX3D33W9pt3nC9ETDxRqvbz4tceGEWjutLP2KiDYgrjripWJu
         XVGSojk+nzua0C6LOpSS9nENHifO6LqUUvv+w5l9G4Uno22YfFH+YIXuZUrCL7YrIWua
         LjywMFQ7zQ3ediwLmSQNQc5JelPun+9oMFkvEieKNIXM2bbRPC7qVcneuNYBZ8gnveEP
         sikg==
X-Forwarded-Encrypted: i=1; AJvYcCXMeJSG2tr71wJZXC42KglblYuvl2BXXkyi30137c/yR5BGTQgCxrud2WpJ3UhM2rNCUo/JHn8e+Xdw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5NIj/xEhhobVtyXJp/LnPJA1NLXRQdN8ZNU0IxTQXfnn8AMxL
	rYaXM1jpLaGrKq95u/8ECI9v5pA/a/FFwORezDTrU/EvT0eB3gy93ABuIIgiGmQ=
X-Gm-Gg: ASbGncsYc/DGQQ8Uf/Su9BJd6HIeXRDjWCgYgymAycJ+J0sUWSNGjNlfa2lXWZqbYN3
	DCTmVY5vKOzmPvfE+V9o4RQV0a5P3a/jkVJJqC1gA7CnOjsropqnSZOjWNpxgOXpeBdi1G1hBHM
	NKkLksfZioVxxy+uDQupo22Ejhh8cbs9YlHBPH3SEAwLE5GJa8RtvpOyt15XRZJvOQzcs1PeRdu
	5OPFrHeRvETY+SidoQDRAKIPPf/zQUGsisnloqQUEblntodh2YLpusY+0X1HuVQpbpqTjqX97I2
	JduCYS9zDafrir9bNLvyB2rGdhaukIeyOVE4JvDo3mVOoHuWUw==
X-Google-Smtp-Source: AGHT+IFVO28GoFjiM4/MmBFYIj2KWMjVMmnj6kvNFljtWXD9DM7W466QdZ6gW2Hfuwox4fn3w5Zq6w==
X-Received: by 2002:a05:6402:2689:b0:5f8:afab:9e14 with SMTP id 4fb4d7f45d1cf-5fbe9fa810amr2639140a12.28.1746620020038;
        Wed, 07 May 2025 05:13:40 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fafa166aebsm6000541a12.17.2025.05.07.05.13.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 May 2025 05:13:39 -0700 (PDT)
Message-ID: <410d8930-02d8-4c30-843b-7c964a5e08d7@tuxon.dev>
Date: Wed, 7 May 2025 15:13:38 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] clk: renesas: rzg2l-cpg: Move pointers at the
 beginning of struct
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
 <20250410140628.4124896-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdW0eKTfh6QsznWvCEeK5w9W-Zw4ORQ8yaevbYgh6+Ub3A@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdW0eKTfh6QsznWvCEeK5w9W-Zw4ORQ8yaevbYgh6+Ub3A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Geert,

On 05.05.2025 18:53, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, 10 Apr 2025 at 16:06, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Move pointers at the beginning of structure definition to avoid padding,
>> if any.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -1183,20 +1183,20 @@ rzg2l_cpg_register_core_clk(const struct cpg_core_clk *core,
>>  /**
>>   * struct mstp_clock - MSTP gating clock
>>   *
>> + * @priv: CPG/MSTP private data
>> + * @sibling: pointer to the other coupled clock
>>   * @hw: handle between common and hardware-specific interfaces
>>   * @off: register offset
>>   * @bit: ON/MON bit
>>   * @enabled: soft state of the clock, if it is coupled with another clock
>> - * @priv: CPG/MSTP private data
>> - * @sibling: pointer to the other coupled clock
>>   */
>>  struct mstp_clock {
>> +       struct rzg2l_cpg_priv *priv;
>> +       struct mstp_clock *sibling;
> 
> I would move them below hw (which contains only pointers), so
> to_mod_clock() needs no calculations.

OK, I'll change it like this.

Thank you for your review,
Claudiu


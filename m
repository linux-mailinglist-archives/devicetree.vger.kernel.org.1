Return-Path: <devicetree+bounces-61993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AA98AF5D0
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1894B22959
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5917E13E027;
	Tue, 23 Apr 2024 17:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="D1/yBDrs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8C813DDCC
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 17:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713894380; cv=none; b=ldVEMEsdlHIfBC3evibR0uYggrd/fWrBUdkwnhrAWWmQ7BWSxjDZWi7tcIP+a0VW6bw6FgRmaIjbYNJ+HBavWIA09t2WWVWjFUn3H63V0znv4M6+X/1L9ZauuoB9FxlsWPfNoTC3haL/PUynD+ktukAjBZsB6RabCJbsO03uuUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713894380; c=relaxed/simple;
	bh=1xND+7laK1/gHR/yIQlfzJQ0FdJnQbg+vOtHDtxU1AU=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=ge7BFgIzD4vpG9Mq+iYbwuJA9o44Yba51XmNR3APbkex3ltRJACDa+eKRXvlbp8IOsaV/Y1uoHPx1mYmo/T+SCgLM+zrQ7XCEj1CX+Ht8AFxyxwDQlkLDXpJ0/0dWF5fBsPQcFANFVyp/JQlKYSFQTHS2DzVXRVe1qkHOFR5PrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=D1/yBDrs; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-34af8b880e8so68622f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 10:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713894377; x=1714499177; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=zGMw34tv1HuOcHijB9t3OKRrzUWV9Hg/9xS27N3bQHs=;
        b=D1/yBDrsKu/IB808NgWsxCP9x2qdawHtG/sEccKmNEfliAimsJITsVwGdwLJLVepjm
         tjM5s5l5LpTSwpOpF4SBRj9kb/cakZtjXEBTbQchfWETLNqN/HnQp41M8zj6xzhkMz77
         0p7cMRyZfcOjsFgFLvyGoeVk7Fd2SrdOrtNhngsTmSoquvm5/E85kaq2Caj0j7TIglGu
         ePCbvCBbPSmSCpXKlDd/Ao/9PLJoLlaoX9TSK3vuoR/rp7h9EgEIHUJetPurnD6wK0nN
         9W4KxpzzodcmKINEnYiSSPxklprqBkLECnrss+W1rTJfioECkzTykueCk0WIKA/wrtyu
         1ykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713894377; x=1714499177;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zGMw34tv1HuOcHijB9t3OKRrzUWV9Hg/9xS27N3bQHs=;
        b=mJEu6ixAdVJ1yhGYX99vlZ+tvAoLsYtYh9uCTiZlOR/JtDktOGBzF4QBcN3r5tJG3a
         a1hm98wAEPqsgJcdmLthdM3LcJzJzLn99Sr4ptl6zucOcOJV4rwJ/6QUc+UksIGDpTvD
         bhpTOiL0dIvSgo+osri5SL0obUmBEELEsWLFGL6RdOMfJSfktDbZlhG/Xsr7QevPFiCM
         YEa5OgDmiiBJz2WUg8rBKw+KTMeUC+JuRCMnzs2F7S4bquyCOI5AZrOBFLCDA5lDDm1K
         lJ7KK3oYA25WCqBIu8T7BAB/4ZASu5qYztP5lh65BxC9zKkXVy/r4oVm1nv2whwdox4z
         b5Ow==
X-Forwarded-Encrypted: i=1; AJvYcCW1KDMN4XXGqz/yx3BY1kNOMqRxG7MLperibh9+e6PVbERbZF6PLNLxPojCDTUuFNrz0ecZFTRNr80ceYPRtnllYtMDSHXsVgAwJA==
X-Gm-Message-State: AOJu0Yyxc/JUzOMkIDRcOcl1EsfzQWM4877ig9x+gdrO5BLU2/HKTRi9
	r4Gda6m0E4gZ43owGlj5g+YoRR7ggFlSmmBxQAt9uuYRkahGvYKL8TRmALBHIdE=
X-Google-Smtp-Source: AGHT+IH80+mYiY8wLOolbQuNc5GEwyFsWGYaA4bWu8luwqVmUsFfilpQUnT2LT28gZIz55MBD8d4Vg==
X-Received: by 2002:a05:6000:18d1:b0:343:6c07:c816 with SMTP id w17-20020a05600018d100b003436c07c816mr110767wrq.16.1713894376770;
        Tue, 23 Apr 2024 10:46:16 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:aa38:830e:cbbf:591])
        by smtp.gmail.com with ESMTPSA id l18-20020a5d5612000000b0034a62e51429sm11993475wrv.112.2024.04.23.10.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:46:16 -0700 (PDT)
References: <20240423161006.2522351-1-gnstark@salutedevices.com>
 <20240423161006.2522351-2-gnstark@salutedevices.com>
 <20240423-wildcard-smoking-90b50f00da50@spud>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Conor Dooley <conor@kernel.org>
Cc: George Stark <gnstark@salutedevices.com>,
 u.kleine-koenig@pengutronix.de, neil.armstrong@linaro.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, thierry.reding@gmail.com,
 hkallweit1@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@salutedevices.com, Dmitry Rokosov
 <ddrokosov@salutedevices.com>
Subject: Re: [PATCH 1/2] dt-bindings: pwm: amlogic: Add new bindings for
 meson A1 pwm
Date: Tue, 23 Apr 2024 19:44:35 +0200
In-reply-to: <20240423-wildcard-smoking-90b50f00da50@spud>
Message-ID: <1jr0ewezvc.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Tue 23 Apr 2024 at 17:56, Conor Dooley <conor@kernel.org> wrote:

> [[PGP Signed Part:Undecided]]
> On Tue, Apr 23, 2024 at 07:10:05PM +0300, George Stark wrote:
>> The chip has 3 dual channel PWM modules AB, CD, EF.
>> 
>> Signed-off-by: George Stark <gnstark@salutedevices.com>
>> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
>
> a would sort before s.
>
> With the re-order,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> Thanks,
> Conor.
>
>> ---
>>  Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> index 1d71d4f8f328..ef6daf1760ff 100644
>> --- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> +++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> @@ -37,6 +37,7 @@ properties:
>>        - enum:
>>            - amlogic,meson8-pwm-v2
>>            - amlogic,meson-s4-pwm
>> +          - amlogic,meson-a1-pwm

AFAICT, the a1 interface is exactly as the s4 interface.
So a1 should list s4 as a fallback and the driver should match on the s4.

>>        - items:
>>            - enum:
>>                - amlogic,meson8b-pwm-v2
>> @@ -126,6 +127,7 @@ allOf:
>>            contains:
>>              enum:
>>                - amlogic,meson-s4-pwm
>> +              - amlogic,meson-a1-pwm
>>      then:
>>        properties:
>>          clocks:
>> -- 
>> 2.25.1
>> 
>
> [[End of PGP Signed Part]]


-- 
Jerome


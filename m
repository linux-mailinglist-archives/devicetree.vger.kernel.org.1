Return-Path: <devicetree+bounces-31018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D9D829BD3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 14:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B923284D27
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 13:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3686B48CFA;
	Wed, 10 Jan 2024 13:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y3+hvngN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413BA48CCC
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 13:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40d8902da73so39659785e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 05:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704894773; x=1705499573; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=themo8s+HXqyxpgjBM6NORapLKrMIQiVth0mwG53rLo=;
        b=y3+hvngNmPsn6hqUV99dAuheUyhmGTAijbYwOevArvML+1zWX7g1IiJf2ArJvGjk0K
         +T4KXX4djkhTbJxBpzaWhTcGfcpLBJV0b35S/Ashle6fAJlCaQsEtv3O+LB8QIr4dAl0
         XniqdYK24E9vSYLMMoHxRK3sxMdOCegeOYk7fy8ZX0kXB0t5NqOH4LIxeaO9O3ENSjt3
         OwlgLMdVmSWaHB42swGslAAiIR7+Awofewd99ShxX0SwyddveoX2u36QfGwxA++G5pQC
         qgSqMVZmg65a6fLRbw6sdQZ1vG507lUcioiX8IGC0d5pFuJf+QvXZ9YqO8HJ3SMe2cFK
         KyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704894773; x=1705499573;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=themo8s+HXqyxpgjBM6NORapLKrMIQiVth0mwG53rLo=;
        b=mj8Kap5ar9g7laTmZXCzlTMTR8tIDXHrdR1DAAWMgbKM7AeMEGyFGmsq7Nu11E7vec
         tSoLj9sJvtaBKRyNPlyd0IczRY9mz0DXFN0AJGZfagAS1hQzeCY7x6ffXq/8xuhdJ+R1
         KIuWiSjPkmzMX+Eq5DS7+rSWEdppSmTIxFTkuEu/SUwdNJkgaamW9ghDMk+uV5TjiDdN
         an3Pav5QN6qHzgqPEmgRk6bvDnQrVtMW5GS85e9VYrjTG3J+aFyJ2iYklxFDlVPB6GKw
         2vGAMkamJcWi+KlcBkD8IpLbHheIH4l4IT91SHk9swUuijd8P48yzaJfwPt1iYjIBlcp
         s/gQ==
X-Gm-Message-State: AOJu0Yz9lD+VyWDMxZYUnBcXebb4M6YB9uIokE6MCP7lJ5LNwuxrcFEM
	huN3WEH4EW09IQsq6A36uWKgJ51JF4q7Sg==
X-Google-Smtp-Source: AGHT+IHJdPq1h8G5DKGs2+2xbIgnmb8R6SdOjzR086/2taHu/6ADSyJ8vbkWE1mHKaxbyE8ENzTmxA==
X-Received: by 2002:a05:600c:4452:b0:40e:40fc:6d43 with SMTP id v18-20020a05600c445200b0040e40fc6d43mr683325wmn.98.1704894773482;
        Wed, 10 Jan 2024 05:52:53 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:9eb:66c9:5f1b:87ab])
        by smtp.gmail.com with ESMTPSA id h5-20020a05600c314500b0040d7c3d5454sm2272062wmo.3.2024.01.10.05.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 05:52:53 -0800 (PST)
References: <20240109213812.558492-1-krzysztof.kozlowski@linaro.org>
 <1ja5pdzb7k.fsf@starbuckisacylon.baylibre.com>
 <7e312b05-857f-40a6-a1a1-a954dfea7044@sirena.org.uk>
 <f9f5df54-dbeb-4246-b30f-52f3db7d94b3@linaro.org>
 <3b1b956b-985c-45f2-bda3-018aaf897295@sirena.org.uk>
 <445daac6-841a-4335-9b53-689e5bd2530c@linaro.org>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: dai-common: Narrow possible
 sound-dai-cells
Date: Wed, 10 Jan 2024 14:36:01 +0100
In-reply-to: <445daac6-841a-4335-9b53-689e5bd2530c@linaro.org>
Message-ID: <1jjzohxpl7.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Wed 10 Jan 2024 at 14:24, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 10/01/2024 13:57, Mark Brown wrote:
>> On Wed, Jan 10, 2024 at 01:51:03PM +0100, Krzysztof Kozlowski wrote:
>>> On 10/01/2024 12:37, Mark Brown wrote:
>>>> On Wed, Jan 10, 2024 at 12:07:30PM +0100, Jerome Brunet wrote:
>> 
>>>>> If restricting things here is really important, defaulting to 0 (with a
>>>>> comment explaining it) and letting actual devices then override the
>>>>> value would feel less 'made up'
>> 
>>> Wait, what do you mean by "letting actual devices then override"? It's
>>> already like this. Nothing changed. What do you refer to?
>> 
>> The suggestion is that instead of limiting to 1 and having one device
>
> Nothing limits here to 0. I limit from all technically possible values
> to reasonable subset.
>
>> override limit to 0 and have all the devices that need 1 override as
>> well.
>
> I don't think that actual default value for this should be provided.
> This should be conscious choice when writing bindings and driver.
> Similarly we do already for some other #cells:
> #io-channel-cells, address/size-cells (dtschema), #mux-control-cells and
> others.
>
> I agree we do not restrict all of them, though. However I do not see
> single reason to allow developers use 3 as #sound-dai-cells.
>

Similarly, I do not see a reason to forbid it.
Submitter should not have to update the generic bindings every time we
come up with something new.

I agree allowing 0, 1, 2 is a reasonable choice, for now. However it is
not correct and has not technical justification.
Trying to list every possibly value for something that is not limited
is bound to be wrong.

The commit description says you don't want to accept any value.
A default value is an alternate way to do that.
It does not require a justification because it is just convenience.

If someone fail to it document properly, it will be picked up by the
checking scripts.

> Best regards,
> Krzysztof


-- 
Jerome


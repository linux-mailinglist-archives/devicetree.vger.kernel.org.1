Return-Path: <devicetree+bounces-40794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE898851675
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:07:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FC641C21B33
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED76C3A8DB;
	Mon, 12 Feb 2024 13:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uW+qKkbv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308F43A8C7
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707746348; cv=none; b=Ndgb0un/NQW6VRPK6Vb38xjk1uLF0J+scqE45Cp2NmhiOn6OS0IqiF9682K5Cq1YO6+S1B6qKw7kbvvDiENvzjqCVQxgUuouS2rJT96HgEwVys4vj7lCNqKP4VLDkLz9aijyAfmKy5mSvCfTyWrmYUPKk7AHiJm84FqJj5fRIQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707746348; c=relaxed/simple;
	bh=q9iLI22k+vH/brclR//TUNC1vX1t2U38YMoI5WEGKK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hRFA3Th39JGAV4XXFW9x/eaf2CVfRuGRaQ2B/TKLZ2WlNsRWYCAo1+SbpJ3/gy/IlVrcijKFIxnv6E+mhyG6joulT7aYGqYGMrVgcmBhrgz4BwOxWBXi025l4GlcobcKKuaPhi+cVacj2Rc9H+7H0NYpCsv89o7o2MdivsIZfc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uW+qKkbv; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33aeb088324so2102751f8f.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 05:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707746345; x=1708351145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=prIehCso1ZaN3A2UC6bZSSjviM9n0ja6rXoVvyofeBw=;
        b=uW+qKkbv6pjxlWrt0lyfEusKN6ysbIaFwsyVCf0Acpawo1Ee3T0Tn20ELcVZ9H3kNz
         ZMdmaoKQFNHzcNU42MEhaUWd9N8bNZNznpYHvZEvMskv+HKPUh8UdeJCqOGu+iYWpfhF
         dTijaUPHIL18DJ0ILtgopld7zHsR1uDVNhyxrA58bFcukkMSTn1jr9Etd0VVRm/URIMp
         DwdIacDFF8xroAX/+eiMBKyxWL0ws7CneyPkJAm2NQ3HkvMRKvu7tsnzWiPGiMjIC9yk
         vcIUixZZFGndNPR4U+hdvPtpK0i1H2758xMLcHsTFht009JP3MCOsucMWJnS6//mISow
         F3pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707746345; x=1708351145;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=prIehCso1ZaN3A2UC6bZSSjviM9n0ja6rXoVvyofeBw=;
        b=muwlnXhsAOcUQjHBASCo53kF55uBDpUL/PoxmA8uA7PAEdu5BnOh2OJkk5bMTcMqn9
         inSvU8mY/WiZvFECqODZWedTnlJpDcxYw8FVi1mfH+ptIzY0oWmEkpIbRxPLARd/4qH1
         0uPyM5euqKZluY2ofs8/Dvgk4vyETLvYYrzdQymZ310PMUglsv2FsEWwH3zqMjXX5Qtd
         J7f+cTcsniOxOFgWZMkQA11wYgHac1p0wXCFF7wCgcy+QIKubLB+EOBDB/KDWsxYoY9t
         BxsSrdUvvpziCusoKy3eh88XP4EeIOWU/IMkde6axLvQjyqO0PR7VXXK0haJPuHsYXS2
         ErKA==
X-Gm-Message-State: AOJu0YxI8dDiANPcCvxLmvwIJnW2Zc1/spopbwkojIW6ENvqVudqCqLZ
	z2Cosr3HSHZiNhzsOd774CJXD80GHA22nckcoR592RBOsRukLuA+lj1rY3iBXKA=
X-Google-Smtp-Source: AGHT+IGxgGAEbTVZwAcBwBZDWOSO8np0Ok4POjw1UlESPHPLDScMjJ9VeDE32tSbr34vnpFIEoxh4w==
X-Received: by 2002:a5d:4d90:0:b0:33b:2513:496f with SMTP id b16-20020a5d4d90000000b0033b2513496fmr4801078wru.66.1707746344923;
        Mon, 12 Feb 2024 05:59:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV8dCrl2/kEuu7i+nV8o7tWAvUPikmMdhXVVl2rxF2gs67zlpDz0tCRw/yIIifoIy8aDBpC0wpP2YotuhqjFQIQPxmWwis2Xa4IhqsTDOZIH3Nr0WfonYH11nIdGbroAi/OmCZaiGbZRAv5ef7yJ1auZLQcuhkvfcQQml/S2v+IlV8H06FglnOHuOFnSK1eZgjVV0aGYxBo4rN2uxxhlpbOLqN5zcbXOii4Qq4UROfDueQjDoJu2Xx++YJMHCn+z4em4wdCH1dLv3OPwCb83xcNa7noa+Nur9F4Lt6lMWxwkpPOCJX/XIRUWhAPCK4ek+EgluxnObzgD/7RfxbJECPlJOa++IQ5yWesi/SBCP8zacSowZsGdF75Kiu0XESR1EK9W5zhHjp7wsxu+TOJfI8EKghB2TvBEQFaAdOjzXL2jMTY1ggOfg==
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id by16-20020a056000099000b0033b75e5bc13sm5534298wrb.1.2024.02.12.05.59.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 05:59:03 -0800 (PST)
Message-ID: <d603a588-d312-486e-b6c9-647a6b90580c@linaro.org>
Date: Mon, 12 Feb 2024 14:59:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: auxdisplay: hit, hd44780: drop redundant
 GPIO node
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Ralf Schlatterbeck <rsc@runtux.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linus Walleij <linus.walleij@linaro.org>, Miguel Ojeda <ojeda@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Robin van der Gracht
 <robin@protonic.nl>, Paul Burton <paulburton@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240212083426.26757-1-krzysztof.kozlowski@linaro.org>
 <CAMuHMdU-c5_Z2AMNtNH4Cc4JUrn+oKU-1CumEOAP6=5Zomcj_A@mail.gmail.com>
 <2922eece-5486-4eff-af99-f7060cb61d17@linaro.org>
 <20240212115837.efz73yxinkysdmgh@runtux.com>
 <e2a5b005-7916-4296-b072-c24efd4b3357@linaro.org>
 <Zcogl6tqbMdQldKA@smile.fi.intel.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Zcogl6tqbMdQldKA@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 14:43, Andy Shevchenko wrote:
> On Mon, Feb 12, 2024 at 02:38:27PM +0100, Krzysztof Kozlowski wrote:
>> On 12/02/2024 12:58, Ralf Schlatterbeck wrote:
> 
> ...
> 
>> Anyway, binding examples should not be collection of unrelated
>> solutions, because then we should accept for each device schema several
>> other variations and combinations.
> 
> Is this documented?

Yes, writing schema says what the example is. We repeated it multiple
times on multiple reviews, we made multiple commits multiple times and I
briefly mentioned it also in my talks.

Best regards,
Krzysztof



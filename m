Return-Path: <devicetree+bounces-174292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D1CAACC0A
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 19:15:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7793174B9D
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 17:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB8C27BF95;
	Tue,  6 May 2025 17:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rhj3Excf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F6238382
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 17:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746551649; cv=none; b=WaIAbjgaTnr2+ovmwiuJl80EXYNLpxfpEcjcOHUERhmGnYEK+hxrvaGODKWFsI8tGqlBN9cgF814mOx03URYkdtnY/eNIJFOAZoYq25ckvL8CNjtOd9sTxlEiJdi/zkA9a6BGYVNafJ6/Ky9GbciZQ0ez6jkGGc5cBYir4Wtdh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746551649; c=relaxed/simple;
	bh=9NGxmdgUCYoxHA11aqHB04tqd4jytYgf4Gz5SHiLcbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E8DWNqhZVUi9s0jCiegRUdwnAxKpvkom+aDM1b5b8aG+CU90K+9mcZiP/5TXaKv1eJbUPv1FeqOl4belSj3km3IdAND2VhAkBblVvcubHzPd3kmUZIa3YVAIrdCB1HE1DthAzfZ/x79j4QbuMYYc1F0XLbWZHoks90Kr5FwWP0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rhj3Excf; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-708ac7dfc19so46911227b3.3
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 10:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746551647; x=1747156447; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tRedBdvWHewdGHc+8H5jFzCl3OWzRCEmeyqHhByRR8w=;
        b=Rhj3ExcfrRnxZcZx/pEhNMKx8EN576IFrrjAnseG0fhZKoivfhhpGsdfxcOFGTfgaA
         DjokrgW0Or7GQL04PhWaWbTARwrsyCI0xWj4LTl5biWUZhgHD2cjOXkWUsR1yVnEBCTB
         DyjLShC350hIAKgFa0awlrPU2iyg+KIccZLNehZNucphbaRaBo0lfYaNc8ME89UndSQQ
         5aqWz9a9Pgi9NaeqnIhgrJT3MyGb2RHQe1RkcCeY0hc+HkVpAbkJNNJ7TLL55B603YTZ
         mRtvYBVWNnwel/KzfZEH/De76NRT5KKe/f4eH5jHJ58FZ0bHx8L/GiQgm1MEArsUMdnz
         H80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746551647; x=1747156447;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tRedBdvWHewdGHc+8H5jFzCl3OWzRCEmeyqHhByRR8w=;
        b=ZOREf8EJlxLvbuZC4AZnezkKgHl0kHWf0jv0cPpUyVofWwEIiVGNndBUqKvUshU0G/
         4nc57gzWyFkW8JuJ4/b0q27GY2O8gq83Ps/e5qLfngIvRmHBxBbNbqI+LEmHTWtsyfu/
         qZ0hIUYjcJ08ehU+5Q52UyBofpa32RUSm3WkWo41Elpb6Ha8a3Hp8I8VhoZiMcNruGC7
         mqUXEFQvNlZhEtDzhsBr0D9XO6mg1TFDN4LH3aYX3jMFm3RqpBhA/A1B34NpmgV3LTqx
         0BZ2V6sabSwbc47F/hvH+FrQZNyHZTsNTr9Vb7AtdTDd+WYqDwuTxeDqTqpUVMpvcGBa
         rORw==
X-Forwarded-Encrypted: i=1; AJvYcCVCo1x8wiU/vZE+RY/wBnAlpPK3DKULdXpHR2PGLcSq+/Bbx3BOKXpf8FI3asOUH5Rgf/6w3/riW4Th@vger.kernel.org
X-Gm-Message-State: AOJu0YwYTLrGL8gBW9X9eEbHDU0aywaxJ/pSOQJELkoek/4NHIhD4Rzr
	0LF1QSy5Wa8tstxk0wOj1OvlL548uvLD18hznT/eHCoCrTvo6ghD
X-Gm-Gg: ASbGncs5aKt8IOo2nF4mljRtxv3aSMy9td3CJhOfrLC7QG3PimHjHIGMIvYcA1McmuN
	LTlsjIMs25cml/DGtCdYzq2evEk4HDYqLiHDDL4//KwH/9n5u1ilpRH6Aa/4SSfi5EOGrZGM4sm
	7ENtT+nSiQKE/Kf4QXKjezVyzA/QgJqcslrcYuC47XwzpUrOL9ceXvjrpdWzYDhKkNIabZUbiNX
	tOQ+HC7QsUuDxRYWr2SGZOxxnc2Eic40oWNlwkp6xHgM45F8+1e/cstN3xJEZwT9BvfYfr7IidV
	jkbTX4JYNuB724SivV0bwLj53GGruhLavC7sOg==
X-Google-Smtp-Source: AGHT+IGbekAdUjGPTcZlU040LQUgD3tEix530NlthS43YkNGTWjhWN4j1EIfWmF30Nba4JZ16EQ9mQ==
X-Received: by 2002:a05:690c:6482:b0:708:c18d:e6ac with SMTP id 00721157ae682-70a1da36dedmr3095007b3.18.1746551647021;
        Tue, 06 May 2025 10:14:07 -0700 (PDT)
Received: from [100.96.0.9] ([104.28.237.13])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-708c4154d13sm27994527b3.58.2025.05.06.10.14.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 10:14:06 -0700 (PDT)
Message-ID: <043117e7-9fd7-4ddc-8fd9-433c5b8c5dc6@gmail.com>
Date: Tue, 6 May 2025 13:14:05 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Add Luckfox Omni3576 Carrier Board support for
 RK3576
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, frattaroli.nicolas@gmail.com, andrew@lunn.ch
References: <20250506114115.613616-1-inindev@gmail.com>
 <bb857b7d-97f8-4505-9d2a-1ba9d6319710@linaro.org>
Content-Language: en-US
From: John Clark <inindev@gmail.com>
In-Reply-To: <bb857b7d-97f8-4505-9d2a-1ba9d6319710@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/6/25 1:05 PM, Krzysztof Kozlowski wrote:
> On 06/05/2025 13:41, John Clark wrote:
>> This series adds device tree support for the Luckfox Omni3576
>> Carrier Board with the Core3576 Module, powered by the Rockchip
>> RK3576 SoC (four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52
>> MC3 GPU). It enables essential functionality for booting Linux and
>> basic connectivity, with plans for future support of peripherals
>> like WiFi, MIPI-DSI, HDMI, and Ethernet.
>>
>> The series was first posted as v1 at:
>> https://lore.kernel.org/linux-rockchip/20250502205533.51744-1-inindev@gmail.com
>> v2 at:
>> https://lore.kernel.org/linux-rockchip/20250504102447.153551-1-inindev@gmail.com
> You got extensive guideline what to do in my reply to avoid exactly the
> mistake you did ... yet you ignored the guideline.

I did not ignore it, I took this to mean:

 > Do not attach (thread) your patchsets to some other threads (unrelated
 > or older versions). This buries them deep in the mailbox and might
 > interfere with applying entire sets."

that I should not use the "--in-reply-to" on my git submission which 
caused the emails to be nested. I see now that you were referring to 
adding the urls to my submission.
I realize this is probably painful to go through over and over again 
with new contributors as they try to carefully follow all of the linux 
submission guidelines and I apologize for my ignorance.

> 
> I don't understand.
> 
> Are you going to ignore also Conor's tags?
> 
> Best regards,
> Krzysztof


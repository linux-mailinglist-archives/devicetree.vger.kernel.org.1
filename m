Return-Path: <devicetree+bounces-188292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD46AE36C9
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 09:30:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 165557A78D0
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 07:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9941624EA;
	Mon, 23 Jun 2025 07:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zmh8NBlJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18425A933
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750663821; cv=none; b=u44x6oqWhNhnnBl9OVWiKt4AdFopDGoZkp3cGuUVIIJiNUZY3A7hXlLM88hmrHMH7IAOcFk2It3u+URsHWHIsS1SD42SEOMhPrwgxAZ1z4EBqw4mk7LbdlZYWNUMfXmyZsP/qORp4GnSiCH4qfnhMCCO+yVsh3efNXTjjjfXqcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750663821; c=relaxed/simple;
	bh=1H4Bg1xSrIFZOITWzyXEdnXralTg6Df4XFkD/EzqYK4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uhc/0DJQaX/b53JDhn0TCFrFoVLn+CeLJxP6MUvrtXqcUgxHKa6SlUO4IDs8y6HLOyvJWv+NWR/o43jIS+eMUOCxXw9nH5m3lXeItS/Qd/tuO6bjAQl0aquh4BkRNNoPoh9ge1NgFleRlcVR/wykmXPy82Fe0bnJt2JU4Pvxqmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zmh8NBlJ; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a4eed70f24so575844f8f.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 00:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750663818; x=1751268618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JyX7Id45J55w0I/fP0ufUOPO5FO7kbptXGfhsQYTedw=;
        b=zmh8NBlJ43y+YhVlIOzdEx82ohFYHpmrNJYOsfx7RTzGSJOR4D1yrF1GamsOXuBV59
         yUsfQLWfopbxfhZl0PSIgFBjzR/ywxemqJaMYfvjwLAZzooaMI9/8uHtnhlXnahTVgBO
         mt+gZWv6b40oo3HZaOgaOiu+SNXXYaPj6xnezt9dLIimEk919ivtIxtq+Nf22M9k4Qlo
         HR5srk46NTpMr47ZNGbQ/wWA9BKOiBgdpKpZfXBl3yoxGCezBA4key8KSeT4lik0l95c
         rcmHVU5Eu9isRI7nMdAYsvzR8X8zzP/F6ko0gY8oF8rIOA0AzjeD2lGz/BfXtxBWWbeC
         ea7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750663818; x=1751268618;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JyX7Id45J55w0I/fP0ufUOPO5FO7kbptXGfhsQYTedw=;
        b=kmu4WP3ZiX7Pr4UkuvMYV6jvYpWP2YkU6ziARRPBq7f7tRBzIN3uT54c1rXV9S9qHr
         7iMcUW2/ebih9Oa60JEBjK6O+RAKIx6bJhZddKmJEy46STX8tkdXBXLvvXquVZzCvWrY
         cZIt4Iz6hxkkldxUNXwR4cpphb4JBrPW+aNFW2c3GNQoBVc7/yMaUhMxMArkBFg06uHX
         iXhkyrlU+eHN4YgNBJXxzSKdTS/BlOqLBz14dcNDFJwmJIC1XSr966dyQpBl/HBhHQPA
         bBHNjsxpXypV6vMr6CRaWtfb7RrBnN5yDDeg2ARzIGGOaKRlVDqh9p2q9h4EN1v8Qylx
         ewkw==
X-Forwarded-Encrypted: i=1; AJvYcCVrvfsqTGv1wNhW1R0PNokDXuzAq+xzyfCIBHXBr2SgB3IKzvgLKFCK09wdTmosVA1kgoXLv3s2FDfq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpgg2kVxCgBQTDRc+YBM3Fp8j3qPd5qNK5dAsph7i6W7ioQfYh
	CCkDzQ0YbRFaIiBfk5SPSufypnA9sCbY0DkI6RyNxjmEWN9z6InBufmXkZbZUdrrFj4=
X-Gm-Gg: ASbGncsk3fQcc9kGerM+lIEy4/QuHyB2oswzzmrPzM6oXal1u+14BNzGY27G4aS3k/a
	bC4USt1UblSurRdjpGMruVNG7/0FFQdhpB1eL3FRGzIH5n82je7lWRr6TIeYe5zS/Qz59m8pk2H
	qAJRqlT6LH2Ve89G4ni41fGJsDF5IwKr3KLtY8XNcJdYS16SYxxnz2K0sn/Bz/qQQuiaUAHC9hn
	7ATV5jSoz8fk2S2GsP6CJ9V/UkgujfTL4GxOYjeCpyryGrjnIVa0RImmRG8xtW3J+aatgKOJD9Q
	k0ttDRt8ICfLi8CNo/V0wPRHtOA5eqUZAEtRV9bODsycLZFjaONj5f2s3QLn//iQ2jSIUXE7B2s
	xlRA0TPOPcase/w57fg==
X-Google-Smtp-Source: AGHT+IE5sAJn2EldwKQPeiP4adLRE3U5OsQwf6bTownItGgAHFLMi64HBwYJ6D64VqjEns0LJrnYrg==
X-Received: by 2002:a05:600c:3549:b0:43d:fa5e:50e6 with SMTP id 5b1f17b1804b1-453659ddde0mr39535235e9.9.1750663818470;
        Mon, 23 Jun 2025 00:30:18 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646fd816sm101186905e9.24.2025.06.23.00.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 00:30:17 -0700 (PDT)
Message-ID: <16ae3a9e-4ba5-48a0-959c-4c593d1f90b6@linaro.org>
Date: Mon, 23 Jun 2025 09:30:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/10] ASoC: dt-bindings: mediatek,mt8196-afe: add
 support for MT8196 audio AFE controller
To: =?UTF-8?B?RGFycmVuIFllICjlj7bpo54p?= <Darren.Ye@mediatek.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "brgl@bgdev.pl" <brgl@bgdev.pl>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, "tiwai@suse.com"
 <tiwai@suse.com>, "robh@kernel.org" <robh@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "perex@perex.cz"
 <perex@perex.cz>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20250620094140.11093-1-darren.ye@mediatek.com>
 <20250620094140.11093-9-darren.ye@mediatek.com>
 <011093f8-85a1-4c3c-b3fa-7be9e6df8a25@kernel.org>
 <3562cdd32d6f723a35ed063b65560a8e25801255.camel@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <3562cdd32d6f723a35ed063b65560a8e25801255.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 23/06/2025 08:52, Darren Ye (叶飞) wrote:
>>> This patch adds initial support for the audio AFE(Audio Front End)
>>> controller
>>
>> Why this was changed to undesired 'This patch' (see submitting
>> patches)?
>> I think you are circling back to previous versions, reintroducing
>> issues
>> fixed in between.
> 
> Thanks for you feedback. Just to confirm, for the next version, should
> I revert the subject/description back to previous version and only drop
> the document part, whitout making other changes?
> 
> 
> Please see the following change:
> 
> ASoC: dt-bindings: mediatek,mt8196-afe: add audio AFE

Yes

> 
> Add mt8196 audio AFE.

This can be longer, but just read submitting patches regarding preferred
style. Changing to less preferred makes me thinking you did not read
that document.

Anyway, don't send new version just for that.

Best regards,
Krzysztof


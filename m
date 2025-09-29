Return-Path: <devicetree+bounces-222357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15780BA8477
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:44:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F5FE3A4DF0
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5FB72C0F7A;
	Mon, 29 Sep 2025 07:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XWpLolS+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5179F2C0281
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759131846; cv=none; b=lUmKzrZlQ+0mUK6alS19JU3pABKLSpH/fih7fKVQ351ZTdqMteTeL+oQkvoyYaoswKdCpnzmFUzVKK3vjSw9M/HKAZI6pkF+OE6bdJUuP6kLcFDK24iv3WceT7MnXedFpGZmJCacUEp0jomSZhnIAFtsxcqEJk3k62cKp/P0+24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759131846; c=relaxed/simple;
	bh=losOm9kNhx8UB0MkS+d+hChRheC7eo4iF79p3q3CMLI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XCsLWC1GocROPi1Ole7Poy9+U0e+fp6ISSS6UgH9gewjcV9xqZk0TW6AKglWRhclz4hexwLeguaVpnQ2GqzrekhOkkgTuGN4jfIQa0YtvVK50YnvsIbjXXSnsVQf56COVhf5EyhtpgC3fO1u/zw5LCjrOKutiy5Q2npABV5MbRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XWpLolS+; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-273a0aeed57so60281465ad.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 00:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759131844; x=1759736644; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4IugYQww6ZMP7fZxYkyvyMGRoB8H1RfKni966hm3Oic=;
        b=XWpLolS+rJa/IhWQH7+cU3WZ8wK8gFIVUgfGAlP9Qo4ZA4UYZzbzQg+cov8aqfG+Or
         XMDP0fFadScnDYjK7U9ZFcIvDVwmq9kDFcYB0c7ponxkh6H3U6MnKWmYpLBYytksCiOb
         hg+HMQrsTT6U1kcuzlTllk4Bh7+dUmNqgpC9C6WLspwCd6/Tut9QAdaGQBca8/azLoh/
         kvoHHwiTFTtXRKvcm5WNL+JeisDY4aPVmqD+xTB7wfFCOROrAqP+NhJ7657heqZyAWrG
         yEWI9yNDZEOL7Waj1cAbchpSRpYGALV/hw8yY9hJajjsLUI+kJ5K7nQqaHglEviyyfh3
         XHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759131844; x=1759736644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4IugYQww6ZMP7fZxYkyvyMGRoB8H1RfKni966hm3Oic=;
        b=FiT9Rplc+xYFVwqLoageMWzIMh2pR4ivAzgHTx/z4dWnGHt7GUIf2IayKVQv6gpuhv
         cl8zppw67JnexEg5sE9G6Y0h3Q3L0T0G/4IRiL74YXAOovfFaTiuJqC/DTmj8pjI3GZG
         pdTD3rRj7yX4jo4pW57c1b/jgQL2h1w1m2USX5Br9+StYh0A2xD9Bc/y4YuosegmtOrd
         ssioIixgB908BMegS92sYd+mvSd5EgrhVV35hwpXMqtIENoU3yTwYxKN2l4ce/hH8gMq
         h4+ZVk8JtgCr5+mZmTQzZYPu8mFfgSNg+/75LbjQGILTqnLIuU9VLBRCd3fc6VbCgT7v
         DdIg==
X-Forwarded-Encrypted: i=1; AJvYcCXXhrkK3KqslAXp4lF/mfRY/1fA41LZFc8p+AocJFt/hc1b9PC33pdOr/0p/RjF5HJOEMJXuq08Seij@vger.kernel.org
X-Gm-Message-State: AOJu0YxeYNY/jtaVHMArf4f9n1Xzkxvzv+vXu4DVXT2gu0N6G+KS0NMA
	imbGQCRNnHUZWVXTs9ZEQXwNvTcXEMqCkE8CZdXwdzIcKtolVRqQPMHN
X-Gm-Gg: ASbGncvSM0qug3LdrTFQORx8Ftjm8KCxbKZqrgckoJImgLWa3SIr9nD5vxiCpELIIzq
	b9YDilms6NFljHVf1+ynCEbMytHEOdvV1/VqJv1wQ40BPhM+rjuSmPPiWdnxiFdddalZDsGLis3
	DctW/RhyvdFi2oCGsIBX1XS5qakeATv6XNJ9jvSFsb8xdAk3fQOnc1F1C49hVxb7ScdFpFfIZSE
	CE6n6D1zBsuw0G/Wck1JeeEJArF3d2IcMKjQwXqcOv375n4cIKhm8pP48dchhFL6+2PjaRa7Fvt
	jqj+AT225z14ebh6A2fpaEw0H0EMsdj7l4GXMt8juESevbtnL6WNHpCBd61ac5cEPT27TyGByy/
	7McPdz7qxSYpXV+j1QsgXAg6zDng/CbyNnDdAL7AudB5WSA3YP4DLhvTeZNsFOyMP4/UF+X0VxO
	Ap
X-Google-Smtp-Source: AGHT+IGYbzLtndPlp4Q3FPkBFfn1YLlMmp9JRJofGAotrhQINUZyvBL0AAPnW2NjXrzXu64Iv6JAsg==
X-Received: by 2002:a17:902:e84b:b0:269:8eba:e9b2 with SMTP id d9443c01a7336-27ed7222952mr159612065ad.29.1759131844132;
        Mon, 29 Sep 2025 00:44:04 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d3fe7sm123321985ad.7.2025.09.29.00.44.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 00:44:03 -0700 (PDT)
Message-ID: <b01ed528-8b29-4a6a-bdff-88f2e3b5dd2e@gmail.com>
Date: Mon, 29 Sep 2025 00:44:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Upstreaming Pinephone Pro Patches
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ondrej Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
 <53eabe34a310ea9c74315fa09a604e4a@manjaro.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <53eabe34a310ea9c74315fa09a604e4a@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


> Thanks for submitting these patches.  However, please expand the patch
> descriptions, because their current forms are too terse and, as such,
> simply not acceptable.  This applies to all patches in this series.

Gotcha, will do! I've added the testing that I did. From 
https://docs.kernel.org/process/submitting-patches.html

 > The text should be written in such detail so that when read weeks, 
months or even years later, it can give the reader the needed details to 
grasp the reasoning for why the patch was created.

It felt like saying more than "adding x sensor" seemed like adding fluff 
to me, so that is why I kept it short. Let me know if there is something 
else I should add beside the tests I have done.


> I'm also under impression that you're submitting these patches upstream
> blindly and without researching the rules that apply well enough, which
> may not be the best possible approach.

Sorry! I've read https://docs.kernel.org/process/submitting-patches.html 
a bunch of times during the years I have contributed to the Linux kernel 
and inevitably forget something. Please feel free to tell me what I've 
done wrong! I've corrected my mistakes in v4 (and undoubtedly probably 
introduced more, but feel free to tell me that ;) )


>
> Finally, please refrain yourself from sending multiple versions of the
> same patch series in the same day.  Doing so makes reviewing the patches
> unnecessarily hard. 

Sorry about that once again! I'm mostly a hobbyist that loves working on 
Linux over the weekend. I wanted to get correct my mistakes so that I 
can get reviews over the week. I wish lkml used a forge, so I didn't 
have to spam you, but I digress. I will keep this in mind moving forward.


Rudraksha



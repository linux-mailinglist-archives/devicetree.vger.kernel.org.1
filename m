Return-Path: <devicetree+bounces-229009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 335EDBF2F5E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:37:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F1EE54F23F7
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13CA2C0262;
	Mon, 20 Oct 2025 18:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nhhMIwRC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0081B202961
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 18:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760985438; cv=none; b=u1rGz/and8SK6nMLKDHx4rD9ZOv+l7YB5CWSOrEUk/52/8N+iOKVxpggbZBcbFGDnaeC3n4iRvaWMtjjLeR1cwHk/Bh3AKQlXANEkk7/M4J+mXI4MH1tgNmXltJw4BnOdOilOc0l4EEb2uI0obq/Gadr9uGFI8cgNDt9TUJqIik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760985438; c=relaxed/simple;
	bh=1vFXt6XRVipPdMLkxRp5oxg38DR886N+xgXmYyeXzbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GyNEW7PYwQDU9OS9YGQhgcIm+uLTyNhjG6nCqMllJrCLYEGFgosmEsP8uWQH9wdAL4l0yO75b3XxieKd4Q6Vt4MQ8DSxIkc6nriEsaFvPwKI9EqNmQm3HgC1V7hujUCu6MfrfX9P2KpRAsPkAeaAGCfHw1j41/pGSS9ntOI/Jrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nhhMIwRC; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-430ab5ee3afso43382935ab.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760985436; x=1761590236; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jr/vYXNnHg5mvV0vPYpieCO6Isu4juKQ+h7apsb/fSI=;
        b=nhhMIwRCE0g1nky9C1Te47U7tSWrjASdLQaabFTv5ct3taXghMHTI6X6eyBfmV+Kcd
         aMAicmtW2JNX/1A3vJ8tIw68AdiW/v5mzyVSOuUq9DnkCZcNaLKCZZLxqKCOqjrL+Q56
         BgRw4jlHQXKIkL6nDwSbQQvC0VKfJ30/WIphj2UdSXg30PXgVEgSAJMQpOSlfzIxWgxa
         inH6o+MLpnKIzuiZGJqbg6I+Foit96pCWurCA3PV6R1SmB22N1C7GNTVCOTmrJsVUkQY
         5epO9ZJA7M8x9EDdNUlr9Iv1qry+0lueILCwiNy9VRrTOwOLgG1Q0mid9NLAukFx5LSo
         bYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760985436; x=1761590236;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jr/vYXNnHg5mvV0vPYpieCO6Isu4juKQ+h7apsb/fSI=;
        b=QeA/cB0/2hlQzrB38K9OfW6JYZsWam/dzuZmAUpoN/85AURCjJxzuTTFf+mr7KKcyp
         t2UgHraHAqKDcQc9rY7tIhR7kSaeI4mMfOeo8cAnyZYJhuu5RGuzR/xYXmFF/ticSTNi
         YhbH/WkN4gapyst0fzIVEXFpc5VyBnVDALmtoaCRsNTGnzmurPdGuXWnY1dycuHMnlfM
         gmjxdLCtEhUZ37IagEe9IBnYuiTv8GBrvGYbEZ9rh9MHIUj1KghkF4Us8L/Du6T2NmSe
         PDhNYNXOHKkxZ/EDQ6gf0YeGjLSgGjmrR+1qTuI/bzkMNbNlPicAHbiEjkvrlnFyF2yK
         22/g==
X-Forwarded-Encrypted: i=1; AJvYcCVhsF3vMplj5LP8CoP3RMf9HGrfE+uV38HEN17aNZSJCx89OMDja5JxDCdofFWI7V5nWvLqMy2vxznK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5X0t2ljHWlesyogMb0p6OIh0VhIYe2XNxFRM/NoBi5OyTac7a
	Nfx8n7ZDacqIYoGAI06NNd0t6ighA4iXBnMZkqPlBYWe/gZ8z32kzapny7YIpjqlQ34=
X-Gm-Gg: ASbGncv4rn0f54uF1MotRS6OWp+U08gbEtg0sVcoDlTdybZggFZMG3Z2aKTFZf7/Yxe
	KLthIPqMVA9SvnpPiaRfqcLkfLaSLXWY0nxsnkdVYR7FPGtXbZAztRJtmkxtjUoUgybVCCqRrhb
	1/4B5L0oMS4dngFKcMIq01ezEek1/pqnO+tAi/u8OYUB1YBOyt8QPU06JhRolPJA0N5EqRCJ87d
	Nig7N4UBoGjtHz8KiA7JbLJoVDSfqSRRJs+DN8VZB0StmSo+EkYofuS3dnvhpmkBCPXm0nto+aH
	t7ZjIZMMegP7AY8QpRycuc76ZybGWHJsX51dD6nQ6HyzzA8pmIpqzOToIUTpXUpMPofQ9u3kmgc
	ud54/p9cmChHU7gRRh8qkDntpGvLs70uPS6PApi6d9EBWi2T5xjX9z/DdYf2viOtE6TxTnHhbBl
	VAfPY8WpUgEZzYnVBM9vP0fEWvu4VHHCZVJPijl20tndkFUs59
X-Google-Smtp-Source: AGHT+IElNLjj7kkxLdaR/W624I/459FfOH+dYJAUUw0iEYH3D4Q87WRcXxpP//DJVpw9S08uE/P7Hw==
X-Received: by 2002:a05:6e02:1523:b0:430:a973:7e53 with SMTP id e9e14a558f8ab-430c5294ff1mr183507015ab.21.1760985436041;
        Mon, 20 Oct 2025 11:37:16 -0700 (PDT)
Received: from [10.211.55.5] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-430d070ba35sm33475995ab.10.2025.10.20.11.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 11:37:15 -0700 (PDT)
Message-ID: <e40f28a2-960e-4002-8384-d99343b4fdd1@riscstar.com>
Date: Mon, 20 Oct 2025 13:37:13 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] dt-bindings: spi: fsl-qspi: support SpacemiT K1
To: Mark Brown <broonie@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, han.xu@nxp.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlan@gentoo.org,
 guodong@riscstar.com, devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
 imx@lists.linux.dev, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251020165152.666221-1-elder@riscstar.com>
 <20251020165152.666221-3-elder@riscstar.com>
 <20251020-blinked-primary-2b69cf37e9fe@spud>
 <b28d71c4-d632-4ee5-8c4b-270649fca882@riscstar.com>
 <710c36f2-3551-4738-a965-f1564416348c@sirena.org.uk>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <710c36f2-3551-4738-a965-f1564416348c@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/25 1:26 PM, Mark Brown wrote:
> On Mon, Oct 20, 2025 at 01:06:46PM -0500, Alex Elder wrote:
>> On 10/20/25 12:39 PM, Conor Dooley wrote:
> 
>>>> +          - spacemit,k1-qspi
> 
>>> Are the newly added resets mandatory for the spacemit platform?
> 
>> This is interesting.  I never even tried it without specifying them.
> 
>> I just tried it, and at least on my system QSPI functioned without
>> defining these resets.  I will ask SpacemiT about this.  If they are
>> not needed I will omit the first patch (which added optional resets),
>> and won't use them.
> 
> It might be safer to describe them, otherwise things are vulnerable to
> issues like the bootloader not leaving things in a predictable state.

I mentioned exactly this in my message to SpacemiT just now.

And yes, regardless of their answer, you're probably right.
It is *possible* that these resets must be de-asserted, so
it's safest to describe them.

Conor please if you disagree with this, please say so.
Otherwise I think I'll keep them in the next version

Thanks.

					-Alex


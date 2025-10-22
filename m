Return-Path: <devicetree+bounces-229578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9F8BF9F25
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0466A3AEF1D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 04:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC022D5A07;
	Wed, 22 Oct 2025 04:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="eICJQYbe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB08272E42
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761107659; cv=none; b=mYnlF3gu8fET009Gi7iHkJMjzlUJ0ORqFBRFpKVrBuwX4+Ds1iZ753OSl9Gr4MP3g22XJbGl9OLfQxHziVQXgWSBwlXLr/vVP9kQIzYcvRDu+x9prDJIQj7g1st2haJGflbddF3+rc82WjJqkNbPwQTpSf3gEOKmbdqcCPPK3Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761107659; c=relaxed/simple;
	bh=Ta3vLBQn3sKyycsd6zk6kL1yNYlGExTdBO+VCjlMbt0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pjy18q6uTWNEeUpg5Xh9MkNlNRSuEmjMopHMtwAZTZ7Dmi/+Hm9VkSP5IMJn65r1KXNnuwxAaEyw7VakafczyjIMCcW84N5+Z6EAaXOudOorIZGJM58NM8Xqw81JY7N6iwQKsYs4wsS/k6DQk1fqpOqP6wjV03avtAJpw9fYgLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=eICJQYbe; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-290b48e09a7so76850835ad.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 21:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761107657; x=1761712457; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ppwCPMx8V2Sf6deae1nCYy7pnPOnc4IDjA11Y0/2goo=;
        b=eICJQYbejhi+Edhn0HQlKs6ymsdpqS4weM5zk3/8ogTuaIZtgsTy4XqdM9ErgYlS7L
         XdWfRF9iHSXnc4eOREt1nh9EA7rX/Bh45ap1T6JAtAUSjkGoNB1GT6GniFsZ+OYfrJbC
         ZRfl9yq+D+fvJj6zkasVTRxPAHKMjTIYqhjh+Ur4K98WtV8PqEkIJRDS1w3cFOOxlRTS
         QVBLfAQAMUut1bR/6LF1N4ETkuCZIqyMR9+8c8652kYMbi8BXqdjzClgNqlkcJ57Wpbn
         fNeNRTLLlK/jGB8r09QDZK+9kAchioCe0FoAnWc+x50/TGfe7cH/fdZ1xz2A/CS4dFjL
         /PMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761107657; x=1761712457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ppwCPMx8V2Sf6deae1nCYy7pnPOnc4IDjA11Y0/2goo=;
        b=fvJWZa2+YZuAJe4NB9vXFYUv5rmHRdwKeRCe6KHfOMWkWbhA+F257pGMxWvlf7Hic+
         QXr5HdTBa9x97ik3iBJbC8RL7AE9+HoNEfekxEdF1vZw64Fq4QQG4i785GI13lnsGiCb
         y3naxHOwvd8IpWYYqF/YaGmMUtu9I/24guGGJq8GmfLDnyWkGDBDnUjcUDiI22gBOOZo
         cC0yy6/2zCQftVnuAmvsAip31AVGSAxyNO5HaiJcCvpCiQz4RgmRwSvKuECz5LGQiZnY
         YFssBT9Zdd7DDCxIGUC8RApeZ3P99Eap6CPCwTEFyPzlDTKcQi9sJmhqXMsDrbqnv9rt
         TQuQ==
X-Forwarded-Encrypted: i=1; AJvYcCU19L+x0Q4kCWtHeu0v0Lg3diQRkGXTdxNskvK9/G+iD33rKuRRtndsECidDjp5mO8CXxGXGy8LOlca@vger.kernel.org
X-Gm-Message-State: AOJu0YxOoIooWTn7Qahe9ukgXSdNhEdUNvSJ0s2z7tKk4+G6ANvrv+ZF
	z/YGFmO8hThy4Gs3y3JL5QPSU2tILlpgBVF0I20T+2UBSRf7exr0Df8eAWkvrYXVt28=
X-Gm-Gg: ASbGnct84PU3EakhHSVDOGgff2XfIzCcpav7gxmCjHkL14PI0KdDzW4WxgJziUbhgxw
	3Jat+bH3EdNuNJcySlJVl3761776J3F2TvR+IwWrYmq5+FEJVfbDg2T/pQhqgZbzUDvW0DIrnkL
	cIm015EORzbpw/xRKrd5pQqr8eRsMdHwYV34ai1m5tA1FG32nr6TdOFGsndPKX+oDXlz7yxiicE
	yrK0gZz7+M1mVcUwGkbv9tePjY05Rdp3a0xvGLD3DUjq5tV6rAV2Q+ddyp6f1O+0VReU9zIF6l7
	jlQSTcUwJscl37i1XKlhbvEHZvMiXBwWovzrU4FETJp8VHEJD7Q8NIIkhzwvpP70xEDr6EgB20g
	f3SLGg6JvqQ60pECiHrWGm+a2A/t/qWcKuEn010X8Ca7wC+horWdDV29MJ67XjTiOIrnlLzMkN/
	p5L5vJrLosKZ4J
X-Google-Smtp-Source: AGHT+IGRbL8alcY98vwlpMmB68/E/fiZ8vvTYnBqywFldOw2mBZIi0C45CU+Ljv9QC55tUOEBjim+g==
X-Received: by 2002:a17:903:1d1:b0:290:2a14:2ed5 with SMTP id d9443c01a7336-290c9c89fd2mr213302675ad.4.1761107657244;
        Tue, 21 Oct 2025 21:34:17 -0700 (PDT)
Received: from [10.211.55.5] ([4.28.11.157])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471fe4cdsm126257025ad.97.2025.10.21.21.34.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 21:34:16 -0700 (PDT)
Message-ID: <ba01b2a5-a04b-4a6a-9257-09f38f2ba5ef@riscstar.com>
Date: Tue, 21 Oct 2025 23:34:15 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] dt-bindings: spi: fsl-qspi: support SpacemiT K1
To: Conor Dooley <conor@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: han.xu@nxp.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dlan@gentoo.org, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, imx@lists.linux.dev, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251020165152.666221-1-elder@riscstar.com>
 <20251020165152.666221-3-elder@riscstar.com>
 <20251020-blinked-primary-2b69cf37e9fe@spud>
 <b28d71c4-d632-4ee5-8c4b-270649fca882@riscstar.com>
 <710c36f2-3551-4738-a965-f1564416348c@sirena.org.uk>
 <20251020-florist-campus-a397bf94d129@spud>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251020-florist-campus-a397bf94d129@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/25 1:39 PM, Conor Dooley wrote:
> On Mon, Oct 20, 2025 at 07:26:17PM +0100, Mark Brown wrote:
>> On Mon, Oct 20, 2025 at 01:06:46PM -0500, Alex Elder wrote:
>>> On 10/20/25 12:39 PM, Conor Dooley wrote:
>>
>>>>> +          - spacemit,k1-qspi
>>
>>>> Are the newly added resets mandatory for the spacemit platform?
>>
>>> This is interesting.  I never even tried it without specifying them.
>>
>>> I just tried it, and at least on my system QSPI functioned without
>>> defining these resets.  I will ask SpacemiT about this.  If they are
>>> not needed I will omit the first patch (which added optional resets),
>>> and won't use them.
>>
>> It might be safer to describe them, otherwise things are vulnerable to
>> issues like the bootloader not leaving things in a predictable state.
> 
> Yeah, if a linux driver requires that a bootloader set up a clock or
> de-assert a reset etc, then the binding should mark them required since,
> as you say, a bootloader change might do away with that de-assertion.
> Additionally, the stage doing that de-assertion etc could be U-Boot
> or barebox, which import devicetrees from Linux, so making sure that
> the resets are present has that benefit too.

OK, so the resets property (added in patch 1) will stay.  It will
be defined such that it is an optional property, and only when the
compatible string includes "spacemit,k1-qspi".

					-Alex


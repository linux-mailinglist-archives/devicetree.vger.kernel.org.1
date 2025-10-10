Return-Path: <devicetree+bounces-225276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B35BCC201
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:27:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB7554010C0
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981F425C81B;
	Fri, 10 Oct 2025 08:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NSADIlDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFAF25A623
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760084856; cv=none; b=cWk/ESo+hGzUMEKnjysp1yk0ztc6pEwbNt3MZinVV3vXwVjXRkLnBGe84y3uvCIEysDQoohqFEfiv1709+x702IPR69NeTe+yzj9z99GskS4sN8InISkugFBImnHLMPVygeP01LfJz5+11ffEAD3zwSb1GkB+Hr7KVRDxOaQuKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760084856; c=relaxed/simple;
	bh=Bc+OPdWbJK0owUba+Khr9n3WegKFbUlo55fcd6DlxyQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SjDLfuja5gF8EpYTpQi7n6m8pER4Ej4mlV/ldKPKuLFv3YxYxOuPoz5Y04H/glmbnNjzwqjR8uLW5vzvpHiDCZRseXZZf/Km3vQ2c8loaNv4GXXa99ePfW/n4t681Dnqxqaj6JOCQsZWDCYeK5XqaZEb0sPUkJycGSYx4DTSj9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NSADIlDJ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3ee15505cdeso1599102f8f.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 01:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760084853; x=1760689653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bc+OPdWbJK0owUba+Khr9n3WegKFbUlo55fcd6DlxyQ=;
        b=NSADIlDJ6dmizJ9cbFhLCbdteg7iCM7g7AW3zA387b3Jz1RDs2kHbMvkxBqJdYlToA
         o8YqlMU8p86Ol3Y1/8mAQA4wFiSkfMtF5REaoVTmnYXhrWtwCrVFnLeh4yC9Rpa/RT/j
         PJbtECmpXqATNwRWzeigFUA9WLXibLu+wn+z9PWMPV6XhMIihAUwibep+ys9mfUCMmny
         xeJnjLlSsGpOeT8sN5n4JiBPC59X02I8YjTngPTY6Lb+tQgxvlo+jkR8GXrIY6L0s1iY
         Ot5Ry/fmSrLLy+iqRvdKfxEsGJzeQ8XiHMLjq9xsNzqpcOA4SbbJr/ngDmu1pw+hbQwv
         4Kjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760084853; x=1760689653;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bc+OPdWbJK0owUba+Khr9n3WegKFbUlo55fcd6DlxyQ=;
        b=KW4o7VoBwoxvYEmlQpD7Z6hjkpQ0nGPTXxLOcE30enUKQFDcYqB+Ip93YbgVj30Szs
         XD+UZC5uUtsNunvgZ184Ylg1WfFlg+8Yw/sy/Wxr7lhhpUK9qLogygTxsTBZJVA3jb3C
         kxOv/anselxwt0R4rZFp0d2/MO6WSnAUBldXxLtB790wuH682nyx15SWitTUjY/gdVvO
         v2bMMSJ9N4HwE/ujJ+fu8wdVDfBt7WIhXIGLfAABqoJKrmWsAyLQvbaNFJI5FmVNtrJX
         MfbFHQkd0y8gbJhh6bHlYCCaNhDqWj5xH0L59cNXP8nqEwQuNc4OPxuYbkpEIFFvLKe/
         HLiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPIs0vUx7RCvDqwO5FVi1dUU3j+HK59pmO3ANpwT80lBwenpdfr1AVOKGrv8yI3mxNlD9ULS1vHusd@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzob7MUinPRlhjcshcduatDV+V9+jmES39nTOviGPOi1GlyKKw
	Bn6uzVHbmu9tvqyBZwdqE+aEJEHZmG4W+bGBsrhPgQfxwGJSy3nvACbA
X-Gm-Gg: ASbGncvVD+qZcMP32DcB+QWx9zzRGsz0RxWEr0IhDrU+eTQUzt5zyRsK96C1BooVHIW
	Hf5V9BIU4UUdpL+y8y4k1SsPmszpjfEMgDj6KZ9kvdEuXJ2NsrryincJOZ24niHrFhy4qPzO4Hg
	ZKUx28m8jvlHwr0W7gV2GbudGtuPmRw5ldfvXuCIvkO7+o9LaR7fHTByf1n97Oau7NWf3Ry+/YD
	+U8IwwMG3TbETGpEzc/KL5HZAACyEmL6UcEhfaforUrL+JNfxHb8KxJedAOp2FqCPe6+lf559SA
	bBxacCEQPPlqcALz2iRhVKr/lMSaPA5Gzz21vAI8YmE2PpQozrIVSkl6PacEOsqBTGklgWhIjyD
	VvOau28mWoCkRQNGFWaWlejrwRvrvzJ0xFNMVUlEmadHazyD4SOuJKReq9D7E1Cb0Qtls8LQNZP
	92RSO3UWofd+5xtNS9+WheMzxh2RCcW1qrfdebuw==
X-Google-Smtp-Source: AGHT+IE4OYFOeFOUeL/SJc4KgTN0TBbVFULDSfyHbqmID+CsCye2eOCE6l5tIJdbjksWUl22gALd9g==
X-Received: by 2002:a05:6000:4027:b0:401:2cbf:ccad with SMTP id ffacd0b85a97d-425829e78e9mr10382089f8f.17.1760084852939;
        Fri, 10 Oct 2025 01:27:32 -0700 (PDT)
Received: from ?IPV6:2001:9e8:f127:a901:35ca:1de4:aff:7ab6? ([2001:9e8:f127:a901:35ca:1de4:aff:7ab6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb49d159csm33647325e9.20.2025.10.10.01.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 01:27:32 -0700 (PDT)
Message-ID: <22a99be5-b0ea-4f8c-8a2c-5024507a7e32@gmail.com>
Date: Fri, 10 Oct 2025 10:27:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: gpio: add gpio-split controller
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251009223501.570949-1-jelonek.jonas@gmail.com>
 <20251009223501.570949-2-jelonek.jonas@gmail.com>
 <3118e300-f6de-42af-bd1b-ad13dc80537d@kernel.org>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <3118e300-f6de-42af-bd1b-ad13dc80537d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

On 10.10.25 03:12, Krzysztof Kozlowski wrote:
> Instead, please fix the subsystem driver?

That's why I sent this as an RFC. I thought about this too but have no good
idea how to represent this in DT while keeping the existing bindings. 

So I just thought this small driver would be the easier way, possibly being
useful for other potential usecases.

But sure, if this is the only way to go I'll have to RFC this at the SFP
driver side asking for any ideas how this could be achieved.

> I have also doubts we actually want it in DT, because we tie the
> limitation of Linux drivers to bindings.
>
>
> Best regards,
> Krzysztof

Best regards,
Jonas


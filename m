Return-Path: <devicetree+bounces-229167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06858BF4A08
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A33663A8C1B
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 05:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714C71F30AD;
	Tue, 21 Oct 2025 05:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bck9PFFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A0E4D599
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761023734; cv=none; b=fDwu00L2d5nsKcA0VFxUc6Id44CBKBhS+RX9jfCDoghVJjwxjWiDJC32yXpded8nvAw7sOxSHhV1UJ/gmoa9iM7rXod6Ar2vrF7DSgE8A7CKQc2GH56T1Qk5efuPA5E+Coh/uqMrQ3x5PUfshgc4OS3xIVnz69gYvDEaDnxnAYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761023734; c=relaxed/simple;
	bh=943ukdskoyIjs15eE1guZ7dgvMyP1QjuvHNf2DgJaN0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WBaLndKZfDch2Tp64ZxgRyGPbnRCQ46pSba/fe08AX0EAr5jsUoyNBM0qB/ExCdiaNV1B5w8XiOIPSwQjnK7jPUSyGpc8JLzhjt/reE8CkfOOHSU4cEzWo4+ZlBzNcjA/5eL19esjulxm3gr7Ww1usE11Dpc8ZP3rhS0rLz+/5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bck9PFFp; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2897522a1dfso51320295ad.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 22:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761023732; x=1761628532; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=od6v5hPtpa2dpGgTyyazVG/nnN+2Ji5+CR2o1q2bwkM=;
        b=bck9PFFpAP0KEuNj/onNBddgRKc1jccfsEyaUgdjgjNRLlFWJ96ihpYG/YyQyb9irl
         ffWEHqIgY5mw5elv3H1xDI/nwT4LMKa3Y92qg8MGPPKTc5RhnUj4rQqpqw7GPbNTu9if
         W2pPRvyXnrQBF8JYcPi0Hc8tj89dJZSNJnJCf8DxAfIm8eK7vGBb+AJxm/nkh2czTTLL
         ZTi1A+N+xuQvkGAFNy/Dn5lfTrXiQ30oelKn8Ub/QlYr5LU9tGT6x1rYPkhEWDDfgCQl
         Xxgio6jkZPeTRERlB8PjIrtg02lb0LMfZqa5z68OwGoEK3NAKyWUzyqmwYbFJXVgfST1
         uYKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761023732; x=1761628532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=od6v5hPtpa2dpGgTyyazVG/nnN+2Ji5+CR2o1q2bwkM=;
        b=hbVxlqwdBtwBaA/YqNyKkIIeoLD3DpXB8e4UvtgyyLmpTl2//xQFwdf8gP2FPY1KnP
         awvf2KpD5gNuQDSlkdgKCjFSLW3dPCpl1Rb2w5nZGEHaaKHNGmNbpSfGMhDI2am/Pmh/
         6GsBHqATzKPZOZ+2LuPjPPjl/rTIRsxSxyyIOdZJf3p3m85YpVJ+N3C+J2feCNM+Cdxs
         3MdMkWgWd6mSBuw0F+obbsktziL4a6621voY8OJaF+1zJunxjXo6ccK8aerGlN2ywL8I
         rNL40JINUVuYmvAwcanKijQWT//7nMDZoepgZ48+McGiBbxp8cOQVQhx1eDEV8/zgCtg
         B7cg==
X-Forwarded-Encrypted: i=1; AJvYcCWQjNJzTV8O1crnVhye2vJcQDEPwe1o7wgxsWh7YKyIb6a0TRcychm40mVzhyrctzAdzzfLyHLSHb+t@vger.kernel.org
X-Gm-Message-State: AOJu0YyEX2+JQEW0/h7x+lk49X3uCqZwJ6DPwmWkbrbmA3hMyioEI2v8
	luSOiScnz3XZ5xofp6GAnjMfjt55/8zgJobcYiS+YHnC98vzHv3EG8Jv
X-Gm-Gg: ASbGncveouWFsd59i08ME93crN6DyOutBMrC8iq/iDgqT4M2Nsou54XsxzM4DVZpI5i
	/ioOq/Bgn/mCtgZAfmTEx031QU0g3SG/GQgQRIv3KgDZn2bULHhl+cv4TS68lAtcBdichwrXgO2
	TKu9uIL7HkNyNrtDgkI/2H74bCaXhbcJLJgNT1kOln9DVI19+t2/7+8PWc7F2afXlAWp7xYiLRB
	B120ufk3wuEUlINufZolFhR8KIp+5vUGXineivnUhhIn7ybYPXCaP9l/dK4DEIvL49LAvx0dtW4
	lwyBeDyrgvr0tVINC81fQLEjfc5TVIWIuI0bURCttRIyMtEEDnV4j33V6Y22nvAKLou+4NLatBv
	Z82qUf8Y9R/D36opWNzfAgwUK4lAonvoWnDk0Z+F8Dua3+xSOpBKxeaUDODtNonTZfx91GetwK3
	/dCUtsqF23FexEGQqox67Bo41NdvGf0EV9dy9S
X-Google-Smtp-Source: AGHT+IH+hzNykrsR6MzrQ08Hkriu6x/fxTP3vOIK8kh36JKZDfIiuk5lI6ncbWevl34ZuixXIdybDQ==
X-Received: by 2002:a17:902:ef4f:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-290c9cb51f9mr217113785ad.16.1761023732103;
        Mon, 20 Oct 2025 22:15:32 -0700 (PDT)
Received: from [192.168.1.4] ([223.181.116.113])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ebcde4sm98220855ad.5.2025.10.20.22.15.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 22:15:31 -0700 (PDT)
Message-ID: <4ef23d8d-89ab-43fe-8a73-589fc84bd71e@gmail.com>
Date: Tue, 21 Oct 2025 10:45:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: mmc: ti,da830-mmc: convert to DT schema
To: Conor Dooley <conor@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251011-davinci-mmc-v2-1-355da3e25123@gmail.com>
 <20251012-nickname-morale-e1e21796f1f1@spud>
 <bffddadc-4235-4ccf-a0ed-7a0de68e2fbe@gmail.com>
 <20251020-blimp-gravel-ca7f43294ac7@spud>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20251020-blimp-gravel-ca7f43294ac7@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 20-10-2025 22:31, Conor Dooley wrote:
> On Sun, Oct 19, 2025 at 07:28:49PM +0530, Charan Pedumuru wrote:
>>
>>
>> On 12-10-2025 19:05, Conor Dooley wrote:
>>> On Sat, Oct 11, 2025 at 08:52:07AM +0000, Charan Pedumuru wrote:
>>>> Convert TI Highspeed MMC host controller binding to YAML format. Define
>>>> 'clocks' and 'interrupts' properties to resolve errors identified by
>>>> 'dt_check' and 'dtb_check'.
>>>>
>>>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>>>> ---
>>>> Changes in v2:
>>>> - Modified the commit message.
>>>> - Removed 'interrupts' from required properties following the old binding.
>>>> - Changed the maintainer for the binding to "Conor Dooley".
>>>
>>> Bro, what? Where did that come from? I know nothing about this device at
>>> all. Find someone from TI to put there.
>>
>>
>> I checked for the compatible driver and found the author but no email address, so can I add Ulf Hansson <ulf.hansson@linaro.org> to the maintainers then?
> 
> What about the author of the original binding? In either case, the
> original author's email should be attainable from the commit history.


The first one to commit for the old binding was Kishon Vijay Abraham I <kishon@kernel.org> and added major changes to it too, I will add him to the maintainers then.

-- 
Best Regards,
Charan.



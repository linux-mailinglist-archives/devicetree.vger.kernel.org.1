Return-Path: <devicetree+bounces-188982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED52AE63B6
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 282AB172084
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44E2028AB07;
	Tue, 24 Jun 2025 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wK46u2wt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2BF28466F
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750765096; cv=none; b=ctUWKr2J86voNkeHO2EhDOg0vPtUJbt4pmAiBUnGZur0XIfgUXXrI9fBIvXrM7+Hs2QAVX9AXX+Gq+r9f4EM/6UvQrQke0eX8kJpeH+/ZMkMn1kH8KrKU7qotDQUAPGCUYoa+yCAhTGwDreJtpY7VxymUXW5NnoSjm1IDiOLk8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750765096; c=relaxed/simple;
	bh=RISdn8se4eZFI/7bIwlWhVghSpmypcU6lLVYr6WWbOw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ft120BOreGNpWmFivp6sqY5a3amJVTylFYMJ8HOhYZPO+CCnQEryWb9We1QlUz0p+SfmEk6A4uHJea2qKFOHV2WYuw6z1Hnj3fmO7+KDWog1sxkJz/3+G5Ze1Ir+eNGOQCZP1ZdGxJH8YA/aCDJK3in7rTzKuWtP+Lis8s24SAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wK46u2wt; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-553bd56011dso494292e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 04:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750765092; x=1751369892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KU9iU+hQX85DLrN6RqDyNPoBwm/rVTmxBoMbBcJ2tl8=;
        b=wK46u2wtaCqvt57dtXkO+/EEQYDN49UbedbMXfSoF9IYAF+GYULdjQBA5Z9MqwUGIH
         wkkJsvDeMbInNwlHb+NqY7ze7vn7iq1uPoMfV12cChhrZO7QIH2YCOjFbDoMkcPs4i/W
         5nTHMsDnHp6yNUQUqcUMnqSbKdaT9CvDqFDpNXUIzQKBNQOqyE0NDCFNVFrmagqhWrTK
         nxEKuL1acyIIgKXbRAise/kEMUOmUjhpzitZ13Z8HWbRu8+mJUltBdUbNF5hH6k8FXUa
         mjTxROPJBB986rEvsm1qErm8Yzr/cuFMBnU/hEuO6mlnecBEOP4oQM1AETsuloe0h149
         KCXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750765092; x=1751369892;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KU9iU+hQX85DLrN6RqDyNPoBwm/rVTmxBoMbBcJ2tl8=;
        b=Z4afj0EL1EgoQLaq3+965ezurr+azo45ElOXfbu2hTXy9AYVUa2YTjnWMQfQKVCUth
         b7ewBJ9zDU+E+s8uYAAyYFEZEEnrQBStnLIID0t81qFxaKxIpYhik64gTbPoLAL1mAjH
         /39WOLV/gNEIgYMIs8KgfR2SnTi/3EZVb3YJ1ABKTxpXaOMLAlZiK4NLVghlqIuRNYbd
         Y/Vuox7QYMvv0xx3Wm34/g/lT5jFZvpRfn3NMfNODjW7XgMis5O4kTosz5UH0/KHrgqZ
         RNx06+IWTdai7a1/P8g/KRKau8XBcn72mCzwHrZ5Mqr67XdEsKMp1qS6UL8NhcDao2M1
         sgnw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ+sM8OItYG2dTs1OYOuU4P/023sBCV+ktjut1vOK5i/3PBGAjWxZZrsocRp0ZELIoZmOWFGKUPaWu@vger.kernel.org
X-Gm-Message-State: AOJu0YyRmciUe9fWHqh8RJRsl/goVnEV5Ei9JRcYokvTxu+SqOz+XgxZ
	XHUC2pl7gjBB4wo8yep+HBAIlnwyTXKyOGl0ligyNsgUhXlN3YK8Jmbk389omA2j1pY=
X-Gm-Gg: ASbGncuEghKa+fy2jkecLtDuW7LGGF/9CFTU2FyIgAM7F2+iOp+EOTeIe7cp3QB3Lex
	F9qgacpc8ucOZGIhNbLJqlLmZrEtUi/3eN2JqEIhgKKw+eb5zEr5jNu3noAL2Qy+qZEj9PPHk23
	QCw6AFWTkwxi95VM+J8QD31E0RLaiqzumfveJeI0N8kgHf2oF7QXEV2I7vPvrx9MkesDrCJI7QM
	2BWvWj77vGCNktcPzRtbhgMfujQrQZOuciBUesJSeThy4CNiJttK/2+3vCda2Hre8ufpWuJnpSV
	yTw4305pDcjtPlzdAFdwif4Zgq3q+MPMX8T9dRKSWTdXU9HYypdld5h5NbNh/JLOMCJtDyeuhiY
	Zsblh7S8o6/0MxV5B9DndXl+WwYe5Fn0AsveUOczL
X-Google-Smtp-Source: AGHT+IGLkRpAYMw1Gi9clpkFUqiOhmtR7IOar5rMOl6DHsBt9ot2NgeuSSchmngJj28KpJ8ax3YpSg==
X-Received: by 2002:a05:6512:110b:b0:553:af02:78e4 with SMTP id 2adb3069b0e04-553e3bbced5mr1755843e87.5.1750765092396;
        Tue, 24 Jun 2025 04:38:12 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41bbde6sm1805161e87.136.2025.06.24.04.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 04:38:12 -0700 (PDT)
Message-ID: <fff77f71-e21b-43b9-9da5-6cf819add970@linaro.org>
Date: Tue, 24 Jun 2025 14:38:02 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnects alphabetically
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
 <20250624094253.57441-2-vladimir.zapolskiy@linaro.org>
 <aa56b956-95f3-484d-8afa-058925b95bfd@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <aa56b956-95f3-484d-8afa-058925b95bfd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/24/25 13:10, Krzysztof Kozlowski wrote:
> On 24/06/2025 11:42, Vladimir Zapolskiy wrote:
>> Sort the entries of interconnect and interconnect-names lists in the
>> alphabetical order of values in the latter property.
> 
> We do not sort these entries alphabetically and you did not explain why
> you are doing this.

I did it, because I assume that the preference is to sort all named
values alphanumerically.

Since my assumption is incorrect, I kindly ask to let me know, which
properties should have values sorted by alphanumerical order of
${property}-names values and which are not, there should be a method
to distinguish such different properties.

Below is a list of the most popular properties which are coupled with
"-names" suffixed properties:

clock
clock-output
dma
gpio-line
interconnect
interrupt
io-channel
iommu
mbox
memory-region
nvmem-cell
nvmem
phy
pinctrl
power-domain
pwm
reg
reset

Thank you in advance.

-- 
Best wishes,
Vladimir


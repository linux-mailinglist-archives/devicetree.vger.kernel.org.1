Return-Path: <devicetree+bounces-195785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FBB0306B
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 11:14:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A400B3AF60B
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 09:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58F2277026;
	Sun, 13 Jul 2025 09:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d4rxJ/+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5D71F03DE
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 09:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752398067; cv=none; b=e3ws2VakcRnj5izGS1sb7rZFaz4CwAc4KBF0cAf9QowyWZJHCxOwO42STXG31rUw9i3PqnFbXZHUaCNkRwaDHVZwSruXNh+z8SHj1xbQWLLnjtTcdnUcP4DkyaXJOdvknEMhhYQ7rNn3sDbaqgBbiyBVmV/SYj28coMie8/pKUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752398067; c=relaxed/simple;
	bh=TVqnGChe4CQatSCQD+cs0iObNPMtJf2KgFl1L8CwRno=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j8aIKnuoKLqPu5DNlEzCN1GZ6uoSnNppbvT4cfl0S/exKJfeUjE8A5dNly37gfdZ6akRiGyHgh/zgJFQUfbRcwtj9fSa1u8X3GLgOriQX5VeuTLwvA1rWeffISMovjhrEaV+5IJwGMRnh/zuDdvlqE8aVcRk2lebtvCzY3XVoOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d4rxJ/+V; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a522224582so1691132f8f.3
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 02:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752398064; x=1753002864; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pks3DIHctjAhH729et7UDsSL2zb2Vw5mxsuvQyqPcSs=;
        b=d4rxJ/+VqlpTwGDA0Co61nkIZ1PU/+MYt8zWieCqkMnB6JPKcgVRX6vU+U5KnIqXVh
         gp7ePVxPZmse8qmKmPCFu/hsBhKUR8ohxnEGqp440PXFZ/V1RTj7ix22ss9al9p6wqlH
         mHX4FCU3N0j4s92xqPSPDWCn2H04U5y3GK9ttfX4W5WRaO0gsPW6PqCmtR4KOQ2B8kKf
         C79cw9TWUz4YjuTh14bV9zXJ2Y8tDbZxPb5ACGmFUxH2GfYwtFqJv1nCuZ9IutDH3TOG
         p/SHibnI/+eTBDYNLoe7g2EBL+a7MBJjtqw/3fWYE0DpgEkxt5J/TN3ZuoHHKboNi3/+
         /t+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752398064; x=1753002864;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pks3DIHctjAhH729et7UDsSL2zb2Vw5mxsuvQyqPcSs=;
        b=ZqRdEEUoNGEWYsTA4oXx4pMuT6j0P2zFjkUwgxykV3FhFdJiKE7dU2wH5UIuRYiRAQ
         9wFK9DQNV9l6hUyHRbNZLYTVppLyLJsJ2XV207TQBLtfJ4Y9Lxk2uUYVNrRpJLuuZVLU
         uXac6JggHRMpaI+NU7ifhB1ljT0JE1q4O5Z2QxiWyHwaZA3k9/DTCRrAFwxVQbT3LsYp
         ZSdyV6FUy5RfOY1dhRA1byAa6HtnS7xg6sMO8fMYIylK5F5xsiV8OxNsLXL0xEI0ShK5
         dbo9ulvwgKbfnAevdVEMnsFs8UQdehwnzNk9V2NevJcQXHkAHRiJgP7R87LccML57Vfv
         SlYw==
X-Forwarded-Encrypted: i=1; AJvYcCVorDoUdPDg8P0p6wBoNCaMXIvcq1/1+YOHVUrtnFMThTvXBDH6FgzFb7WA6BmT2mSgZGqWxD1euU2E@vger.kernel.org
X-Gm-Message-State: AOJu0YwKm7CNPmyLOAAp5XCIZb40LIAvmzW0XqXGblkzEKS5j1kyu9C9
	PRDOEHKsuhg5YkaA3/3cAv/wvX657IBfEaRYB15Nu6ohwVENZZV8SNAlAOepCvGfW8g=
X-Gm-Gg: ASbGnctr3PJaJVVzQWZw2eWMgobinsIxmzXQSOpRGdne7t+GJ2fM3IxBCrBjLc6em6e
	7c4O0v9sUELnUj+IgbyF7gGuti1hhv4FFc14tRbOC8W0orJbEzZQdja3PzcRqiun+qaKHd5S0A6
	VLesaD0zIeu86TXBlAEBrt8rr/ch3N4vcUYrmXI4kXTGamns13igNjsVYNdne2DnivVm5YnfBiF
	Ckyb3CnetiSJEsxHYPo0pkFDj3waDZE5oHGOOLwPy0pM+1MJ/qETSxistml+rCQTkfQD9qlY+BS
	LtTX1OvUReLnSikz65yJ5t7pcewJlOW4/CtWgpESEeEHZDe03PzDuxv6n25BuVPtCmkGNZDrqLD
	6FEJsee9sa1KXHDJbPNSpDNiRA9IqchoSIl1bFPM0q/+u0QP3Sd+QUck5O5uKWVA=
X-Google-Smtp-Source: AGHT+IHcth82Dwhs4RS+nRjtEFs25/tAmOOwL4S6LKmRinGAkFedziW59n0SIBuEsx96VGyKOBnwjw==
X-Received: by 2002:a05:6000:2f87:b0:3a4:edf5:b942 with SMTP id ffacd0b85a97d-3b5f359b131mr7100254f8f.57.1752398064167;
        Sun, 13 Jul 2025 02:14:24 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8bd1776sm9442725f8f.12.2025.07.13.02.14.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Jul 2025 02:14:23 -0700 (PDT)
Message-ID: <3506d911-da9f-4639-9c83-aee0a637e9b4@linaro.org>
Date: Sun, 13 Jul 2025 10:14:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 02/15] dt-bindings: media: qcom,x1e80100-camss: Convert
 from inline PHY definitions to PHY handles
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-2-0bc5da82f526@linaro.org>
 <3376b0fb-f3c6-464a-9c35-30a3f589b856@linaro.org>
 <eac19ad2-78dc-44e9-bc02-517272ba737d@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <eac19ad2-78dc-44e9-bc02-517272ba737d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/07/2025 09:20, Krzysztof Kozlowski wrote:
> On 13/07/2025 10:18, Krzysztof Kozlowski wrote:
>> On 11/07/2025 14:57, Bryan O'Donoghue wrote:
>>> We currently do not have an upstream user of the x1e CAMSS schema which
>>
>> On first glance there is, in Linus tree:
>>
>> git grep qcom,x1e80100-camss
>> drivers/media/platform/qcom/camss/camss.c
>>
>> If this wasn't released mention it.
> ... and then this should be marked as fixes and picked up fast, because
> you have only like 2 weeks to fix it.
> 
> Best regards,
> Krzysztof

I thought schema changes were acceptable so long as we haven't applied 
dts, which we haven't done yet.

---
bod


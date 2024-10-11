Return-Path: <devicetree+bounces-110491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8170699A873
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 17:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C63A28578D
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5646197A68;
	Fri, 11 Oct 2024 15:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dvIJ+h4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECAB1957FD
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 15:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728662166; cv=none; b=kpyZKYk7Ll1vQgX/DVOqa7aIiKiWwcTosJckzc9cnTQ+EUwPjqTEglR26hQzzZYXFSYTQoMaytUZUcxsbzZ0zw1MxRVBYSh0+wlqFUuE1sr8+H2h6txaYbl6bKtFa7FWn5Z5vWjuxuoFdfqAG4CFlV8s9Gb1gKeSnyOYDyE4LCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728662166; c=relaxed/simple;
	bh=LsUiDqE70yqk0wdXE9vzO9KMm+m+jk5+g+imG3e20Tw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nu53tSb0+bkeJz2Es8p0oKAjwQ8vEDAaQCFk/MR29qWjBeA68ZeYgbNw9kOefHUSy9zHxDiJ7B6S7c5BKAuzwEynwBvP5pTw6BE4GNmlQz6NCY5ctzMfuOEbluNzwJiGsYF17Tnn4lvlfiUbqNQpEObtBoPoHZiW4DET5+6QsvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dvIJ+h4k; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a9960371b62so248616066b.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 08:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728662163; x=1729266963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5PfW3zLsODNqT+ZCd7YOmFJrDpIjLjC2uBGbBXhUbVQ=;
        b=dvIJ+h4kdtOecCVkAY+GosDDnCU4bYWL2vSj6C5Q5W+STl+plaQSW0LRqP3OvH5Qiy
         Sv4ylTftMivKObqpvMebxFvCr5AyKu4Y0+nTw67H8g2ttb1ikpJZf/gOMc67D3fU5Ete
         bwHN13PMTDksIac9QSqAHJ40KYsMB72/DYEOdpD/EPl1J6VCF6bJa4lXxGHoAXI8evhJ
         rZ8vuU+d1MhcSy4SBTnivSFZl50u4uVWpp240GUilmA66hMYp3hDZ9bMNBM565qvvhTT
         et1Lrs1gf0kUqSam2mXCJpzBTrpQQwgLHscLhpU75eOJtNs6r7Wuc5CG6JQRfqyGoE2S
         ewcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728662163; x=1729266963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5PfW3zLsODNqT+ZCd7YOmFJrDpIjLjC2uBGbBXhUbVQ=;
        b=tDiD6wXeS53ZIn8NYzRkvMNlMXJlmqq+5KYzEETxNgugR5Jb7R2h5zdX9jgnBTgWZw
         FPgyTdtTOdggURKS5CxTPbHrBrM7RcizCuH+dRnTZxJhu9kLm+uBmjjuSb3y++tOtuKr
         RB35u/eqfNe8f5Y2bP0z3yQ5MhXQWN2k+TRoZpfjFrcAaJQzJue7egxl/7oQIDMHUE2z
         2M6FYuMvxzkBvKJzY2Kmr2TfAx0K7ywr/WlvSWa426WKgrcZGW3rhQYCdwVIGVCpOgCl
         iKIH5N/DfFhMfBCpCH0L5s9OjNjUkrkrE7jRXW4f1aMRhEVnTED8OZhJcpDFP1XO174j
         XYhw==
X-Forwarded-Encrypted: i=1; AJvYcCUSPyUvUc/jimXl9+h66GZadJiT6QuyjwWXFLqjjNiKLisCJg8ZVeOiFhJJGExHjrJqb46WNMSy1F3t@vger.kernel.org
X-Gm-Message-State: AOJu0YwjrSOI4ou28zmoi3Ilv6hwD+JQVNN7BqxIgsVhMX9Sb9OHbrl5
	TFm3sERWf64UkvT2/XILrdpeeqgpYgk/HFwbZWDktuTctyHadqbWj2KKfExMusk=
X-Google-Smtp-Source: AGHT+IFQS1m801d5g03nI5rdOrNbnaMx/maIW2bSzuFKOe+q9KSROKeUZyTkJ940EzDY635ITI12nw==
X-Received: by 2002:a17:907:c7e1:b0:a99:5a40:e6b3 with SMTP id a640c23a62f3a-a99b9416b43mr268365666b.10.1728662163310;
        Fri, 11 Oct 2024 08:56:03 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80f2726sm222412566b.200.2024.10.11.08.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2024 08:56:02 -0700 (PDT)
Message-ID: <a796e8ac-4a58-4b14-94ef-cb1d5a8775b0@linaro.org>
Date: Fri, 11 Oct 2024 16:56:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: camss: Add qcom,sdm670-camss
To: Rob Herring <robh@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
References: <20241011023724.614584-7-mailingradian@gmail.com>
 <20241011023724.614584-9-mailingradian@gmail.com>
 <785c82d5-549d-454b-86bf-a00a39e6f521@linaro.org>
 <a230de8f-a11d-41c1-9bc6-7e06e850b51d@linaro.org>
 <20241011144129.GA2295617-robh@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241011144129.GA2295617-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2024 15:41, Rob Herring wrote:
> But when a block is changed, any rule on sorting may go out
> the window since we add new regions on the end.

Ah I see, I didn't TBH know that.

> This one in particular I have to wonder why csiphy is not a separate
> node.

Hmm, to be honest with you Rob, even though I realise I'm digging myself 
into a hole of yet more work, yes - we should probably structure camss 
along the lines of mdss which has separate nodes for DSI phys.

-> mdss: display-subsystem@ae00000{}

We have 4 SoCs "in flight" at the moment.

sdm670 and sc7280 don't require any real driver update to facilitate.

sm8550 and x1e80100 do require new VFE, CSID etc.

We've been debating how to model the regulators for the CSIPHYs too 
which are on rails supplied by PMICs external to the SoC.

I'm congniscient of the fact 670, 7280 and to an extent sm8550 have been 
on the list for quite some time, so I'd rather not push 670 and 7280 to 
have to wait for a whole new way of doing CSIPHYs - especially because 
these are old hardware with little to no driver change required to support.

OTOH x1e80100 and sm8550 already need development work so we can do the 
CSIPHY transition there.

---
bod



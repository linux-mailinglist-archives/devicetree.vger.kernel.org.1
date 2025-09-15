Return-Path: <devicetree+bounces-217617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D4DB5881D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 01:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 780373B1AE5
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 23:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4F7214236;
	Mon, 15 Sep 2025 23:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hP9MZOes"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15E64207F
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 23:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757978307; cv=none; b=a7xX1EsBEXNiFYppOn2LFwtTXGsQLnMKg5o6yTnwIJUI2DX5ZgYf4m/+AlSb4fvN0S4ms10TmCZ2L9HQ5uwz2ZD1IZKBo3omF8yukohLnaxlDoPnNjyXcmaDYc9gylc51JVgNfoP6JBZ/Zgi2LrgLaHhYs9nNI+GWbsOXJvrW5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757978307; c=relaxed/simple;
	bh=DhCA90u7D3AwaG1VR64HFW/35fMpdcE6pkDbJ0hCWDU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WWzy6bULaqJ+ZDvORgThKM5doBcXz0ZXlggasBPoNu6WFKVi4n4gY65BBpi94+KR1DDgtmRnC8Q5hZx9yuIub1j03toJERIU5aiTq9sNice5QXW7y4vCE3V964VuPjfXH340JxWCZjqvpWSWj4rgfUq0XpdPiMjjMquXshuZT7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hP9MZOes; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-777ea9fa8fdso1314861b3a.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757978305; x=1758583105; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+l7LUQcajOsjM5wGJwbkfQJik4Yq7alB7BOereQy2VE=;
        b=hP9MZOesqVvCVezhPhW3eMWmJllPXapGKkz2N+X23kqhxqXDKHfGDtRJhYH4w2EXV8
         3lZz3SUodUVeNzWL2OuDZWAzV0k5xyzgFVRv0mXdkrCe7FXcoGdnoH3A+ag8W6om0+V3
         prmqmpelS1du8gqO5t2mrb+TPxHJEwTQjch7g+z6pGaAxLIAA4RSk4vjYzxgyM/A7GjC
         /eP6ApjUnlRJNRD+4EX/TFt4M7n0p3AzsGdbravfb8g2Gs8rfRQrZNERvLLSLMZPZ5IK
         sjwRErA10Y4IXn7OxqfWuefUV/tkYJRRL6cCctxpRAI+zYNel0JYNuksoVuef0d1kbKQ
         j4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757978305; x=1758583105;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+l7LUQcajOsjM5wGJwbkfQJik4Yq7alB7BOereQy2VE=;
        b=oFe+vIkEpvf7FF4ihMKoKTkywL1aFMqOkBviwriAC8rMNjOidU45e+QrREK0P2lgAF
         XUGmZcQTQ49F32YWo7J4+JBuoX7bFlSuJiSdFUyWKABSf/R2bKQPn5567lmnT2X1FTXJ
         izr2O5An0kpDsPQGv0ROrIglTSwEtcpQFuoSeHCe7zr2jVJInbdTFiHDhu5Xz4rv3jx1
         pKEZezKdVVF87vLOCUTRbDFv2m8KgcWhJrMbthh5I1voSl4v0Ol1SC9s1vkC+Kt2NgVb
         rZj9AVOZ2+kc2EhuT6NoV4qLS0D88QaWyUpoVhtvO5l+veMInhpVaSSYUoHJczkle4yl
         VpTA==
X-Forwarded-Encrypted: i=1; AJvYcCX7eL7do20yKUeOL1ZQS9v47BpOcgnQbygN7bHnVJ1cZghUzQ9oyv/Avf6GAlWTRHa3kRVMsR6cFgl5@vger.kernel.org
X-Gm-Message-State: AOJu0YxKB1MbCWD5SSNvLKK/Z44qAKRF28YjvjeJVBCOoI2qxSosrIOA
	OGtq7zYQyeoCOqZ3GmGUKJHrgQxokaRXbhMKDxvT0LXHUtX4SfdMVRG0
X-Gm-Gg: ASbGncvcm3n/8VlBs4pCOuBL258lA1DlJHyecGlAT6aMG8geyClXFDOAVoTRkQyc5Wc
	1V2cddsEsCBhhnfr2SVLHboDejoL4gFfth8iHeetM/S38CRoq6Aos73EZ8h4TEmwszlH9S6Zv/A
	1OU8C4he29gJpSYcUZTMw/Dq4n26vjMrtk2LbQtdDCSrlKoxxVgfaVoZaEUI+jYS55hXY08NxIt
	tDwSNgUl9OhjIDpe/naZMs2pkoA5ghK0s4mecjYPsS2lW5BbvnvbbeomXTMUiZXrNHCJjtvnIcN
	TMi2NvZICYF3fAOQLX/Q8nhzCQpRjsTimdomEXE+hpjytGZYHPj36RdfIb99Ih1nIeWztTW9Mr3
	kMPmBqubbDKwFnOxRzddWEl8ANg+d6n2dGqCsezW2VG5dbQ4/NolarxMin/Fe
X-Google-Smtp-Source: AGHT+IEeWggDjh2aRCpx1suFPoqcxzvxrWOO8w9b7MPKM4IOfFG1MlxM/2ym7uq0iEUOJ01ZQNukyQ==
X-Received: by 2002:a05:6a20:6a25:b0:247:55a7:695a with SMTP id adf61e73a8af0-266ed65b2b6mr265970637.15.1757978305237;
        Mon, 15 Sep 2025 16:18:25 -0700 (PDT)
Received: from [192.168.1.105] ([59.188.211.98])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ea0859e20sm324333a91.0.2025.09.15.16.18.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 16:18:24 -0700 (PDT)
Message-ID: <2fb684e0-449b-4377-81a5-5be03cdf3e6c@gmail.com>
Date: Tue, 16 Sep 2025 07:18:20 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: spmi: Add Apple A11 and T2 compatible
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Sasha Finkelstein <fnkl.kernel@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Sven Peter <sven@kernel.org>, linux-kernel@vger.kernel.org,
 Janne Grunau <j@jannau.net>, Stephen Boyd <sboyd@kernel.org>,
 Neal Gompa <neal@gompa.dev>, devicetree@vger.kernel.org,
 asahi@lists.linux.dev
References: <20250915-t8015-spmi-v4-0-758620b5f2ae@gmail.com>
 <20250915-t8015-spmi-v4-1-758620b5f2ae@gmail.com>
 <175794440092.2724212.9818605948916059174.robh@kernel.org>
Content-Language: en-US
From: Nick Chan <towinchenmi@gmail.com>
In-Reply-To: <175794440092.2724212.9818605948916059174.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


Rob Herring (Arm) 於 2025/9/15 晚上9:53 寫道:
> On Mon, 15 Sep 2025 09:52:24 +0800, Nick Chan wrote:
>> The SPMI bus found on Apple A11 and T2 SoCs are compatible with the
>> existing driver for t8103's spmi so add their compatibles.
>>
>> Signed-off-by: Nick Chan <towinchenmi@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/spmi/apple,spmi.yaml | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.

As stated in cover letter, the tags are dropped in v4 because the dt-binding patch has changed
significantly from v2. (really should be dropped in v3 though but that did not happen). And this
is actually a different patch from v3, the only difference is a newline is no longer removed.


>
> Missing tags:
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
>
>
>
>
Best,
Nick Chan


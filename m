Return-Path: <devicetree+bounces-157473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D97C1A60BDC
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C08C27A37BC
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 08:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12E21A8401;
	Fri, 14 Mar 2025 08:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UpEVmwjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F24719C54A
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741941454; cv=none; b=mewjPGINd4SqSVmdSzNbDElbGgwZXsq7YmhD0eyJkWvWqKoPQhbwboAnvr6KluaUz8ExzQVwTY58IqZuXcG0etpCb6ON2leRZ9tTvVD+PJ1MK4FdhzdjeeWnmYCubfRnrSoxyJ14g1YP5wFVskYlxbWNYnKZ5veHpZWC+50r+nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741941454; c=relaxed/simple;
	bh=dk+ejBCS3NH9te+aXnCnqbhIl0UgK8PkFWM4qXXJ5TY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eQD7k+Stj3irZUEJwhT32VUKWRtW7ycELefWDG8c6mIv8EA8UdzdFnA9TZNAv5IBRdP/jrnc7L4NHxmaBVNayW2D2jiFCwCTnZGmkRwYTLM5bhtVcBkTRAbgwLAAls4GTMGaT8tx5eByp+DmRu00uiH1nLGCnM3qKDl6HF0M2Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UpEVmwjc; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aaeec07b705so292695066b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 01:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741941451; x=1742546251; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tdW92HTTZmGzjR6ChSxqLyGpU5fNUkYFaVmkq1y4xX4=;
        b=UpEVmwjchAI6nFe3+Vz4Cydv+26qouM/cxZsaP3CA171bf+Di/cVfMWDk4e4QbU6Ed
         umOIE/IBkq6glc2lBrDbEqBlwGEblFZqYTBNsEfphtDFIZFMMRH9UsesKeEgdY6fgNQN
         uCfxvoOIoOghh0T8gUtGR5gt98T+ej+y/AHKNxn3SVvFv/l+UjnzuC72BNyZM7PUPdVc
         lvtRzRHu/zplQ0Cpt1fCKAyV9emZOXBcAJ8xxgiDfHyojo8pqeLk0ewMDYT+qWj0AGmO
         1BKyqtIBLlruMzaqr3STVFgcVIVBblGSFJoEUPng8C8VWp6KM2YCqlc/EhlkPDtB0klx
         56og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741941451; x=1742546251;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tdW92HTTZmGzjR6ChSxqLyGpU5fNUkYFaVmkq1y4xX4=;
        b=DC5JF0fZ/MGGiJpEgknH0FrCMCCe33oGCoBkRdMzfs9ANhqtmhgTkaE6l70kx1KPhF
         n8KFi6Uja6Ibrfo6jOqlpTpmB4NGvtFvbos5B7mvL4gh3014trRUMGghoxm4uvMRnD14
         QS4pMkzcEFAgXFLOAK+Kp0dlJuypYZ+xR25gV2nHZ23ho4LSC5MVMZbde4LYM3mQsvnf
         jA7nV+mEjlYMoTnVv7w0uB4dAEBsoPJMfP6rdvHGwnAjmL0MI8eZQtXhrPvg8MuOnW/3
         hc2Ed27YVBgr+bLUB27NmfKv4XeSofuPaiwFOWfYzWv9haD16AUjCR/ynL8rek1OoawD
         vMdw==
X-Forwarded-Encrypted: i=1; AJvYcCXnsRv3qe8uDX9W210/GpinojGonl4UgSeLsumylbe8CoflZ1soBwOhk6WFVRz7spJNqVx2N80Bv2xK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzih1ngnNAnNhD838apdpNE4cAq/DWVeC6kNQ99qELtkXhnth4A
	/phNxNvg+TX3m9aiXn94qvZq2IlfMKboph5PPPG/8Ve2GozewAn1moX/TVyAj6c=
X-Gm-Gg: ASbGncvaTYhzRLBytehiI0OBA29YmOdfOBDE4TggnVgak9EfNSRecb/O7Gv7LzR11eH
	Xysisa9uJ15hW7j+X/nSeYVk6T869mcsqvVEMpNsIWbSAA5h8TyQLqEFA1VHkFHw/YFVXGGwnoY
	27zgfBs3xH1Pf+G5+yoM89KqVSsab5vpNOP4eoTSUxaU02yhX82sh9jVERPp1D4g66UOEP4QmoA
	aBO3tmQu3XjNBYH/HR1Rhl8iBo+wNNxvM3r+mGGXTn2zwOYa8wwa1M0LUhuWO1Kw640IQu4xvl4
	60lOgmzjGboLJPAk4HLRFPQaPmLlepvEpt2ML+xf2AjnfUBSOSWaPsbj9UpFQ5NlW3dwggnQZxs
	iEOk2/x1QHEZIuu8l1CKtKqZOOe+1psemPwS24cdScOhhXmHsaI3ZXalKs8OrIBwmeE5MaapzTI
	BUv+Ie2sfKq2qrPs5bEWfBhqfdt6QrppI=
X-Google-Smtp-Source: AGHT+IFUOlHrTuzko/qUKZDoHX5T+vqpZFWSBwlhEPozEDwkhttO5RnwU44O1wIX8uDl5bdWFAV2Vg==
X-Received: by 2002:a17:907:6ea9:b0:ac2:64eb:d4e8 with SMTP id a640c23a62f3a-ac32fa44234mr197432866b.0.1741941451312;
        Fri, 14 Mar 2025 01:37:31 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149cfbb3sm194289566b.101.2025.03.14.01.37.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Mar 2025 01:37:30 -0700 (PDT)
Message-ID: <9089c8e7-d38e-4c36-9b97-0f4a3039a29b@linaro.org>
Date: Fri, 14 Mar 2025 08:37:28 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] dt-bindings: clock: qcom,x1e80100-camcc: Fix the
 list of required-opps
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-0-846c9a6493a8@linaro.org>
 <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-1-846c9a6493a8@linaro.org>
 <20250314-nimble-exuberant-ermine-8ceb43@krzk-bin>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250314-nimble-exuberant-ermine-8ceb43@krzk-bin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/03/2025 07:51, Krzysztof Kozlowski wrote:
> On Thu, Mar 13, 2025 at 09:43:13PM +0000, Bryan O'Donoghue wrote:
>> From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>
>> The switch to multiple power domains implies that the required-opps
>> property shall be updated accordingly, a record in one property
>> corresponds to a record in another one.
>>
>> Fixes: 7ec95ff9abf4 ("dt-bindings: clock: move qcom,x1e80100-camcc to its own file")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> I do not see improvements:
> 
> https://lore.kernel.org/all/20250305-little-frigatebird-of-calibration-244f79@krzk-bin/
> 
> I expect both comments to be addressed in the file.
> 
> Best regards,
> Krzysztof
> 

Pardon me,

I missed you had left additional comments.

I will fix this up.

---
bod


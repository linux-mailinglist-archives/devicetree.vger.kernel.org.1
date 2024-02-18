Return-Path: <devicetree+bounces-43221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 370AC8598F9
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 20:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E14C61F226C8
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 19:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409F071B4C;
	Sun, 18 Feb 2024 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PeOqP6LT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB4C2B9A7
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 19:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708283433; cv=none; b=osyrTj3VmgEZob8jIhiOBAz8+s2PaZu2XG6vpSrDchzEses2kt8K0FhO/41jZJJbvmYkHtbw2W/7uUbd/FAR2p8bI8Bv4l33yWmE9gh/0NcD7LHf9ltxxKHHzZXR5bS3/Xq+8BAfUpEHm7P1vLtO9Oq0yjgqnIkI/I8b9wOaELA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708283433; c=relaxed/simple;
	bh=2OiUQOvcZKm6PUzGnZ1RrYTTFoV1/H907nhnVmgSlG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bhpD61gcfygldGQD1xGcelFVBi9ENt6hZm/Q+lcLbcFZL+X+dX18gQX93Gp6dFwoEdqXRHn40ARsTvf0HHLP7jwitCrXUKSGWSPzU6Lq6s19WTFsY612s00NDVLyBDyrurOgumWqQBnTITujcjo88O23m+0bDATMdoujaRGB70A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PeOqP6LT; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-56439b7c7a9so1017099a12.3
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 11:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708283429; x=1708888229; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ah3PVEu8tN1U7WxibGyKTgjBe3AELLyTP3yUvUcDK7E=;
        b=PeOqP6LTEl3a83ku7rMNhngJiFP7D2M4eN5dENNd9dXGwAL3lDFSt7KxvGt8ZiFwge
         jB91W2Nk5YxSXZ243KwqhNPIaqL7Nrfnb/dljD/Oh1VC6RdDFaXgMH/T/qMASGIkrkEu
         cO+ORYoSomxtxjcEWlBuYKqo3VpxmvYqt5H+L17nfm3M794qbvjRr1fD60GevYLJ0/kN
         b6210WenCgIr83wXBgNFoORIjEM+M1LsnYO+SLO4GbdwPBw0WNGSzh7cUfI/8ZglgSOO
         qsWNWbLyPp1XgWmUIQQs9XCY41w248B6q85UKzMW0L9WRTCIPoyNWgpLXbxItut8bsLS
         2U6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708283429; x=1708888229;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ah3PVEu8tN1U7WxibGyKTgjBe3AELLyTP3yUvUcDK7E=;
        b=oYAEPBnkfKjSKdSWyw3oz6yQqu7dZf7dbSrW2gC+HglCzi3vPFQ2AJTZKUScaqYxOp
         JGQ02D0SVFLPWmHcDfg5jB2YDetqV33Ti/5lAwyT/cPwi5UqN3r/niS7TrJoz40X6lw5
         1H0d+AWg+wO6D1ESMGAMdWGtVeyfzw7Sky1U+1gL0XcusvIuoUxDVofp1b//ZJeFyZ5k
         HQME3wmn7POTgErMDhVkk76XfcZyU2rv+Ay19LJ3ZRsG7gn+2S0EW4BHiS3V1kiBsBAy
         sVj38KexKQCMIOaPBtsUzhGImVBjNhqxQr0OQJT/TEOF4pLguxv5/3fAfmYQarB1+gl8
         hAGw==
X-Forwarded-Encrypted: i=1; AJvYcCWW+tdjcpx2epiutTAIH6IlYwLajG9gwhMkKL+TDsFByGmbuypzeji15PxWiKiCcCc/pGmmweVntiINsU8dq5iV98gX8TSe7YDeaA==
X-Gm-Message-State: AOJu0YzR/ymH4cRZrFL9dypjLyy2LrmI4vd11Izmn1M215fB4qwS+lc4
	JlhDWUMmR+ONkln4OaqHIs6EwDm2wZnoudAnwLbFpqaVcZaugbHp/JCfc6gOK/w=
X-Google-Smtp-Source: AGHT+IHG7EUQ1Lj6VSnjTbKaODUnEDyms7rRXGLPDHhArV02Xl+7l8pWi7wkq1Hz+7C0klZApkVexw==
X-Received: by 2002:a50:fb84:0:b0:564:2518:adfd with SMTP id e4-20020a50fb84000000b005642518adfdmr3719731edq.10.1708283428977;
        Sun, 18 Feb 2024 11:10:28 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:366d:ca8f:f3af:381? (2001-1c06-2302-5600-366d-ca8f-f3af-0381.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:366d:ca8f:f3af:381])
        by smtp.gmail.com with ESMTPSA id p24-20020aa7c898000000b005617a858f21sm1942850eds.93.2024.02.18.11.10.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 11:10:28 -0800 (PST)
Message-ID: <f4e2cd9f-d8d2-4669-9bbc-57f67a24e734@linaro.org>
Date: Sun, 18 Feb 2024 19:10:27 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: pm6150: define USB-C related blocks
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, lgirdwood@gmail.com, broonie@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240217163201.32989-1-danila@jiaxyga.com>
 <20240217163201.32989-4-danila@jiaxyga.com>
 <6bf11ccd-ff08-369b-913f-277c189afb76@linaro.org>
 <b0b732b8-456a-4021-8277-cd51f01ead17@jiaxyga.com>
 <44c669a0-3722-4a58-be78-0c91f0573ca1@linaro.org>
 <60728953-bdf0-4a06-a90a-d1191d41962b@jiaxyga.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <60728953-bdf0-4a06-a90a-d1191d41962b@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/02/2024 6:52 p.m., Danila Tikhonov wrote:
> You are referring to Dmitry Baryshkov, as I see. But Dmitry has already 
> reviewed my patch (message above).

Yes we previously debated and discussed verbatim copy of downstream 
versus the format we used for 8150b.

The original driver I wrote for tcpm and the dts that went with it 
derived from 4.19 where the interrupt definition was already right, so 
in that case copy/paste of downstream is fine.

However with earlier kernels, 4.14 in this case the signalling isn't right.

Please read the discussion and reconsider your patch.

> So it would be rude to change anything without his knowledge. Let's wait 
> for his answer
He'd have to be arguing against his own patch.....

One final nag - please use the kernel discussion format of bottom not 
top posting.

https://git.codelinaro.org/bryan.odonoghue/kernel/-/blob/sc8280xp-v6.8-rc4-camss/Documentation/process/submitting-patches.rst?ref_type=heads

---
bod



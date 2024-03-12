Return-Path: <devicetree+bounces-49931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AC323878BE9
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 01:24:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 638A71F226BB
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 00:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8A58F5D;
	Tue, 12 Mar 2024 00:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OKWwut4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2808F40
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 00:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710203089; cv=none; b=YnBARek0pnFcMrSL3wQgyEVQBUVPTTybNXAv+wMJKd9M+Myi84czqiP5FwnTyLmr1c69Bp+MljU1Vu3WTkM26wf1uxYbeUmsxDR49BKiQgIoedJixTd5uMhKMnlWSf6hf8/QlKDDXrgvfVwhiTm7sCiTsnJi6dq9kFRC71SFJX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710203089; c=relaxed/simple;
	bh=oVopQaOOfzHY3UiFPdcWCjf76IMwbZpTCloyXY+7lDk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IY9iVMOixFMIwFaxTkpJTstlj7k9Wwh450z1rtXmJL5YOera5Ol1O6pCMVN+VSFgTCbqDC5rlFejrv5ECOEX8LARPJM/5x0Pi9q82PclR5GKJ6TiMH56RiFypdan1q2afW5wSlsF2nf4u1Lx2Ms7R7KdfkGZz3+SedkEN31msig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OKWwut4k; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-513b1c69cb8so1198588e87.1
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 17:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710203086; x=1710807886; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eWhat7e2j1dWBbmXMTlUYz5GM9qOS0BL4XnLXY/ZEPk=;
        b=OKWwut4kg3tAwLpbwXY1s0ciHFH2UiyDG3GFFY4CfywxXAigzHTL/4yPAIud8gX7HQ
         seZFVZIYKPE1NDXgqReBUSNvPJ2pevi7Xn2hHGJiTqipLqkj+2NmlBcOmovHGC2PKM5r
         lY0JsjoJtmWSOcC71CE86w7ESud8zyfv2/oodyRBdiG4iiPNknaYXJam5KEKnhciAERG
         TYl1obDqFZ2cNKMoH235tSMSUKeEO2NXzgqe+pAe1by4qvfdyj9IdkBR53x12IYUqNbH
         naS/CCgTnKqPcp+gKqfZECiLmgwsPh5SrzZMR3kDFMuwnlJvAMRV3/eaihT8qbZ4ih19
         Rk2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710203086; x=1710807886;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eWhat7e2j1dWBbmXMTlUYz5GM9qOS0BL4XnLXY/ZEPk=;
        b=KmOgGJYeQy+VFri3UMYyYj40R3YXzc4xjEc1xmoW92oUo/g1ZfY2sZgFbnIeL8KYPK
         RGee/bzkLKqYbWliqoTJNHrML8tO8g/4Mj/fKCmhnYU+WHjFOIUYmV1HWeAe7DaEMtWR
         pMg74woV8At7gE6IInVCGPtIZVx1gEPe8H3tc2URJGTU705fEAFewiVsoAhpwtZXA98c
         prVt0tmjXo/Zj9Hj3eAAJx3+FdEKAyBrDOsHuObdGDE6gBIMT/5DTzJDPD3FOqOQQUYd
         rjhZuKb4qF6ejh3fxA0F1qSZd6i8LGYTIOCLji6Blu3GvtXNX0cDy0tTcQ+xrPw6fmzE
         pFeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVncUf0rGES2brXpNoodDQlowoIVIsCvPHvTs0MkLyHHJVlbGyft6Xt0qF6C22C7ofQAbMvv4ZEMoVX0OSFRprct+Ad9DUOSpwdHw==
X-Gm-Message-State: AOJu0Ywhl5jwMpJCjWkDGfLfejbY08IK6CVl+afgP2V7fielJi1UFd7g
	D8m6CHn3mPNV3FT2onLd3YqVOK8taFfmuusy1x8LHvfTVmR+X8P4rPJyZgwzsKs=
X-Google-Smtp-Source: AGHT+IHm0GQQWslHHZzfBF39V9xf6bEVsajldQARNOhLXmx/EqaE6zH/wfXQL1fl/FeEaOfWwIn/Bg==
X-Received: by 2002:ac2:46cc:0:b0:512:fce4:327b with SMTP id p12-20020ac246cc000000b00512fce4327bmr5110185lfo.39.1710203085891;
        Mon, 11 Mar 2024 17:24:45 -0700 (PDT)
Received: from [172.30.205.61] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id m3-20020a05651202e300b0051327cb3a77sm1308626lfq.247.2024.03.11.17.24.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Mar 2024 17:24:45 -0700 (PDT)
Message-ID: <87709bd5-f985-485e-a2f4-9bdf4de5e40d@linaro.org>
Date: Tue, 12 Mar 2024 01:24:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-samsung-fortuna: Add
 touchscreen
Content-Language: en-US
To: Raymond Hackley <raymondhackley@protonmail.com>,
 linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
 Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Joe Mason <buddyjojo06@outlook.com>
References: <20240219113823.4189-1-raymondhackley@protonmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240219113823.4189-1-raymondhackley@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/19/24 12:38, Raymond Hackley wrote:
> From: Joe Mason <buddyjojo06@outlook.com>
> 
> Like msm8916-samsung-a3u-eur, the Grand Prime uses a Zinitix BT541
> touchscreen. Add it together with the necessary fixed-regulator to the
> device tree.
> 
> Signed-off-by: Joe Mason <buddyjojo06@outlook.com>
> [Raymond: Move to fortuna-common. Use interrupts-extended]
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---

[...]

> +&blsp_i2c5 {
> +	status = "disabled";
> +
> +	/* Touchscreen varies depending on model variant */
> +	/delete-node/ touchscreen@20;

Please delete the node by a &label reference and keep
the bus enabled (if I2C5 is used on all models)

Konrad


Return-Path: <devicetree+bounces-50017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC1C8791B4
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 11:09:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AFF7281B95
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 10:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EDAE7829C;
	Tue, 12 Mar 2024 10:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HmhqjXA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB67778293
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 10:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710238178; cv=none; b=I17YEwoqUUCNzMMqujxByfJ6ePeT8ramxLdivKnvdnJjKsvEqS/StBgrAjXv2+bfPUsZYjhTuaQTnQxInOJNnm2yjq7HNc9Bvx46FTgl72KpJwwyC+UEI4qdD7RDf+wf9SGnrvtHFNMxhK3o8tbTgL0ldqZoGJlOoVNG2khFIeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710238178; c=relaxed/simple;
	bh=UsYofHyo4ltDXBqykR0WqBX41CM4bURUmCq1AXyvn7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hOBNga3NAjLWMVmjkCWGGwuB17Z6ZLXxUFRiGgLXvdC1okS7g6xizLXBW3B3Tn4tOk9hxgy0d/K/36R4ks9fzREO9xzNNmEwc9oUSxTcxVFZx1dKIpw0GFWqC6aFMWLX6MXgXjI0bJANA7XLcj+CgUJPx5gc+W8jF7VshHiFEys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HmhqjXA/; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-512bde3d197so4536703e87.0
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 03:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710238175; x=1710842975; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S5KrrCc46zY3EaqIGg4J3SGWx16jAIeBYBlePvonNCY=;
        b=HmhqjXA/RVCUGjVZganzZhYcONy6NeI7o+nTk5+cTVNCgU86gUlMd15tH+FM41O/1D
         TdfF1eC9An0MRFgcW2SSsOj51nn0Mj34OSboy9f08LfhQzWlphe6aqAwzI4EnTGt3FpN
         bUg3Jkl3ZIbHdnGa9NrCr4nxcWpm6L4c333JqYziR46u/f4Py0tfzgaXx/bN8qGXoIbS
         9IBNpygI95Bcvh+tfTdbaGQWQnshlRqzs2hm3kYr4KmAihX2Rj5/z6yCwpqjvklWsJIP
         rAfJ5KjQzTR89juKxM29IPc3GSWIYAO8LV866abSwkNOZHMdvKtlUXXHpytY3w7Fi5U/
         Hsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710238175; x=1710842975;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S5KrrCc46zY3EaqIGg4J3SGWx16jAIeBYBlePvonNCY=;
        b=LR5pG35DjR3uHUJqwsAnSfsjL/wuElGR3gHXxXFBqi635Qi0mE2U6/j9l5WMDq46qB
         VLtcIXkyLDA+cD4zUVWNfoXonnM+508UwFUK1D0j47Ninz3MP2U61fk9vU+ntWdPiTn6
         qKNK57OzviMzenuOBdxphPZuHQxvvX4w+uH+pTxpM7Lk5AIhIytM6WBBQDQKxEbNY1DF
         mf/f+Lo0fixtLM/6lv/l8PsOddeJoLAKtbELRYOqJ0lE9kL5He2olkzxAFBPocr1ujmf
         1ztOk7gO6LLYMPI//50GelMIZ4dvDzV3aYhOEOVcEXNfulqZ4FhxkB6AFLK45baoRTcS
         xA9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUOo1kmTidrnPZBmjh/uuUZZZ8sVk3aK6D9D8U3WrWOoO08M4q51BIec7XoGmeFkZr6e/uDMr0HbvX9efxPqzGXzI9tVvAjYcMkFA==
X-Gm-Message-State: AOJu0YwlfDxOZkWT8l3nuZz+7Hz2yxQMaeYm8ZP6xYQBStrvSXYZaTWZ
	8MXd2cyD4L5OQRQ8Ek4msnnIDq0fA8+bPLkZYGU+xrfKILlBVB+ky6VAdVzYq/0=
X-Google-Smtp-Source: AGHT+IEkXdl2lHpg/byD8Mwn15KSShXIciPqlDeiel+w9pEtBrJuFdZHUd3+FxLp1yhPfQh1t2aUog==
X-Received: by 2002:a19:3847:0:b0:513:7:fc3c with SMTP id d7-20020a193847000000b005130007fc3cmr5174830lfj.55.1710238175047;
        Tue, 12 Mar 2024 03:09:35 -0700 (PDT)
Received: from [172.30.205.61] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id r15-20020ac25f8f000000b005134c52debbsm1507310lfe.162.2024.03.12.03.09.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 03:09:34 -0700 (PDT)
Message-ID: <f3644045-6061-4281-8fbf-25054798bc45@linaro.org>
Date: Tue, 12 Mar 2024 11:09:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: msm8916-samsung-fortuna: Add
 touchscreen
To: Raymond Hackley <raymondhackley@protonmail.com>,
 linux-kernel@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
 Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Joe Mason <buddyjojo06@outlook.com>
References: <20240312074536.62964-1-raymondhackley@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240312074536.62964-1-raymondhackley@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/12/24 08:45, Raymond Hackley wrote:
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


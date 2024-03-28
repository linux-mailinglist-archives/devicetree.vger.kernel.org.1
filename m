Return-Path: <devicetree+bounces-54389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAB7890CD2
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 23:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F4341C2D09A
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 22:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B68613B783;
	Thu, 28 Mar 2024 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sEAvUCG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12F313AD05
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 22:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711663233; cv=none; b=YBzRmRDieZeXEsZv2s3/WWpZkaAZZ+7olEZ8mkR6kNA8UwLJaNs9TUW0IR6Rfgi54CQt8GaaLa9MlEJAxBMBBdHa84ZmUWlaRbREkKOwJtIlczq1P295syXcgSYL88OyB0aA10JamcgABQtdCjHaXGgSaH/TpOB7SAIqQGcLkWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711663233; c=relaxed/simple;
	bh=OnsfEWGxjPhenLXNPPgn/fTxfEbTRbr9ba77sLH2j5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kopm2XELsZJKvTbFbwIEBVjiz4T/7IwAt9DeBRB1cA2Fi/ag9x+dv805+kpE9FxmduKZZ9AD0SXjri/h6XSu3pLwDWFH9ojCNuJcvelKH/tvM0rDznH3F4oQSDOSzHggDsYSMwPi+7VH5uEScMvKoOJj/IpoRnHBzLBw+1odjTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sEAvUCG5; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41543b772e6so11560095e9.2
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 15:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711663229; x=1712268029; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+UXpLDzEJhLrG5sKF75pz/iotzbUX0jhYNPtvtcn7a8=;
        b=sEAvUCG5N2cox9IWHgC0U/0Vs0MNGPGyBaYtLmiYjHnzjazJ5mPA+tcyiNfKD9d4/T
         LVC+3Hca98qUzxcyn6oSEENvMDNn74GVP2yxUD0P3WdBhXpmO1nmtsQ/ylqU0soyWlgv
         cpVZSivpiAiwhImxPUKauwLyMbK6TxaoN+JrzUv3u2VU3/FgWrmDBF6nBN+mBBdR4otc
         Eov471CCi+WHkn+WriRXefk13klv3yN8T55XQG2P0Biruz9x4y5ckIn72HMUvSnPVS7f
         E9iJS2YoOF/o6E6AVl4vFDdXY+/YkWnb3zR5Tp83vUesRbgLHskwGO8aoULF9N7UNVza
         oeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711663229; x=1712268029;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UXpLDzEJhLrG5sKF75pz/iotzbUX0jhYNPtvtcn7a8=;
        b=l6iGbqSSH/jlolOf9E/E7lrwXRgtg0d9byJORV+baD3hdSIuQG0PSGpllPDM9x3a7m
         fgygOStr59skQfuZPMYszDYraX1TfroLvCALD9p4fr2qXIROuvT2OKg9oEizsEaLdWKr
         kTtMhqQLyja54Rgrq6xEI/jjH1bp2CyUwG9P35dno+Xj41ZqSBsIG/TuHYqCUdfVtxxd
         KnYQHijBFs2qnBzeFDNXttQeR2IyI0eQ1mIcJTRHFxiTvyVOgya3zbb37zMJpEuNhWTQ
         Tx/mhBRLevE+M/e1l2vO0mxJb3i+0IJbSPASh0Jk1FEvvgG67Qux7U7e8R30N2pcA2Ry
         m21Q==
X-Forwarded-Encrypted: i=1; AJvYcCUihvHa9XqMuprY/wxF5Q9KQNEjJzi0oeLoyPtWjkHyearEPWfZDTv+jwXIpPaxNigjMfFYDueLyfJ7Q2npm1xVaWs2Yu1XGsQmGg==
X-Gm-Message-State: AOJu0YzlnczmKPuQiNWL5XjJHE5d9aVoJm+xK4DE/tBkzwcMHaCnROaw
	Nbx8jZWLpP6OCWml9dvzmLBcB+bn3KWty+W/0yecnaP8PEoUVwjBCoEVOz9d05o=
X-Google-Smtp-Source: AGHT+IHksJkhKrH5njNeiv6zhPfLLsMVt8hDw8dLc+YeObfnbywVwkOis4YCll41OGC8zaz2+3zjDA==
X-Received: by 2002:a5d:49ca:0:b0:341:ab13:6d50 with SMTP id t10-20020a5d49ca000000b00341ab136d50mr241818wrs.28.1711663229613;
        Thu, 28 Mar 2024 15:00:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.50])
        by smtp.gmail.com with ESMTPSA id co20-20020a0560000a1400b0034334af2957sm1241600wrb.37.2024.03.28.15.00.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 15:00:28 -0700 (PDT)
Message-ID: <4babcbcd-d123-4725-b1bc-1edd7269900b@linaro.org>
Date: Thu, 28 Mar 2024 23:00:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: arm: Add Emcraft Systems i.MX8M Plus
 NavQ+ Kit
To: Gilles Talis <gilles.talis@gmail.com>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Cc: conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 shawnguo@kernel.org, festevam@gmail.com, alex@voxelbotics.com
References: <20240328202320.187596-1-gilles.talis@gmail.com>
 <20240328202320.187596-3-gilles.talis@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240328202320.187596-3-gilles.talis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/03/2024 21:23, Gilles Talis wrote:
> Add DT compatible string for Emcraft NavQ+ kit based on
> the i.MX8M Plus SoC from NXP
> 
> Signed-off-by: Gilles Talis <gilles.talis@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof



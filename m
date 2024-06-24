Return-Path: <devicetree+bounces-79357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F16914F7F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7C2AB20E2F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7871B20330;
	Mon, 24 Jun 2024 14:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yAdCCaQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06CC142623
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719237797; cv=none; b=mj0OfciGcwPPirhpohovBaGCs9mbJmMJ2rO5yCPcsTE2DqLm7tDsTLvxyubTD1kkMnSo0Snqc3KQxRGao9IGryvLM8eQa9N/5FtmVqZl2ZoDxOtPgTIohuN0SQVLq+9FvunXoDcd+rL6FrqdWZPFYwYTGw6neZgFtf7w5t10cIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719237797; c=relaxed/simple;
	bh=wn2l+DjOXmQi7rb+3KjuC8g7QL+DoJBrBDUsrbJLZ5w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pHeAePzWi9Zks/pX2S4+MiBkibdyT9WC3DRTFWqp/1FFKfOtZQTwSjvtr2+RTjni3pzHTXEFX2CrVnBKQ23xllpE4GYXg9icxVrPgXKyPizNRDNP+wGVRUh74FlJ/ngXhlHFosbFBhvVg0q9ymLNxARr4khVaChGnBAfFb0Y1ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yAdCCaQT; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a724b4f1218so170558666b.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 07:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719237794; x=1719842594; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uCSC/UQnH9u4UTQ8oJ18Co2K8wSpds1SgQKtCo0pUIY=;
        b=yAdCCaQT2WxsXAB4tlB6uup/GtxpyRVA0WhmMW36FI/raQ/I+zaW6auQkr8ry/SRZi
         JXpM9LjQ8Gs10+R+EjIAUfpRhfG1AB/kJZYboJjy/12XdGEEiRG3btfVZxCx4dYJ1BmN
         Eu5eNUIMZ0eZzEMR3Dtrvc6GyhY8StzKUDR4lhmNdTFaRvfUG9yuMOhpAbyxfk5B86lB
         +tW83YUabWdgKcgM2inKMl9vo3hYHI898tHU3W8OJm7JBSqsZxwOLUwNYOk6V1OBPwQj
         7d9bX+6mMa0mfVDEX6b0fFwW9hnF45B4ssFOFLxrTl/FMbaqgQRxhZmTEnVLLs+f0qTR
         Sn/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719237794; x=1719842594;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uCSC/UQnH9u4UTQ8oJ18Co2K8wSpds1SgQKtCo0pUIY=;
        b=ozP53Z92BEYiWOPGDhNv41L65cRbqClhjMHwKV+DtU1aNR8LU8qn+OUFyPMVfo91Px
         68s9JpnKXgRK/Yggh1BoZaNBxSE66cRCcRX5JhtaAZ52uzjTs4xgWvW3HEAJtemSSvoP
         J1ga6VhCkpM6xdcZ6yQ2YRmvDVLLdqGbDaGzAsBbNYkTcUbUjwtdXI3VupfX/tMzkYzH
         W/haFO7iyKFsPKgLcJUMlwMRaXGXS67oV1BeTiL+tP+n7wtJyF9aLL6X4DpL1LJbfAcg
         D+YDB6bZDOCJCx0SgiMPBHXPPRR4dp+pi1jKR5hVrCZPAEnLL6rJBotnO4QmB849Xn2K
         2WAA==
X-Forwarded-Encrypted: i=1; AJvYcCV1McGpnCziQbse0tVF+y6hsuahUJIMfkiq/gdm1hc7RRoBvCIKuAZC0e8oKt6dwDACeMd6b/knVo3P2ggvkOUOp65KPVB9UOIStg==
X-Gm-Message-State: AOJu0YwkXqZwC4aWiUin6mTqpBWjG4Sdr+H7wwOytciRCzo29oXswZ1Z
	p8qJ/EIcbG448akxVeGxG8vwBPd0nf7RGKOwAwNTvrowDrnLGxz+rZ4RLJIQeFQ=
X-Google-Smtp-Source: AGHT+IGQhrCA7oaEer0EnKssqBNHP8nPjTY8DClZOkj17H08dlvsFVZWJmD7Knqiv1j8a/roLq4Clw==
X-Received: by 2002:a17:907:c087:b0:a72:5470:1d6a with SMTP id a640c23a62f3a-a7254701defmr182907266b.35.1719237794127;
        Mon, 24 Jun 2024 07:03:14 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c03:9198:7df:6a16:3e8e:ed7b? ([2a00:f41:c03:9198:7df:6a16:3e8e:ed7b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7247b6ff48sm198263466b.1.2024.06.24.07.03.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 07:03:13 -0700 (PDT)
Message-ID: <89930ca0-e59b-4e95-ae44-bd83bcb08b73@linaro.org>
Date: Mon, 24 Jun 2024 16:03:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: add resets for sdhc_1
To: Caleb Connolly <caleb.connolly@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Alexey Klimov <alexey.klimov@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20240624120849.2550621-2-caleb.connolly@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240624120849.2550621-2-caleb.connolly@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/24/24 14:08, Caleb Connolly wrote:
> These are documented and supported everywhere, but not described in DT.
> Add them.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


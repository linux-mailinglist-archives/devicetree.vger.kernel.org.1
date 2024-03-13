Return-Path: <devicetree+bounces-50263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5844A87A807
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D91921F244F7
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DFC53F9CE;
	Wed, 13 Mar 2024 13:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YxazIFQM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8166421340
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 13:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710335174; cv=none; b=LRbpIqR9vD1R9qOiyqyjrD7Fhom1Ft8XnNCmdwOB9AcTgtIAdrg1Vpm8nHqk+B7gmOYhP9UORXpb/mQp3n2QufYkbd/Drf7+OTNAFPvR3coHHQJ30Hv5SbdGW9/dN/55JaZHnewg4I8mMfOaBw57zxvBKxZwOOpF6IDfl8x4q8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710335174; c=relaxed/simple;
	bh=UPCmyAWVH4ArZN9xeEb41RbIhZ78wpCkSvYgRJHecTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LK9HR5ICqtdbgKq7PW77NgPMMy/2F7o4edRVOZ8sti+rLPQ/il5KojKMbKvTNWEMLx/JufgGk84arYjoZZKjkwxMh/UZm+U5RMMlEDeLXaku5CGEqa2KzvGKwVfhdZQ/vgxmn9G2WP7k6qkxBjIl1HlKg3QfBvZxlR9r/av6Y3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YxazIFQM; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5101cd91017so1483005e87.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 06:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710335171; x=1710939971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OCycxDMdVhvyKLnYblOTiKdk8RRdChqNJrIMHmgoorQ=;
        b=YxazIFQMCXX1Y0fj/m7KSjNR3a7X4CzaGVVHbl1rN0DKxvkHw8slCcQkpZ0d3kl2XI
         f5vCLfsnglS+51VgBw+eZhlNB44u3YrfOUgDkx/F63orxD3iKfGvY2Vf4THTY3xWK2n5
         H6LBK8z+J3oCTGtsIsdC5WYFyKpP54LoTz1P3IoNZwrN2+AHiRIQQNis+HgzvTLZ1MuE
         7bTv5FP+x4OiPIKswVzD1KSogGbPvvzLPNw5knbPZTxmyZZhQiOQ1ahCob+1GZnzOmBS
         /W8Tj1i/wJrtdRsRWUE4rU7zqTQXvHXUjXyR+9Jhu2JlKFobkY3jutw3sVAp9v8+eg+8
         aHpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710335171; x=1710939971;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OCycxDMdVhvyKLnYblOTiKdk8RRdChqNJrIMHmgoorQ=;
        b=RHktIoVe+1s741SYO3THI14uJ1AoiFuawCjf9j4N7xGzABnSDevHW9fZDK7FpsUwO0
         YSiWxadEmT77Jol8H+4iVzrRipS8z+yw13RJr7A6sB2ju+CwmGuYXZgpfTyfWbndxO0t
         ZIrIx1qICh2evX2ZqtcKtMcrL/lOdCXI+I6C1LLsGMfLKTJghzFdTWUbmBHiyxJ+pt0i
         mk1HNgSasfbWcJFFe3mNWnmkJZQSxotbbIGnTF69/jJGYlJ65CQdnEyGySSF72N6iVzk
         j7chPjCw83aMHKA+OwjbtdZPipol3cFfDCnyXgTT2FTIgFCuzX+sMNkfWskKF+II/b7j
         gaCg==
X-Forwarded-Encrypted: i=1; AJvYcCWLZ2RZv3jdOZSn/mHIVv01qbN/3NQsuflRW1vHgCR3xZs9isJ9A62GiR+D+p7PJ+UcypJJ6sy690AgCtUQa4y+N/gHgHn9Gs26Ww==
X-Gm-Message-State: AOJu0Yyv8z7ma+TIGOETp/KclscBbScoAvMiJtpY5dOqsVyy41P/Vy1A
	uTeVkIncbGhnMelpirTxVnSrtJoCcHlL008MsF93RFKLw7ywmlqPXtts6dzUuPo=
X-Google-Smtp-Source: AGHT+IGVKD3YcCSywDm+0Mib2Y/bGEO2V0BRjaD8B9KsVeYriJYZN6gLFr5VJ5+MEAZfeKZwKwMr7A==
X-Received: by 2002:a05:6512:2210:b0:513:ccea:96d1 with SMTP id h16-20020a056512221000b00513ccea96d1mr21124lfu.24.1710335170792;
        Wed, 13 Mar 2024 06:06:10 -0700 (PDT)
Received: from [172.30.204.6] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k9-20020ac24f09000000b00513af268d04sm831415lfr.154.2024.03.13.06.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 06:06:10 -0700 (PDT)
Message-ID: <e7311c0b-06ea-4242-b65c-308bacbf5b2c@linaro.org>
Date: Wed, 13 Mar 2024 14:06:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Add inline crypto engine
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240313-sc7280-ice-v1-0-3fa089fb7a27@fairphone.com>
 <20240313-sc7280-ice-v1-2-3fa089fb7a27@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240313-sc7280-ice-v1-2-3fa089fb7a27@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/13/24 13:53, Luca Weiss wrote:
> Add the ICE found on sc7280 and link it to the UFS node.
> 
> For reference:
> 
>    [    0.261424] qcom-ice 1d88000.crypto: Found QC Inline Crypto Engine (ICE) v3.2.0
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


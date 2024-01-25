Return-Path: <devicetree+bounces-35039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D538783C2B3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D70AD1C214FC
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 12:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A4148790;
	Thu, 25 Jan 2024 12:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SYF9mdai"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5F8482CD
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706186662; cv=none; b=RCkEHwRtn4Op4t1M4/1gKQXHYrrSdb7hKseGS5INznqrg1qNCy6SIGupsfGkv/TpifeQStvC44KZnrbgwbX1IoJcOBdM3yHedACkIH+p3OJaHiZTyrIAxWUoWt/ndpqy+6X5lgRDiHFXao4stmeIxrNaR7LPmNhOzZgoHTpb3lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706186662; c=relaxed/simple;
	bh=Pl4rvSehCDu712l4OmjwYTWLSjY/JocrruzxJxH3UKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JEzYR3otGPrIyGmUNPBOEbISG/RLDKMGM1SDJLk5KiZQ9C+u0hpQCGoy5yvnsMhBbhnJkTHihJ6EawXa+7cddg/P/KF0hmw0PDLP1HpXy/mJ+WXv62no/ZAGxlOcuEP6pEYKo7fTLfeIPHI/KGUIwSSyeyoGvfrMLPmkQM24Wwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SYF9mdai; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5100c4aa08cso3070359e87.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 04:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706186659; x=1706791459; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q1hYxWo8YKNAnkwSYsWFvbWfowJQOuaYvhfqL3qyYBA=;
        b=SYF9mdai5auKfOMjQx9jv961uwQeUMnF+JEgtqnUVVZacaUJKhCg71/FqEVHcZG5Q3
         2IyzKX1/sGlzw0XabYjFhwURBurmUgx2n+XZU5U10/xkvtFIdUtHvFdd5f/VLJQwYU7p
         1uQzuH4g+x+GiZfHtXbOckgoI/N5rcxN7m2FjVA8u6u2jyIS28dAXMppVWabD3Fq1gsV
         Dzz6zpU7XPBWNO3m22ik50i+uKHp/GQSgq1R0AphDRNj+uiH7cD3INGCUnIznpB7+dE/
         ZYJXvCkQn0vlxgT3U6pgSA8gQ9UGQuLSXdM274L0uIWSwHcQeWTn3ex5CMYENV/1V1Bk
         dUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706186659; x=1706791459;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q1hYxWo8YKNAnkwSYsWFvbWfowJQOuaYvhfqL3qyYBA=;
        b=SI5OQveve5osaAvtt/b7bgXoeDm0/FC1B3NvoYJlNY/OxCjX/JsUk5bE3A0006fSSs
         rWnvCvLkw0qXDa6FIANkwd7N7n/assgsKNkyJuAWPNrEcMVa8Vz9bzAL/eUZdL3uGVXm
         +3B2OSzRxh/OmcdBaJkJA5Bfb5Rwjf0TopzTU5X/ISP1wwZVbVPVwvOJNr94semp/ui8
         FYA1uALE7BsnE3ZMjYGorgOLGn5cuva33hi4F8x7Dn3tNSH2bvYMiVVR6/jrwgzTB2DV
         zTz2vf71IKuZ0wBowcMzzzPNbijY7jbVvrYuiR1T2SHEqqkQdz4brKj7r4S5pKSBPui/
         ZlcQ==
X-Gm-Message-State: AOJu0YzWBE98arw9OSBKkUkYOqgp/BbkZ4k4cKqQEl81b+REY+SL1vRW
	DGbJh3H/X5C+U8kihlabnGkWF1ICbKbqpgFo1e9BAbsbB5SqyEcIXYzOIEp1t+w=
X-Google-Smtp-Source: AGHT+IEubkIZNy297+NX+IbXw2pIGP4k+bM3ko20GGOIoJSGJ+FhuJl4ngKoPyta1lJiBg6CEsx6jg==
X-Received: by 2002:a05:6512:234c:b0:510:da3:5122 with SMTP id p12-20020a056512234c00b005100da35122mr583537lfu.4.1706186658773;
        Thu, 25 Jan 2024 04:44:18 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v15-20020ac258ef000000b0051021b2521csm15045lfo.139.2024.01.25.04.44.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 04:44:18 -0800 (PST)
Message-ID: <59830bbb-dcfa-4e9d-98a7-9a561b60347f@linaro.org>
Date: Thu, 25 Jan 2024 13:44:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: qcm6490-idp: Include PM7250B
Content-Language: en-US
To: Umang Chheda <quic_uchheda@quicinc.com>, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_kamalw@quicinc.com
References: <20240125115300.3496783-1-quic_uchheda@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240125115300.3496783-1-quic_uchheda@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/25/24 12:53, Umang Chheda wrote:
> Include PM7250B PMIC for qcm6490-idp.
> 
> Signed-off-by: Umang Chheda <quic_uchheda@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


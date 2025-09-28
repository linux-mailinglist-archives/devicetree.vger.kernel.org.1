Return-Path: <devicetree+bounces-222228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7070BA7199
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 16:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EAC63BA6C6
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 14:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3671C861E;
	Sun, 28 Sep 2025 14:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AVM6Wzkn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F322613B284
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 14:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759069898; cv=none; b=q5/Cx/Xx0wLN6edmimESE+SyZNKN0NXyI1SkMEhPrhikd/Dse0HJPLaU8h9ka7RtfrtdiTwbRWVqyulBl6ziw7W9efJYykKwbQeuU47Nb3CmeCP6ZGfimeblTCYeDS0rtnl+EL9ixIkEfldu7y4GqP6aHeCRvsQajlDO12znHi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759069898; c=relaxed/simple;
	bh=ItFmGJIZUsjauXk4IBmkjqXUpPsyfWZYBQyF9nT8sJ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bOP39lIciVB421jFIIEghmrT97rvXtLjtEgBb/bV5WokZbWqw9sgjl8O615gI8qoLbuAa8iuD+IEop6Ob2N8ru8e8HJO+QydvT5tWVaZKgKrWOaElUh50WA3cOb4mLLum4FSGQjnTL032l2Fz6T6h2qateBfCsJ1KV89RrVjrrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AVM6Wzkn; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3f44000626bso2220650f8f.3
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 07:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759069895; x=1759674695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8lk5CQ9hpHLxRgqfNWWxK3LXxIXI2E6NJZOo1XKYj1M=;
        b=AVM6WzknhP+0ISXCbntlC6Ck0CF/stDSTCjuJBJSF41OU20Kgq9DYb/pcka8w7OcUf
         3JrgnB7ky2DapbZdUuUH/3U6KvrzlxC0jOqSlVSuhb8Y4RCYkgWk9/GYJ2YyLFuFvBAp
         EvS8JRux4xIo8AbNbB54pjId4w6Ejjdy1JadGImahFQFi3SdfoHMvlC1B1aheQei31cq
         okrYuWddD7xF+8MIV6kLcTemK+5Ri9MZJPd3rCgyUvbe30DV99zor9sivAckIJwqthzA
         Bzu6P5hB2HDA/8tXrl0u2O/cUrSBwJwD35pvFvGPVhrUka0Lr9pCLljpwNFwlwh8kFjF
         CiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759069895; x=1759674695;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8lk5CQ9hpHLxRgqfNWWxK3LXxIXI2E6NJZOo1XKYj1M=;
        b=KKev0aHovMwjRTWC1Yrxo+5EZcNwf5WCojbuLT38hOga/h6uJYoBm7hwNfLNuXvqD/
         ago92OdreCl79aelZIHJdaFMTKa894CfJML4Ya07ESy+TXGxLgpzC40OyG2B/sttPP3D
         VBEn70bNxsJd1esB89Wyl3PBbJdmhHIWnXx1dzHqytYg+7CcYw+CWLJRR5vb7s7rCfG/
         VShnKM8z07OE88xxrVV41qT+88B5qsWdgeeVXO2evBiPUVmAw6CMWov/wnct4Q+gP3/+
         dh8GCFbdMasUvsgrLFanUPkfsLE/BT4s1UzsFhwW+B8nGg6fqCDMPAcy5TOx17qfwO1T
         J6dQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtrU7SfOABF4fYLsevJs9XyWGp5ySIvOPvfI5CHyQnCdowp4OzGgHZc98tU/CeEdQ0CU3M+qAlOS+l@vger.kernel.org
X-Gm-Message-State: AOJu0YzOIEZ8c4tsH357WxOuOt+pLcHtZg8rNsoqq6uf4nw4/jI4GBI2
	VM3o8QlLDPO6o/mgl4NKfhNwYKkjR5K0gBwReW9xms7nZqGQaVsplvdUArApqhkdZes=
X-Gm-Gg: ASbGnctBIVw6m3B7xhV5MOFcaLsXSrW6Cs/HgBddV4u8tVlcYtsyXTiZmSdfi4R7Mha
	m65bIsyGfkL4UEY7kEJJTZenqQLfheZOKKnbFAgVWEF/NrCz0Nob5B0HxfP8nTJJ79cAcwkqzIz
	ZYVvBtYolU5683ARWY1zHeI0UeOfGce14F2OVPy7HMcC1Qsw8DxlF46t//Y847dGJKfROmPIL6V
	UcvSBldihl5zE8NtNef02JzkUqcmpeKmKaqo5QL5eEruHM4pulTozYMumhBIUvoJWeXdSAwDNiG
	YQtYGAsvL8uu+IN+UKVLdB3PDg5CdhUye/uzN9x3fVzz3b7aJUG1X21wK4lpwqc2jLASSr6ujKT
	1FY9SM9rlVSd3/jwb0IULaYEDSVDai4zzE+ga7wlOhxOH5exfmwQkglfo2cMLLWWewvbcXikWDx
	+7hmR3vCdoYWqBu/Wckyva2EwfvCF00jU=
X-Google-Smtp-Source: AGHT+IEEhQexfM/F4JIJe17ctZWPZUJrahxBOKEhTqyR4Y3AE6l5ifGji75EdFxa/fR15vbOd1XStA==
X-Received: by 2002:a05:6000:2507:b0:3ec:d740:a71b with SMTP id ffacd0b85a97d-40e47ee096cmr11720935f8f.31.1759069895255;
        Sun, 28 Sep 2025 07:31:35 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33b9e902sm144002505e9.5.2025.09.28.07.31.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 07:31:34 -0700 (PDT)
Message-ID: <993e130e-9a5a-4dbb-a272-c3be83f5e722@linaro.org>
Date: Sun, 28 Sep 2025 15:31:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1-dell-thena: remove dp data-lanes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Laurentiu Tudor <laurentiu.tudor1@dell.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250927032240.20759-1-val@packett.cool>
 <b6066559-72f0-4f1d-9134-c93f732fa6dc@linaro.org>
 <kgy2l2lmj6mv3er3nmvvpw44zort5cmhdkkix4oxijfojr4wol@tnxjxnlkum5f>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <kgy2l2lmj6mv3er3nmvvpw44zort5cmhdkkix4oxijfojr4wol@tnxjxnlkum5f>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/09/2025 07:18, Dmitry Baryshkov wrote:
>>      fc582cd26e88 ("io_uring/msg_ring: ensure io_kiocb freeing is deferred
>> for RCU")
>>
>> With that fixed.
> I think that's a bit of the overkill. The usual style is:
> 
> The commit 0123abcdef01 ("foo: bar baz abc") has broken this-and-that on
> my device.....

I meant the usual style :)

---
bod


Return-Path: <devicetree+bounces-123370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCB59D44EF
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 01:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06F11282DC8
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 00:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 886792309B3;
	Thu, 21 Nov 2024 00:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sy/kmpcT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EFDB2F3B
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 00:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732149446; cv=none; b=KDxh+p+PS+x+FeqcpMBd/67roFylO9Oy+29kspBMKzunK4VUIW7ikz/FdygQVLm2S6yk3/mz883cU9WkxXls2OiNaKmSf1KgCQodxbQCfU3Hy5XbLW/E9oDmsHR1Luhwb+N7ryxZqR51bbpqXOkAVWzDrE5S1Q1l1Ci2oqrxls8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732149446; c=relaxed/simple;
	bh=U1S0roCBZy6Yr/IN5az14AchlrK43tHpIByXaXPoH0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oXBKcmH1ie0jFL8ql+MfnEj+qFE9vdEB8/vM36UI6acAq1DXPCyy6cd19saD7P3gpyKKFsUpEAoJWYqdyfgz+O5qZffM0WLBZ6q8N2RDSrCe6jXvKeBXX7IGyUhUtqg8NB1R1f3Nc+1jd636jqB7ZlZ7pm0AI8GMtD+4BLeHTso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sy/kmpcT; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb5cdabac0so519281fa.0
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 16:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732149443; x=1732754243; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YAuXluMpfSh0qDO+UckfWrXerNoxRK+af2VJkTt6Y4g=;
        b=Sy/kmpcTwZM+69COId67IPOCa4YugyAXsuSPVcoY9yHEwBVGZ6IVnT1BQIVMfZdkc6
         gFITm+wtk22RirvoctJ3TXWj4sa9gChSlZrVcPlXzjUJp1ef4QcN29+NRrWuxZ5j2gKY
         Yl6tCVCqZQyPEs5iF7JqW8wckob9ds/wN96GCcaUvvErJmj7jxULtP09JQ0tfdYU/fDl
         hVXHFgmv4vDulJ5Lq7GDHaoeJC86/hZgIIPBPgFWZ+USVm7gTsHzYOnMlBvGq6cX50Nj
         trEncmtv9rArPj584tvykHjp4KGJkqtFzssMhcHcezm5ssjjpDkSZbUhE+qiIJtvdkuu
         DzWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732149443; x=1732754243;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YAuXluMpfSh0qDO+UckfWrXerNoxRK+af2VJkTt6Y4g=;
        b=bpo56iFNzAtUa3hJicvk9wnqbvI/jACXcBKyok5Bn11krfk75jS4/w+O2UK3pCwUMb
         hyBhgGMKgg/+DQ7G+ugLdPfhOeml0mPCbFy/Cay3SZWTCirW3JJhMmcmuS8lHfMFXB5U
         bcJ6bJ9RbmKtVQqkICwlU1z7kONaJh7SmWegipvy/xORQkm7T3loGc8qlVlAPxQlDrBB
         JP7y7APTCMo7PKshg7HsQPfQlUoASeVvTnqhk56Cn9AJlSifg/D30e+smlZbeFxTLk7K
         ldoyEAtJ7f0TsOPPmdvTQTRbga2gDQFLxWJMluDD6qa7N+nnYuuXIcUnCj6jjkRiz0ne
         GIFA==
X-Forwarded-Encrypted: i=1; AJvYcCUGYUFCVWdwQ9uTjJdoJy+kRSRTzCO6SuXj7UrrX5nR8Cg5F+guVzAGYP0jyFW5aBbEf4C0N0r6mDAB@vger.kernel.org
X-Gm-Message-State: AOJu0YxsdVnMt/DsgptWifPRt/chBr9/NiTayryuabe6ijhAIqEgX06r
	Z3KWuOBDRPYn7JpZiJ6xlU46A3ScXxd3vtYLtxBE+D8Zux3UD3sZ+yCO+Dxw+mI=
X-Gm-Gg: ASbGncteOx41xuub9NqBHeOvikShfRn4w9M4AknoddSkXB0rB1o5GfGnwHLm3xvozUn
	HbfP80HLQdD4sG5C5LZ2s3IUb4aZbtJdSHjgSnJN1rckduBGTJEliKB3xb6IHZAyT4Wb5RZtOha
	YW6r1c+gK5/JUB83uWUAESxwVrAn/n0gm9gieoeG1wnJ6tOmRry8nyok/O41JY607l5ZFx32z26
	NurJAimiEMKRmYN6C348b6H0p4lasbT5rTCo95JjS3bUcUJpQ1lCkyX3pViqvVB53JLaIr6rNu3
	4/xY098tIdaIpyIamj7DUeexNFsX
X-Google-Smtp-Source: AGHT+IFN9O08F0W2wl6yka9ElBfiou3gnBgywoKZF/lU+i/vNAQy12evwkDojEAvUqtsv0eO+fwRIA==
X-Received: by 2002:a05:6512:3d12:b0:53d:a8a5:82d2 with SMTP id 2adb3069b0e04-53dc13281a8mr604562e87.3.1732149442659;
        Wed, 20 Nov 2024 16:37:22 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd472766sm773787e87.204.2024.11.20.16.37.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 16:37:21 -0800 (PST)
Message-ID: <f903025b-08ff-422c-a93e-fad911a7ee43@linaro.org>
Date: Thu, 21 Nov 2024 02:37:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: media: Add qcom,x1e80100-camss binding
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
 <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-2-54075d75f654@linaro.org>
 <92f3f608-1ca6-4c41-9406-28c7ad589872@linaro.org>
 <66d1c50f-ebfc-41c7-95a4-5d555b336da4@linaro.org>
 <bb58d02f-9ed6-476f-8bc6-ad56cb35e37f@linaro.org>
 <91afb347-e8ee-4a97-bd8b-9a1413051cb9@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <91afb347-e8ee-4a97-bd8b-9a1413051cb9@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/24 01:27, Bryan O'Donoghue wrote:
> On 20/11/2024 23:02, Vladimir Zapolskiy wrote:
>> like "vdd-csiphy-0p9-supply" and "vdd-csiphy-1p2-supply"?
> 
> In theory, however I'd like to avoid adding endless strings of new names
> into the driver code for each different power input.

I don't understand this argument, it's the same degree of endlessness as
the endlessness of new designed SoCs. Should it be stopped now or what's
the point here?

My argument is to represent the actual hardware instead of copying errors.

> We can add this additional string name though in the interim between now
> and refactor for the PHY API.

I don't see it as a good reason to copy an easy to correct mistake.

>> Also you put a description like "supply to PHY refclk pll block", but if I
>> remember correctly once you've said that the datasheet (of another SoC)
>> does not give any clues about the usage of the supply, thus it invalidates
>> the given description.
> 
> I'm surmising by extrapolation - that's "probably" what those are just
> at different voltage levels based on previous iterations of this PHY.

But this is proven to be wrong, let me kindly ask you to align with the SoC
documentation here.

> I'm just as happy not to describe this or to describe it as no mor that
> the 1.2v supply etc.
> 

Thank you for understanding.

--
Best wishes,
Vladimir


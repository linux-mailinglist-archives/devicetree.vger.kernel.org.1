Return-Path: <devicetree+bounces-61837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 706328AE5E8
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:23:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C79928397B
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2A184DE9;
	Tue, 23 Apr 2024 12:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EdikYgOQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFAD84A2E
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713874995; cv=none; b=rnPdlWMn081tWpggUB4uwQsxpSoS2539wWTvgcQNKhAXrfxQ4iXTaIbyb3H5V54CofVaoIe/zHDsgenH3HvKzczuwK5eXw+h0iU0OxqLyQ7cCZJeztugDgOL5oGXlNa9QJhSoLHykM1O26Ap8RUJuZTjuAU6R+vtFeYjC9pJMjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713874995; c=relaxed/simple;
	bh=TUxh2dmmpJX7WBc4srURr73XE2ORniuV1E9p5uloACs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W8j0Y5rzS1yQyp+CgaI0rRJgporklShJhQOEoDJ21gRC0gzrQICjaIyACOgnHPYlIeyTnLiGVM25Veh9GiVukVIX6ULKHsvLGhV2uF0p35936CGBbgnvPsqsWpdCHx0Rgs0BGZARGKD9xfcCr++1+sISZwcFhE9QgzGVxXJtddI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EdikYgOQ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5176f217b7bso9345353e87.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 05:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713874992; x=1714479792; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LGk9qx4loxnh2Hbq3VLgz6hVCnEHtgT/Tl0bzU4S7gs=;
        b=EdikYgOQaOF+DjJj6wYiMtlrYBQptQABUHj1f/A5evpmcQ0/gjFqbk9NJ11xzorI9e
         dN+IbtCl+fAB1LulXWXrU2f30m9turJKLV02tMAxZnqE80dg7xPlvM4Jschtt3ohvAtZ
         8EVQz2uKc+FvUNTlqbgl4v7mf+AqK/ptNM0U9GBH0Q4qzYcSqzbVu/TyihX3HKhVwImI
         wUSzzKPoRCmcJE2A7/szmaIOC3ETbjWK4hTxEJRAAsHWNXG2GVoYzL94Aq9bfiHqV+9a
         BGEhb6vKlhDxuKff3KBphSU+Y3fbT/ruGpM2wIKdWTI7ciwnoh5UDlUHmynjqY2g3awS
         vOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713874992; x=1714479792;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LGk9qx4loxnh2Hbq3VLgz6hVCnEHtgT/Tl0bzU4S7gs=;
        b=M/sBis9vKTKw0AXqxtFaMm8zpfnm7cDavb8xg+d0QZqfw11ijpxMVlep70Z5sChGlV
         TcvVFOcR5jzX4ONDAFTLgCCiId3O8ZgL5vsoN8ft95xYX4IzCpl/ENcTW0t4M5J5+mLm
         5DRofhV0CugReQFQfZSBcXB1UAvGVHzHHN+tVv/MC9LOVw2h0qqgFrFGMZq0kyigsGId
         LqIJ7xHMMEdUJJrtzY2HNMzThOBfRql/mE3YCzhjnf7P64BhlyujZS+SBzJtk5pfBtSI
         4m2UHNsFlsFNmzQ2P1IlFdDYdh1KN6Fj6M/TBLFsFmEsJ4aghP6SnJ3szvVks5n0UulO
         x86A==
X-Forwarded-Encrypted: i=1; AJvYcCU3SgnoLC0gBiOi9v06/vWggegfDavY0QkovM50PEGSJZondfRlG7Esom3k69dq5PphAByBpAd7jUyR6f92JrJiUxX76o4q4293xg==
X-Gm-Message-State: AOJu0YwiFXryZPlGSPbWKgxL1YBwsrKFJO0t0xm2qQ5sqZr4rKc2CbOp
	dXfMj9I2CYiM55ikqcZ48PEm8MbWCZiU7Rm4deFrAHZ4+JslZfbddVMkA6yKvyr1jEu8BE6CPoL
	o
X-Google-Smtp-Source: AGHT+IGqlffKALibqA7oQ0C8VqbOeS6gh87vCW6HVVS6KS/gfpEZGOEf1bmt5zpFpHDf5E5+lyF7aA==
X-Received: by 2002:a19:5e12:0:b0:515:af1f:5bad with SMTP id s18-20020a195e12000000b00515af1f5badmr9270103lfb.28.1713874991796;
        Tue, 23 Apr 2024 05:23:11 -0700 (PDT)
Received: from [172.30.205.0] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id s27-20020ac2465b000000b00519296c7d91sm2007161lfo.71.2024.04.23.05.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 05:23:11 -0700 (PDT)
Message-ID: <9267bf8f-bbd9-4b61-80ff-c1f43277ef0e@linaro.org>
Date: Tue, 23 Apr 2024 14:23:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq9574: add MDIO bus
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>, andersson@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, robert.marko@sartura.hr,
 ansuelsmth@gmail.com
References: <20240323160935.2848095-1-mr.nuke.me@gmail.com>
 <20240323160935.2848095-2-mr.nuke.me@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240323160935.2848095-2-mr.nuke.me@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/23/24 17:09, Alexandru Gagniuc wrote:
> The IPQ95xx uses an IPQ4019 compatible MDIO controller that is already
> supported. Add a DT node to expose it.
> 
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 7f2e5cbf3bbb..4ab9da9fffb6 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -232,6 +232,16 @@ rng: rng@e3000 {
>   			clock-names = "core";
>   		};
>   
> +		mdio: mdio@90000 {
> +			compatible =  "qcom,ipq9574-mdio", "qcom,ipq4019-mdio";
> +			reg = <0x90000 0x64>;

Please pad the size part to 8 hex digits with leading zeroes

Konrad


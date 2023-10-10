Return-Path: <devicetree+bounces-7399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1B07C406E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6336281AF8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA75321BA;
	Tue, 10 Oct 2023 19:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d9iRK8YR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F39C32186
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:55:34 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3630AF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:55:31 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c1807f3400so2345601fa.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696967730; x=1697572530; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rl5xfKNIMhqVf9XxJ6NHKzGj+/S+F5nmD0njh3SwUk0=;
        b=d9iRK8YRDBwX8sUwkyzr6Sqtc+xRy+yaBm6SfkaVVqb7iGonQQR5xOuohS1ja5gcM2
         otBxqCaTW+/xorw9gRcNhUNJL9fDWyPU9XO4Vb+YYQrgdyDbyXrz6eamdLFHXUg5l9ki
         cUtj4VMm45e2ghSYAk+1cmFpMcmyP6FMG4ucBjyGgGMtOyZNU8e4irZS/HXt5H0upxo0
         Fs/ZaJWQFZ/IwY/wbEz1EsVhcZOOHaNeMt6ePW9XfirXusTLhDf8OxI6wvIb9gLJaWC5
         4NkShBeghunFD+Fsy9sx1a8hgtzyr2OwvfflAt0knDX+BihpQxSoNxGk6lbZlaWNWPaG
         1XXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696967730; x=1697572530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rl5xfKNIMhqVf9XxJ6NHKzGj+/S+F5nmD0njh3SwUk0=;
        b=mvpYYeniseqMYPGHpQkIyEH+ijM5eI4p8ziU7+gfaihaQQcoxCeXiVohsKlb8aI8Yz
         r6DUP8pBUn/Gcuw+0lUzBdgcZ9LYKBjnNgHEYft7X0CARIqe4zdj7EbNLYnObn3OJbmX
         eRRJwLIznTvsvaJGMu9nbMTn6Uk/aVvvNoLVNFTNUCY1RqHeCwhvrxXv330J1c/OC4cL
         z3K7zwMeruaNZPW2mZfDmo6S/Op5BywlzQYRCNThCkRnaBgg1Z7JLEvD89aHM6zKV/OP
         rV7CC5DmmqI0tgbcXCJADBIe/d9ox3rDupbtLliGgAEL+eRw44jPNc8x2N94dhUzL8OY
         Zj8w==
X-Gm-Message-State: AOJu0Yx7FlB1/Cx+x/vAoM9PinlelJSZ9fuB906PPGYuZAaK+teh4PTR
	XplaPMnCiXL9nMNdM0QC0jV0iA==
X-Google-Smtp-Source: AGHT+IGUBfWjT3swZMqxVuEwraVPRHXHAFpVdg0kljzTwPMMEycuzBLnpMNaPXBAeu4IjC8BNMUkbw==
X-Received: by 2002:a2e:8188:0:b0:2c0:1eea:d9c0 with SMTP id e8-20020a2e8188000000b002c01eead9c0mr11472447ljg.25.1696967729955;
        Tue, 10 Oct 2023 12:55:29 -0700 (PDT)
Received: from [172.30.204.182] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a4-20020a2eb164000000b002b9bf5b071bsm2548323ljm.20.2023.10.10.12.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 12:55:29 -0700 (PDT)
Message-ID: <e2d6c9c7-ff59-408f-94cf-81e66d291963@linaro.org>
Date: Tue, 10 Oct 2023 21:55:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] ARM: dts: qcom: ipq8064: Add CPU OPP table
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>, ilia.lin@kernel.org,
 vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, rafael@kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
References: <20230930102218.229613-1-robimarko@gmail.com>
 <20230930102218.229613-4-robimarko@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230930102218.229613-4-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/30/23 12:21, Robert Marko wrote:
> From: Christian Marangi <ansuelsmth@gmail.com>
> 
> Add CPU OPP table for IPQ8062, IPQ8064 and IPQ8065 SoC.
> Use opp-supported-hw binding to correctly enable and disable the
> frequency as IPQ8062 supports up to 1.0Ghz, IPQ8064 supports up to
> 1.4GHz with 1.2GHz as an additional frequency and IPQ8065 supports
> 1.7GHZ but doesn't have 1.2GHZ frequency and has to be disabled.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
> Changes v4:
> * Add OPP DTS patch for IPQ8064
> 
>   arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi | 30 +++++++++++
>   arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 67 ++++++++++++++++++++++++
>   arch/arm/boot/dts/qcom/qcom-ipq8065.dtsi | 65 +++++++++++++++++++++++
>   3 files changed, 162 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi
> index 5d3ebd3e2e51..72d9782c3d6f 100644
> --- a/arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi
> @@ -6,3 +6,33 @@ / {
>   	model = "Qualcomm Technologies, Inc. IPQ8062";
>   	compatible = "qcom,ipq8062", "qcom,ipq8064";
>   };
> +
> +&opp_table_cpu {
> +	opp-384000000 {
> +		opp-microvolt-speed0-pvs0 = <1000000 950000 1050000>;
> +		opp-microvolt-speed0-pvs1 = <925000 878750 971250>;
> +		opp-microvolt-speed0-pvs2 = <875000 831250 918750>;
> +		opp-microvolt-speed0-pvs3 = <800000 760000 840000>;
We can just make use of opp-supported-hw and define opp-384...-0, 
opp-384..-1 etc. with a valid corresponding bitmask in opp-supported-hw

otherwise it's somewhat confusing to follow, I think..

Konrad


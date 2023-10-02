Return-Path: <devicetree+bounces-5054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBC27B4F83
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:51:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 171892829C9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82926D260;
	Mon,  2 Oct 2023 09:51:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3470C2EB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:51:24 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E9F4A7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:51:21 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50433d8385cso24445778e87.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 02:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696240279; x=1696845079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JLs1VktsLlk8jSlnRreaZgQ/QeUwdA55Dkd4Kqx1630=;
        b=BHtwBdkxkL7W1WgGrLta0pVAoOEjgWTOWh+BBejwMR9JGzoGXydElJAZ43tN+KUYH+
         H0Cd6l4UMBImAsIutTmywKSBWzScrylM2/pD+drsDMXucffDFJojuXu4ZNm3ozrqbeyL
         sB7KEZn+ULgUP3atPyknsMYt24lRXOszT0LfkXmBMRGlR1ElNPfkv10HfdTE3p2WpbbL
         ZDXqIW0i5sXgJqzczRFhw9T6btwcQStbn8S4C50OX7uTzoKmudPFI0aWIp1vf0+Nok5a
         +Ejj4JST8ps0svZ7Jen0igygXwXr+o0fIyIfsO/YklVAjMCXtqHpq9q3/x+y8Y1uUOyz
         w3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696240279; x=1696845079;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JLs1VktsLlk8jSlnRreaZgQ/QeUwdA55Dkd4Kqx1630=;
        b=Tc2pHL2cTbivZIW1SxJs+jmlobu3NM02ZAiVEt8UadwI4X4E3ZYazhW6hfENL0xFTW
         LScVv/nlCyDv/k9LPXcZYZaeVkTbsp8ZjG60QeslH+jBIJKfuCzDW/RZ8Nx42jLjyiUX
         2oCf/hzeoupYsWP1BfeGaGMkyptDnnX/9R18skYl4pfOqYEgys1Sb8k7XOoOjMsWfZx9
         pPmWvnl28OPJGhrlF91G0ITG9JqqGEN3s1w39HE8KQnJjBDn16rEYfG2V3pFnPf9NyW9
         fK1eUWhBgha6pL1f4QvoX66IoBJFnd/at67MTpm2NLCPpF3XCOmJiONlMGaJUKrxL0fQ
         8lsg==
X-Gm-Message-State: AOJu0YwtyR9ZS1nLiv7YGO9kIoJSg3o1b2mAuqzgV2G9Aoaf9nQdevn2
	9dH1xs3qzynySQFmeGOa1r73+Q==
X-Google-Smtp-Source: AGHT+IFOVOzVdjRKpbSkAlo6qh4MyGHDzKp2cGIoMm270v1GTGrFuVJwWEg8an2N9lHrz99nrbSpnw==
X-Received: by 2002:a05:6512:23a4:b0:500:c765:bbe with SMTP id c36-20020a05651223a400b00500c7650bbemr11447285lfv.0.1696240279333;
        Mon, 02 Oct 2023 02:51:19 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a16-20020a056512021000b0050315aa36fbsm4685416lfo.282.2023.10.02.02.51.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 02:51:18 -0700 (PDT)
Message-ID: <5f3c8a66-aba3-cef0-8df9-f897487f1098@linaro.org>
Date: Mon, 2 Oct 2023 11:51:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 4/5] phy: qcom: edp: Introduce support for DisplayPort
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, quic_jesszhan@quicinc.com
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
 <20220810040745.3582985-5-bjorn.andersson@linaro.org>
 <ZRqIHSetajQf7Um1@hovoldconsulting.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZRqIHSetajQf7Um1@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/2/23 11:06, Johan Hovold wrote:
> On Tue, Aug 09, 2022 at 09:07:44PM -0700, Bjorn Andersson wrote:
>> The eDP phy can be used to drive either eDP or DP output, with some
>> minor variations in some of the configuration and seemingly a need for
>> implementing swing and pre_emphasis calibration.
>>
>> Introduce a config object, indicating if the phy is operating in eDP or
>> DP mode and swing/pre-emphasis calibration to support this.
>>
>> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 80 +++++++++++++++++++++++++++--
>>   1 file changed, 76 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>> index 32614fb838b5..301ac422d2fe 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>> @@ -70,8 +70,19 @@
>>   
>>   #define TXn_TRAN_DRVR_EMP_EN                    0x0078
>>   
>> +struct qcom_edp_cfg {
>> +	bool is_dp;
>> +
>> +	/* DP PHY swing and pre_emphasis tables */
>> +	const u8 (*swing_hbr_rbr)[4][4];
>> +	const u8 (*swing_hbr3_hbr2)[4][4];
>> +	const u8 (*pre_emphasis_hbr_rbr)[4][4];
>> +	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
>> +};
>   
>>   static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
>> @@ -315,7 +381,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp)
>>   static int qcom_edp_phy_power_on(struct phy *phy)
>>   {
>>   	const struct qcom_edp *edp = phy_get_drvdata(phy);
>> +	const struct qcom_edp_cfg *cfg = edp->cfg;
>>   	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
>> +	u8 ldo_config;
>>   	int timeout;
>>   	int ret;
>>   	u32 val;
>> @@ -332,8 +400,11 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>>   	if (timeout)
>>   		return timeout;
>>   
>> -	writel(0x01, edp->tx0 + TXn_LDO_CONFIG);
>> -	writel(0x01, edp->tx1 + TXn_LDO_CONFIG);
>> +
>> +	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
>> +
>> +	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>> +	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> 
> When reviewing a patch from Konrad which will start using the eDP
> configuration on the X13s, I noticed that this patch inverted these bits
> for older SoCs (e.g. sc7280 and sc8180xp). They used to be set to 1,
> but after this patch they will be set to 0.
> 
> Was that intentional even if it was never mentioned in the commit
> message? Or was it a mistake that should be fixed?
+Abhinav, Jessica

Konrad


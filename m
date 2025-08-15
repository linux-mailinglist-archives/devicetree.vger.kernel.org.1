Return-Path: <devicetree+bounces-205170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F12DDB2832E
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 17:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00B5C7A3576
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 15:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6FC23ABA7;
	Fri, 15 Aug 2025 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MsViWpvq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4EE21256E
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755272853; cv=none; b=T+kBWEkjP8UaCZUArr9bIp7hkMq80Bk3ZMYJKaoyws9vK8316ZMEi3TmRyAVnQbtzyioXIRVR6PjO3sEuV2EOpCw6QnRrrUq6VCeKoPaRX1+M6MQBff/g0pULFMjcWmCj3/fjygXltEysj6nKPygiihO0nUqdG4darc7nvmxVu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755272853; c=relaxed/simple;
	bh=uPl0cZOA+EjteN7T7Rj5RD+BWqJ3QGJOJuqloyWCIYY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Usah902MHky+mL+kD1jbhHrJfWwnH9xIHBcDhIrHDZNCAFT3nc2WIRjjJ0IxGExaJ5yzu2LqptT2p6o4MLnNHqHCjhrMPyoeHBQLRtnFLuYfPA5zrLopQ5F8s4ZdqSK13dYMSy5TigI7st32b+qXiZPlE6XeSb6RwQBhJSoo68A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MsViWpvq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJK8K021813
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EiioAGCDCZ6vg6boHtPlr1C7Pfo4kH+4T3nIPbJhUoE=; b=MsViWpvqGHraR8ug
	GsNyBkh3W585v5L7CiMYNMVWio6jPdLJQiuU7ZtfsE6WPCL0K6lVgF/jhNBvx9Rw
	ZHXyEtQffluOA1BmhahfPFWwYBgnoNWGnWU6imazA17jVctEXDHYV3P/KTmP3PN+
	SmvSDLOsUf5cGHht20jkFvkCD3zHTf1zLBai3Pb93mPpedJkVyBHP00KIXoGBWhD
	qB7zPP6SdxdRIVUyV/JKBehPeUKq60y4qnRQIIVBhr0edfu2iKG7okZXg0KR2Xz8
	2oq/YDg6zE6yfnMfZFjdhPxceU1/1jrDlFX8DdGfWoRlb5zppbVs5j+sHTZQYTNQ
	JbFwqg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gkc2e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:47:30 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4731a95babso354804a12.0
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 08:47:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755272850; x=1755877650;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EiioAGCDCZ6vg6boHtPlr1C7Pfo4kH+4T3nIPbJhUoE=;
        b=BumF1779i4ZSMf69HArv41mX67dbu9b1vIFN1JYktU3w0afISrls8XesrfL1XTshdb
         lXW2Z7lqGUcAj1KPONTP5v4OTQ3yPwF74kfWwlGugUAyH9OEVHgTYr9C8dM9pIAHYjb2
         gSYnEWjuSdT6xe0Di3rbDVlrtChfJOzd2IJkH6kcb6CiUO+1Ld2Ss3UoenoHOfTRgoVz
         t2q60sYRiswIpgj03n32BwNSc4HpqCUyloJ5ViBQQCKjBfuh2YLMgOTcBo2npAeAtgRa
         odTkTlnrlHFtcrilcxYaN8ifusLvkHw++kHClFFPfTnyWOv+fr2RKFWyz0jPYUqIRSqi
         kS2A==
X-Forwarded-Encrypted: i=1; AJvYcCUBcW/vqY/f1dXabLetY3EQgA45B93+xt5Db6ygmPTSrk4WqtBf5lw8UJu/rhJ2v8csvvpjTZbvZX5/@vger.kernel.org
X-Gm-Message-State: AOJu0YwU98SBMBGdQYa+pBSBrKNw0/uNu4Omd2gdaMDVFehEZfSTbhEL
	w6bwSVY4R5Fed3NmvgaHr8IbxLqcfOCnRuNGpYbNX3lwJQp/ekRjtTn12aTN1cWYLk/0laX3jGZ
	hmRp+hhmz3QT7nYnJd2U6GNuN4rAyKgbSy7ha/9QnP5r48jWAcgGK5kWKEnCc0vRg
X-Gm-Gg: ASbGncsjZQy+ntR0w6LcV1qF7Y3f4XkTxsXFsxddCXEuFqELyr8MMk9sHrSWGxnmzGB
	nvoKKcaKU1ELG6+gagahbkeHUPxhCtG5AL9zuuVBS5PpghC6bNnK4/df4OM2dnxlYqyGCcn9kBW
	wMaDqc03SfnrU6GeRPkYUjZZh6IWAkC+En74r5umw9B4xb8G7AVh3ZRLHs9gGgHHEBQug3UiNKq
	RinmbajEElR+4w91qhl9I+MKtM6wpCIWQEKS9o1zzKcKLbtfEyXrjFXSi8lMSxlQZQsQ210BkMd
	ToIgS1deCPqURygnNMdgL/LsYlOB0j6Mg5hFx2WOmdNHScqpk8rpQR2317YcsBxZhf/oTHE2Mw4
	RUhU=
X-Received: by 2002:a05:6a20:a10a:b0:23d:e026:5eec with SMTP id adf61e73a8af0-240d2d8fdf9mr4493913637.6.1755272849830;
        Fri, 15 Aug 2025 08:47:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfbod/CWLgd7xkweW30B24YNgaFlJbj9Vgp4n7cu6PVX9gaaIaPkSlYozadv7IFAd9WFvAPQ==
X-Received: by 2002:a05:6a20:a10a:b0:23d:e026:5eec with SMTP id adf61e73a8af0-240d2d8fdf9mr4493867637.6.1755272849332;
        Fri, 15 Aug 2025 08:47:29 -0700 (PDT)
Received: from [192.168.1.4] ([182.65.246.255])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b472d60978fsm1576486a12.26.2025.08.15.08.47.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 08:47:29 -0700 (PDT)
Message-ID: <def861bd-eec8-41b2-a21f-4bc33d44e7cb@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 21:17:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] ASoC: codecs: wsa883x: Handle shared reset GPIO
 for WSA883x speakers
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250806181818.2817356-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250806181818.2817356-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <5ee0656b-136b-480f-9555-26ccdbff3eda@kernel.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <5ee0656b-136b-480f-9555-26ccdbff3eda@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689f5692 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=pI+DPfzdYYuZfMA0k80AuQ==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=Mg5sY2mpGzWUx03gXF4A:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX1n1vHf1lRk1+
 EO2v/kBYLsdVI0UkRDGCQ4EGhFFRZ+GrxlZgt6zU/RpN1aGU57+HZWVMbA9ATUI2/ypEFpJE+F+
 qXWtqhosPuIorZYmDI/aTmTzJO5LMqSqPE12ojxtbe0wzY0l6J3YVEIysxzmMf8viHAvy6kgbeC
 I+HjsMd4Arox0Nh1Z0R4JslaTMD+xDiBqCE4YapbmUDz3gsbRPWt9BvPzDzIqnSsDRoiooE+Sdx
 HntNlIrAZGutP0tgofpMsJeqFTMOTyH2ZyA6KK0ruM1gxF3tJwE3Lu2ta/VKGeOkbbrqlRt7ZVG
 JfEhbKXTtA81Jmq8Hevh3ENe67axc7RLfDL8ATQhHzQDBE5/8yYWmm3g86jrBdHn4JBEhS41uk6
 f3mGgYzL
X-Proofpoint-GUID: _wwZo908ovb2Xh47bADIfDQcH5hV0jKI
X-Proofpoint-ORIG-GUID: _wwZo908ovb2Xh47bADIfDQcH5hV0jKI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031



On 8/15/2025 12:07 PM, Srinivas Kandagatla wrote:
> 
> On 8/6/25 7:18 PM, Mohammad Rafi Shaik wrote:
>> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>
>> On some Qualcomm platforms such as QCS6490-RB3Gen2, the multiple
>> WSA8830/WSA8835 speaker amplifiers share a common reset (shutdown) GPIO.
>>
>> To handle such scenario, use the reset controller framework and its
>> "reset-gpio" driver to handle such case. This allows proper handling
>> of all WSA883x speaker amplifiers on QCS6490-RB3Gen2 board.
>>
>> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>> ---
>>   sound/soc/codecs/wsa883x.c | 57 +++++++++++++++++++++++++++++++++-----
>>   1 file changed, 50 insertions(+), 7 deletions(-)
>>
>> diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
>> index 188363b03b93..ec7a55d88576 100644
>> --- a/sound/soc/codecs/wsa883x.c
>> +++ b/sound/soc/codecs/wsa883x.c
>> @@ -14,6 +14,7 @@
>>   #include <linux/printk.h>
>>   #include <linux/regmap.h>
>>   #include <linux/regulator/consumer.h>
>> +#include <linux/reset.h>
>>   #include <linux/slab.h>
>>   #include <linux/soundwire/sdw.h>
>>   #include <linux/soundwire/sdw_registers.h>
>> @@ -468,6 +469,7 @@ struct wsa883x_priv {
>>   	struct sdw_stream_runtime *sruntime;
>>   	struct sdw_port_config port_config[WSA883X_MAX_SWR_PORTS];
>>   	struct gpio_desc *sd_n;
>> +	struct reset_control *sd_reset;
>>   	bool port_prepared[WSA883X_MAX_SWR_PORTS];
>>   	bool port_enable[WSA883X_MAX_SWR_PORTS];
>>   	int active_ports;
>> @@ -1546,6 +1548,46 @@ static const struct hwmon_chip_info wsa883x_hwmon_chip_info = {
>>   	.info	= wsa883x_hwmon_info,
>>   };
>>   
>> +static void wsa883x_reset_assert(void *data)
>> +{
>> +	struct wsa883x_priv *wsa883x = data;
>> +
>> +	if (wsa883x->sd_reset)
>> +		reset_control_assert(wsa883x->sd_reset);
>> +	else
>> +		gpiod_direction_output(wsa883x->sd_n, 1);
>> +}
>> +
>> +static void wsa883x_reset_deassert(struct wsa883x_priv *wsa883x)
>> +{
>> +	if (wsa883x->sd_reset)
>> +		reset_control_deassert(wsa883x->sd_reset);
>> +	else
>> +		gpiod_direction_output(wsa883x->sd_n, 0);
>> +}
>> +
>> +static int wsa883x_get_reset(struct device *dev, struct wsa883x_priv *wsa883x)
>> +{
>> +	wsa883x->sd_reset = devm_reset_control_get_optional_shared_deasserted(dev, NULL);
> why deasserted ? we are already doing wsa883x_reset_deassert(wsa883x)
> just after calling this.
> 
ACK,

yes right, we need wsa883x_reset_deassert(wsa883x) to deassert manually 
because same api should handle powerdown-gpios if not reset-gpios.

will use the proper api devm_reset_control_get_optional_shared().


>> +	if (IS_ERR(wsa883x->sd_reset))
>> +		return dev_err_probe(dev, PTR_ERR(wsa883x->sd_reset),
>> +				     "Failed to get reset\n");
>> +	/*
>> +	 * if sd_reset: NULL, so use the backwards compatible way for powerdown-gpios,
>> +	 * which does not handle sharing GPIO properly.
>> +	 */
>> +	if (!wsa883x->sd_reset) {
>> +		wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
>> +							GPIOD_FLAGS_BIT_NONEXCLUSIVE |
>> +							GPIOD_OUT_HIGH);
>> +		if (IS_ERR(wsa883x->sd_n))
>> +			return dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
>> +					     "Shutdown Control GPIO not found\n");
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   static int wsa883x_probe(struct sdw_slave *pdev,
>>   			 const struct sdw_device_id *id)
>>   {
>> @@ -1566,11 +1608,9 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>>   	if (ret)
>>   		return dev_err_probe(dev, ret, "Failed to enable vdd regulator\n");
>>   
>> -	wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
>> -						GPIOD_FLAGS_BIT_NONEXCLUSIVE | GPIOD_OUT_HIGH);
>> -	if (IS_ERR(wsa883x->sd_n)) {
>> -		ret = dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
>> -				    "Shutdown Control GPIO not found\n");
>> +	ret = wsa883x_get_reset(dev, wsa883x);
>> +	if (ret) {
>> +		dev_dbg(dev, "Failed to get reset powerdown GPIO: %d\n", ret);
> this is redundant we already have failure messages from wsa883x_get_reset().
> 

ACK,

Will remove the extra error logs.

Thanks & Regards,
Rafi.
> 
> --srini
>>   		goto err;
>>   	}
>>   
>> @@ -1595,11 +1635,14 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>>   	pdev->prop.simple_clk_stop_capable = true;
>>   	pdev->prop.sink_dpn_prop = wsa_sink_dpn_prop;
>>   	pdev->prop.scp_int1_mask = SDW_SCP_INT1_BUS_CLASH | SDW_SCP_INT1_PARITY;
>> -	gpiod_direction_output(wsa883x->sd_n, 0);
>> +
>> +	wsa883x_reset_deassert(wsa883x);
>> +	ret = devm_add_action_or_reset(dev, wsa883x_reset_assert, wsa883x);
>> +	if (ret)
>> +		return ret;
>>   
>>   	wsa883x->regmap = devm_regmap_init_sdw(pdev, &wsa883x_regmap_config);
>>   	if (IS_ERR(wsa883x->regmap)) {
>> -		gpiod_direction_output(wsa883x->sd_n, 1);
>>   		ret = dev_err_probe(dev, PTR_ERR(wsa883x->regmap),
>>   				    "regmap_init failed\n");
>>   		goto err;
> 



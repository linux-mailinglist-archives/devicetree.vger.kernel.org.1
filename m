Return-Path: <devicetree+bounces-224499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A74BC4862
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:15:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 147353A4836
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C1524679F;
	Wed,  8 Oct 2025 11:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZSXCnHEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87FA2F6585
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759922122; cv=none; b=n+47WWqBPX0crWKPa2TqCZ8sgcPqwmmtEejGpTAXu0DrixpiHZuWuGkNOt768SMU9qDT4/H/2e7oc+HkAUqhnoAZAm6eNKxW/Qd/PVxsa+WZkI/EHi/ubPJmN0+RH7P1dbBEvxB93exPSzKW/1N1uLXSdz2rZCzXLy2mHiPEHNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759922122; c=relaxed/simple;
	bh=wWnVyzijTaXYM8xRXWXruZLI0i53tO5UZxS0bwONy4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RyvSQMwoD8uNbCiJTdevXcX9dSpgSxSuPa3O2EzeGH/y2MJ2JxEqArZC+9D73ZbVHWpCGznAepL+rSEDxvTjFjo0ybPfrZPIw2lgNjqx2QZVPvo2xJE8dKhStJ1sf6EE86ukS5GrtGEM0YRE50AirH6gk9XkWgGJBcKQfMkKKR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZSXCnHEA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890SVB026700
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:15:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EffddiefyYfOOHaQK61w1botCVru6MZ1eFfoN02Iyrs=; b=ZSXCnHEADqmTBe4U
	0ReFXRa/SSZ7GCIiNdfSQhS7xYhfkP3PNgDdIjRoPmexk2TVhP2CoEbCJlL0xOrO
	zCwqy4mtIV8L3OV49s/dAjY6uAo6xM+XN0ydiMSlZ9nncuZ0gSbooene1sHdy42s
	9IbT3CyTOo3HBW5tEXtGuXElst0gSkPZdtvd7pRE71pF/e49qx7R7TY4z4gRFq3f
	pV92ynk10rpCygUo0j+YWTQGxeH9LHD20DihSuSzPRsK7LaJ3prUKwWPwNbLhbJF
	42k0riTdF0apM2lfTx4/38r/CgeTA7V6Pk1ylXApBWqYM9ZDQlbM92JDf+cQOy0z
	1sXtpw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49n89hhya1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:15:19 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b62f9247dd1so3517896a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759922113; x=1760526913;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EffddiefyYfOOHaQK61w1botCVru6MZ1eFfoN02Iyrs=;
        b=e4uC2tfnw/ZaUWTYRRHfMI2d0g7MXTu0m5aN3Sr7b17UNf9xd9zHleKUG4tTr2+C/L
         sduwAneXchZzgudqqSgzPYhIIA0/yrdUAiL1kYENcFwcVAJ9+7wRMipESo/z8y77QsgH
         NdLj6ms/5le2lO4FkaVb61YSNmTBP3pIhR8lt2fRDgWnPzAnm+pGbSKuP78A0G91B5aF
         glhD1xDFzzsEKPJffd4IYw7bz8i48ImmPY76At8DGMmvjq3k/+F+KXp2DXe8gsEfcxtB
         bcAHbUPvUo7TP4mkwy+z03FNFfVPuR4dvZ8uFwO+BH3ocl9xjwOGDlgOhtGyorxd5Wlg
         3UcA==
X-Forwarded-Encrypted: i=1; AJvYcCWagZQYImnVBg4yJmCq1OwH5M4A2ZD0WTj7AWK/klNpqTe47HFApJJrOwGqAarzSj6dh9n0zwKF4kuk@vger.kernel.org
X-Gm-Message-State: AOJu0YyzYUUXkoL936AXr0v3EWt8nqJ7Lnul5ymE0UBfZlFA/w52a17Q
	Qyeefkv85SijCyEtvDrKwDGds206NegD4BC3vFOE5gGiN6VmkcmoNIRh58q5soLx6IQcfw5rqXH
	qNjYNKHJGFuKInOgGO/vG1ielVvvLbfIt0mGDPmW/8PAINjaELEo7CS8KCGxN5Vc+
X-Gm-Gg: ASbGnctbAbYwPcOXfn3v2sHSaooXJLFpgWiNkuBAGMlD26xUL14ur6bUA4Tem7llDaU
	fk6ysm5XHcDWU4IVAbv+1A1b21oxAxFulxPcYELv6d0SpqOzEODpWrZFA4tuU31xbIoDQYDeakX
	FYMH3gQkOokvz4Juf6ifKstttUEErKdVcov3lwpXcnOQVtJspU46Q58Al+WJig1Sv+s6HMGFuzd
	WoDjMVWU+yLx++ngicFub3YvUo4uVMBTDwuJ9Zz15D6iF3a+D1BGP+KBpSqAyJNuXRFZPZa5RKq
	Uwpo0aOP3FIPl42hButzYGWkSY3guvlPiLnkg1n8to+gvWIWSYL2/wiGDt3+GZ4c/IZ1Z6WExzS
	LCck=
X-Received: by 2002:a05:6a20:72a2:b0:32b:6e33:7cf8 with SMTP id adf61e73a8af0-32da83e0614mr4191373637.42.1759922112408;
        Wed, 08 Oct 2025 04:15:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHD86ge8saAFK6qXLniY8kj2xnoyg29DHHxFtqkJCu4J95pDu9HmYbmCPGlP2aG0dKTCHvZZA==
X-Received: by 2002:a05:6a20:72a2:b0:32b:6e33:7cf8 with SMTP id adf61e73a8af0-32da83e0614mr4191337637.42.1759922111902;
        Wed, 08 Oct 2025 04:15:11 -0700 (PDT)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f7ab4fsm17822615a12.44.2025.10.08.04.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:15:11 -0700 (PDT)
Message-ID: <1a428b7f-5d20-4d55-aa3a-e4feb580b82e@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 16:45:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] usb: typec: hd3ss3220: Enable VBUS based on ID pin
 state
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com>
 <20251002172539.586538-3-krishna.kurapati@oss.qualcomm.com>
 <aOZGgZc1F968uoR6@kuha.fi.intel.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <aOZGgZc1F968uoR6@kuha.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA3MDE0NiBTYWx0ZWRfX8twQLUAGSLxP
 NNtZSUMJhBz2R6hxif4aRw66Sz08ccBziRL7lM5nEsJWxpTvZpHE/OK9JexXVWTXxMoYEvJgUTY
 4x9Zxs9+pKpXk529ae1WbxsIp5A6YvEklbI75Un+QR6yq58SX544/ZZ96dWf4QraRdkA0el6dTW
 KOMBnZM4tnO8JEGEnqnW2VH43p61oFcJXKvp+VhMc8xWzbSfVjsZ+pZyp7bp3itiMK4k+JM8CyV
 1+qtDQr425stfLmDxWvLdl5Vuu7GobjJeMWBrse+NISYbPo+M4putAKdqnf4u0YHiFTArEkW+oG
 2HYyTriblBtTsTVTq0ulQ6HSghopYmMGJJqnS9yhB7NckFU5RC9kBMpOJPSWx264RZA84tgBrAI
 6tfJg9yh9qpI+7SItjmjyFQePEfQKg==
X-Proofpoint-ORIG-GUID: 7E9WBnTgqC2KpdwfdrY2DYsGkvJxHYp-
X-Proofpoint-GUID: 7E9WBnTgqC2KpdwfdrY2DYsGkvJxHYp-
X-Authority-Analysis: v=2.4 cv=cKbtc1eN c=1 sm=1 tr=0 ts=68e647c7 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=JreEDKClX95j7y97460A:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510070146



On 10/8/2025 4:39 PM, Heikki Krogerus wrote:
> On Thu, Oct 02, 2025 at 10:55:39PM +0530, Krishna Kurapati wrote:
>> Enable VBUS on HD3SS3220 when the ID pin is low, as required by the Type-C
>> specification.
> 
> There is not ID pin on Type-C connector.

There is an ID pin coming out from HD3SS3220 controller to SoC that is 
being referred to here.

> 
>> The ID pin stays high when VBUS is not at VSafe0V, and goes
>> low when VBUS is at VSafe0V.
>>
>> Add support to read the ID pin state and enable VBUS accordingly.
> 
> I'm a bit confused about this... Why can't you just check the attached
> state, and if it's DFP, then you drive VBUS?
> 

We could, but checking for DFP doesn't ensure VBUS is at VSafe0V as per 
the datasheet. So using the ID pin to enable vbus.

Regards,
Krishna,

> thanks,
> 
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   drivers/usb/typec/hd3ss3220.c | 58 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 58 insertions(+)
>>
>> diff --git a/drivers/usb/typec/hd3ss3220.c b/drivers/usb/typec/hd3ss3220.c
>> index 3ecc688dda82..44ee0be27644 100644
>> --- a/drivers/usb/typec/hd3ss3220.c
>> +++ b/drivers/usb/typec/hd3ss3220.c
>> @@ -54,6 +54,11 @@ struct hd3ss3220 {
>>   	struct delayed_work output_poll_work;
>>   	enum usb_role role_state;
>>   	bool poll;
>> +
>> +	struct gpio_desc *id_gpiod;
>> +	int id_irq;
>> +
>> +	struct regulator *vbus;
>>   };
>>   
>>   static int hd3ss3220_set_power_opmode(struct hd3ss3220 *hd3ss3220, int power_opmode)
>> @@ -319,6 +324,28 @@ static const struct regmap_config config = {
>>   	.max_register = 0x0A,
>>   };
>>   
>> +static irqreturn_t hd3ss3220_id_isr(int irq, void *dev_id)
>> +{
>> +	struct hd3ss3220 *hd3ss3220 = dev_id;
>> +	int ret;
>> +	int id;
>> +
>> +	if (IS_ERR_OR_NULL(hd3ss3220->vbus))
>> +		return IRQ_HANDLED;
>> +
>> +	id = hd3ss3220->id_gpiod ? gpiod_get_value_cansleep(hd3ss3220->id_gpiod) : 1;
>> +
>> +	if (!id) {
>> +		ret = regulator_enable(hd3ss3220->vbus);
>> +		if (ret)
>> +			dev_err(hd3ss3220->dev, "enable vbus regulator failed\n");
>> +	} else {
>> +		regulator_disable(hd3ss3220->vbus);
>> +	}
>> +
>> +	return IRQ_HANDLED;
>> +}
>> +
>>   static int hd3ss3220_probe(struct i2c_client *client)
>>   {
>>   	struct typec_capability typec_cap = { };
>> @@ -354,6 +381,37 @@ static int hd3ss3220_probe(struct i2c_client *client)
>>   		hd3ss3220->role_sw = usb_role_switch_get(hd3ss3220->dev);
>>   	}
>>   
>> +	hd3ss3220->id_gpiod = devm_gpiod_get_optional(hd3ss3220->dev, "id", GPIOD_IN);
>> +	if (IS_ERR(hd3ss3220->id_gpiod))
>> +		return PTR_ERR(hd3ss3220->id_gpiod);
>> +
>> +	if (hd3ss3220->id_gpiod) {
>> +		hd3ss3220->id_irq = gpiod_to_irq(hd3ss3220->id_gpiod);
>> +		if (hd3ss3220->id_irq < 0) {
>> +			dev_err(hd3ss3220->dev, "failed to get ID IRQ\n");
>> +			return hd3ss3220->id_irq;
>> +		}
>> +
>> +		ret = devm_request_threaded_irq(hd3ss3220->dev,
>> +						hd3ss3220->id_irq, NULL,
>> +						hd3ss3220_id_isr,
>> +						IRQF_TRIGGER_RISING |
>> +						IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
>> +						dev_name(hd3ss3220->dev), hd3ss3220);
>> +		if (ret < 0) {
>> +			dev_err(hd3ss3220->dev, "failed to get id irq\n");
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	hd3ss3220->vbus = devm_regulator_get_optional(hd3ss3220->dev, "vbus");
>> +	if (PTR_ERR(hd3ss3220->vbus) == -ENODEV)
>> +		hd3ss3220->vbus = NULL;
>> +
>> +	if (IS_ERR(hd3ss3220->vbus))
>> +		return dev_err_probe(hd3ss3220->dev,
>> +				     PTR_ERR(hd3ss3220->vbus), "failed to get vbus\n");
>> +
>>   	if (IS_ERR(hd3ss3220->role_sw)) {
>>   		ret = PTR_ERR(hd3ss3220->role_sw);
>>   		goto err_put_fwnode;
>> -- 
>> 2.34.1
> 



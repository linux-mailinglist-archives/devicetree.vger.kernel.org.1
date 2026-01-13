Return-Path: <devicetree+bounces-254470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEE5D186C0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B54083047914
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C55435CB77;
	Tue, 13 Jan 2026 11:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BjytnvjX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V4M8mZaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BDA346E5F
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302565; cv=none; b=R48qGeUqBQzAR/eKIhcnBSQvEb61VahzFoWr6oz/qAKdiRBIi91NPrL/gx5/Or9rxO9fNQZBqhTU0leT55Ftdf6/VZKNSySiU3vi06jm6uy0i2aes+JdOwOv8iKdN0Lcw9PEVD9Cdr5PkaOEOOSzeO8BdIRiauMFHFEtBD4iET8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302565; c=relaxed/simple;
	bh=cAIsCVijVJdf3eeTC5erwHAcVzUAfcnduBdXGNHCs1E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pNa2DB2JZDntuCJOyAxM4gdzH9bPjTN5ni/kPIkFfwZLPGWk/1AjdZkJStGzKzDe59gM+UAiqO3PJh0HM4XamicVsoOqPO3LveLz13DW0rfX5qAnRSN/DHSS37LkDemtfidrDvZtkLh2uBjiDDmgwK/77/E7bYRN/4d4xHjQHzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BjytnvjX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V4M8mZaP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D8YvFW3727090
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:09:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/QriPXAEoCg1J6fQrwPE4jiHUStR2X6nRraXMO9SHFs=; b=BjytnvjXlLcbUWMn
	/lDseXZut/XmwPC9HF00k0NihosslTEY7aKAAoKoOPbV9xL1I6G0pK4U7FSTwvXe
	uMCi8R6M0nUmkfW2Sa8B4J5HwolaIgzLMAhgA0jfIk5joWrAz82pY0ELVD2H3tnI
	PaDSYjurBnkkNtprD0+iL/YB3yuWeHYmnKe+lYad4hEH5Nb9xytwmjIjZRK5oNb/
	I+yVKm/XyqY3swXDJ1CspUUfHUer/ccvKIzoMN/bDEkQ9b5DmfQISj2Ol/CToxTi
	1zmup+2u9BHS7fPR9b46o3xk3ipgdwM5vyugBaO6pIo1BlkNBYsLqIWJJxcCgVPF
	aRbPYQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnjnu0j48-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:09:22 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee07f794fcso23933321cf.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768302562; x=1768907362; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/QriPXAEoCg1J6fQrwPE4jiHUStR2X6nRraXMO9SHFs=;
        b=V4M8mZaPomhEm/xa3FaBeka0e/dP+ESEJUkkm+E6Ww8MuWPTMA/Eb7sRnTraPtmGMd
         qvXA5ohslmhMaroh4e1fZxDT8s6i8W8fEynuMyYHwHskOoKMABdVSXLYxD9115Wz109M
         50mvlSQjXVXFQMbcPzFQIWfKMcQokMHMaUi21n0Kn89n/pUfo5XmValZKJFSzJnxT4u8
         8is8cCIUfMi20IjVm/+tplI1XxFvrphqYZy93wae+x70LZ/hvqLQl/Fy1M/VtriVQpal
         /PCvEZ7qr+dBZb3op4R/A8ETjKLMz2U7pez89T2mJo1RvXYuiTT0LiQrwDELfLKg0UR0
         aB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768302562; x=1768907362;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/QriPXAEoCg1J6fQrwPE4jiHUStR2X6nRraXMO9SHFs=;
        b=R9jAfskMmIKpdYljjd7eyiM1+cpkuwaiC1z3H9RgjXAC+ZVJdfDdyvgdacVlNeP8IP
         3c63Wk9xmN1cS44VTTHdXxSkLPFvpUIpTNWMItB7jVizpcIKYN03QExs8U9NfKCRHja1
         g4zP7Vld3wlctJ8igXuY5qI+A1GOQ8t20F3ZgmD2oAVwyrAlnOy9J3T/HZuf9sxsLzbB
         XhS2i6skem9sJwFFzBR6aCJVLG1cKG2DyZ9sMH+iOnJ3nD9bhlehM8OVR462QajC45iT
         3xGCADRwpfofck2VGhagn38SF+PlnWvYJOb68WJUNJKWWQXzYpW6PbGOrdM5SXvBsCtx
         /+Kg==
X-Forwarded-Encrypted: i=1; AJvYcCXgoA0MgXs/C5Eq1Jd66HLNvipizPqSBbux6j8X5JeO7KugDQK4ig1tCYpOAr7nX9YaG91Am0WVMBk7@vger.kernel.org
X-Gm-Message-State: AOJu0YyTU9MzaoXv7G64N5HpNHFSYWBgNfTAHasCEuWq+/9RAlTIi6uQ
	1AZPoVsv+fdwXThyuRYNLdYOXojMgAhgWKeop8RcBnpciavnO3t43re1EDMfz5U3cIPdQ+Cin6U
	tQ/Gvd9NJP7jboS7s1GqXfaX0dUP03NCmP8e72b1cbPwd+acS2kBT8Lq9Ng4K5swC
X-Gm-Gg: AY/fxX78G0wXffJ+qX5dIEJ8MwXhlMTe7WDR7hPqr3Q3jO6QbaV6I5Wr2QZA8fgUMM4
	kQVGPchqQ36tQ4d1rfsHrBlzm/SrdPmQWzfyX4Api7YS4BBQMaXLdB3/x/TBk756hRTbyeguH81
	HcxgDL4hCeG4BBzxfHoCRn+uNxEEVypcI3rsZf1+8UsgO08XvTRFkEWTEGnogi2TfEfXq7zYYWi
	ISiTirY9TEUrwFpt3a7SnwpqYh8WDoy5gEgXwmaO3HLQh4VqzNxh3hqA0ZspVGR+EAdlc4rtIy+
	K4VOnA0FrkFE33dkn072TxBqSVwzjtQCTZudt02VgNWpjErhe9vTDKGNFcyjQdx7p32EtjKCrmh
	61wkRQyebncuRn90IVoguvQahc/CiVZBcE4rCwmyGVKDrlXnLdoijNr8U2VqOujLBl24=
X-Received: by 2002:a05:622a:110c:b0:4f4:b372:db38 with SMTP id d75a77b69052e-4ffb49228d5mr242132721cf.5.1768302561591;
        Tue, 13 Jan 2026 03:09:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6337MjTU7AcHaegJA0wueUS4wjvItz665L7mSv3oMtkL95AZzYVlHESIEliD3kp9PgHh1Tw==
X-Received: by 2002:a05:622a:110c:b0:4f4:b372:db38 with SMTP id d75a77b69052e-4ffb49228d5mr242132371cf.5.1768302560937;
        Tue, 13 Jan 2026 03:09:20 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf667fcsm19664879a12.29.2026.01.13.03.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 03:09:20 -0800 (PST)
Message-ID: <f34abcca-6b09-4f6c-96f3-e2295a82284e@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:09:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/7] qcom-tgu: Add signal priority support
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-4-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109021141.3778421-4-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: drWVVuqYu3vUdxYFBPtmnmLqWmI55ZAj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5NCBTYWx0ZWRfXxSRkWMKDj0n6
 m3SYbhCNDQtlqlLHjNMxieMg4fvz6gTS9pL5d3r5+xY4NBwuxfuw/6yvhDB+T/JfgTtUlYEdEpT
 ambzbhYRq+wYilfg49lapLOb0K0wtthDy0Ql0oX5nLz18b7Lp+ZyP0xXbIUEEdocqiXVD09hAxn
 na9VwqHEGThRe0anhlufeHD2pafDe8+sldOMuAyvagEltOvgD9IGaREKGoEq9xRzR/DsM2e7L+C
 l4bbaYVwkSNcKARnIWtU0BU9vHLmPrc5WMGwxeXVKSYh/oXfcehDHBvWMPqvZcqonhOfmkSBcdv
 ioEA6OxXh9BXqA7IX+xERMnHLeNVr7V53NKfUKrF4mn6HlqQZFjLM5iSSqerR4b+60ppo36TTmn
 ZP8SgJeJHXxhGNNONUrcqL2x46uniQs77B4ZTbEPFh84gprTFNn+QFiWRJJGgr1n0fE+k4J/Sal
 B6cF+xaMdh14TgeQJ5g==
X-Authority-Analysis: v=2.4 cv=RMu+3oi+ c=1 sm=1 tr=0 ts=696627e3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=v85vifYcghIHyo4UzKcA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: drWVVuqYu3vUdxYFBPtmnmLqWmI55ZAj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130094

On 1/9/26 3:11 AM, Songwei Chai wrote:
> Like circuit of a Logic analyzer, in TGU, the requirement could be
> configured in each step and the trigger will be created once the
> requirements are met. Add priority functionality here to sort the
> signals into different priorities. The signal which is wanted could
> be configured in each step's priority node, the larger number means
> the higher priority and the signal with higher priority will be sensed
> more preferentially.
> 
> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---

[...]

> +static ssize_t tgu_dataset_store(struct device *dev,
> +				 struct device_attribute *attr,
> +				 const char *buf, size_t size)
> +{
> +	struct tgu_drvdata *tgu_drvdata = dev_get_drvdata(dev);
> +	struct tgu_attribute *tgu_attr =
> +		container_of(attr, struct tgu_attribute, attr);
> +	unsigned long val;
> +	int index;
> +
> +	ret = kstrtoul(buf, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	guard(spinlock)(&tgu_drvdata->lock);
> +	index = calculate_array_location(tgu_drvdata, tgu_attr->step_index,
> +					 tgu_attr->operation_index,
> +					 tgu_attr->reg_num);
> +
> +	tgu_drvdata->value_table->priority[index] = val;
> +	return size;

Style: some functions have a \n before return, some don't. The former
is preferred

> +static umode_t tgu_node_visible(struct kobject *kobject,
> +				struct attribute *attr,
> +				int n)
> +{
> +	struct device *dev = kobj_to_dev(kobject);
> +	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
> +	struct device_attribute *dev_attr =
> +		container_of(attr, struct device_attribute, attr);
> +	struct tgu_attribute *tgu_attr =
> +		container_of(dev_attr, struct tgu_attribute, attr);
> +	int ret = SYSFS_GROUP_INVISIBLE;
> +
> +	if (tgu_attr->step_index < drvdata->max_step) {
> +		ret = (tgu_attr->reg_num < drvdata->max_reg) ?
> +			attr->mode : 0;
> +	}
> +	return ret;

This is very convoluted

How about:

if (tgu_attr->step_index >= drvdata->max_step)
	return 0;

if (tgu_attr->reg_num >= drvdata->max_reg)
	return 0;

return attr->mode;

?

[...]

> +static void tgu_set_reg_number(struct tgu_drvdata *drvdata)
> +{
> +	int num_sense_input;
> +	int num_reg;
> +	u32 devid;
> +
> +	devid = readl(drvdata->base + TGU_DEVID);
> +
> +	num_sense_input = TGU_DEVID_SENSE_INPUT(devid);
> +	if (((num_sense_input * NUMBER_BITS_EACH_SIGNAL) % LENGTH_REGISTER) == 0)
> +		num_reg = (num_sense_input * NUMBER_BITS_EACH_SIGNAL) / LENGTH_REGISTER;
> +	else
> +		num_reg = ((num_sense_input * NUMBER_BITS_EACH_SIGNAL) / LENGTH_REGISTER) + 1;

num_reg = base case

if (num_sense_input * NUMBER_BITS_EACH_SIGNAL) % LENGTH_REGISTER)
	num_reg++;

?

[...]

> @@ -112,6 +250,8 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
>  {
>  	struct device *dev = &adev->dev;
>  	struct tgu_drvdata *drvdata;
> +	size_t priority_size;
> +	unsigned int *priority;

reverse-Christmas-tree would be nice


>  	int ret;
>  
>  	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> @@ -127,12 +267,32 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
>  
>  	spin_lock_init(&drvdata->lock);
>  
> +	tgu_set_reg_number(drvdata);
> +	tgu_set_steps(drvdata);
> +
>  	ret = sysfs_create_groups(&dev->kobj, tgu_attr_groups);
>  	if (ret) {
>  		dev_err(dev, "failed to create sysfs groups: %d\n", ret);
>  		return ret;
>  	}
>  
> +	drvdata->value_table =
> +		devm_kzalloc(dev, sizeof(*drvdata->value_table), GFP_KERNEL);
> +	if (!drvdata->value_table)
> +		return -ENOMEM;
> +
> +	priority_size = MAX_PRIORITY * drvdata->max_reg *
> +			drvdata->max_step *
> +			sizeof(*(drvdata->value_table->priority));
> +
> +	priority = devm_kzalloc(dev, priority_size, GFP_KERNEL);
> +
> +	if (!priority)

stray \n above

[...]

> +#define BMVAL(val, lsb, msb)	((val & GENMASK(msb, lsb)) >> lsb)
> +#define TGU_DEVID_SENSE_INPUT(devid_val) ((int) BMVAL(devid_val, 10, 17))
> +#define TGU_DEVID_STEPS(devid_val) ((int)BMVAL(devid_val, 3, 6))
> +#define NUMBER_BITS_EACH_SIGNAL 4

"TGU_BITS_PER_SIGNAL"

Konrad


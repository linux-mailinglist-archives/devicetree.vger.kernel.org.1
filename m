Return-Path: <devicetree+bounces-254473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D12D18667
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1E511301A0DF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B6136CDFA;
	Tue, 13 Jan 2026 11:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GedOwv1V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C1Eilhza"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51D838A70E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302793; cv=none; b=O+l+fFlawtCMSWK+W+5bfin/Lv7ciEd5o1qcqmOpbYesQf2B+zI/MxfltgNV8cqJ/eOtFznG83uwMqpKMSjyODQzBQI6rbHucWBBgTA2mKSBgHIbb/Rp7OPucOQp+UXLKtKmzcuHq3CMGssfqauIu6JcW4UtXt+GQ+3VwSLCPo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302793; c=relaxed/simple;
	bh=PDavS90hUEFfszRgEwSXLUkXH0ilscgPc0vJIf89Epk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vw7SXcsv5f5r66frTrWmgk+3gRZUHbWdf/n4X59JDeYIDIcEkToYFI+in7xcnn9HLdEjCtwbmuYJzpSGc7lRWe5DuyRTn4bQ2Zuq8CrYZD03V6p03Oz48v0UjCW+mqMACbzrU6ZWRvmSFMTgucDSVi/5pobCqeoaUjbJ67uioCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GedOwv1V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C1Eilhza; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7AHx4177577
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:13:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZAOeX4n+oBxdWTfJxCSFfny5St8rR/AsbKjH131FUnU=; b=GedOwv1VXbSrlQCC
	qrXTxu7tvKao4KVa8GsjGn6BbfZQOsjoPKzX/BeIkyg1q7yw5k1v1xVLGVg5Ohhy
	KdcR3/HsKmssWUz+Zdu/5DVI0ompdsUg5jXZjpNXEWH/9/70ooXl3DtSNSvVuQK7
	KZZyATmWYBV5QuoLCloCE+au1n1NYWao0Ep5+mH6zQukxwRLIuHe1lr7CklRxqs0
	+wewQFkgEzmsD2InSIefzToDA5e6f1X9BmbyJAFagFB2aGFAJHYv3JVhC8ggMt0W
	K6zdGi/+fdCBVgYlX+Oh3h6QF6eoLYGS102Xj8g01ZE3S9+rsnuXQ7el0Jp2jUWe
	vQBGIQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn52f2yyw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:13:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bbb6031cfdso244126585a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768302790; x=1768907590; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZAOeX4n+oBxdWTfJxCSFfny5St8rR/AsbKjH131FUnU=;
        b=C1EilhzaPPJsT7iHoXEM9y8UN9OQnCqiR9mnJvyACK6NA36IhXYfl13gk+19lHJiw/
         5/e0txMTlHduPcDMm8UM2YAtM6+IIPzAR7N3kb3OZsAsUosx/xTaIXg12f9fpRmSD1v4
         gu7A33a54ip3g2W9NHnRAWhlT+0rrHcQATouDlukwloNybGXmhsrlKwvpA8dBVb9xlZF
         CpG/vt/Iv+hXPE6bIWoEqRoc2CRBwd2ldmePSydU5NF+834BJHIPOTn34hMrJJ+KFgWR
         qWp1qHWx9Lb/Ln7DH4a3uJZD9yVdAjJsa9ptPAovtd/yGpjXTaeGFPSuPxQj+rdkuES6
         KRfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768302790; x=1768907590;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZAOeX4n+oBxdWTfJxCSFfny5St8rR/AsbKjH131FUnU=;
        b=l/psukj7/OcbQignNUTDr9Zdha35IyTGa4CAzkQMYT98YqwFsnrqPIfuACF6/kMr3m
         aP1C91S18NhZWzLtys8q9TIJ6WFraV3f85gGGvmAEVjhsTjbO+/d8BeR63aUfSAPH11D
         bVunAz3iA6J7HeuDWoS7p8UmNag1PxZOq8ztKNdItiL6sm1lBz+sUdNEsTbzAuWay7ZJ
         hscZHufWZAJ33fDsuXXl18Vqx8vuzHVVMN1cpn3iZ1fHBgKoBHZ0ve+yuPzKiF3GVelg
         +uWLD8oSHpKg0w35D/DlRFtKHMjAn9l+860tPUotnIUK6HyFk/MfzSZYl57JIN/BH0RC
         fV+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVc4amKXxvwYCMmq2Iz7zNQqEM266hq/5KsvdTsz6Inr3/k+FWOiohX8sjlvvKb5dM8SUDXlKJVJhG2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7JgoZB0mFDMApAZD0J1l0BIhPY+1gEi/rX5GaeA//if+2MNXu
	pxX43qndjkadV4MRitmHOh0oWeNlCitZxQ6iu5Xg6taf8fRSm8T1e+X/VXdyVF9kSAHLvktu2B4
	F4nxGSZuMgeqRG5nbYtn4aE5wtCwzYuyk1XBizZDFnUOf0jxSBRcbTCxtLvcq7CUp
X-Gm-Gg: AY/fxX52o20lE+fbqi/e/lxOw1p5qFCTr7Bs+YHV1Mqw8W8274AMdTPtFsK+Q6UGv2x
	C8QYGra5stcpkQdwhGwM6DiAHswDjOjeAESFq5lFksPx6jL5dR6W1peJIvkq3vGC4R81gcgLw0h
	D/AmxlrFp8/4MJ8eq2rTkF3vUK2CW1Y4n+oCqBP7yE8w3dtTPOIT+Rz9e9gxYd+1b9X7ThaS7xA
	mV31R7KZcT5NivFCDh0Z5IyY8KPikOxS5yeEv2iXkAhtjD0falZV0IEzctAZ76zdBlm4gNyQpLR
	hdG1q/Fxev0pG41afRIkMI/iB04+x6sLQ4IbFeTmTuAJDgfDe9lezYvuiYxOjYJUeXs7qLEs+O3
	zazHbphAb1PgwsOXzGMi5vV02umGKzBHgFlSaYnvzD0NLBkA0jV6mrfJCnaiUjhUfjts=
X-Received: by 2002:a05:620a:f15:b0:8b2:efb6:5ce8 with SMTP id af79cd13be357-8c389410414mr1907219285a.11.1768302789864;
        Tue, 13 Jan 2026 03:13:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEAKAFpGE/APckeyZBkps0xBADh43KNlPgtm5cix9GOlwpx5+j2l/7Qpo8z3SnIe+GwTLKuAw==
X-Received: by 2002:a05:620a:f15:b0:8b2:efb6:5ce8 with SMTP id af79cd13be357-8c389410414mr1907216085a.11.1768302789049;
        Tue, 13 Jan 2026 03:13:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb3a02e3sm45306481fa.10.2026.01.13.03.13.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 03:13:08 -0800 (PST)
Message-ID: <beb63598-a7fc-4e77-a68e-8622fbd93972@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:13:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/7] qcom-tgu: Add TGU decode support
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-5-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109021141.3778421-5-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5NSBTYWx0ZWRfXyQ4bBS0dDO//
 q8Ji5I6vFlLIg8esatwKoIzA1nMGXjYZ53iUncYOjjlSVLsPs4hPqugabrYCgptC+V1piTjnrZS
 44lSyAPcheKJQxJRSXBAupmZOhCcMI+7JqFMNI5nIRiFH2lz2ZxXoG17iTuJa/vrAhRX1qViC4I
 bSqYfKiVvCqCgDEc4r+eZw1filke9Yth33ZRRPL7/QnhONnGT9oJwOm9Vun4oz8FXcqARYJMUwt
 B+zqMI61OIVmamM/Zx12l2SduEy+mqR9zAKa81VMgHb3TZ1rsGFSHyeij4cNFBmumvKtwLjQy8T
 e0MBu3osNoSTwpHGsSn/XT76Z+FXY4+TO5inVKtTPlLOk5MIaQ+kbjpuBIwjHxbhX1hbcSmm+yS
 sV3SuaDxbdQQssOY3VJ5KHXIV+HPMD7V4wjvkScGDC1JaaHRzD+nLFc60kqMCm3l3plg/AnFbyp
 PbQ94cNmKVnPLVfx2aQ==
X-Authority-Analysis: v=2.4 cv=TcCbdBQh c=1 sm=1 tr=0 ts=696628c6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CBdMip5UwVPz19tR0hoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: e4vwf8ZG4aZ4SrfC8967-2VMg2X-Pzkf
X-Proofpoint-ORIG-GUID: e4vwf8ZG4aZ4SrfC8967-2VMg2X-Pzkf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130095

On 1/9/26 3:11 AM, Songwei Chai wrote:
> Decoding is when all the potential pieces for creating a trigger
> are brought together for a given step. Example - there may be a
> counter keeping track of some occurrences and a priority-group that
> is being used to detect a pattern on the sense inputs. These 2
> inputs to condition_decode must be programmed, for a given step,
> to establish the condition for the trigger, or movement to another
> steps.
> 
> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---

[...]

> @@ -18,8 +18,36 @@ static int calculate_array_location(struct tgu_drvdata *drvdata,
>  				   int step_index, int operation_index,
>  				   int reg_index)
>  {
> -	return operation_index * (drvdata->max_step) * (drvdata->max_reg) +
> -		step_index * (drvdata->max_reg) + reg_index;

I think this type of calculations could use a wrapper

> +	int ret = -EINVAL;
> +
> +	switch (operation_index) {
> +	case TGU_PRIORITY0:
> +	case TGU_PRIORITY1:
> +	case TGU_PRIORITY2:
> +	case TGU_PRIORITY3:
> +		ret = operation_index * (drvdata->max_step) *
> +			(drvdata->max_reg) +
> +			step_index * (drvdata->max_reg) + reg_index;
> +		break;
> +	case TGU_CONDITION_DECODE:
> +		ret = step_index * (drvdata->max_condition_decode) +
> +			reg_index;
> +		break;
> +	default:
> +		break;
> +	}
> +	return ret;

The only thing your switch statement is assign a value to ret and break
out. Change that to a direct return, and drop 'ret' altogether


> +}
> +
> +static int check_array_location(struct tgu_drvdata *drvdata, int step,
> +				int ops, int reg)
> +{
> +	int result = calculate_array_location(drvdata, step, ops, reg);
> +
> +	if (result == -EINVAL)
> +		dev_err(drvdata->dev, "%s - Fail\n", __func__);

Avoid __func__.

The error message is very non-descriptive

[...]

>  static int tgu_enable(struct device *dev)
>  {
>  	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
> +	int ret = 0;
>  
>  	guard(spinlock)(&drvdata->lock);
>  	if (drvdata->enable)
>  		return -EBUSY;
>  
> -	tgu_write_all_hw_regs(drvdata);
> +	ret = tgu_write_all_hw_regs(drvdata);
> +
> +	if (ret == -EINVAL)

stray \n
> +		goto exit;
> +
>  	drvdata->enable = true;
>  
> -	return 0;
> +exit:
> +	return ret;

ret = tgu_write_all_hw_regs(drvdata);
if (!ret)
	drvdata->enable = true;

return ret

Konrad


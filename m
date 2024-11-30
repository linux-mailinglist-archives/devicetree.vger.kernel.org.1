Return-Path: <devicetree+bounces-125743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A379DF16C
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 16:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10A99281559
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E511E19EED2;
	Sat, 30 Nov 2024 15:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YFIxG0vq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386914087C
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732979576; cv=none; b=MMKKQflmb+4KINY4YMbC4HI/vwUqu/g+Vd25VmuvgCgSjT0zqSJuXdwebiFyHnSziSlhl2w5idmJYhiZ+nqD7iS9l8Y6jXI8HTX/JSKUgoyekcTsRrn1Shr09IJkZ8U4hsol0HjZ+QFnHBRX1rypd+WeN5fN6OV/dRhJVP9OaCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732979576; c=relaxed/simple;
	bh=swP3eR9q5AxgACiSp3JiCAYHD6r93GGEio/MMIcxNoY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LKA3yOq+11kMu+yuZzIKlVgbrWTKYGvfW2eBxoBkikRld5ugiOReBcbjfa6FEY1zsrY6SA4b/ncMhkVa3TGrte3Grt3epZEaSuBCeXxxvCD3sD/muWwiKk+uIHyFlKFIcQWGEBv6ITQfVQV/iedrefypam6rzfarikFDP0iycmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YFIxG0vq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUB0LB8011630
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:12:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	piF9tu5HqYnrC9XnrkL0QyKgSzjororBfB+7R09Q5Vk=; b=YFIxG0vq8OaJMKRI
	XkRqU5lmxT7zZic+Lmwb3sXAunBdad6vzyETPvrIPKEdnEOrVGIeg4dUtutAdhyD
	/xl0lvdX9+5zjfMzPeX14BbKz1biLeQGCkk7Rrx12kc06X4+E5XQyA3iJo6lM9cd
	RZ2VgS3jwlENUoIWYw1gGxt5hZhRC5runNbMrtgzm7nrL8QaYn+njTFJSuo4UgOc
	sHcyapfHutrJ7GcPhMimXhAqIACa6vwbY2SNYXUdS16cwJRLFcx4jqg/fu6CjPbX
	tdph5TantWaX4rAOBcr3SM1xeyp2KEkAjZpKv1vC6vWPSYAuS75fSDY63rQ2c+wH
	fNEmSw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437sq6105j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:12:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d407624cedso6398036d6.1
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 07:12:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732979573; x=1733584373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=piF9tu5HqYnrC9XnrkL0QyKgSzjororBfB+7R09Q5Vk=;
        b=m2VTaRYA6LST8YqHnosSjJW3LIopQeKL+PfNgh3vOWbQd7BOE2E6nmpqFaUNDhhauk
         xhFQjdCTD9p1uEIyLuJQ9An39rHEXHQsya9KzQqOc1cUbq5Dl9087sDG9Zqz1S79NJll
         w5O1dUTntgd8KGeV6A0y6rfmgqkM0wVQw4QGpgD/uaU8JOIXsRpIb4G7cR7JmkH2nzvC
         CrrQ9ZQMJEy5J/FRhtAhqkSX9XqCD+qiVLDLQgej2X/t8oSDnNgbMRzTO6F4G0ruTt7i
         nLGWHNDyEHuVm1T/JJJFiF7jm863kt4PhtwqaE5u/2456PDzxTGJthwNyJcZpoNF+76Q
         7gzg==
X-Forwarded-Encrypted: i=1; AJvYcCUop2eUIjbD5KyfGiXlrnvEY29r5cGW4kZZ+haLSF8xjaw0ASceJkNeqiJs9aooog29aeMV1hfcXxvC@vger.kernel.org
X-Gm-Message-State: AOJu0YxrPhW+ZXz0YIa4Btivb752v29nZgrE2T6jqxgJ38+56w8YTyWZ
	21gJ/gJIWD6mt4AxFi8U/Fgz7pv5xlmuTeUeCNHPwLfnKztVwVoSiEvkNWH95VWADwbI38LXK7v
	0PoheaVHLG0EWpHEEGpVQtN2bYiy6VfQ+lh7d9zYtaqhI4hYRwXbEvbsjDD9O
X-Gm-Gg: ASbGnctFgWa22BLkY8cG7niDRf6SvAoKItiJaEGBfyBWrGdPs970erqg1/efdV7IF9m
	UkOdOpdoriVqPDOf+fsseCZFM2Qwsvn1h4wOC5vc1TVnTyS6BRIAopujwOb8wesN66ZAeKEp7wq
	jpzbBs6hCOTSPv2CXa7uMaU5d3wV3TPzDH94bO1VlCuw4JOt63VCKvYOBdsMyk+JVFZwA5A0zLx
	/dJ/7cb9KEQvoo2CfRM9wC5QTqgakyaIz/AfCOo6TxTZToi7zQ05UFXS6tM8L8EH8yaR1VXfzCR
	bUP0MJ2JfoHdFo0emRRNFP1aVksaj8A=
X-Received: by 2002:ac8:570a:0:b0:462:fb51:7801 with SMTP id d75a77b69052e-466b35d689amr89838061cf.8.1732979573243;
        Sat, 30 Nov 2024 07:12:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHQyT6/DO0GMjgKj4/WCNKD0HwRh5XZtvFSFNn7j2Rzd6x6vgIxFx8jVCHofXYxn6dWgObkg==
X-Received: by 2002:ac8:570a:0:b0:462:fb51:7801 with SMTP id d75a77b69052e-466b35d689amr89837771cf.8.1732979572760;
        Sat, 30 Nov 2024 07:12:52 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e649csm286979266b.110.2024.11.30.07.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 07:12:52 -0800 (PST)
Message-ID: <0881289f-db05-4e33-91a7-ffd415c2f37e@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 16:12:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 1/4] interconnect: qcom: Add multidev EPSS L3 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Sibi Sankar
 <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241125174511.45-1-quic_rlaggysh@quicinc.com>
 <20241125174511.45-2-quic_rlaggysh@quicinc.com>
 <2b95cc25-a842-4edd-a5f3-2351038d264e@oss.qualcomm.com>
 <5egskepgsr52ulnbw7jhvazfjayg5ge5vhg6pi7mllyxx2vwqw@a2ojvabzd36o>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5egskepgsr52ulnbw7jhvazfjayg5ge5vhg6pi7mllyxx2vwqw@a2ojvabzd36o>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: eXgqRHIN9hkSSWWTM7VfCfp0iCfVoLnJ
X-Proofpoint-ORIG-GUID: eXgqRHIN9hkSSWWTM7VfCfp0iCfVoLnJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300126

On 30.11.2024 4:09 PM, Dmitry Baryshkov wrote:
> On Sat, Nov 30, 2024 at 01:49:56PM +0100, Konrad Dybcio wrote:
>> On 25.11.2024 6:45 PM, Raviteja Laggyshetty wrote:
>>> EPSS on SA8775P has two instances which requires creation of two device
>>> nodes with different compatible and device data because of unique
>>> icc node id and name limitation in interconnect framework.
>>> Add multidevice support to osm-l3 code to get unique node id from IDA
>>> and node name is made unique by appending node address.
>>>
>>> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +	ret = of_property_read_reg(pdev->dev.of_node, 0, &addr, NULL);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>>  	qp->base = devm_platform_ioremap_resource(pdev, 0);
>>>  	if (IS_ERR(qp->base))
>>>  		return PTR_ERR(qp->base);
>>> @@ -242,8 +262,13 @@ static int qcom_osm_l3_probe(struct platform_device *pdev)
>>>  
>>>  	icc_provider_init(provider);
>>>  
>>> +	/* Allocate unique id for qnodes */
>>> +	for (i = 0; i < num_nodes; i++)
>>> +		qnodes[i]->id = ida_alloc_min(&osm_l3_id, OSM_L3_NODE_ID_START, GFP_KERNEL);
>>
>> As I've said in my previous emails, this is a framework-level problem.
>>
>> Up until now we've simply silently ignored the possibility of an
>> interconnect provider having more than one instance, as conveniently
>> most previous SoCs had a bunch of distinct bus masters.
>>
>> Currently, debugfs-client.c relies on the node names being unique.
>> Keeping them as such is also useful for having a sane sysfs/debugfs
>> interface. But it's not always feasible, and a hierarchical approach
>> (like in pmdomain) may be a better fit.
>>
>> Then, node->id is used for creating links, and we unfortunately cannot
>> assume that both src and dst are within the same provider.
>> I'm not a fan of these IDs being hardcoded, but there are some drivers
>> that rely on that, which itself is also a bit unfortunate..
>>
>>
>> If Mike (who introduced debugfs-client and is probably the main user)
>> doesn't object to a small ABI break (which is "fine" with a debugfs
>> driver that requires editing the source code to be compiled), we could
>> add a property within icc_provider like `bool dynamic_ids` and have an
>> ICC-global IDA that would take care of any conflicts.
> 
> Frankly speaking, I think this just delays the inevitable. We have been
> there with GPIOs and with some other suppliers. In my opinion the ICC
> subsystem needs to be refactored in order to support linking based on
> the supplier (fwnode?) + offset_id, but that's a huuuge rework.

I thought about this too, but ended up not including it in the email..

I think this will be more difficult with ICC, as tons of circular
dependencies are inevitable by design and we'd essentially have to
either provide placeholder nodes (like it's the case today) or probe
only parts of a device, recursively, to make sure all links can be
created

Konrad

>> Provider drivers whose consumers don't already rely on programmatical
>> use of hardcoded IDs *and* don't have cross-provider links could then
>> enable that flag and have the node IDs and names set like you did in
>> this patch. This also sounds very useful for icc-clk.
> 


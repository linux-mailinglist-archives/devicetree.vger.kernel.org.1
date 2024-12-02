Return-Path: <devicetree+bounces-126149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A2E9E0777
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:47:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 575A4B3C515
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E871FCFE8;
	Mon,  2 Dec 2024 15:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NlhtDSNf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569B02040AA
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733151683; cv=none; b=G5nN/gwB4xLJymm4dslVl3gAPTCXFOHMl2JSnhisHiks1E7rMQiculnvKgw4E3SIiVt0Unyq1x5LXZLU51JdywRkDWd2Slxn4Ce4FtfSADTHndvLnWjxzvhRrlYItmd+i9jyvC+oyK3JrRvfkVfWoqThct8tcRnBZY8TU072Afk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733151683; c=relaxed/simple;
	bh=vQuIqt8TEHUMFSxiPHnp4Oo0DBwiR6TbqmJR/qf/4l8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FahKg+BdI179NgCHriZH3I0oLrYjgYczY/dttbEeADlH2cWkw3lQ2gQ2jb57xrjOYlaVzxrZhPYHJ3QLqnojSRMnPw3Zm5hTsAvS7yFavjffSr5hqUCDl6IxvSlneFG6nbrf9q90EqUCeR4jVc3wHxTT9jNaVac5OIpx8mRdUq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NlhtDSNf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28NxJt017303
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 15:01:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fefCsaUnxy0ymBjJ3NBjXbFXvOUCluTOiJLWLK25V1I=; b=NlhtDSNf7+of/1oV
	pcMhbzpjs+YmmHw9obqXJ4LbaQwCLl01JSe8TbNXn+vC+S4X6EgLl4y3XtR10PP9
	b+xzsekj2HWIu4pJ1Vt22/vOoDCe4aNHJywqQpsvUPTx+KzRECLYJFCDHu5IKVfR
	oTYk/mfA6f9NdVM0aAFjypp6SJBiDVqTMXN/zXzfjVe/rtHVQ/1MhNywLQlv3j67
	IOvyjmVzkPpcCcDsWJVl0SQBX8qCa11R8xwdQry6NO32ldYE2R7cx7Y1MW8cFzbT
	7Yy8vSmsBmv2ST4h6uHRVzCSOaCfueMU47RkxVoa8l3H5595jfj3mAkrZjADRBdZ
	8gLlqw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437r2mwd06-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 15:01:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4668cee0202so6975721cf.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:01:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733151677; x=1733756477;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fefCsaUnxy0ymBjJ3NBjXbFXvOUCluTOiJLWLK25V1I=;
        b=qkM5MfFr2ptx9b9rADVEmmclubcAkTo0w7RL5kjqMzBcpZmk+mHmMmsu8/kuyPszsc
         +fkLBk+YD+YZnGFKlKCzGf0U4nK6HBSHduSWFYxXruchiauU6wyMCby315GTTeef93+L
         m6/KjqOQAwsfopUi1/J8vDQoaYn0Ik0dObybPNh1iN0EnZJkth/EYELuwNrS8+rIXRGR
         hY6fD6PePMdvs5iO9zpzWjznP+/v2g7cvz+mq+Z00mHB31w9eXBT9ykxufKa5gxDmgJZ
         mAwV30k0hxRtnvOk9gLHPwIEuhi/4HBtqzs6MHXABr1T1NyhuKNcPCyCSQDX1ZzTO6Nd
         Bz9w==
X-Forwarded-Encrypted: i=1; AJvYcCUU/MyyOBx79iXE6Aawg69zgKsy5k5GpFt7o1TK/edk/JmJd2St3jYeoolovxy7oyVvWkkaJ/j0kIuS@vger.kernel.org
X-Gm-Message-State: AOJu0YzL2U3CSEJCobzNU2PVODWjXlmBcYw+wUOrrDaJqzxL2Py3mef4
	kLCbK6jSCY0+/aGtbgggNPgaWk3ikjjD1NYc5gfC5saNMUWxEMnFRX8ZH2YGXL2A4LlJ1BOP/bx
	szJlu5VBkGKO7RpSeYVUO3nhL6uJD3wkGF1feLs85TQir6VyuAsXtbXo8oxVB
X-Gm-Gg: ASbGncs7ynBeAebkbconW/QGxqZGjmb1gB4AR1QkJRa0ba7AZDh53Nr/ISXxqykx841
	F9oBYTqS8Kmr7go2hkbFyCs2JYUEjm4YWr2mtzEI5MnWides87KX4cqUVFBddei9zjHZPhemgWP
	x4te8LBUIhZtyya3v3nf0Oy4xn2sZsURJpUp+pF9m0ZuUoKAwZ/IGJC+jUo4JcHVaDW2od558Co
	o67Mpizxfkwr6RwwtXhqa8QeWCEm6HDyvDwhcgOkqBEAGpmM5WSj1FxHoEVxGuHRSWjbF9/cEkx
	LL2GYqWp/dHCTYfiT/V/sllPUSGKfUE=
X-Received: by 2002:a05:622a:1ba5:b0:460:7929:3575 with SMTP id d75a77b69052e-466b36ca2c2mr135043051cf.16.1733151676595;
        Mon, 02 Dec 2024 07:01:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJK8BUUFOPA4LcqfRJVXEwYCc2L0I9YcWBq3YEu2cdmKP52/zZ6BQxKac7mnX+yv+unXkWag==
X-Received: by 2002:a05:622a:1ba5:b0:460:7929:3575 with SMTP id d75a77b69052e-466b36ca2c2mr135042641cf.16.1733151676029;
        Mon, 02 Dec 2024 07:01:16 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6a4csm522862866b.106.2024.12.02.07.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 07:01:15 -0800 (PST)
Message-ID: <2a727ea8-1a8d-4eea-ac03-2d5434cbe5ff@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 16:01:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/12] arm64: dts: qcom: sdm845-starqltechn: add
 display PMIC
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241008-starqltechn_integration_upstream-v6-0-5445365d3052@gmail.com>
 <20241008-starqltechn_integration_upstream-v6-8-5445365d3052@gmail.com>
 <ee668cbf-54e0-4c0a-b690-8606cb3785b7@oss.qualcomm.com>
 <CABTCjFAUp9Oa_qRweO-EpLHDTi78=07i_St+L9EDSgYxHMrc4w@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CABTCjFAUp9Oa_qRweO-EpLHDTi78=07i_St+L9EDSgYxHMrc4w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: RHT4B3IAxw-Fad8JWJJgHhxPlMYx6BPE
X-Proofpoint-GUID: RHT4B3IAxw-Fad8JWJJgHhxPlMYx6BPE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=898 clxscore=1015 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020129

On 2.12.2024 2:18 PM, Dzmitry Sankouski wrote:
> пн, 4 нояб. 2024 г. в 17:15, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>:
>>
>> On 8.10.2024 6:51 PM, Dzmitry Sankouski wrote:
>>> Add support for s2dos05 display / touchscreen PMIC
>>>
>>> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
>>> ---
>>> Changes in v6:
>>> - refactor: s/starqltechn/sdm845-starqltechn in subject
>>> - refactor: 'i' < 'm', so put tlmm i2c node before motor*
>>
>> Now you have 'i'2c21 before 'g'pio-regulator :/
> 
> That refactor was about tlmm inner nodes. For soc nodes
> rule `nodes of the same type can be grouped together` should apply I guess.
> I think I should move it to regulators.
> 
>> [...]
>>
>>>
>>> +     i2c21 {
>>> +             compatible = "i2c-gpio";
>>
>> I'm not sure this has been asked before - is the GENI SE for I2C21
>> disabled? Or are there reasons to use i2c-gpio instead?
>>
> 
> I2c21 is wired on pins 127, 128, and those pins don't have a GENI SE function.

Right, I was able to confirm that's the case in general, not only
in the Linux pinctrl driver

Konrad


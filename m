Return-Path: <devicetree+bounces-247444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A96CC80D1
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6643308AB9F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D02235E53A;
	Wed, 17 Dec 2025 13:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fFVSTUtx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JupX8u29"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4327035E524
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976995; cv=none; b=W7KR/dy6MWSH9eB79c+lVAm9a/xdNLwGoq5gDd6aisJ4oglkfs8PQfNC10eCiRVFihoWHmyKIqDdtQDFfy9NyPm+9kZDvsK7G0NeTk3gdq49hcYVl4J4alHPo4VPZTGY9lLe6LkLWEPQ1e8gARxCPgKJ6VLgsUhP9wXA5BrnPVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976995; c=relaxed/simple;
	bh=k//VXwjKpLf4ePq4urW6+vTHmlvuTAt7wiEtxM65XeE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DSO2psCv3MQDy82fwEszxVZ7lQIYJDk62n/1lZvuPn4JEP+BzV3wQw0L1AjlEwVHtLWRXG4GOvM34js0fNXRmxoYW5tqNA/p6KtjBW+a27afO8JWR7dDE5Sl3QiTn2Tktlu16F3Faq+D9nGVYuJaS11bdOfKC7F3+EEyYHLqH6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fFVSTUtx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JupX8u29; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKs5Y2390636
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:09:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nY+m1HxvRLCAvE+BIW+be1ykVerj/S4gZuW5Um71+iQ=; b=fFVSTUtxIORa/1x0
	Vl9aw/R0wZzUrGqX+H2hhUs6/ZN1Siz/FFGT0GQxnCG+EqWOibdq24WdhzvVyr2w
	nTfafcOuEbTxVa9yWSGI7A8akL68gGx0YS1XQurCYjKiuVx0zmPgOH54X4x8NQAL
	srQWPG/cOioCyGoQADDA8gTg/FOAjp6Cemkmhoeh+JsIBK9vMU08Rkeopw8QLYZp
	H+OtgQBGevHfuoEbM+l0HZtJrOO/F4buS8Bo6AXM3kY7eg8DPA1wGp2ioNO690ss
	9k2YxEksHwMGrYEcg3wumqtO3sPvQ1uJ2mmnadgGWznVqDX5oJDZRr+olHJwdGDM
	JYMxqQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g3am0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:09:51 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee409f1880so11534691cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765976991; x=1766581791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nY+m1HxvRLCAvE+BIW+be1ykVerj/S4gZuW5Um71+iQ=;
        b=JupX8u29sHCh5B3C7DXdt93lRWtZ8AnRSefhLnwmP+N/Koc1RHYufKkto3kvTIF7zG
         TsbXImyA6Bw/qiFTwngu0KOC1j/mfZsmY6TocylLpRpxsPoxuOhSkb/hUyMA+q2nPo5O
         EAeVBGP5kr0joHm3Qug2Whe0+vuj0iw8mzwgREDiYQY0bV9vBCh0pDRJ3BzExSN9Yq5P
         jmZS+QBLX2WVXKs1NI7hg7Rnwaz9PKWUugckKH9Q/k8/IGD6066FPIHEVV7M1wi9pXRV
         e9S//0CORWJbzDSeBkp2+giYmSrUV8RRewEf32ltInM13WUFqkWa7R99ew6c8vBZQorO
         hbqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765976991; x=1766581791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nY+m1HxvRLCAvE+BIW+be1ykVerj/S4gZuW5Um71+iQ=;
        b=RXVILVavy6d8WYny8WHP0QgF+QBEhRAtaWKD0zsKoDgJrloelkv8ZI1QpLEkUvS0EW
         TDAzD+d+HZfd6ur54AnqIjkEnzcwKFiH7JZ7hFR/pC2o2tRiJyKSge/cPwXSfZGB5Cdu
         IXvKhVa9iBrB+RfGa8Fzz1rKb4u/gatEEVSXO/MAtVl+mtQ7tjEXK85j8bkOTZ/4JmSG
         VEV1hIzQ04a8Em4tImX0lau+F/jBMCZhMY8JXL9oWmK6ptkmDsAJTSrPkNi2soKyzLBS
         /0com/pNW31+KT7+OvsNNlZo4/WcDnq/2KeZE1B5UHMpukfrmTaRP678RFw4Lyl/EIG6
         wezQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKVrU7F+O4CCk6nxN81xGavXZp76R6IYvnA39GRz44I9dIlp4zij5PVtn1iaaPmnv9+VkCOUhRzGLK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0QQVANA3kJjwB3WdK/Fth/MKc5bucgLC7GmWE+Xf8jmlGyKPG
	w9SuHdfHYAJYfvteE8pWZ0cbYiEUG3NG/eKsBzk8nq121zdQe0ynYY6dWBgipDSZ5HyOWnhbumW
	CM6JpB7t3NXnysLaTcP5xMu+8tJsbJnR23agdmrds876nlxD5cX/JiKLkYy0Pa/Zp
X-Gm-Gg: AY/fxX5q7bhF9YnZ6L45NYI4ne9rRN/1mbYeLpLwBYgd//IXkZlj12u2OXPjU20avi+
	/JiTg40iMfLyeFT6clr3mueXA3ryz5eVtQZF1mlxknrj5x6MG6KcyUeECU6oOx0/8vs5BNC4k7J
	+Be8+tF1u1V88kOCoGycnZqK1s9h9yGkF2eg/+nkUrb163uPsJ64qn1LLTuFwa14n7g3vPdy1UL
	U6Zny4CXu0awYB5aCEQTumsXiAtwrM8+kprOFCLCDvSt3dJ/S3NHbgnrq+WbUR64adSEvdgvzdN
	2eJ1fCjBl8zH3ykbGMLIzMlCofIWbcejPA2OFmrTdO8hkxII/tOJ0P5sTBkNvOK45mbGnI3A+U6
	uW78NCIQwlscH1DSvuN4yJ34/45ZouFgp6HFFjjgA10QyDWR8JIEk4Kd4em91fuJENw==
X-Received: by 2002:ac8:588c:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4f1d04ec585mr193474351cf.4.1765976990878;
        Wed, 17 Dec 2025 05:09:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFOIgftumFt2rPagd7WMAwupyG927hYvjfHGYbMJ2mFWjjolrhO9f+WryJIAq0yWn9bWnTKg==
X-Received: by 2002:ac8:588c:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4f1d04ec585mr193473791cf.4.1765976990115;
        Wed, 17 Dec 2025 05:09:50 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29eb69sm2014690266b.6.2025.12.17.05.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 05:09:49 -0800 (PST)
Message-ID: <0560bae7-f825-4bd4-bb9a-b7d145b0e621@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 14:09:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 11/14] firmware: qcom_scm: Add
 qcom_scm_pas_get_rsc_table() to get resource table
To: Bjorn Andersson <andersson@kernel.org>
Cc: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
 <20251121-kvm_rproc_v8-v8-11-8e8e9fb0eca0@oss.qualcomm.com>
 <86f3cb9f-e42d-40f9-9103-1a4953c66c71@oss.qualcomm.com>
 <20251124152538.wt3kzztqmpr76hsx@hu-mojha-hyd.qualcomm.com>
 <4376b7cf-7088-412b-8596-bdec5bdc273d@oss.qualcomm.com>
 <20251204122806.s7lnqffgcrd7usem@hu-mojha-hyd.qualcomm.com>
 <e78feaff-0b48-42b6-a824-0f102a6ac9cc@oss.qualcomm.com>
 <sysdgcspvxhytyudknnyj4hu6lc47we5ijkrsssi6askysqyo2@bdzl5cvzc4be>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <sysdgcspvxhytyudknnyj4hu6lc47we5ijkrsssi6askysqyo2@bdzl5cvzc4be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _FKxf2qRke3S3Slj8qaSX5bPDLk_JQnn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwMSBTYWx0ZWRfX8KlgadkexkKp
 zxhhRVJmAJMsAyLmf/9zgFVazzpzz930DVJ/wJxUSubAmoUI7IUh+XUDJy4xPCFdFR39U7PRjU/
 QkF0G2rR6Ru4yZ7/khR4vJaNpriaux62rHz/HpzLBhP6aXoxaIthcth+hwwHCoDDck4PURLDQET
 fSwYgjeefSmrIbklYkc/UdvQ+qkCXti05hnnhL9+Q4288hWNfWEpPb2eHDfvuPoQmyuIzfEZgax
 xzJ0WdljcI1oEcbd5lcNYPy7O80L691v+eW4IDlp2RL8/aJmJK+cczjEclYuo5DuMOFezwdIPvd
 2sYaylL07Yqo8Ahce6H6DIu0R0idVg2SI/mAe6kGgMl6SKypqswaw+7NMLJ045E2atBseqno1eO
 tRpzdf7OJkUGKFpWXfdSNbwHkEDfTg==
X-Proofpoint-GUID: _FKxf2qRke3S3Slj8qaSX5bPDLk_JQnn
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=6942ab9f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6YH-TVDjK5cHQ1zWBw4A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170101

On 12/5/25 11:17 PM, Bjorn Andersson wrote:
> On Fri, Dec 05, 2025 at 02:15:00PM +0100, Konrad Dybcio wrote:
>> On 12/4/25 1:28 PM, Mukesh Ojha wrote:
>>> On Wed, Dec 03, 2025 at 01:36:32PM +0100, Konrad Dybcio wrote:
>>>> On 11/24/25 4:25 PM, Mukesh Ojha wrote:
>>>>> On Mon, Nov 24, 2025 at 12:48:31PM +0100, Konrad Dybcio wrote:
>>>>>> On 11/21/25 12:01 PM, Mukesh Ojha wrote:
>>>>>>> Qualcomm remote processor may rely on Static and Dynamic resources for
>>>>>>> it to be functional. Static resources are fixed like for example,
>>>>>>> memory-mapped addresses required by the subsystem and dynamic
>>>>>>> resources, such as shared memory in DDR etc., are determined at
>>>>>>> runtime during the boot process.
>>>>>>>
>>>>>>> For most of the Qualcomm SoCs, when run with Gunyah or older QHEE
>>>>>>> hypervisor, all the resources whether it is static or dynamic, is
>>>>>>> managed by the hypervisor. Dynamic resources if it is present for a
>>>>>>> remote processor will always be coming from secure world via SMC call
>>>>>>> while static resources may be present in remote processor firmware
>>>>>>> binary or it may be coming qcom_scm_pas_get_rsc_table() SMC call along
>>>>>>> with dynamic resources.
>>
>> [...]
>>
>>> Just to avoid iteration, are you suggesting that we can keep this
>>> guesswork as part of __qcom_scm_pas_get_rsc_table() and start with
>>> something smaller than SZ_16K?
>>>
>>> I kind of agree with the first part, but SZ_16K was the recommended size
>>> from the firmware for Lemans to start with, in order to pass the SMC
>>> successfully on the first try. However, the same size was failing for
>>> Glymur, and it required a second attempt with the correct size.
>>
>> It depends on the payload, which you're probably much more familiar with.
>> If 95% of them will be closer to e.g. 1K in size, it perhaps makes sense
>> to use up the additional few dozen cycles on our amazingly fast CPUs and
>> retry as necessary, instead of blindly reserving a whole bunch of memory.
>>
> 
> Those "few dozen cycles", is tasked with sending messages to RPMh for
> voting and unvoting the buses, then tzmem will hopefully hit the
> genpool, twice, and then radix updates, and then more genpool updated
> and more radix tree work. And then of course there's the one context
> switch to secure world.
> 
> If we don't have space in the genpool, we're going to grow
> dma_alloc_coherent, extend the genpool, call secure world to register
> the new tzmem. And then for all those cases where the allocation wasn't
> enough, the retry (with updated size) will not fit in the
> PAGE_ALIGN(size) genpool that was created, so we'll do this twice.
> 
> Fortunately the tzmem growing should only happen on first remoteproc
> boot, but I think it's a bit optimistic to say "a few dozen"...
> 
> 
> The drawback with making it 16KB is that we're not going to test that
> error path very often. But the more idiomatic form of first calling with
> a size of 0, then allocate and pass the proper size, seems a bit
> wasteful to me as well - in particular if we do it anew each subsystem
> boot.
> 
> PS. 16KB is 0.03% of the ADSP carveout (or 3% of the ADSP DeviceTree
> carveout...).

Hm, perhaps 16 is not a bad choice then

Konrad


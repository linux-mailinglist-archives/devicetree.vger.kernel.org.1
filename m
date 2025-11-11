Return-Path: <devicetree+bounces-237215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E36DDC4E463
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D56184E940C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258893009F8;
	Tue, 11 Nov 2025 14:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FjvjtcYA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YbU0M9r2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6175F2DD60E
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762869670; cv=none; b=gxFv/1bOblik1TSe0zvpwx2lxKbGTOlB61s2ZFoVOfGIGUhATxowAUzNfDx70m0JvQErpguBZoz+zk6/t4wGAY70IhfhziRcFeHa/hOW9v94q6AR7n6GF+INouch57vJ8ddPleDl7vYayKXgTDQhpUmQXL83JQnEMz6hQBU4Gok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762869670; c=relaxed/simple;
	bh=eWet9mQ0n5k4gwfWFBNceG6K2ZYb1Vr/oAdQm2HemF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W1/aNW/kCYXCR77eNKN80yVVFNBmMTXi7JoCkMpMViUSDsz6da4lekTZz5RUAIRLZsCdRoazvm7PkwljYaAlSZUHj862AAFA1hOoN3RfZq4rG4EtobwGmJV+ZKnH5L1Qu+uNwCWFHNXYYSitPwhBaXaUHSbARbK/230ozvAKNaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FjvjtcYA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YbU0M9r2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGssd2298403
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:01:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E4IJ5aXLhdUl4dhcBWBh4Ouc2sU9RC8O8eyHfCnQ/uQ=; b=FjvjtcYA6FAobnNn
	H9v9VOYv3uuTMJ1oXWSZLadQWVvp32MdyGDGRKpKK17ipXQ+6X5SLRlCD7+J9aNq
	4xnMdpTwAO+xqPIFPgXAiUK2HeXhFSU7lYofYSJWyhq7WKW3lo2ubUSGNQoZKTm9
	IMMMyhcyf0VkoLnkUQCaUIKahaOeXC2Cc7r3NQPtbKlbDN3jVCMcLiM67ZfHWYiy
	ZgDaSgw6x7yVfKxeBJBP4351KUeAEMDKqxVjRfwSgPX5POkXSDDXYGM5E3uosPqL
	48HFLDZGgpRPgEzmz3SDWNkgxfgzAIawqNWbxRSWabsMO8xvGo+rR98p0gI3wm2J
	rcoGEg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abm4a35da-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:01:06 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630753cc38so9433524a12.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 06:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762869666; x=1763474466; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E4IJ5aXLhdUl4dhcBWBh4Ouc2sU9RC8O8eyHfCnQ/uQ=;
        b=YbU0M9r2Ff91igwO9gMk8tmMDtGYcV+IU7AEZi5kSg0olq+L+ndIxk1hgf5eJN6tbn
         DqkMeLG/nUV+PFh6zYd3gyvZQAKfoK1qotpjJo/YR8wGyyF+xdFL5r7aC1TF8FEt8VkH
         5HlpIZWaR4aUzqwiF4UHaikPkueGrYge+ye9t2UOURvK/jyM/HrFZ8W11CQENlk6xn7R
         +A6sDmI6kHpIjowgmWC0Om+eEAXxEEZfqfVCjitNpqkT36C5TFmDBt86dXNc7p9aCqZc
         qQ7oB7cS8pYBioMDGyBte12WPOQt7jBce7+kmmeaflP1hQSpAYCYeN/KKFJC9XTLONAu
         1yJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762869666; x=1763474466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E4IJ5aXLhdUl4dhcBWBh4Ouc2sU9RC8O8eyHfCnQ/uQ=;
        b=rgI24dv6QsALbx0en5w0llKqGowEK1F/YlEnHl0ObHa4RpEqf+apoNZrfEQ/wM4z6P
         hfMgA3nvTIaNj1uhboNtZIPrGqH8eZayNof/axJ23MzpvANgacU+ToaqqylQ3lkKhhk6
         Y5bDe2gD0yWom14Y8HTBl0NFICdFtaJYxtYvV6cCivbvhU4SgfEAs45SqYaqNICKTqxs
         8MoLPcig1If4+gnjfhhDypfttg2LOssrlM4bQNy9oesATJlP6UxnoaKBCTcuf6XQF7Cf
         tKneX+Y/5kvOIDfFnRc7FFPotISR1sxwjrsy2+46TjrGAbxBE5DnZLcXooK2n0otwLP3
         ADww==
X-Forwarded-Encrypted: i=1; AJvYcCV2Z2ivP0SburgjcbIQGvKpMyr0/DD34F0bkrL+3h0NKw2d5gqmeZ6Uo5PSIXxI4isiHN1NPWddutiQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzzN2DfgcmgKPjcc1wDj+C89iqkIcUXuXnOC3x2f40Ih/V+bxzD
	FJNYhGi3fGVATry34iTtl20/Hb+3xi18fQjaeQtzenmgChT/Q2RK+GmkbjJPN2Xh1jafHvAQ3r3
	XXmpiXLg9vUADFm9W9d2H/EzZ7gMaIymgS0rrwbbK5tvo3oMwWYsosEuoJ7PE/D+x
X-Gm-Gg: ASbGncu7eGyMqTzir9FcikdDPK5kpJRVKrgXLU1AwC34DPIIBJOkrLlFpgkXCen2G/H
	Rc4Ei+7A75sj6yDImMXar77ZmEpgMf/6uzLFl7hvNp8SrLVL9tNm3XjOeOYWWXjQDm/Kj3P/Qg4
	bAyGcsamuBtLcSNc0lvro1KrGCob/le55ky/fyQS2k1sDcLK8hGYiX/OfjrQ9gDDOczaKsLcH72
	aQmlPANtYjVysdrGaW9/Q1mVELiTkntuEkj+XGfu4oV5c3T/QCaOCALRXJGvTBi2MB6jOVBukym
	Rmg2E8Daz2d6/f6zqMd9kXeER3AUSvkc3XknVRbKXEMrCM9tnLsNtYhMVi6Nek4ujjWwHHGdz+n
	6PlB/ICzrh/EDW/tbF2MQN072oK+W/SSGq6dRFgZdSo8Igc+3shRnuV778AUys4bFiT77qr1UgF
	FYGMRkEzaZz05IX9YEtpoYkg==
X-Received: by 2002:a05:6a20:7353:b0:34e:409e:eea0 with SMTP id adf61e73a8af0-353a0f94ba2mr17486242637.12.1762869665887;
        Tue, 11 Nov 2025 06:01:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxAEro9UYd2K1CoHJYHuggQpNaYpIT0G7fQSsq2+/Z1TJ/KH9I+2Tj6oHE9H5859gHv7QS+Q==
X-Received: by 2002:a05:6a20:7353:b0:34e:409e:eea0 with SMTP id adf61e73a8af0-353a0f94ba2mr17486153637.12.1762869665105;
        Tue, 11 Nov 2025 06:01:05 -0800 (PST)
Received: from [10.190.211.199] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba8f8e750c1sm15919726a12.1.2025.11.11.06.01.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 06:01:04 -0800 (PST)
Message-ID: <6bebcf6c-9328-4cd6-b77c-a147338d607a@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 19:30:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] firmware: qcom: scm: Register gunyah watchdog
 device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20251107-gunyah_watchdog-v5-0-4c6e3fb6eb17@oss.qualcomm.com>
 <20251107-gunyah_watchdog-v5-1-4c6e3fb6eb17@oss.qualcomm.com>
 <hbxtbaoavlsw7pbmg3cfkbyx4nacjfiikckhqgpvlggbh6hu5b@jyporqecfzni>
 <263d1390-eff5-4846-b2c2-31f96fc3248e@quicinc.com>
 <3794bb0e-5e2c-4d5e-8d81-d302fa36677c@quicinc.com>
 <56aqammkwte3tcdzni2unufjp4t4yaqazzdkigrwqsxp3ghcqe@ppe2pjwg3hrl>
 <60583236-692f-4605-9f56-f7dadb46558d@kernel.org>
 <zbwcg5pkdspkcnvaitac6y5iko346qyuzuipqhkoedcaqm2dpa@zmszuwhm5q7z>
Content-Language: en-US
From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
In-Reply-To: <zbwcg5pkdspkcnvaitac6y5iko346qyuzuipqhkoedcaqm2dpa@zmszuwhm5q7z>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TKs3Eo8Bz3aS1D40jQD4AuH6r_bUuPsf
X-Authority-Analysis: v=2.4 cv=G6kR0tk5 c=1 sm=1 tr=0 ts=691341a3 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=AchhnLIBfk4zbvzGQ6cA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: TKs3Eo8Bz3aS1D40jQD4AuH6r_bUuPsf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDExMiBTYWx0ZWRfX0DAh6gK2F83o
 jZWoek+S0TBHuBzY9iIt0ZM1bzyYQIQ2kwZ8zILY1IPE6VFDyEFmjoUb01BU8X3scpiTOdfPHRY
 aTEMtng8Rd5D7PWY8DO8nMKRr+tnoeb0vXTTLeDeVmpmjAvtKwincHC9LpfnuQHuTB3YQpeW4Wm
 6esoPFs2V7oKWD6IuDqZWf48kLC4Gf8tKXpvcwsSD2hnA8wLU56OQlpc2DrE/pYRyxHHb4m9aYG
 Em/WWJ1cDm0TuCSaeeN/23EZk/FRJsD3ANnHiGi+UCu2X4NCNPR18OTk83wvy6H8oEqA7Idq5r/
 8mOMK3kB6fhG83TMMZoLSFeBv7GJJOCyUeo7YZ/hAHfuIPzqZ22fIxyEl/1MMAdJM1oixRpjpio
 3PChR0FSxLv2N11q6Az4HtbnVHOVpQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110112


On 11/11/2025 5:52 PM, Dmitry Baryshkov wrote:
> On Tue, Nov 11, 2025 at 11:41:51AM +0100, Krzysztof Kozlowski wrote:
>> On 11/11/2025 11:34, Dmitry Baryshkov wrote:
>>> On Tue, Nov 11, 2025 at 10:51:43AM +0530, Pavan Kondeti wrote:
>>>> On Mon, Nov 10, 2025 at 09:43:53AM +0530, Pavan Kondeti wrote:
>>>>> On Sat, Nov 08, 2025 at 07:26:46PM +0200, Dmitry Baryshkov wrote:
>>>>>>> +static void qcom_scm_gunyah_wdt_free(void *data)
>>>>>>> +{
>>>>>>> +	struct platform_device *gunyah_wdt_dev = data;
>>>>>>> +
>>>>>>> +	platform_device_unregister(gunyah_wdt_dev);
>>>>>>> +}
>>>>>>> +
>>>>>>> +static void qcom_scm_gunyah_wdt_init(struct qcom_scm *scm)
>>>>>>> +{
>>>>>>> +	struct platform_device *gunyah_wdt_dev;
>>>>>>> +	struct device_node *np;
>>>>>>> +	bool of_wdt_available;
>>>>>>> +	int i;
>>>>>>> +	uuid_t gunyah_uuid = UUID_INIT(0xc1d58fcd, 0xa453, 0x5fdb, 0x92, 0x65,
>>>>>> static const?
>>>>>>
>>>>>>> +				       0xce, 0x36, 0x67, 0x3d, 0x5f, 0x14);
>>>>>>> +	static const char * const of_wdt_compatible[] = {
>>>>>>> +		"qcom,kpss-wdt",
>>>>>>> +		"arm,sbsa-gwdt",
>>>>>>> +	};
>>>>>>> +
>>>>>>> +	/* Bail out if we are not running under Gunyah */
>>>>>>> +	if (!arm_smccc_hypervisor_has_uuid(&gunyah_uuid))
>>>>>>> +		return;
>>>>>> This rquires 'select HAVE_ARM_SMCCC_DISCOVERY'
>>>>>>
>>>>> Probably `depends on HAVE_ARM_SMCCC_DISCOVERY` is correct here.
>>>>>
>>>> Dmitry / Bjorn,
>>>>
>>>> We are debating on this internally on how to resolve this dependency
>>>>
>>>> - QCOM_SCM depends on HAVE_ARM_SMCCC_DISCOVERY which means restricting
>>>>    QCOM_SCM compilation than what it is today.
>>>>
>>>> - Adding #ifdefry around arm_smccc_hypervisor_has_uuid usage in qcom scm driver
>>>>
>>>> - Adding stub for `arm_smccc_hypervisor_has_uuid()` which is not done
>>>>    for any of the functions defined in drivers/firmware/smccc/smccc.c
>>>>
>>>> We are trending towards the first option above. Please let us know if
>>>> you think otherwise.
>>> The same as before: 'select HAVE_ARM_SMCCC_DISCOVERY'.
>> HAVE_ARM_SMCCC_DISCOVERY has a dependency which is not always selected
>> (e.g. ARM32), thus selecting it might lead to warnings of unmet
>> dependencies.
> Then `if (!IS_ENABLED(CONFIG_HAVE_ARM_SMCCC_DISCOVERY))` might be a good
> option here (and depend on GICv3 selecting it).


Thanks a lot Dmitry, wemade the change below and compile tested on 
various architectures (ARM64, ARM32, x86, PowerPC, RISC-V and MIPS) and 
it was success.

We will include it in our next patch version, if there are no further 
concerns.

}; /* Bail out if we are not running under Gunyah */ - if 
(!arm_smccc_hypervisor_has_uuid(&gunyah_uuid)) + if 
(!IS_ENABLED(CONFIG_HAVE_ARM_SMCCC_DISCOVERY) || + 
!arm_smccc_hypervisor_has_uuid(&gunyah_uuid)) return; /*

Thanks,

Hrishabh



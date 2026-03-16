Return-Path: <devicetree+bounces-276070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNz/IOTSt2n0VgEAu9opvQ
	(envelope-from <devicetree+bounces-276070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:52:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E372976A0
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:52:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 63E1930464CA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B5A3909A8;
	Mon, 16 Mar 2026 09:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AMNRTUwm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VlL2B0Ol"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A4139023F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773654416; cv=none; b=LU9tV4r7Hd5FcdY7P6YCuU5+n39tx9BsPwVR7tOHM7mhIuReycA3XOJXUr9qAyKhaIpLr//zQSlPwqiHxHXc916mqChLIP9m4C5TD6SZgojEY4e20mAuP4UikaUPBVb/XaFx14H3de1Qm+PkPSeWkZ7mopttXUbKF89RKcpS+5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773654416; c=relaxed/simple;
	bh=5GAIeFCS0uUPv2PKBNS/6Rzen3mfcjnDIRp5SqOEd4c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ksI4Ga+GC53yy8vpoWg3hFl9XmQEnDOFAHxqxDCkbSrgQ56SmpfGDDML6Jg0msVVlEe64SD2IXotqPcXwNTAY9aUkzNed+Fb4lPF9Xnv0vZ1zOCMFwv4lZugQuckmnf7SkQFyrfkzYAtQWkqSKVTD+jX07iaep7Dd2HiwUwhUQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AMNRTUwm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VlL2B0Ol; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G65B141068188
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:46:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xGZEmgt8LPoPXTKdramnEFd7yZk6ZE7MCzHzNUdrRCE=; b=AMNRTUwma2/9IaeH
	bhQbeiAOg6wVPg+ZoBY3OsJG18ZcZBfk7PTWVMNihK04XX8qfQ9e/1UGleaTNLVu
	PFVSxBTBwPXD1vu8TzOSue0qk3xB/egG3rvTqE6C9+0sTixg6dgloz9+aU5fga7r
	zIO2TCs7GJohbO/gFOWsiges1KCkuVy7etOnDAPMcrulHg63jpSl8Bs+SaSA9eCQ
	ZK0O63a9WuSEhBBSEMR3Oz2hl7g/kT0epWeU50EPS59X5uO7/vcmR0zmOX75NWEc
	cP7V3bc8DcQcEKLkA2g3A5RoET2BmGQC0MrvHu40CwekY2tR4pd7br6chi9O3xUB
	TZxJVQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw027d4n2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:46:54 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89c49436edeso10956806d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773654413; x=1774259213; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xGZEmgt8LPoPXTKdramnEFd7yZk6ZE7MCzHzNUdrRCE=;
        b=VlL2B0Ol3dngjeW5xO3YCotO9cWt3Z7eVQ1jFabFA9ihS+ihCcS+lwrYJO7dzKtt5w
         b3qaqVf6X/v13B7M8y8/zpyC0PJQ2mW/MtuHjYOA8cS3Lt0VzT7eXMtTB7V0TZvFJDoD
         qg0ajbAGype4P5LJY7pASOvE8n6ll0YS7u8tG6MzS2o4dhWaPGznAVSctTTNpfuW9bwv
         DGV/pmkdwPhOCgCiqt6p/abEtI9RElMgnyewRjifJoMjuPABtbRl4RtLp+8d9Jby3Sfq
         NrBP0Nbcw0Ovt2UwVnGMmpI7jLHBi/MIJwOuyUizd0D2ihZRMwjKddCcdS8N4YqtQ1we
         MlTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773654413; x=1774259213;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xGZEmgt8LPoPXTKdramnEFd7yZk6ZE7MCzHzNUdrRCE=;
        b=snAaStbYkRpIqRIFRi3v0fap9kfjrpmLijun4QqV76Qjmfrn6dCi8Pw7EEMtWTRTqv
         yUltFUWeSlFYG8/OutJBlLKXl130BM2RG/I0BgRX2y4RKx0ySsrz7djHFFrCuE+Z+r7I
         cXJKmmyc1qHKdjC9Mu58xGFKkcLQ4/12Xlv+CtQfPqAF6SGRHo3xCTgoHMOMSXYUblhM
         bPrXZCj4+H4hc7E95Z77lb/djnX4rxhRjWU/86T1lvgQQn2ho+rk1VoNiSX0JSM/PBpH
         GEjQ019J1c0PLsa+bH5laOYKHCWOVmFb3V+Ijhhb48MdMPPjE+uzuKPqYeNIaAPTxW70
         D9aQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7rf7HeGPEK6gcy+7tSxCqCI3+Hr2LECP0gXTuuzibgJOZHt8c71YQBd93zywnK75RRXoB/+ZIZtvI@vger.kernel.org
X-Gm-Message-State: AOJu0YyJktC6m2Yapau5FNuBjP/leE7GXIO1TafwoNvrLGwpQK/u9y1E
	Pn/gP2bDb+Wob+GZRbkYpXSQkHY4vaI2tJNNtiKL7JHXfs/sPlKaKC8fnDFegt9gaPQtUsHCIyz
	r95qlWpBZQAgoFJhiW6JpWHmH+a3dX7z10tqL50q2GXDJ28HQkmqjzQMWbCMZtYN5
X-Gm-Gg: ATEYQzwAhCN1uN7lmWnDBbJO1g/YfRGy8FgO3DUG/vEGHMoWbubBgubJp88u9I2N/Oq
	ZK7i7skTKymWOABp8g2FOWo/J8emea3LZbIro2Z8AY3RhEzVu1rHDHPptWvt2sDr7HmskZXMHCN
	o1H/6w2E/sAY0b8jPQP30lok1WIj34o1DrPZ/znOWlWZEFW88Ure5ToJ8oylDdEpacjhiV9L7dZ
	TkIh4hUN6LyzuKS4Z9QSbvVMOlIPqWSRL5gl6XM77P4YilR4vbuJ1+HHeo/LDoojLAffMo1R4lN
	Bu5lOvWo6J2kbrBgRY+8+fz2+SJsbONCiv/kLrd8t+IOuizCePK57vvMcJdxdbWRKRVDMRE63Jn
	izK/Qi0qUBcVoO+qbK6iVSXsU+R5QnsqjMl1E3lGT1F9Ofhwfiy60ZsJ3HST59kA7UK+MGSRFEi
	PuIig=
X-Received: by 2002:a05:6214:601c:b0:89a:6263:feae with SMTP id 6a1803df08f44-89a81cce148mr121904516d6.2.1773654413457;
        Mon, 16 Mar 2026 02:46:53 -0700 (PDT)
X-Received: by 2002:a05:6214:601c:b0:89a:6263:feae with SMTP id 6a1803df08f44-89a81cce148mr121904266d6.2.1773654413056;
        Mon, 16 Mar 2026 02:46:53 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97ae89ebc4sm237981866b.34.2026.03.16.02.46.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:46:52 -0700 (PDT)
Message-ID: <c89449b8-f28c-4364-a1be-5267f0d99c01@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:46:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] pinctrl: qcom: Introduce IPQ5210 TLMM driver
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-4-fe857d68d698@oss.qualcomm.com>
 <05a1dcfc-7df1-4b20-a504-468814a87b3d@oss.qualcomm.com>
 <1eef0fc0-d33a-452a-9da5-3d0903b1712f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1eef0fc0-d33a-452a-9da5-3d0903b1712f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: jQYX5Zvi3mzPNf5212Uwam0-8r7eguPs
X-Proofpoint-ORIG-GUID: jQYX5Zvi3mzPNf5212Uwam0-8r7eguPs
X-Authority-Analysis: v=2.4 cv=AqXjHe9P c=1 sm=1 tr=0 ts=69b7d18e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=-I31x9S0JgnQQLvGL8gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3NSBTYWx0ZWRfXw5qvqGap6T87
 o0Cfz7NZsXK3lvt5NUULZPibYA0XQbosOq8xmIKUEawCEEzFzuJ07bqOgpRuGlwCW03J8/AmnuW
 bzJpzoM2Aw/Xqit0+lAnYTUWAgyoiW0xFEVkU882DORV6P8MrYxREj8+Gis8NHa33ZTXO4O7uFw
 HJk9h9yG2LKFTuWqwhnFPdA618Wjn4GQ1f2vLXO0mBqfBtZ3i17StjySmZWIvKQA31ZXKAV7HPd
 4CM1akvhSMb+OYgQ0emAub1xLXHu16+IPiXzo/ISqADmb/IGVBoN9bIzhdcOstqMJM1wdv95U0u
 lcU1jocSnw64YdGARrQZ/f/NAbA1eKwaL1MiPc4/+kCAj86kyRMzbQ+2EmMmVcD3SFOShQLPq21
 P0EHv0widtEDzItztuYkvPol9LWodM3SPprCOeLiP/Ekxv27kboCpu51HQbHYAiNXsUIbx1y8KS
 1k6YcwWQJqatbnW6dow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160075
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276070-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 28E372976A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 9:58 AM, Kathiravan Thirumoorthy wrote:
> 
> On 3/13/2026 6:24 PM, Konrad Dybcio wrote:
>> On 3/11/26 10:45 AM, Kathiravan Thirumoorthy wrote:
>>> Qualcomm's IPQ5210 SoC comes with a TLMM block, like all other platforms,
>>> so add a driver for it.
>>>
>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +static const char *const Led00_groups[] = {
>> odd uppercase
> 
> 
> Yeah,  in HW document also only this name has the uppercase. So I just left it to align with the HW document. Do you prefer to change it to lower case to maintain consistency?

Yes, please - I would assume the original author had made a typo and
didn't really intend to have a single random occurrence of an uppercase
letter

> 
> 
>>
>>> +    "gpio23",
>>> +};
>>> +
>>> +static const char *const led01_groups[] = {
>>> +    "gpio39",
>>> +};
>>> +
>>> +static const char *const led02_groups[] = {
>>> +    "gpio6",
>>> +};
>> What do these 'ledN[012]' functions represent? Are they muxes for
>> getting activity/status signals for eth/wlan ports?
> 
> 
> Yes, that's right. These LED functions used for the eth/wlan status.

Can we better group them, e.g. into threes in 'led[012]' functions?
(or whichever way they're coupled?)

Konrad


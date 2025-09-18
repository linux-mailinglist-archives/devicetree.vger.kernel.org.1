Return-Path: <devicetree+bounces-216351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2842EB54791
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:31:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20A153B9A05
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6592D0C9B;
	Fri, 12 Sep 2025 09:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="psmAV4uh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B3A285C9E
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668922; cv=none; b=DNYE7fEBPWyrzRYZ2HgQBAkrJUJjGGAOQUI+slyhgUqBnpIUGSt31PbHxbPIXgDK7j+rtUjosm6qXhjqg4tCNEcuyR8z+iaKuezf1/Rf+f5a0yI5Zv0F9lbYkc+jTDzr7COEDlFcXWdFrixZ4YnWyZ/0FpJpNq48t1usVzmLSeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668922; c=relaxed/simple;
	bh=A1c0vcXgcruE0vFqM/raPLs69yF0uaISuMGxTvyDAyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MweB8Bm0y2Iqyrau+EecDM7HUXF343m0dSlahsBxEKNLO3Ol1fss1gsg/jmYLCU8L3lA3XGlfZIgdHUm2VLv8oNSoBx6nfWDvzoHVKa9ANRCCxtieNXo0AUkit/bxqYg37UUNTu+9KX0VBjfjCf4QF/rXSLzJJZODJ+h13MUuOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=psmAV4uh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C7AMpH002273
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:22:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	211TaafuVdmwmFpTWX2T7r+JSbXlFt0Mtw+hMPa5lqU=; b=psmAV4uhJDui1mD2
	TpCjvU8MQQJRkxDuw3yqKkng4nptAa5x/7xUSHj6EX1X6oUbpT8FF28zsrmre7yu
	6p/Fp2rav/iYRUYCqDi++eNdmU0cYLSY3LSWJ+tX3FS0MmKDSL8p4IePtThsrg/z
	Ac7+4k4XpROaSNMzt9ybKtn3X8B783KyfS5kAUKtMZPEDpMpPdotPDoiRuFREgPa
	pg9//ykOut1X5Rjq7PwNqZFRjrYipChc66NfW+GoX/UZm+8We35j13Jt+hH62Gtl
	F6u0m5V5mD8j29L+7+62Pb1B5wvt2owSxXuoK0JQQiSo9icMMzJ7VUQ0QyT0iZD5
	YEREwA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8u1q0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:21:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b77fa6d91dso295851cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:21:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757668919; x=1758273719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=211TaafuVdmwmFpTWX2T7r+JSbXlFt0Mtw+hMPa5lqU=;
        b=l9Bs8Pfu+qXKDw8W94M31sQMlcSUMTW47wMCzKl7jxjMbYLGVDILg3ZEiOnxD8Si7t
         5XUhJyc3Ry7+uyJDtYhiKHHnoOSDDDL/3S9Z2Z95TARcjVJgimBB1KZPaOlBuz9Dgga+
         7sKxKsdF1rfChnur7fkeNvHZodrwQQ9cTTccykm4NIklRklH7L8dG/SdIfByJBghyNGu
         7K/Uebn6igBVHcd6szXwcPOJLGDm0OXJ8jBu+uQzhaKLiwzSL+Vu+H18OzE5G2kH+C0J
         R+HVPza1rIMSkdAsKqWj3RIjD0B4CBZ+Ux+CjyaGDMlK7sZercQojip7xXq+i/n9omN+
         9PLw==
X-Forwarded-Encrypted: i=1; AJvYcCVscCxw+c5pO80aFWXpGQ7bztOQ+iSzpAw+qVRL2Zx2dOoGUz4+s1u9K1BSuFS85mwtL5wCHtDP23jL@vger.kernel.org
X-Gm-Message-State: AOJu0YzVaZWQpGSck2rQqnosrdWPqc6nA4MdnHAM/pj0tJk5bXyW/Jd4
	dP6gOKbmS+XvQgXEKCegdkgQN0nin4CYFD7Xn26JWr668aB8JVTJnJnATe3DvcguvbPivxXsO9T
	EFOsRF2g/NQ5m/7Cz1Oyv2UAtwFJ+qyUwZH7KrF0tB8neoosFMVfs9N+Bz7GqFiKD
X-Gm-Gg: ASbGncunb9pRg8yTanFF/EzydX2X3HjT9R7vm+sptObQFRYxtGH2TfXU6kmp3zuh2b5
	CCiU8fWkKzHLI2GGlPTifDsr4ri7KSZUCju9taTnhAvPKrJDSVhYI8YaFIfMhTyv2Y+EG5ZMpkt
	jSm85FI1Zsai9rQp+rCbpH8vsnohCWnkG5DtNfWeEwXylVwT1VoHsgvXrGFcWdioYE8ceQleO0i
	WwCTzI5cOBfG+Sh8wtX7fbyf22N8QT3c7RoGMrwk1oJnmntNJgxM99QjV5GYgR+8+9C42ziI7VP
	swH4kFB2nWuRn7kl4g8sLwt6iROOvjudLol6hz+tCJ5orV4jU1Vx7PZYko5p873jO3Hn687bX4P
	DjSAFRcz9j296FbISIegljw==
X-Received: by 2002:a05:622a:91:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b77cfcdec6mr20253991cf.2.1757668919130;
        Fri, 12 Sep 2025 02:21:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHt3j5cbbw2xXdC7Iuoclxovs03WKjCh8mVblR4EhINwYFg0atoGoM3n750wMhgvxAjL7lHSQ==
X-Received: by 2002:a05:622a:91:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b77cfcdec6mr20253621cf.2.1757668918594;
        Fri, 12 Sep 2025 02:21:58 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32f2098sm337290866b.74.2025.09.12.02.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:21:58 -0700 (PDT)
Message-ID: <d293a11b-155d-45d3-bafc-00c2f90e8c43@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 11:21:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/10] dt-bindings: clock: Add required
 "interconnect-cells" property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Luo Jie <quic_luoj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Devi Priya <quic_devipriy@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250909-qcom_ipq5424_nsscc-v5-0-332c49a8512b@quicinc.com>
 <20250909-qcom_ipq5424_nsscc-v5-2-332c49a8512b@quicinc.com>
 <20250912-nocturnal-horse-of-acumen-5b2cbd@kuoka>
 <b7487ab1-1abd-40ca-8392-fdf63fddaafc@oss.qualcomm.com>
 <2951b362-c3c1-4608-8534-4d25b089f927@oss.qualcomm.com>
 <52714c33-5bd7-4ca5-bf1d-c89318c77746@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <52714c33-5bd7-4ca5-bf1d-c89318c77746@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX5RqBKdFtFCH+
 WXqpdoq2HmqcivsJIBFqG0sCDR63U76NcducT1nT9FjqIBOKQlQP2mhPz02CFUPwzMI5fbZx2Yh
 Na0kj1Jhd4PwiIPbj3rU9n/vYMNHLwcJYyu/8X19SoJu3OimuUuDHRaVm0WCD8LCPZVz4y7zoxN
 44nCu8pN3sLIcsSPuTUfPl3erq/w56t8HQ4UWcuxwM0NMI5Sw55QMtKhdGWqn9dbOHY3WnTiZbc
 ul2+mczpb6zcL58smSzb26AhDAw/NGBqyGB4mG9Mi8aLOz6BqRbem/unAhKCo0EdHFAplhI+Gso
 g67QAzL7E1VebGHqbCajuXkx6o168Z4fHX2p0TsXpbJJSdCemJYht6Sm38VWF4UlGx3mb7uUBBl
 0HsLmhkr
X-Proofpoint-ORIG-GUID: w2l8SI6SPDnBNre_LpJan7AJVpDob02w
X-Proofpoint-GUID: w2l8SI6SPDnBNre_LpJan7AJVpDob02w
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c3e637 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=UDPjpuflI1CVcGcpNKsA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On 9/12/25 11:17 AM, Krzysztof Kozlowski wrote:
> On 12/09/2025 11:13, Konrad Dybcio wrote:
>> On 9/12/25 11:13 AM, Konrad Dybcio wrote:
>>> On 9/12/25 9:04 AM, Krzysztof Kozlowski wrote:
>>>> On Tue, Sep 09, 2025 at 09:39:11PM +0800, Luo Jie wrote:
>>>>> The Networking Subsystem (NSS) clock controller acts as both a clock
>>>>> provider and an interconnect provider. The #interconnect-cells property
>>>>> is mandatory in the Device Tree Source (DTS) to ensure that client
>>>>> drivers, such as the PPE driver, can correctly acquire ICC clocks from
>>>>> the NSS ICC provider.
>>>>>
>>>>> Although this property is already present in the NSS CC node of the DTS
>>>>> for CMN PLL for IPQ9574 SoC which is currently supported, it was previously
>>>>> omitted from the list of required properties in the bindings documentation.
>>>>> Adding this as a required property is not expected to break the ABI for
>>>>> currently supported SoC.
>>>>>
>>>>> Marking #interconnect-cells as required to comply with Device Tree (DT)
>>>>> binding requirements for interconnect providers.
>>>>
>>>> DT bindings do not require interconnect-cells, so that's not a correct
>>>> reason. Drop them from required properties.
>>>
>>> "Mark #interconnect-cells as required to allow consuming the provided
>>> interconnect endpoints"?
>>
>> "which are in turn necessary for the SoC to function"
> 
> If this never worked and code was buggy, never booted, was sent
> incomplete and in junk state, then sure. Say like that. :)
> 
> But I have a feeling code was working okayish...

If Linux is unaware of resources, it can't turn them off/on, so it was
only working courtesy of the previous boot stages messing with them.

Konrad


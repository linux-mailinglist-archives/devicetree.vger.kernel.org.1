Return-Path: <devicetree+bounces-199029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D43B0F1B8
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 984BB3AAC48
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59C62E542A;
	Wed, 23 Jul 2025 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e3d4eFH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36D22E3B0F
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753271733; cv=none; b=WMSeRBxGtIMBls1rducem6HbcBlWyiGRdUoXZvYH5QscTR8W6vtsv5NzrY42PFYArPu2o63Q7E1dkAHPkKi9T93DTrTmT/+pJFt/097aP38DpBVDLSzz519CzoE/87lUUWbghLf1yP3zSmuwVP9rmcS+UUZSk142XWZA0gNqncg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753271733; c=relaxed/simple;
	bh=MoQhwJC2u9Y+tLlDaDW3Yj6vblx2mDmweBd2OxyalOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VOm348/6S83chloy4D7AnZsziOramiDh5bImukWGNVNe90EjNOiZ1SmGHJ20CDRVswNpdm2EsaofASyx7OXpe2ipxS1I2C2Vu5390tI+eBvpDpLTaAxxhBUKLASaGaMjMeeCHdBUW9vPtsXetxiKq/PIoSFGQdc79mIaMAfOET0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e3d4eFH5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9aCDM019723
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:55:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9LwQvdbcS9vqnDYnAsymKgiBjVaP1nufmyKeF5nfoc4=; b=e3d4eFH5ELMBAGQi
	ChgOJ3KXoc+nfsxDj4bZMCaVSvNvhm69kt0bSRaxJ4FZkAdsBkR6hfGu2D0yjZRD
	gtPu8ip18ddF8av/pXets1rfaFuEDHKQC/kQnm+oaKWtV+I/I8sWzDhfUVCkZwX3
	20KUb2avAYIR+pBLPKv6a7FQ1Qlcat8rVF2/T1pE0BOWhaq+LUvGMFSvjo80YgkZ
	7waGaZINEnRYhLzhYZGyXylW/OSbqHRzoZa3J84ugfMa43H4gqwyZ1gdLD9JUPsA
	ItxGe8amxjocBcnyt8nmwnofTWDdVN6GrjnRGzRFwDgQbOFrP9NUBuafuuia8rf2
	lPADcA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3hu1tj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:55:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabbaa1937so14089176d6.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753271730; x=1753876530;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9LwQvdbcS9vqnDYnAsymKgiBjVaP1nufmyKeF5nfoc4=;
        b=C1MU/+CyQk3azLyCp3dGfIKc4AmZ0c2MHoSIanRtigipfWLfSSvAONyaKBHIy6heq4
         C+clfW0Yix17ulrmg+w3NCYcYbe2jpuueBhcIesYaAHCPKi6qqlphYDXBoV8PD5TOoNs
         9d2FMSFm3lqhlUd0FASrgW3IAJCsxFRXKPqFZOXf2GsSe7hOZnxAoKocqmL6v2DKvW+I
         fmSu2c2fzaor3vhTFWenXA1gHODLe8s4dWVVuZUDmvf3j0ds0WVwFMLTn/fIlUxLGJ+i
         MwYeKVkXtd7t1vJYEvzOUETDDJeQCVIiBpg35nVENmM5JidATBPR2P/s1rX745rmkwVi
         PhSA==
X-Forwarded-Encrypted: i=1; AJvYcCVadjyjoE+6gqvkuGxwv9rvzuv9MfzlskvI1MHAHjEiwQ8hqfUFO0aB0g/tPz/hftAN0PEbpw7jGDzt@vger.kernel.org
X-Gm-Message-State: AOJu0YxrLNTlDugGLOAXhLFlZFgozQFIJbfUc2KNiFAKPpV/CDpkX/bH
	OvN/ekCFAXXljDw5X8MT9fMGxC/3sHa14AF56sKFvReVPIZQPlZByLyeEIN6KV6BlQD2X40SPto
	a7/Nryuk36A5btcWdXxcvr5omFvXTv20HX3Cz0xZgeBFPpJCmj9QFJtjxFGEvKOJX
X-Gm-Gg: ASbGnctDL9xv7ZN/67BGMYLW/9ueCIbrWB0h8MFqTZGG0wpfQB4jFvf+Bn/7/Yk10XE
	/33OkGKy7BCfLlk8nEuGjPmSyT7j0J+YI9coNLZ7/PINDpLAKFyw88SFXSea3C8jAd37FrQFnQQ
	yORKZ7XnavBsTVDFYi7nAcl1d7ljfPWqDQE6Lu/gJ8VDEu1TTAxwLenzgnYPsU3Q70OP7AgmNaM
	m7vIzMBanScusFCw1QjMyhvs8TWpD0yGMdsISBM1+2uqGxMttxGJp1LUgypkmQv1m/U/qlyDQjM
	lIL+XB9C24s66KlNe7UcMOdMPgQRyqzCwcaWGT4f7PP9Faxnez0BkhtvKgBDF48GtcFyje4gNJk
	/dzpGYLHIcBZzQu1aSA==
X-Received: by 2002:a05:6214:246f:b0:705:19a2:c26e with SMTP id 6a1803df08f44-7070056dbcemr15043406d6.4.1753271729700;
        Wed, 23 Jul 2025 04:55:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPNIBqtK0Wyao7I4GLR61bfDwSTz2EK0WSLGM8xRQ/zUKkuKthVKvOpycFyxvFD1qSQsn+Cg==
X-Received: by 2002:a05:6214:246f:b0:705:19a2:c26e with SMTP id 6a1803df08f44-7070056dbcemr15043146d6.4.1753271729132;
        Wed, 23 Jul 2025 04:55:29 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c7d4806sm1034993866b.39.2025.07.23.04.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 04:55:28 -0700 (PDT)
Message-ID: <d37879af-a1fc-41d4-8e31-2abba6fd6d57@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 13:55:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
 <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
 <70277682-94e7-4905-823d-25ae76f72ee2@oss.qualcomm.com>
 <790fd85b-fb24-4d44-bdb1-706c534d1da5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <790fd85b-fb24-4d44-bdb1-706c534d1da5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=6880cdb2 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=E8IWMSBLE9DYRS0HZ4oA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDEwMSBTYWx0ZWRfX0bHtzsNEBGgQ
 FiT/8+7KLReszljRqcU/sotgVhjLRmVhZYL3/H54369zQQKNS0L3Vl5OY45hTnmleVaez45yzHQ
 N+q+WXQT23Dad2wg/KhvqM+h0IjM1xMNFmzqUfqmQYeiiVDp9EjMWFRgVmMmVXcvgIiZAFv26o+
 PGVnqSHciWQ+duLIKbbVZGAgeJ/ZB8+2Q9t9eCG+RjFi6G/4sHTEFHciOYm9RltD7vwYNBwuMLk
 5zTFYXwuGLuUa0SH74EYPxavrE9VL3Efam/dN+w3xzEOPGzAcsysAKQBmMMFR1H0y0HbXvRE8VG
 OyFRE6e6DL+5hOXipFsfEJrOQTsfCBmWdZfR/NbtgIuCXk9szzT4SYscl+pcFhKBpzvTK3Sh0jt
 PAkasOTWDgbE+7NWq779kQaMpuWAk5LcbFPO8alrzzbsKrXFkIgjwPPSgskG5UFuDIk/fW3/
X-Proofpoint-GUID: vMusyG19r8u1_ftty2UFL5HAn2vP--Se
X-Proofpoint-ORIG-GUID: vMusyG19r8u1_ftty2UFL5HAn2vP--Se
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=817 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230101

On 7/23/25 1:48 PM, Pankaj Patil wrote:
> On 7/23/2025 5:10 PM, Konrad Dybcio wrote:
>> On 7/23/25 12:36 PM, Pankaj Patil wrote:
>>> Add DeviceTree binding for Glymur SoC TLMM block
>>>
>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +      function:
>>> +        description:
>>> +          Specify the alternative function to be configured for the specified
>>> +          pins.
>>> +        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb,
>> Any reason for           /\ to be uppercase?
>>
>> Konrad
>>
> glymur_functions enum members fetched from ipcat,
> this does not exist for sm8750.

I'll repeat my question

Konrad


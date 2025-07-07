Return-Path: <devicetree+bounces-193582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 982F3AFAF7D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BB481AA302D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F7428D840;
	Mon,  7 Jul 2025 09:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rm45DgSY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4128E28CF61
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751879980; cv=none; b=fDzlSePqNwUEG2yHmnYBdBibi/b67e+xVi53+ungAurz/aUkHHtZhBeL35FYh5mwxsqQU6yFkdP9l4Vhhsuqf8rwmMKbOpFluBqj8qH4N+WgTqAEjHB29hS0sueTQLWrpkcKr4VOAXFfC33cEWl7eN5d/KcW/XL3QT/ucx25mlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751879980; c=relaxed/simple;
	bh=ljuEX21Jibul/BV1/uZPiIOWGalCwwuUymdQtWRaO2I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GRiKmoBnT9mzKKqXWkua9jvSElbBJLrCPPiELKrSO4ACsL71h1+EC20Cv2sVQSRtlDsuNFDWs8P6MmymLM8aNf1zj6BOqhhH6DRlrYQq2HYg2IW0CrNDP+NH8y0OYAKEqNBRbzDg/f5YgR7d34CrTVNzypxbQRqLE06h2G4Zlys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rm45DgSY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 566MxWYM006938
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 09:19:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7VOMNRIdPe5++kYgsqfJ8vCXc2F2M2dCa0BteZPuPU8=; b=Rm45DgSYnQerxl79
	0X4MW1I5IcYlbWtSLDtYyuPlwVTtgHL5NatR8gmftZ74YKU1wrFJGB/AgbAL73fg
	LH8X8QB1r2y8CU8p2qljLvPqq4VZ8zogAmc1kAKY9I91ZACh5+fEkKJl8uRC5J26
	cRlyaH3JkD+9w9IP/vzsWUX+bUS29tmhF/MCnVzrA8UYkl/+26BQsvINbnipSTdp
	Mf9XBAkKAdRmQq4ChTSekzYsjaEjUFk/dwheyG9tQz1dliewkqm/75ARaQwjo3BK
	pR1+c4mwjwzwSGQ28sWTQKJvMKlwbDu/JU7gDr8BK69j0sLf4/NtvLgkLfY2+kDZ
	GqzQcA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pun2bvc1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 09:19:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a804126ed6so8149191cf.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:19:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751879977; x=1752484777;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7VOMNRIdPe5++kYgsqfJ8vCXc2F2M2dCa0BteZPuPU8=;
        b=uZVNmLBWTWGngIVNsnMrI8E6WN5L2d3jLS1gu2TtE+YcJId3tX32ZqlDwQP4iqdlEv
         2cAL9N91BWqDJEOb22EannVUT/+T6tFQNkjUWzUDbAH2MPgemtkTlmig0Xxkmw4YtpG+
         dyiCnKGpnWva1wZBVu1fq4PaVEaIatFqENH+65TWq6CAJXsbxO21MJ/Z1RxiDQ+llMZL
         EweAFePVRQGamsk/0aHsCrwYYxTfLNP7VnbPMEKqeZy/FD1ehsfUtPwK1gY9fMN4y2DR
         2wsuhMY4o1OWKkdksaa9sGxjAfs/vTa02LxPOxOYLSmZ+rD1PHM8COYb4pHF+BuHTvQx
         napg==
X-Forwarded-Encrypted: i=1; AJvYcCUArAFOCGjAZOJIRkrJ37I4PlkNAjRVQbpP2JJb92ZtzBrIsNcvbRDa1XpUOdfDZB/nhXa0EhhvafNN@vger.kernel.org
X-Gm-Message-State: AOJu0YwHv6ZDvaKtHmBu/ouZzlBcizace80tjzp7K7zTT67ov1kyQBST
	l1Mj5DEurzIeBhy0DYzWevmmN5D9UqnIL/wZ8K3yYHDvMxvHEzIyzpKLWHcP8OI8k50av2FB6bN
	IqyRCQ4oV8AeWFprA9Ol/CXNn9pzKIYYMvB0qoyVJXxhDPS1vfOcO/eASjghyqztN
X-Gm-Gg: ASbGncuYlmNCXmWpPenrJnWhjqR427Qzsjies3ngbPkgz2/+DVWDJssp+fD8v/kM/by
	O5ribagvVZlBmjY6cB8iuIQ6hd3sj1Lc1EwjEAD6uVuHXeV4lgHWCWjuivZDSKPIivWipEvJklx
	8Fp5U0/lODqcOx6kb+sOnFoQmH4yDfecTJ9RPsxaZlxGnSJtXAJcnGn57Nb0ZLXmFXXbuT34SH/
	qwYgr5pWrzAi2JXKUOQv3cwsAoIPU6etFcwToUd0d91cuMrwBGgetDDIjebQjkHBicvRheAaXRF
	j+qUyCxBEjHQYPNpVMh4AOToUcg2CHZKb286cCL9PeBmVPHCNgHnaROD69Oq/A0oJwiQgEdBa7L
	Y41M=
X-Received: by 2002:a05:622a:a90b:b0:472:4c8:64c6 with SMTP id d75a77b69052e-4a9a01330c0mr49003701cf.9.1751879977073;
        Mon, 07 Jul 2025 02:19:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8zQl/VV82jUJ16IKGzuIQK2MD0Ay6nJSmgRfvnHnWiCJMb9E44wM/hVre6rQPyF4QKYG6bg==
X-Received: by 2002:a05:622a:a90b:b0:472:4c8:64c6 with SMTP id d75a77b69052e-4a9a01330c0mr49003631cf.9.1751879976627;
        Mon, 07 Jul 2025 02:19:36 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6bb1418sm663547866b.183.2025.07.07.02.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 02:19:36 -0700 (PDT)
Message-ID: <30cf5c9f-6c9c-4cae-adec-81fa090a3eb5@oss.qualcomm.com>
Date: Mon, 7 Jul 2025 11:19:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] media: venus: core: Add qcm2290 DT compatible and
 resource data
To: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: krzk+dt@kernel.org, bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-5-jorge.ramirez@oss.qualcomm.com>
 <ded874b1-715d-a7a7-fd0d-3b98fd5fd029@quicinc.com> <aGuOzdCu5UmKDF94@trex>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aGuOzdCu5UmKDF94@trex>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: EesmDEZvbcDFeVtXbJT0HSVDJDAsxUhK
X-Authority-Analysis: v=2.4 cv=GdUXnRXL c=1 sm=1 tr=0 ts=686b9129 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=xq3W2uTSAAAA:8 a=EUspDBNiAAAA:8
 a=iOyF40SCRJJOIr8PYD4A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=P5L7wpMTXyg1GfFA3Gwx:22
X-Proofpoint-ORIG-GUID: EesmDEZvbcDFeVtXbJT0HSVDJDAsxUhK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA1MyBTYWx0ZWRfX6Bg5IR2acOOT
 ztUT4eoc4FlhOfF0OReSqhY53n5aQSWcNsoE24i9RNLIMtbZvb+yb2wiBatXtnQaejOeBy7lWsR
 NDsOl7D584C2n5aghJdg6BZPaqQ6eVZKqAH7obbpWkaTqC+cqBgF1HLNrhukAb00Nk0Nb5eng/l
 tlrxh84fOqr8GZlhVA9BmUNHLdhmzW360g1GLXLNLuumNXBSjgbjYx5ktr6ZXMUYxILpCip+v50
 rlvNsSuZNWCAvS9UHqf4YTWt4h8rbLLc0rL+ZIHUGOl3GJJT1HOIay+3OcP+EMUY3f96GHm7UUz
 c84ylJF5uUhIm52BwxaZUKFwhXfld338uUamtGhMp+vk/aJ/0w9M06e2WpvRC7MzAwK3wAreqWB
 3cFp4ykePAcyTuD0f7VR3eI7gK1zzTCs940Av0X3YflcaRkxwNRrCmnVvq3H1zB0n7dfT5vY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_01,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 suspectscore=0
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070053

On 7/7/25 11:09 AM, Jorge Ramirez wrote:
> On 27/06/25 18:46:10, Dikshita Agarwal wrote:
>>
>>
>> On 6/26/2025 7:29 PM, Jorge Ramirez-Ortiz wrote:
>>> Add a qcm2290 compatible binding to the venus core.
>>>
>>> Video encoding support is not exposed until the relevant hardware
>>> capabilities are enabled.
>>>
>>> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
>>> ---
>>>  drivers/media/platform/qcom/venus/core.c | 39 ++++++++++++++++++++++++
>>>  1 file changed, 39 insertions(+)
>>>
>>> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
>>> index 736ef53d988d..f1f211ca1ce2 100644
>>> --- a/drivers/media/platform/qcom/venus/core.c
>>> +++ b/drivers/media/platform/qcom/venus/core.c
>>> @@ -1062,6 +1062,44 @@ static const struct venus_resources sc7280_res = {
>>>  	.enc_nodename = "video-encoder",
>>>  };
>>>  
>>> +static const struct freq_tbl qcm2290_freq_table[] = {
>>> +	{ 352800, 240000000 },	/* 1920x1088 @ 30 + 1280x720 @ 30 */
>>> +	{ 244800, 133000000 },	/* 1920x1088 @ 30 */
>>> +};
>>> +
>> fix this corner.
> 
> ok, will wait for Vikash to confirm the other ones.

Actually you can get rid of it now, I think:

https://git.linuxtv.org/media.git/commit/?id=b179234b5e59013f8772da17b273f463f9720bdd

Konrad


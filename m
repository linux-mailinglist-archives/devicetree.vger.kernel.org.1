Return-Path: <devicetree+bounces-221855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5537DBA384F
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C0871BC4B04
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BF929D279;
	Fri, 26 Sep 2025 11:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="opsE6fbD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850B02773F4
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758887090; cv=none; b=deFlLrwmbFK7KP3/gKnHy2wbeI52F92+tP0RyG3OvFUTuLuyaXqwN7CwDjNmpVVbydOvEfgogsm0Ay7ZQ93Wuj+0chnC9z01D1BBaOQFypoCTuzjeziqAbSObThTiKgFsrUFOx9muEhEYAH7B7PNtyrElAFY4aBd1wv1TpU3ZVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758887090; c=relaxed/simple;
	bh=jafD62n3oYEBDKuYo3x5ICEIx1nzpV4cTgn3R7efROY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qRoGZb3qmEMrrBJI1k4B3z5wQqIfnkZF3+I/LJQSf55VsOuiO6Urpi2VLlIoO6O5OfCEZcBKlsgakWj20vyDoM76FUv51CE7oT9oWU4BU5ClyvqarDS5xRbyw8fhXunOcob6lsBhJMW6Hk0QW5vaW2hyVKlmIxkCDlsgGkHukIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=opsE6fbD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8w19v021321
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:44:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oazNeDOXBpNTA9CUERHFDVRMmm0DeM7PNOxF45++cQo=; b=opsE6fbDl/ENPXKt
	eCNa+YeipF2nS9vJmn3AXtZPRjm4GimhVqxxO6Wsw+f3gMIa5ePU1+gTBuwnZ95g
	WYtJdTV3oBtxadZOm/V4gknB+XIp2C+XhhC3dDFzuU+u2Fywvryx9r8lmGXYOEso
	V7aFtgWi4t+naiCCsMehgHb2GAwQx8bES1caEN1fUVhxB5JGUyBGiu76swQGMe8T
	y0Fm0JGFExvF9j38+y38IBpef9F5ONhoOhz67QYC6b7qbleQrf4MNF8E/iuadvuB
	jkRCHlUCwXcrA/Wj+mAM33G1yrUjPm+MJz/IX0WvKIIh+xNR0LeZnN0ivZEhGrP0
	pr7/hg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qtqfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:44:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d88b669938so5157781cf.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:44:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758887087; x=1759491887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oazNeDOXBpNTA9CUERHFDVRMmm0DeM7PNOxF45++cQo=;
        b=gkclCy5ZkGnrMl2tiI2SsDukm5WaiqWX0dtgoxhFf94vSK05td+mH0H68lsvHWZJFZ
         AUElhCCCZYqgUwN5nZnLMvBY6saru4vS9z8OkN6rDVz+MKf+uJpv6WVnx0l3L4oD3nLq
         oTEYCk+JY8GWfeph8F3bMi0ZzmziqBeAdKUCMJcIRslVXEmJ4mq6QD4N44prqFyCdmEK
         1rXudndFJh3jGj4/28o7HNzQptTF3SDxGi3zMq7xtUO46oAWYFFmVFdUy5hjQ722YM+v
         tplWDycAoup+VhQmGZYBgEDkcOEkQpQgcAz2wwQSAMcsvI0cpvimxYkqjZ3vl+PkuYrP
         15BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtHpKvB/SLKRcHVGHqGttfwcGuVUHnbFAysqO+7zVPvLtTWc5e4gDWytkotgagb3eJn2/gUqhnaNsF@vger.kernel.org
X-Gm-Message-State: AOJu0YzPKEbZyV54Pf0Xpfli7BiZWEo8tHhzvrnpDMT7FWiL2JP8nTCY
	9xPbYrTt9Kqd5RDXY0+zra5IEqKrSKOqmpSVRQnl7CVkqayJb62iu1dsxhhyeIFxQcXr6jkI66o
	31JHy2MMi4UOuaeqvnKtWiin08LWYLje++Bm5FiwUvYyXktKv4J8bc3taqTHEHo8i
X-Gm-Gg: ASbGncs3PZKn3aJNOI7tuSa6MNQKDEq69pheT/1YYwfwmonSzo3inAjF7mGmewGioG/
	EfU1CjWbNuyNHs/dJ2NkwpNew107s6dpRazep2rTFCDGmegSE6bwEnvcX6a2beNQae9chdHEBl/
	A/DRurv+0+OU2rYOS7KVi2AanWZpx3XGILwv4AD9/xBSVxLzeMzbWgiTvVLlPWjDNqD4i/hVD9s
	Om2N+B7GrlGLGb1K5ZWvHVcbSSN8l72RtrZysd/NKm9pXxZxSe1FAmMi/3xbX9KP5DNq+OBI8oO
	9F/d6WuikTx6x9sDi1er8jKl1R5GnCp1lik/Fv6VJRWlzP7k50vrCe8vgfHLop9PgkpoGBaCsQ4
	ApNN5ndLzOvepkHNeYqlkCw==
X-Received: by 2002:ac8:57c9:0:b0:4d8:85db:314 with SMTP id d75a77b69052e-4da4bfc05b4mr56721211cf.11.1758887087277;
        Fri, 26 Sep 2025 04:44:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUJgskH5/9pO1Sz5CQgZsxdYJG0av5mRyh8GQfkS2NLlVmdflNR0Y7Vg+ttb4L9svIeMZhPg==
X-Received: by 2002:ac8:57c9:0:b0:4d8:85db:314 with SMTP id d75a77b69052e-4da4bfc05b4mr56720871cf.11.1758887086719;
        Fri, 26 Sep 2025 04:44:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353f86f974sm353684466b.40.2025.09.26.04.44.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:44:46 -0700 (PDT)
Message-ID: <ccb57be5-7f8a-4008-a650-4683d34bfeff@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:44:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] media: iris: Add support for multiple TZ CP configs
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-3-e323c0b3c0cd@oss.qualcomm.com>
 <050b2cc8-ddbd-4a79-879e-4a2c9e7d95f0@oss.qualcomm.com>
 <94f6754f-cc56-09c5-3730-3f36c22e4786@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <94f6754f-cc56-09c5-3730-3f36c22e4786@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Pyzp20qS0vX-xfHG7t1zIGV3MRu6dFEN
X-Proofpoint-ORIG-GUID: Pyzp20qS0vX-xfHG7t1zIGV3MRu6dFEN
X-Authority-Analysis: v=2.4 cv=api/yCZV c=1 sm=1 tr=0 ts=68d67cb0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=-AzuYhFZr7sfLd3NIz8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX58xqr7L3pH9i
 BdiofZz6rlv2DZmjLc4v+CSf9Iot/NTXrXH79A59yXEHwo+xamiadAA5x+2/l8GmnBeCnHVrga1
 BHXVYNCJwJpJV8hdUHm3kjAbVyycubprGMtH2sMYx5VTbe2/25Crm8Vi707jR95We/DV17jnZgB
 K5B/CJf1Q03PGBNgKQqIyfAIGN3+nMPaj37z0feqc7t3/sQEonEbUcsG3zLUyem4mJYQkjdqFVN
 4duMJ9sSHbMuL8WNHbWuBfY3feyCSJumy4mCGUKzmzL/IlseAzf8foMbkBiklWdCITmG9EifcVi
 K7kEtTN6KMTZbXS9kp6nuksHJf/kuxQ14319xWAFSTG9AIgkVMGBnELsT1nBfMg9cxVRj4VEUaO
 ENGoN+ZdIEv/BhAxQKToBtAaiUfQRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/25/25 9:27 PM, Vikash Garodia wrote:
> 
> On 9/25/2025 2:31 PM, Konrad Dybcio wrote:
>> On 9/25/25 1:14 AM, Vikash Garodia wrote:
>>> vpu4 needs an additional configuration w.r.t CP regions. Make the CP
>>> configuration as array such that the multiple configuration can be
>>> managed per platform.
>>>
>>> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> -	ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
>>> -					     cp_config->cp_size,
>>> -					     cp_config->cp_nonpixel_start,
>>> -					     cp_config->cp_nonpixel_size);
>>> -	if (ret) {
>>> -		dev_err(core->dev, "protect memory failed\n");
>>> -		qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
>>> -		return ret;
>>> +	for (i = 0; i < core->iris_platform_data->tz_cp_config_data_size; i++) {
>>> +		cp_config = &core->iris_platform_data->tz_cp_config_data[i];
>>> +		ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
>>> +						     cp_config->cp_size,
>>> +						     cp_config->cp_nonpixel_start,
>>> +						     cp_config->cp_nonpixel_size);
>>> +		if (ret) {
>>> +			dev_err(core->dev, "protect memory failed\n");
>>> +			qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
>>> +			return ret;
>>> +		}
>>>  	}
>>
>> Do we need to do any "un-protecting" when unrolling from an error?
> 
> Not needed for unwinding part.

Thanks for confirming

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


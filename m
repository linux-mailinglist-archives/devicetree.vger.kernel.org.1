Return-Path: <devicetree+bounces-226091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A86CEBD3AB6
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BDCF18A013E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8D0309EE9;
	Mon, 13 Oct 2025 14:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KOdC+aq/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F12296BBC
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760366795; cv=none; b=kX48sYdjE15EcUbPd3cdT2Kta0P2XSky6Foja2fWKVSGbGg6xJlBtNw55N3dO77kqoTc4ktkUkU2LWSKgPziYKYYtQamabP2AMG5kmx9LD3ZimRVk/uV50QpYlnROQCCEkicetTW+kfjT0zCRawJL616hH5MOl5gOl1tR+Un/f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760366795; c=relaxed/simple;
	bh=Baafv0dkbATo2Vjt7gb2iGQKBDq/hh7OJ4ohJRpLxVE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tVWVsye26u2BmJGWIgy8bJOKChVq/xuX/XusyA2FpEUDL9S2YMDvy9SWEIqCsWh1IuZW1J13q2zE1e5fQknXdyeEoVCcFwRROlUnXDaCxi32tgmrb+UAoYF/NJTjP6/jM5S84c4HXLv4rVTpu2mCKQVSZn8fgSDKFLMZKa/TtU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KOdC+aq/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D7QpVi013107
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:46:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Baafv0dkbATo2Vjt7gb2iGQKBDq/hh7OJ4ohJRpLxVE=; b=KOdC+aq/Nmh8Alt3
	hMaeHSfF3b7DKH/A85WEszhDu7c6cVFkQdzL73AuC/zJbAj4lDXiAL5c9wvC6Qjy
	rOIvMIpC2IDLaNhHAM/HiCWPn2KCbrz7iIu6oY/Y9LrqpCguvuM69/tV0Lu8jTtr
	9Nfc6DMG2yN9Vj/OraxUAmVSDVnUZ63tKDhXzKsN7f8a/8KVFOUk99LKsSl3NH8L
	V6WEHlKFnb4t53weTrwxIjhjxsmgPYIh88r2TN+Q9AtOgegmGok0Wb3iI4peboTo
	AQvQx8Nsqe+8WSbrZ26cUNaXjk/z9fh03w7cOOHhCz+x4+/I7kcjXPo/NU6pOCC8
	BCP6xw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1a9ahx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:46:32 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6097ca315bso13172806a12.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 07:46:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760366792; x=1760971592;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Baafv0dkbATo2Vjt7gb2iGQKBDq/hh7OJ4ohJRpLxVE=;
        b=fQ06WCMLbJDnNE/uaHpOZQFWfccwzhx6N/qO5aS+LSlWVw/wMLYjou1+SMTFMcqSXD
         XA3vx9VII4thQuQA2AbqCNlUVL28K/pl83UddVhY7XL5SmtOn1AkT3m2G4x4eE9P6pJ5
         FBBWSVIm79euQPu1UW3Bam0CsG4l/cWaRxFKZ5H3nR3vJecWTBTPdnOdQ3KlLfXLLY2t
         nY8ZM4cTDs2IhkFfs37gh/Mj8ilt38/5Ftvtd7fQeA/1XtNW648JHADLqIvXIeNa6vTd
         Ui0LwQFrAJ0YnYV+I3x+jKCiNGIRpS4m4nvO5iQ9rU3OI4tKFEqgxQHb/8sNrZwGwxZv
         W2QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUh/N+kNmeij3EQLvIug++owewS6VCgYVjQAcphdinWbkaf9xWdDMPJESNJ44sGJ5qVQ+Zz0vE8qHHe@vger.kernel.org
X-Gm-Message-State: AOJu0YyWCg/cfecohxm0rrfH3N9K1XH2OZ5WZS/W0MzZHDefWkM0eBvi
	q1tt8sCMIUatkQNnT/SvDkz0KZM54+n2gvVqonA02YOZDVrbekOElPr3raLFiHsNfNfs5fYWB6u
	pZ7AKWv7SxkKEkjzwySkxz1CuHmI1xXob0oKvEDiPCqfolmY5eX1JqXlLMfFBITJw
X-Gm-Gg: ASbGncuv+k8vvQ/S5c/jIaUPbkBmkd3BnBDAJYWV0lijyduxuQD957Sd0bcEfTQsNI8
	j0GUiw59BzJV9SAYfxR3lggdvaYlktIDu9UuDfJKETxYTr5S1wX8RvB15DDp9Xxi08SfSCasDKD
	vz1hJodmBvJYUabDt4QLF4M3TvIh+Cxk0iXcEEJdmfx2CkBQfDhePd74ZBVQkd9dX9MW1mJ09MI
	yBI/yc9SS24XQcIdQ8n4ZFqyPRZr1DqVxy2l+X+zVfs/KV3lczq5l1jBVjV1BTPz8flkghRnyNs
	noOWbaEKAxhsea8MDzH7jVUYGKqLaIZJc6j2TkQGL7PymmmPkRtBfTOdoUCg+AEpPJqgnaFyZg=
	=
X-Received: by 2002:a05:6a20:7490:b0:2e9:d6ce:e125 with SMTP id adf61e73a8af0-32da80ee0aemr28439794637.5.1760366791939;
        Mon, 13 Oct 2025 07:46:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsp2b2NHE9jGWw3Rw9mQwSkk8mHNUW9ttGhh+qp/1gDWG2urxuMKeyyd0PiKH8o9pWOalrXQ==
X-Received: by 2002:a05:6a20:7490:b0:2e9:d6ce:e125 with SMTP id adf61e73a8af0-32da80ee0aemr28439756637.5.1760366791441;
        Mon, 13 Oct 2025 07:46:31 -0700 (PDT)
Received: from [10.219.49.211] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0964c1sm11703138b3a.54.2025.10.13.07.46.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 07:46:30 -0700 (PDT)
Message-ID: <1d2aba24-f73d-4b60-ab8f-1c9d9bc775ff@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 20:16:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] ASoC: dt-bindings: qcom: Add Kaanapali LPASS macro
 codecs
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rao Mandadapu <quic_srivasam@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, jingyi.wang@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251009143644.3296208-1-prasad.kumpatla@oss.qualcomm.com>
 <20251009143644.3296208-6-prasad.kumpatla@oss.qualcomm.com>
 <28de0f76-24eb-4033-a1fb-20415cfb8d82@kernel.org>
Content-Language: en-US
From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
In-Reply-To: <28de0f76-24eb-4033-a1fb-20415cfb8d82@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68ed10c8 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=-bz6CWZUwYRBO4YHzmIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: EOoONxm7WSFlogKtUBb0H9KPCVPpMxjf
X-Proofpoint-ORIG-GUID: EOoONxm7WSFlogKtUBb0H9KPCVPpMxjf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXwIQsdxNDuEW/
 SI5onLEl6pUfJcI06w3GJawEHiLLpLgBDDrlm0KPlBuL4/Eos7NsZ2BWgdZLfqsdgf+xI4aLSLD
 Skm/xbxNflAfGFHWTYiCll8MQJXfx4zObClx+KGfH5j0vm5wkd6awDKB/OWaOJVy/zqK3NuZUSR
 EoThX0l57iscupVeAIiE/1P/5aAZKqT8sbHBtD+coPE3qnjVZauPUmrJR1DP86ArhXd95Six9NG
 vlX9BIv9vtq96LBWj8BxgnVXS64v/NtkRjfpRQAGa4wrgtfAf1w4gEP5zuFXQhEc8EAiAw5L6dp
 NG8f+z74ZwISLN1m/E8RJkpy8iglxTIc7lt7Mru5jF3pJ9u459AxgZud2WXu8A3k9SHQvE8hooa
 p5vcWPUfF0hllZNxTaklr10dR1yPCA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035


On 10/10/2025 5:54 AM, Krzysztof Kozlowski wrote:
> On 09/10/2025 23:36, Prasad Kumpatla wrote:
>> Add bindings for Qualcomm Kaanapali (LPASS) RX, TX, VA and WSA
>> macro codecs, which is likely compatible with earlier SM8550.
>>
>> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>
> Now it is incorrect SoB chain.
>
> Please start using b4 - v1 was sent with b4, so I do not understand why
> now changing this.
Sure,  let me send new patch with b4.

Thanks,
Prasad
>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof


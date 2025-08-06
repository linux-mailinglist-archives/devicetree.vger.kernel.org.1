Return-Path: <devicetree+bounces-202054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B007B1BE93
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 04:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6BB2F7A19D9
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 02:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757B138DDB;
	Wed,  6 Aug 2025 02:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BVhk0sxl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AAD13957E
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 02:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754445889; cv=none; b=DhehogHw0iMVd6+kTHZAsGe7SxWjJ7P4wtCc4C9hnsAMLhQMgXo1vjsTCNVoQF2qjPoXwDJX/Byxc/Xr6umfFJmaWc8c4EVPe2TOVSZGSGrw2G6NkQUBbFG+eTHCv9nATkkw+UAAHeY0Z1v/jpYuaNiMxhQut2yjo/1MsW9DH/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754445889; c=relaxed/simple;
	bh=0cJicQ091J9OjMWSKDQJTGpw8UIKWd/RWbHq1EwTwPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U2GGP0wc7MLgyIuYyySUy6FiFgUT/FTjqLV6znDDHj31Y9VJTPSXNFpuPbvDH/TOag69bdEJe73yFBdZepsgiznKi685neDH7SqJsIPMAWUeOdrC+lXRG0cGz0+YFwK9feuO2AWpO9rni353oKNAorMJnN8UR/ag4wOi/sbmnd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BVhk0sxl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5761fXlZ029318
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 02:04:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yXGg1mUHTujtbt8jVsUDVGPI6WRp9uB3EeCifdpRU6U=; b=BVhk0sxldBZH73/d
	C/y8O1w+pWkzETua99lW4xgP2j9hWJmg5HaR+NoCBlhYMZPYCTW/vuJiUjDcNx7n
	eHpkDV9wjJHHFVTMp7k8/0a2e8wExoGG8v/G6ZXFcjTLj0jp8TWUOkj54sGwWkJ8
	5CNaAM25V3aGE0xpceyiiL99vphyvpIJwin5sUMpowIQSSFnxxW67+nNUUvHD99O
	V2x3YeuUyGK4f4lG3C9XZRARtNBNgHNjnzzUUKaWVUFMuJJKb+T+3aB5kK5dgBOy
	UX5FUJs1mFoJFh9hLS5MU+nF4qvN+eYVisSQtMigocb7x6KCBKOMTXSvPmhQ1aG4
	jFvc2Q==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy7s1ss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 02:04:47 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76bcfe2a8a4so5787984b3a.0
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 19:04:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754445886; x=1755050686;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yXGg1mUHTujtbt8jVsUDVGPI6WRp9uB3EeCifdpRU6U=;
        b=tSA9+iG8Sx9yAWlSSoYmnNPp6QFGWoBsEXtlUiM281z2YB/QmyfZ1dxy6V2vWNZMEN
         Yuho9IxIQHbhrZu03XDQ/sj5u6pfL5ctN9tCXTJCqtr1LqUkr8Sf+/i70dWJnJWYnrIH
         Esf32dKUfksn0V8/zVlXTiSi37gEuPyRYa4OcEmoEYVsQx+gklZO4g8GWzjF8NLAHBGf
         M7X1qtOs2doNsME0iVFpoWbLMBhFElePhKKJ2aewNLMElnwXOas6hDnCOH75d+ZrW9fn
         conQe32mkG/cxNFCU3mlHeqMG+tkBjQ4ahZua044KdAs0BuE7SJ5UUMs9OHvt4/hZUCX
         1QyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXy77H7dBZAdGsqJYH9MAn//wmMnxae+qyA9rYjDuNq0ub054XN/qm+m3cLRvf51UnVXxvFD2e/RkuO@vger.kernel.org
X-Gm-Message-State: AOJu0YwJj2TGqGAixCpbipiBg74x8Bies3wYvDsN8aOBThKPzCYZSbPR
	6FJrK25T5X3Jo06sP4zQECKqnWxSH1FVSpOlman6ApsdbwXvR0qe0ngKbK8KRXzb2OxfMEFxlLO
	KLjWUW5R4vjdHrx0SEwJFE8MEv/EnVuncgVAWr3YAGXtdBu2gbH+r8hu6BRl21gZC
X-Gm-Gg: ASbGncupAMDEzoH4YQzdqonfmW7+7fKW4dxMTNabzMpYgc9+9ltAud8cKsnqgIn6AGR
	1jD0Qo0a/9wApKhVyfmgJ9eQiWnXXSDkPHYFQSzCN+Qz4J7Xmg72Qw0eg9jea0SH9lwbXTGqiVT
	XeMvRXYbUYAR4wgrdLNhNS1wz4SvRA98Ccoj1H4mMtJMpDDf2Lqun88+yl/zTBTf6GMiv/epxhE
	yWeKUEdPgffkfoUpj8oN1ovKVV1qcNzc8+1W+VkMAP/MKtagwHrNl96DYqN45Emn/OAZFazzYMB
	aJn4H0kTbd0IvAAAOjFdpqMssQyp+p3TgF5gbZsKbbCm8DY9Fk3/qaHHZgYFr9bKy0cBDSEY8xh
	sVqZQZadHskdXcKCB9dH75SImfoa13dY=
X-Received: by 2002:a05:6a00:2e94:b0:74c:3547:7f0c with SMTP id d2e1a72fcca58-76c2a2813bbmr1482716b3a.3.1754445886553;
        Tue, 05 Aug 2025 19:04:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqDV5H8Jprm7TFGMMrpbU5LGfL2JFi875JtBI0da+l/0ajF1L/WkClXKDwmz9eIB2FWpjkoQ==
X-Received: by 2002:a05:6a00:2e94:b0:74c:3547:7f0c with SMTP id d2e1a72fcca58-76c2a2813bbmr1482674b3a.3.1754445886088;
        Tue, 05 Aug 2025 19:04:46 -0700 (PDT)
Received: from [10.249.10.160] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbd174sm14118221b3a.63.2025.08.05.19.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 19:04:45 -0700 (PDT)
Message-ID: <784d4807-9137-4160-a8f4-832831b5f751@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 10:04:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] arm64: dts: qcom: Add display support for QCS615
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Li Liu <quic_lliu6@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
 <20250718-add-display-support-for-qcs615-platform-v5-1-8579788ea195@oss.qualcomm.com>
 <1f6fc7ce-5826-4f59-89d7-ac691a3ae785@oss.qualcomm.com>
 <7e4d9dfe-428f-4374-9be7-97123cf36e5a@oss.qualcomm.com>
 <c93ab714-93e0-4b4b-b059-c48d4c689c1d@oss.qualcomm.com>
Content-Language: en-US
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
In-Reply-To: <c93ab714-93e0-4b4b-b059-c48d4c689c1d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Mftsu4/f c=1 sm=1 tr=0 ts=6892b83f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=uzlMTK-j72Ye4Gqdn10A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: LVO1zHLQgcMVVq0DrjGK_3y8TQZjuawn
X-Proofpoint-GUID: LVO1zHLQgcMVVq0DrjGK_3y8TQZjuawn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX7o0rO9y0tWA7
 u09cklxXfZdw9DnrCxTn1EVvrkPMNcGX/j/ygC70QtPyXUfRvTKu+KDezaKR8opJPSUmu3nP+Wp
 O0hBFu28OeH3phwu0oKIAlnNUnkJ5EuRZuWhSKX7pnuW0ZeSPppbhCSIhQsnL43NWlSx71FMm+q
 L6JvgSV7CCt5DYaAH1LWL9W59bRg51A4alliyBP/2YBnRix7SYr71a+FQv/mwKyikbUOAphqG1S
 7k1uZ7s5ilAVyZhAIal49ogOc7ZIfgghEDZSTSWlGMVuJMhzKC9KwF9ZIAO8YDErNGVhimBhHY9
 qqK9098gcKLY7QbIR82htEPp8blO2owTKsbcBV2WMDG5Q2pibTucuN/9e6bQ+mP0WxY75QsWuNs
 a9Ix07X0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009



On 8/5/2025 8:26 PM, Konrad Dybcio wrote:
> On 8/5/25 2:24 PM, Fange Zhang wrote:
>>
>>
>> On 7/29/2025 7:17 PM, Konrad Dybcio wrote:
>>> On 7/18/25 2:56 PM, Fange Zhang wrote:
>>>> From: Li Liu <quic_lliu6@quicinc.com>
>>>>
>>>> Add display MDSS and DSI configuration for QCS615 platform.
>>>> QCS615 has a DP port, and DP support will be added in a later patch.
>>>>
>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
>>>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>> +
>>>> +            mdss_mdp: display-controller@ae01000 {
>>>> +                compatible = "qcom,sm6150-dpu";
>>>> +                reg = <0x0 0x0ae01000 0x0 0x8f000>,
>>>> +                      <0x0 0x0aeb0000 0x0 0x2008>;
>>>> +                reg-names = "mdp", "vbif";
>>>> +
>>>> +                clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>>>> +                     <&gcc GCC_DISP_HF_AXI_CLK>,
>>>> +                     <&dispcc DISP_CC_MDSS_MDP_CLK>,
>>>> +                     <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
>>>> +                clock-names = "iface", "bus", "core", "vsync";
>>>
>>> 1 per line please, everywhere> +
>> Got it will fix it in next patch>> +                assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
>>>> +                assigned-clock-rates = <19200000>;
>>>
>>> Is this necessary?
>> test pass without this, so will remove them in next patch>
> 
> You need to leave a \n before you start typing your reply, otherwise
> the email text gets messed up (like above)

Got it, sorry for the mess>
> Konrad



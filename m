Return-Path: <devicetree+bounces-200789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EF0B15FDB
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:57:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD12F56001A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 11:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFCF52980DB;
	Wed, 30 Jul 2025 11:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mx2is+/0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9901D293C44
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753876633; cv=none; b=btqHXVpNJZ51WbLqXeFL3cYU/EQ34PblApMpDPweCZK4bjyoBObz2nTq/cGYVNO9KrE0yKy1pW44g9l5cZ8M81zJMf+YD70rLHpGvWIznAnmFk/OwrMnQPdzHA+ocKq2mDZ72PTISa3ODGCvD8G9C3nIP3UreOrjnsvHf45wcHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753876633; c=relaxed/simple;
	bh=+eRDzekTqZXJk8PBWToJk0rTOuC+gK36unHXlpT7R3E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jDEE3V0ob3A5dLi78BezwGqf/yKf188qy9nAEiqUmoi4V/x9bq1shw8sxW+5n4gPV7cQdMzT8xcwT0c+3OQvqp1tTt03SXsC9WiSn5J6KaD1iJXq1IYF2b4jptFzn+pBpr9+1xcZ+OlrKmfEHXtylCml4nA3PsGWPMvrBO/NsPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mx2is+/0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U5RTSb005038
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:57:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mIcjeDS7h8ogUXxvg4ORZjBG3hxtqpSdWr0+tiwbntc=; b=mx2is+/0fcYAIXjS
	K6AjbVbXpF6WdJTnlXVg0K1oy6kkvtcj869yStnAx3zvac/0hyyPFlQgrq346N5U
	JRkVtHpyrS8xU4HXYEWrv9qJxutLAjQpGJZi/qLiP3sFF9VmvXXgYHe5PgEtNHBs
	dws3DB49dUks3+pH2uAc/ssZxy+hdxKDV+MjPb84BgB2FoXjXeKrLzc5uiu21qDL
	cAwulemQGW7FQl5txt667736cbyWU5QNiKpUWq3hJvYfi3SBQDidee8YHINbis/q
	WKrlyGog8ZA00f2T+1ruOcORKbSfupyl0vx+LtH7pnCX/Xv3ijooEl/kf1z0dgHy
	ZNH9kw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyu3yfs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:57:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e48325048aso50614785a.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 04:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876628; x=1754481428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mIcjeDS7h8ogUXxvg4ORZjBG3hxtqpSdWr0+tiwbntc=;
        b=Ge6J5GRmezf6im/64qA5p6RAthMGbUj4zN7nn62SsddFfE4MkL0kAEY77M5G/CbM4B
         nKw9xRBiRNv8HIhIMUijqJHGMR1FSE4Ya0dSv+hCQck9UhODjYDRzs1RcEuO3kJq4Tjk
         MhT1nAnoD5Db94Ya+AsuaRa+bIedNIpUb258NoyTlfpzledS+kk07HVsT0QXxG6zwBkr
         Lqg+o8d3/kuwDrOEumxsHQsHuhCV0LP0lMXSWJ3U3w0nEgDGAcrbH4WZouppsvtTH7/e
         8liDU09wHbKiRtH+B3OVUeSJ9rwl0MyRzldK50liEoKph1xOFnYJWTeBoLkNWSBkzGxB
         pQHw==
X-Forwarded-Encrypted: i=1; AJvYcCVULZSqH0XyQsXpkRrHQp8kQagi8jO8kcPRM/HghWXDpzOnRSlqtc7VA89g2l9gpEXO99N8XP5KBODt@vger.kernel.org
X-Gm-Message-State: AOJu0YwsbUz54vVnd3FExag7ImQl4YHQuP23pLu32QZMT5Jht3ckMkpU
	/1+ksoE8NMK09T4UiYPU9h67L4/tIHTYndqfIZXYbrzCiWBbnULXI0XSCQqlf9ak4aygoiYDnmH
	/VZ3R4eYYiDjaxgnRClR+ZTo008pkxsV8crkKZrANjKPIyLZFIye8wxI7nkocGK+E
X-Gm-Gg: ASbGncuwOeKQuu9iuTM9muRu7iJZqxXP6osJ7sblrDPf2gKWGW5rABq5KX/oHNQuuam
	KixWLPTffmbX0ADTyQUMBAq35ryGqNqae/af+1y404lrw/nzwejlUjjZob+hEZWuyZ/A8qrLpPg
	ZHUKFbPHQ8S8NXZ1rQDgd+CXiI4dIil6peFJq88dcCs+/Bs3ld46JBvVjuULhfM0mC/kjrFmI1e
	CtynpqUyoZN4wbD1k5CudOCsqpplYHXhWKWGE1WBAf0FguDpzmuWFZ5jxCLVqguVoZJJx1Tm8uk
	lXHbf1MVGbzD8pOI1bYc7QpcSjxbETiiFlBq+1Fad8u3p5gbRfFP2zYvw491tgkZiFfQlO91nNb
	RB4fEse0D2S/5dC6reA==
X-Received: by 2002:a05:620a:424a:b0:7e6:28a9:db0d with SMTP id af79cd13be357-7e66ef809d0mr222333385a.1.1753876628432;
        Wed, 30 Jul 2025 04:57:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZwDA7UZeel7Rz4M2kn1nFFS9iWCkYbP4GPLBRHIUG1gQp3Hpc/hlmL7J3fAcf+IqUnB0SfA==
X-Received: by 2002:a05:620a:424a:b0:7e6:28a9:db0d with SMTP id af79cd13be357-7e66ef809d0mr222330685a.1.1753876627944;
        Wed, 30 Jul 2025 04:57:07 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af63589cab0sm728955766b.38.2025.07.30.04.57.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 04:57:07 -0700 (PDT)
Message-ID: <4e9ec735-1278-4475-8898-1e12ccb94909@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 13:57:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v5 03/14] net: ethernet: qualcomm: Add PPE driver
 for IPQ9574 SoC
To: Luo Jie <quic_luoj@quicinc.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lei Wei <quic_leiwei@quicinc.com>,
        Suruchi Agarwal <quic_suruchia@quicinc.com>,
        Pavithra R <quic_pavir@quicinc.com>, Simon Horman <horms@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, linux-hardening@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com
References: <20250626-qcom_ipq_ppe-v5-0-95bdc6b8f6ff@quicinc.com>
 <20250626-qcom_ipq_ppe-v5-3-95bdc6b8f6ff@quicinc.com>
 <4556893f-982b-435d-aed1-d661ee31f862@oss.qualcomm.com>
 <e768d295-843c-431d-b439-e2ed07de638e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e768d295-843c-431d-b439-e2ed07de638e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: NRSYmJ9wzGGq6viwSPbEvUyKn-rNUKCb
X-Proofpoint-ORIG-GUID: NRSYmJ9wzGGq6viwSPbEvUyKn-rNUKCb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA4NSBTYWx0ZWRfX38yTFgfqTOIZ
 chAiEQyiy4bVyTJ6do7KZY6h8IbY5fQeEgrROhHx+IHYsWJCtAO6Oh/jqeFdsIka/4JPoVqbo+L
 ZFMMU73Zao5Ypo2hf3vt5fsCohcXI+D9VHRLMVX6sg8bodwuyDr6yDdtG5kTTgMIF/JZu8AbHky
 lJo+go4yzUIxZ3Hxkv/aX+sNLPTnbYezt/ZHYHXvP7CVajO44pY5O18hfj4r7AWcJ1u2Nr5L59q
 2tNJmEq+DK+wSWYBT7DU+fnSbytU0v738IWodKTQu3pgEZWoo8E9G1chWtmYf17mjKsT+43vn0h
 l44miMBfsr0IeO012bGrWXbLyoZBh0sIARq5PlP6ZgMsSx1Ib7Cg+dxEA7ywAl7fg5XReY2WnWI
 x4dGrVDihD6o0v9I2a4IGNIIjpZYkzOL0rfELoXbbu2NrAq6tgUMGV9k96ylSX1T9MCX/rhc
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=688a0895 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=hn1M32U-3FIS6ASJhmIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300085

On 7/1/25 2:24 PM, Luo Jie wrote:
> 
> 
> On 6/28/2025 12:21 AM, Konrad Dybcio wrote:
>> On 6/26/25 4:31 PM, Luo Jie wrote:
>>> The PPE (Packet Process Engine) hardware block is available on Qualcomm
>>> IPQ SoC that support PPE architecture, such as IPQ9574.
>>>
>>> The PPE in IPQ9574 includes six integrated ethernet MAC for 6 PPE ports,
>>> buffer management, queue management and scheduler functions. The MACs
>>> can connect with the external PHY or switch devices using the UNIPHY PCS
>>> block available in the SoC.
>>>
>>> The PPE also includes various packet processing offload capabilities
>>> such as L3 routing and L2 bridging, VLAN and tunnel processing offload.
>>> It also includes Ethernet DMA function for transferring packets between
>>> ARM cores and PPE ethernet ports.
>>>
>>> This patch adds the base source files and Makefiles for the PPE driver
>>> such as platform driver registration, clock initialization, and PPE
>>> reset routines.
>>>
>>> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +static int ppe_clock_init_and_reset(struct ppe_device *ppe_dev)
>>> +{
>>> +    unsigned long ppe_rate = ppe_dev->clk_rate;
>>> +    struct device *dev = ppe_dev->dev;
>>> +    struct reset_control *rstc;
>>> +    struct clk_bulk_data *clks;
>>> +    struct clk *clk;
>>> +    int ret, i;
>>> +
>>> +    for (i = 0; i < ppe_dev->num_icc_paths; i++) {
>>> +        ppe_dev->icc_paths[i].name = ppe_icc_data[i].name;
>>> +        ppe_dev->icc_paths[i].avg_bw = ppe_icc_data[i].avg_bw ? :
>>> +                           Bps_to_icc(ppe_rate);
>>> +        ppe_dev->icc_paths[i].peak_bw = ppe_icc_data[i].peak_bw ? :
>>> +                        Bps_to_icc(ppe_rate);
>>> +    }
>>
>> Can you not just set ppe_dev->icc_paths to ppe_icc_data?
>>
>> Konrad
> 
> The `avg_bw` and `peak_bw` for two of the PPE ICC clocks ('ppe' and
> 'ppe_cfg') vary across different SoCs and they need to be read from
> platform data. They are not pre-defined in `ppe_icc_data` array.
> Therefore, we use this format to assign `icc_paths`, allowing us to
> accommodate cases where `avg_bw` and `peak_bw` are not predefined.
> Hope this is fine. Thanks.

You're currently hardcoding the clock rate, which one of the comments
suggests is where the bw values come from. Is there a formula that we
could calculate the necessary bandwidth based on?

We could then clk_get_rate() and do it dynamically

Konrad


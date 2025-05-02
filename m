Return-Path: <devicetree+bounces-172929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 177A0AA6FEE
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B52543A9FC5
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 10:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B89241679;
	Fri,  2 May 2025 10:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YBsJewTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431B62417E6
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 10:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746182356; cv=none; b=lU/wrM1s4QUCPNZZob2q9T/DTz6PKH57QLISh2Y6kFwrU7/rBLhpjPE5LhO4zrAFZ+uByEleeUNBZ6BqvN1d5RYHF434EWYEn702GamEU+UeUbnXZ2itOCbogNQ27KM/+2gv+0Occxf0kHgf5DfOH/LPFF4DJcPf+X2Mas/0ZQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746182356; c=relaxed/simple;
	bh=91+VzaeK9dxPZVYsr+MR5CZNL9ROHE0XLh3Z2QKhg4c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TW0zsrVqgjtLtteweVGKngctpeMZ5wFJVSyatjbayBuVSAMcX8sJ3dBvfR0tpFb1+eMQyT0NcJ4VGWAtMBRYHJxyXEP4XT2sgGKXUUUApjxiBYsOVVVzU8kHNDBp+oNey7WUiBy++0mSECCa8gO6ODyKb58OKdSm1P8FyzzMmvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YBsJewTE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421Ojk6019604
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 10:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OIr1D/lYOg7T3JU7Mk1AnGQHoq2cb/y6xIambWrp6gA=; b=YBsJewTEPjg4WfS+
	3U5HYHgksaOKrpOSHbLtewheei/G4B2gW5AiwIllxixn/Ycg5sD8lIeJz/rOKF/o
	rIf6tkcj60OEinE+30bpU1Xunb0mHXi72ALkg33U3EYgo6xfn/2c5xKBoL/RzJnG
	lSQMdVqb8CbK6enmOSw8GDcgei4mxhSl8EhqdPQfE/AJvW5PH66fw7GU+ada2JNc
	nGugszQ6IofBjmTYL79g4dbvJfb1uZZt/swTj4HYJme0OIHQu9iTQVyil4Y2rYEj
	LbgIt8c9Z7I1ZwoFsmJs6TDMTYkJ22UVfArCQNJnX8tBMUvBdP+ZpM8LceX0IINV
	V+8gaw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6uafw0j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 10:39:13 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8ff8c9dcfso5463686d6.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 03:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746182352; x=1746787152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OIr1D/lYOg7T3JU7Mk1AnGQHoq2cb/y6xIambWrp6gA=;
        b=gFh3aYa7Pbyg5q4Xk9ulyhIU6NSW1GSd5WyeggUlTNLDYr8FGpKb4Vqh2QmGfE/pll
         jXF0B/P8mrs2bQH6GZ282SkNk+5oMUtUXqz3tid1sO7Gxj3EwO4IiH0T9dCUF4/oA0km
         D+yxzVUC3qVDGNU02AVu+X8uYDEyinDa1bTU4ooT5zgzuv39Yr9p1Qwj6iyZ3NpNDf08
         s56/v94yJbKIFb7wPVsTvQoBEwpce2Y6n1H4+uuG3eL7XFVweCQn6sB5yNtm8APcH+4l
         3N7U2Bi63RyKkaG1C3LZn7MVrk4Jl91caPMXTTXIbsF57YHsfFbv9DvqcRsDECJUuqce
         Lc8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUec9zYDyi6t0Js0KfQ1Uo3Xkdif+83ooAWal2rj7NHvuC4dcp4MZcvP+hmeeBctY6zxRbPnMDHIwKK@vger.kernel.org
X-Gm-Message-State: AOJu0YwBGNYTiE8sFG/dUQ63dYY3EXssDhMMyZmV2K9gFl+mQGa2mDTk
	sK+aoH7hoNnYkFM7Rg8D9y90BKQFrC/JrMGB5I7LrpQ/hkX01IrNX7ts4O2URTdcna4BCLJeeeu
	+oBGmc+KmzJCI4ajkcY59N8nBIwfLjaBJfxA2XwmI8sV/7cFFYdECy0Eka9/+Jlfphk20
X-Gm-Gg: ASbGncu2XbQ5ggjY1oVe9WTcq64SvxApCE5OK1+9p3O4K4SfsuSxOuT7l0c+PdLpNuo
	ZcQ0SYS5CrSAheDYqQB6qhsDhDI3q2Id1zhvjyYxzpQCLNWyMMbvcBFl6Bl+cGg+0Ap4MSp6c39
	7w4isoQUx0QWdBh9vwOSOiBJNFAGEZcdx6RmhuVQ9zzJjnqgMKKr+fjMEmiFDei+nlyQufSnhp8
	8d0Kl5J+UdRhIm+g384o5HZc89dnzrZBtM2msnvPHnfbUAxRM6LcAqARYYqdQ0lFzNC+tSbgdKI
	ylr0MGF1X9gzXjHpH6VfLC6GEkoeFWhWfDnNCukrUzUB4V4uczpkJ82Ub9ZByd17NnE=
X-Received: by 2002:a05:6214:250d:b0:6f4:c603:588c with SMTP id 6a1803df08f44-6f5155ebaeamr14767046d6.7.1746182352130;
        Fri, 02 May 2025 03:39:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5ESrkRVw2+mxu0PO1FXdnLDMWH1my1jiV6PycYxBVLygwmc0LUraGDQp7Jf3L/XIsvmlHMA==
X-Received: by 2002:a05:6214:250d:b0:6f4:c603:588c with SMTP id 6a1803df08f44-6f5155ebaeamr14766836d6.7.1746182351808;
        Fri, 02 May 2025 03:39:11 -0700 (PDT)
Received: from [192.168.65.113] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad18950907bsm28979166b.126.2025.05.02.03.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 03:39:11 -0700 (PDT)
Message-ID: <2f5d9be9-8eff-46c9-9316-be2c539303ac@oss.qualcomm.com>
Date: Fri, 2 May 2025 12:39:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Update IPQ5018 xo_board_clk to use
 fixed factor clock
To: george.moussalem@outlook.com, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Lee Jones <lee@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250502-ipq5018-cmn-pll-v1-0-27902c1c4071@outlook.com>
 <20250502-ipq5018-cmn-pll-v1-6-27902c1c4071@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250502-ipq5018-cmn-pll-v1-6-27902c1c4071@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BNizrEQG c=1 sm=1 tr=0 ts=6814a0d1 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=RdtYeOucVzowFPH3w8gA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDA4MyBTYWx0ZWRfX0eVNAhtkqkkM 57vfWIgyo3ztCq3nBr91AtWMXdwmnchRYGAhz50u54OhMQPc3kdvOJxHDJEiutSdn+pbICL9Jjn Y6eyMX8YyNp4p7THwHvXthLcmJy1/vNYU6CSBdn4gpoT5RDrI891UlJU7bvnV9nmpQVYOYf3fEc
 OUvoZNepKNh+qEAqsbvF5l1KAKwR0x9OptcnsP8uR2foIHTp++FH2GTwtQyZSDOyOm3uXAw9Lvv tqzCqmpwvK5/Res7Erwq08fn761CEU7o9Zwzh06uJgKoenujPFesCpDHt2VcsKru5MmYzYzcu70 q7iKjLSW0E0gLLxOZCQeB7pvMilLkUofG8ULMjHXSdLAPDSHmLBznalMkwzRdS9VkV5Hty0z0gf
 OOWc85CuILkfgNL462GKuk35x51fmKrbpYQASaa2jxN5AnsGO+785sRXWP0Ace8LbI3GCYW5
X-Proofpoint-GUID: wVY8UYNdirobklK4oiCjsxW8R2LO9dOV
X-Proofpoint-ORIG-GUID: wVY8UYNdirobklK4oiCjsxW8R2LO9dOV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 phishscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=880 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020083

On 5/2/25 12:15 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The xo_board_clk is fixed to 24 MHZ, which is routed from WiFi output
> clock 96 MHZ (also being the reference clock of CMN PLL) divided by 4
> to the analog block routing channel.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


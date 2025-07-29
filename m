Return-Path: <devicetree+bounces-200462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BEDB14C86
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 12:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 148563B5853
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14CA28B4E3;
	Tue, 29 Jul 2025 10:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="etLanObY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E70328AAED
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753786178; cv=none; b=dAZ6I9gruf9USfQd5+jU7dDEGFp1jLRbas3L9AYAAf6pVs33u3HuUJgpUNJAecgaQGJ7H99gIecTedU+cKFcUHGoz54R3m+k2YWsUkRyBzzjoMRk9iYIPLmsJvhurkbt8c0/jdyG2NnNZA3c6BFJIp0Peo/cbgJ8c92v6Uh65c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753786178; c=relaxed/simple;
	bh=3NjEr949klcb1iGBUHCvKsBaHUyDI+r7RHxECamMvxE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZWXaBNKcu3Cmq+wdSGab7CQFFH9H4uAdkWGlXbWOQacJyVKVtMdlNxoJoEqS6T+Ga8Y9U2ftli6qNLQTIVHbYj3HDPXK+s5fO7bOZl8Fm/iJqmkb0p8L4yWl7Q2alrOCwi78ZT/cgtlCw+/ghAw3C+KC7YU3YvINWdCvf1jhBQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=etLanObY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T8FIXu005041
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PkaxQrVa3W0fxICjBisBL0T34FtsYWW4gH/vbW0r5IY=; b=etLanObYoN0FHF8M
	tCb6Wi/II1hgH+MP0T91I2lskdN7C3WRuvs8y4I/j/0XOzKB4At76gt93SjLtmpA
	VsN32ukeBKHu31t3XOcnj0YlEtB2PUlAnY/pK0hksYvYnMvs5OS+EBuQPyDOdI/C
	crN7ftqP1PM2DsvE5dmNNjQgz3hxyYhq3Ro9XvtdKQ0ltl5cx2+qEIRSufrKqKLK
	uPHtRkxjUq/ki36QlFF7tyKEZ9N5Yseqq5WYGcmHysgvZaOqp/N+G3x4nE4FuOVj
	pdiDPEvAshnNX+GHUpt5m/UmNt7w1c7lbYVH7TEqJVB+U0S90fSc4KnEd02LsWo0
	vOI/+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyu01mu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e2ced79f97so51210185a.3
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 03:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753786175; x=1754390975;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PkaxQrVa3W0fxICjBisBL0T34FtsYWW4gH/vbW0r5IY=;
        b=Lw18JDn1GUUsNsd023geVd6iOp5qHwGZOBpy21olL3D96tw8QN/avQCsSqWlJIFDcx
         DnmrHWYbjMca3T10Rnvb1yVxzg/AzFl5W7b0Xj8R969bSAa5QD2WZMr6n0Jf9pu9U5Pn
         Gk2xhuWtIC9y9doIiNydntLkg6zFdPplDgZkTgAbEo4aepnH3BK54r3xZ2HNhyJGzsR8
         v3KqZllFrLGw1Zj629epHBTyF8FVqlPQiUULukf5yAnYd1oowtaHt/PALcdNsJjoqUga
         g+ghLQOFX/IgDctV3n5N5gCdiDeBy+yXz6UT8B+ljr3xfVtqbKx89Qpwe/Ym6CGSUYTD
         4luA==
X-Forwarded-Encrypted: i=1; AJvYcCU3kVn2dqD3dsCoPnVsr9XJbW6px/i8pYOvT32AAHgQshtAblOL7vUoZgu80EanYiBlImJuUS3eekZp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/+n3fPqW017Qn42KHPS9KnqihFq3DWgsaIoLzsbGluK96nSVD
	NZ3VMi7VpQPsbjWNMYF6XTVBR0ssaojq/oOgmd35bgQVaNtb/X9zodGS9ISWz3WyK619rJ/5CfJ
	NnEWPW8XmfOD04zvjnISqByRGozIF/iUXqeq2wvMsFBcA/8ET1gg2BIDCZAUpOCXA
X-Gm-Gg: ASbGncu2o+zq2tlmT4IPb7Q6MG9d/qGe3hy41Y2mGcmBIYkdmC579yQh3htucdrt8cf
	WYwD3yo9dv9cNzxchXU8gT9FWuHWB7RrsuKbACNrpRVnSile6XB9O0+chXiyg3tbBQbBXIS6SnO
	SHmdASb30TIKCi5c2x8N2QgOT1oWWDOwzfjgqPhLi0V4g9ZvXjOBGFtVF0ogCx2O9SO5LjR0jDU
	kavzdNIZwuv1hK2p8LPy+UlK0Wi+26N15/d5UYEqMFAp8RLELJK32MRBv6SRniqWpgopb4DrjtD
	9y/gfOks96yyKgK0Zf1v7hWbgbVJicHAlTK0BVKOoDTb/bZLDfBJJInV9jAAdrY1pQalb03jAlr
	DHxccf2wbwBymcLSiCw==
X-Received: by 2002:a05:6214:4a51:b0:707:4020:8631 with SMTP id 6a1803df08f44-7074020c508mr39353676d6.5.1753786175197;
        Tue, 29 Jul 2025 03:49:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IET3lprW3Hl+UblfFO22E57srKZN9s6YGNunKASndnP8ZoduMXNySxnL5z0zpm6nnnqWds75w==
X-Received: by 2002:a05:6214:4a51:b0:707:4020:8631 with SMTP id 6a1803df08f44-7074020c508mr39353486d6.5.1753786174855;
        Tue, 29 Jul 2025 03:49:34 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635accc38sm560388766b.114.2025.07.29.03.49.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 03:49:33 -0700 (PDT)
Message-ID: <8b30c83f-5f35-49d5-9c37-4002addf519a@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 12:49:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-7-227cfe5c8ef4@oss.qualcomm.com>
 <25uelsjuw4xxfopvfn4wvlj2zgivwbjprm74if5ddwvht4ibfz@yctc2kvfmxyw>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <25uelsjuw4xxfopvfn4wvlj2zgivwbjprm74if5ddwvht4ibfz@yctc2kvfmxyw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: trJuTui6JoEQhCy3TJh64SwMWkUWkJlU
X-Proofpoint-ORIG-GUID: trJuTui6JoEQhCy3TJh64SwMWkUWkJlU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA4NCBTYWx0ZWRfX7M/Opw/qQvXX
 hnaNTqoGsg+LYfnfr45p0e4FRpkSZy9J2LPocA01zoGNXAlaMaFQu6HnN+6+SmXCeIO0mRyyNvg
 oNVDTjfz/QH+fVJUSxnBNKxSnuUKNjHMPGF3zHTTRXZQHOKmByb7xS5js0ir5e1AHKz2mNf28wY
 AJO2vQ4oN1ZbRsBqGQX9muQnGJzIi00GYNA0uGt44rfwXyrtPeVzqrOuLCQ+hkDSRY0C516SGOd
 seA/TcRQA7tRQRk4GwnMRWo3XflO/lxl0FEbPkLGlu0dw0BDlIdKSEZt7pguUXpGQFZddTNRPjz
 NnSdGlfKamBGKp7KT05LSYsnOU7sqy7UB9Di9JPBSoUu5dykMrRTh9tb8M2gCvAoZjp4C2JPUlq
 4vqi55lXojiXI6L5c39/U5sgwJI902ZJUUu9y5gamPkTSWfgiOQv/VwGapMY/yrkKJSYQOIz
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=6888a740 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=N_I0jeO3kqKEb7emQd8A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290084

On 7/29/25 12:48 PM, Dmitry Baryshkov wrote:
> On Tue, Jul 29, 2025 at 11:12:41AM +0530, Taniya Das wrote:
>> Add support for Global clock controller for Glymur platform.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/Kconfig      |    9 +
>>  drivers/clk/qcom/Makefile     |    1 +
>>  drivers/clk/qcom/gcc-glymur.c | 8623 +++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 8633 insertions(+)
>>
>> +static void clk_glymur_regs_configure(struct device *dev, struct regmap *regmap)
>> +{
>> +	int ret;
>> +
>> +	ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks,
>> +				       ARRAY_SIZE(gcc_dfs_clocks));
> 
> Why are you doing this manually instead of using
> qcom_cc_driver_data.dfs_rcgs ?

I guess that has been merged last week or so, so yeah, please rebase

Konrad


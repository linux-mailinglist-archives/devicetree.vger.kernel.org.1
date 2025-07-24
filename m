Return-Path: <devicetree+bounces-199475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01054B10D9E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 16:31:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CACC5A7F88
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BB592E5B10;
	Thu, 24 Jul 2025 14:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d6NU8bc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81DD2E426B
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753367140; cv=none; b=LuCBVXpLiUCNGy4B6dHXITsdVQYTAdrimTEl8FyxLfpy98Zg8BmJFBLs1aHNH/haX+6L5eZ9VgqMgCrEUhPDD8IJMevg/C2s0ySuZWQqsf8gb8HqblMbjUKbOQEM/1npKupu9MJ55Rt0AT788h5uuQGm7IkEM7jMaK5xRCctid8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753367140; c=relaxed/simple;
	bh=9TwUxYBs7bG8dOsoIWLmLiq180yfoOqGlaYJu6O6QU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s9xi8wiIilycA7vxIt9Q7ba5p6sI19uYrpws0HFKyeYPy+9Fjy/jSUL0ocIBq/P0/7vlYDyf384BvVXHGdpPjXzcxkWEOYDuKtKtSP7UieaFBXiRVvt14mJYaAzsHsClYW1Fq/ac1DSaNfiJ5fKu94JPVlgi1rJNWChjKjEc7e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d6NU8bc4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9ZOtG018363
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:25:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DPRPisJgrmo0ouxlrT4g25KV/CYo870iI6npsu0bSu0=; b=d6NU8bc42r2sWaK2
	kA/tOXeNoiGkbiv9nIYRNRRDyeCSSFBc35bKBjfrs0Q/qUL/uf4WW6xdypnO6lY8
	0s0s569UZMo+xbhw5Gz8M3UyJ35k1wWjiHI/fHgp3HFybJF7XYR4lgcJjpissq11
	5f5ITkyhPMB1QNPRhIgZczHxpidbWqoYFP+Loj8TXK7aPiNTwKwnfxUoaREDiG/n
	MYnytMqXPKqq+IbXGjO6sg5XdFiRNnBYSod3cS2g8mmt66hKMGjUdLYViF39te9m
	bcvrauP+kZQg3bQRPk4heQR0e6nJpFBpQwLE2ZjfeyY4PHtxdTBuJ76KzS02KH1y
	arNWaA==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481g3euuv0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:25:37 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-4f9979a70b3so243872137.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 07:25:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753367136; x=1753971936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DPRPisJgrmo0ouxlrT4g25KV/CYo870iI6npsu0bSu0=;
        b=rsGekoaYEwE6Wsr7V3Y/U+xDxvBD9na1kYvxAqESWn/5/Q01T21/HXJch4vtGM3oVQ
         COokVKMiTen7YxF3ekIlC7T50xN07YgoDe4OAdgrG79a7jPdV171D2v+Hfdqfq4H49U2
         wRiA77SdzNZcyS2cLGDLAH1vQAXNDlkZTf9JemmyfIiDaSiuC3Kp1KLZi1Z7iMNCeh+C
         gaHBbQX26+zzBeDHiYmcNX8mPd27spG8Q/Dj1davLvOLezYhTPa6F2O9BYejaS4ng91l
         jUyOZfBjVP2XFccLs3HCQlsjiHtsEwSG+R0BDE24mJqBkAt5dEWCh9A9FjSgGFRZO07+
         JW4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUGgyj79A5owbzmDYpvceZy8oDKPfi0gPu82NKd7cL3xr7t8f/MBhQiYBEe4MGwndCGaboOK7xcXI/d@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpa1Rj6cFp9vPBnfjPxl3quvqCPXaVuMEQE/0b2F4Wt3p9/r1G
	i1dR6JEIgCsz5rF6EEVPw04leQ/nct0a99tWQmio06iu+II5yyLx4KEizs6LGYI2ln/G6X5wSqS
	cVF/yHOR3EYoAw5v1ZoJVNbByJdFE15TMxd0ZjB4+0SAIfY3Kk02LYiFIAjDoP1er
X-Gm-Gg: ASbGncu8w18FJbSVZSL+a6V/2oB5IIDa7Md7HOPKPgnMSFX4BYqryN4TZZREigrrNnM
	0muZh6l6rx/uR0VJXKRufk01WsJCi1PqkphxJyWZa69YLAv8JoB/QqXTLL/tPloPvY84XaebYAA
	4+WSKc29lT3hO7Ki1aeF0Fnd9igJO/jkrO7XpmqMN7nfYrKry0zd+xIteLiKIB0jUJ4LLzIvEIm
	ILW5/EVGLoFnslN3jtfkOl6q9wUHJcoHai2Iz695JqSiDCHHXmpE1qWtNm2Bx4+0IPlmpW11ZD7
	bPTCdD75RGAnDl57kpckYVEStNbl4EzaKtr4wCOggnQyH6/t+5AURHuSK8LtIsg9YfQ=
X-Received: by 2002:a05:6102:6c5:b0:4e7:dbd2:4604 with SMTP id ada2fe7eead31-4fa15190ab4mr3295863137.17.1753367135922;
        Thu, 24 Jul 2025 07:25:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM+il14E2osq/m06SZGdVqsUY0imeh5XZ9qO0BRDLCTsWVEfMc4K/24znXseOfaB3Lj87ixQ==
X-Received: by 2002:a05:6102:6c5:b0:4e7:dbd2:4604 with SMTP id ada2fe7eead31-4fa15190ab4mr3295805137.17.1753367135334;
        Thu, 24 Jul 2025 07:25:35 -0700 (PDT)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b76fcb8aa6sm2378331f8f.67.2025.07.24.07.25.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 07:25:34 -0700 (PDT)
Message-ID: <e2d7d66e-bebd-48da-b61c-52fe2b74232b@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 15:25:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] clk: qcom: lpass-gfm-sm8250: remove unused gfm
 driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        srinivas.kandagatla@oss.qualcomm.com
Cc: andersson@kernel.org, sboyd@kernel.org, broonie@kernel.org,
        mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, srini@kernel.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250724134229.103001-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250724134229.103001-3-srinivas.kandagatla@oss.qualcomm.com>
 <updct7763epzqvs5xgs37xsokb534vhefvkmt3rtjqvaceu2vw@jqsd4s3nbuyk>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <updct7763epzqvs5xgs37xsokb534vhefvkmt3rtjqvaceu2vw@jqsd4s3nbuyk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 85spyUyegzVSh-cvRnf6RVHcLT-oXgYg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwOSBTYWx0ZWRfX1a6qM4ATsWD0
 cKhAxRgKGcJlqex5EDyRHP4+j4oMUikQvZOjOa0qD+FUlSJiUp1tlsCJILBBGR6PYAuOEq8WlzD
 1WwMH9bOt/+r7yPtpQhNhS0JwumcyipDl4SbxwItTaxKaAsb/Hd8CxdVU8woEYiKn3PhW5D8k6U
 NPSUi1bIgR9JD7ndH3BuwCkn+el+6YT6hvw/2y8M4g35fwFDwJ3WahylrkNxqktefIfN4Uf3WVc
 4TgemzdPNuNx1qDVq9VT36klwDPvAZ5/M0lP3KgEVob2rOQa/lpkuNLmJ64Fh1pXNPYbS4eZTU5
 VC0W4Dmjn2/HERKSHmd2T1FdNCUsrnWfNitOR5Ae4TyIC57WyDXcSZJym0nJpvZQ/oqScCoeH9J
 sHa8ZElcg7ToFEI0no6ONtDsXrg6lD45TQI3Z+GtZvlqaxud9vt1r66pHqyYQk2TNmXsj0ue
X-Authority-Analysis: v=2.4 cv=Q+fS452a c=1 sm=1 tr=0 ts=68824261 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=VwQbUJbxAAAA:8 a=A88rw-UrIt9Wtq4Cu4sA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 85spyUyegzVSh-cvRnf6RVHcLT-oXgYg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=862 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240109



On 7/24/25 3:23 PM, Dmitry Baryshkov wrote:
> On Thu, Jul 24, 2025 at 02:42:29PM +0100, srinivas.kandagatla@oss.qualcomm.com wrote:
>> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> 
> I think this should still be @linaro.org, especially looking at your SoB
> chain.
thanks for spotting this, I think so, let me resend this one!
--srini
> 

>>
>> GFM mux driver for sm8250 is totally dead and unused, there is no point
>> in keeping this driver without any users. This patch removes the driver
>> and the dt-bindings and headers associated with this driver.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Acked-by: Rob Herring (Arm) <robh@kernel.org>
>> ---
>>  .../bindings/clock/qcom,aoncc-sm8250.yaml     |  61 ----
>>  .../bindings/clock/qcom,audiocc-sm8250.yaml   |  61 ----
>>  drivers/clk/qcom/Kconfig                      |   7 -
>>  drivers/clk/qcom/Makefile                     |   1 -
>>  drivers/clk/qcom/lpass-gfm-sm8250.c           | 318 ------------------
>>  .../clock/qcom,sm8250-lpass-aoncc.h           |  11 -
>>  .../clock/qcom,sm8250-lpass-audiocc.h         |  13 -
>>  7 files changed, 472 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/clock/qcom,aoncc-sm8250.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
>>  delete mode 100644 drivers/clk/qcom/lpass-gfm-sm8250.c
>>  delete mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-aoncc.h
>>  delete mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h
>>
> 



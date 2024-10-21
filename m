Return-Path: <devicetree+bounces-113605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA5F9A65E6
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:07:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70C961F22A56
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757E91E47CD;
	Mon, 21 Oct 2024 11:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ki9BSR26"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84231E3784
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 11:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729508834; cv=none; b=GTcB1m3MkEB7GVRXEkmMFajfmDEH81WcH8P1nTxM2//MEDOuqOaHLxpC7dXgkWr0SMPlC7RoOknLj9PDSqVEHn8rrjCBKVArA19D2vE32bNQaEAIUUWi+68ha2YxMTLQqTm6UmkEvCSA2Vgq9poFPwS+tFzSSsLnNrXugdMKogw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729508834; c=relaxed/simple;
	bh=N5eBhN7l4N5g+CiruVAT/S8z5Q24aiDr5bqSg9fD31s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bnmo6Vt9zmuFZkAWdqo53WvcgsEZozDcCyd0hUsYZnyMOSqFMQJRoUG2KSQvSI7jsch/5pc1T4zBxtZlNbXvlnd3KYG/SbNBczfHVeXYbSrw8pPhV3fRQPlq7fXMaJSppi9Si3Jjv1xxgNmQsxJ0NDXy4sG4HGsIz52y2cBLOXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ki9BSR26; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49LAdxQ4002608
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 11:07:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dRRpJ/UZTMidDbDrDpmrUhrP7JPG8Yqq8PSOPA/Y8Oc=; b=ki9BSR262NGyMhzA
	2zSFlWm3dUanejTogjEqd4hmTcZbY1nUWaGLmcv/Jdgsu3vgMieE4YBPAvepQQIi
	39aJ+3mfSg8wQo8RLCEFOLMiELituh79azI9983+TiEPVX5nvqJEz+ufizgytxdS
	Yluo7TgKWPMu7FaO9zC/FihyJE6JS3NRnCJ9HjDR4/WtdYx/sD2YwmApY1IoT6+v
	2D3tuGkr2dY77+aIO4u+92RcLQmxcqYMBBdyDB85FJDw9muGmpbdmwi2Y3nofg1G
	0wb7zTl51GIPJtcZLiPcWPtSJFBT38bCRUxPOs7yEFjsrTewf1Vbk6PbKuhwuAcF
	d0jx2A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42c6vxvbct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 11:07:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b156e4572dso41277585a.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 04:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729508830; x=1730113630;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dRRpJ/UZTMidDbDrDpmrUhrP7JPG8Yqq8PSOPA/Y8Oc=;
        b=SThcm1k74yEKgXJ/c5keKDB7KyR0GUuww+FgPf8vFwV2RNV3nB6DM++8qRbB4PBPLI
         Em4YXVq/sPY6wya2lJ22xvnFkRnbi/FDfV3RMe5oKs74Ya150gKVFO49Q2i0G+FcFU4u
         VXMBZ+gJQkhD1vi5Unukb6mTtCfiPn4a0gMQ5r1/qeM6MIjnrV284OlzR7h0Jwv+umIY
         sK3Sp9jzKpXIXsH03YRfjS1GIDDGUP+JFoOcDCSEA1T0Cgw8lpakZpg7EGxHjdKw+5Ii
         WdJRTHxbCSWxhmKr+6tNNr00XWqlVQyLj7tiGsHnotRDoRhR/zKoo+epsj24IA6wOB9E
         9YHQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+mXyGdLGcE3IF3N/rNQZ4+1pvI1TTyiEWuwU6D6dRwu8pax46reEPZ2LJxda1tpZx1cLwNh8i/6rG@vger.kernel.org
X-Gm-Message-State: AOJu0YyfJqAUAE2XnzxP/h4w1WMek61wtb+oERKdmoYV19z7TDW19cfb
	iHR9r3OU7EbfpN6XGovQWHZzYQcfOhnoZTu/9HV5oMXSMl+d655MriwgBuUmCvmurAhjfq3bniS
	gYOhN3ahCP6YsrQBdelui1Uv4t9CDlZ2C+japW0qtbNUODi+9SVDZGwRovG1U
X-Received: by 2002:a05:6214:1948:b0:6cb:e6b4:2d36 with SMTP id 6a1803df08f44-6cde15c6223mr78561576d6.7.1729508830611;
        Mon, 21 Oct 2024 04:07:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBfNHni3oaxFZqhR6T1qV3nO2g8kHzH2/s0gjy45NEB89jUIXw2wfgW2KkCIfZEbRx6DzJ0A==
X-Received: by 2002:a05:6214:1948:b0:6cb:e6b4:2d36 with SMTP id 6a1803df08f44-6cde15c6223mr78561296d6.7.1729508830330;
        Mon, 21 Oct 2024 04:07:10 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cb6696b553sm1824101a12.3.2024.10.21.04.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 04:07:09 -0700 (PDT)
Message-ID: <c6a1eced-ea8e-4174-9f8b-dbf4131e0a2c@oss.qualcomm.com>
Date: Mon, 21 Oct 2024 13:07:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/11] clk: qcom: add support for clock controllers on
 the SAR2130P platform
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Kalpak Kawadkar <quic_kkawadka@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241021-sar2130p-clocks-v2-0-383e5eb123a2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241021-sar2130p-clocks-v2-0-383e5eb123a2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Ex6JKyrE33T7n0qG9oZ4NTlL6G0_ZtvR
X-Proofpoint-GUID: Ex6JKyrE33T7n0qG9oZ4NTlL6G0_ZtvR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 clxscore=1015 malwarescore=0 mlxlogscore=999 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 priorityscore=1501
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410210080

On 21.10.2024 12:30 PM, Dmitry Baryshkov wrote:
> Add support for the RPMh, TCSR, Global, Display and GPU clock
> controllers as present on the Qualcomm SAR2130P platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Changes in v2:
> - Dropped gcc_camera_hf_axi_clk, gcc_camera_sf_axi_clk,
>   gcc_qmip_camera_nrt_ahb_clk, gcc_qmip_camera_rt_ahb_clk,
>   gcc_iris_ss_hf_axi1_sreg, gcc_iris_ss_spd_axi1_sreg,
>   gcc_video_axi0_sreg and gcc_video_axi1_sreg clocks until corresponding
>   subsytems bringup (Taniya)
> - Program GDSC_SLEEP_ENA_VOTE directly from the probe function (Taniya)
> - Dropped sreg, BRANCH_HALT_POLL and collapse_sleep_mask patches
>   (Taniya)
> - Dropped gcc_parent_data_4, gcc_parent_map_4, gcc_parent_data_5,
>   gcc_parent_map_5 (LKP)
> - Link to v1: https://lore.kernel.org/r/20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org

Please address the remaining comments from me too

Konrad


Return-Path: <devicetree+bounces-236482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D74C44BA6
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 02:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44AB64E7576
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 01:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9352F22173D;
	Mon, 10 Nov 2025 01:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bM0mKyU6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ItAAtIhA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC830216E32
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762738191; cv=none; b=D1Awm8uOVbdOo0tcb2l5QuPBgQMb94tApkRI1L+jvPu8Dsmhb0KErhljgiriyiIdRfajAGt6EwLGMmn2mEPd2vGMv4DmQxCMIWToApo24VGP0CfCLMty4bE0aySEVvAs6Qzon10A/tHtsvvKvNljUB1zYTLRXxyGS4WtnZjQMcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762738191; c=relaxed/simple;
	bh=2NZzeLexcBBGUyZzml9soZ/Jeo3S3S8JioTiz76iY+0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c2LpWAuJOQykKHMPfhmcxFARjxEdP4YG/GHhNsnyHxVEkzAHixSc50kcSjbUaAz9fX4X+7O6KizSVOLxWNmsClj47ok+vY+bcxRe1Ml1XiqjoqztttfQEf1DdEmWnxmZgKXGDlVqXaGBS/91si2e6rigPVSLurmKWK45pKTFpsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bM0mKyU6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ItAAtIhA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9Jrx8G1194214
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:29:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mvQPOUskdjWPrB4UtpqZJVcpnC9hm6QOIT/T8aJTbnM=; b=bM0mKyU6Z/3L9xQy
	vBJM0QCch4B1nhqDc5Sm+teT0SV5j0X54eda9BFhrlQFjdVzyoY7E7TEX1CzFo0E
	rKVwFtLjAC7ta6Gi62J2m8unBIw89FWqEbM2MZv+XORblBHW+CeOjlykiKL8kS6n
	xpxdukS0KQXdeXmE7b8a3bm3IM8hS2wg6ipoi3v1XC4UZnmU6UB1mayTww24u6jz
	0P3PDht63XhXWyy2kcczsNbQ581u5Jhfclz85OuN3pU1Ob1Yv+/rgmiAfq6LHL2Y
	8PJF4B+iZuxCfY1eV/dHV0t/dfJ81PgIk1w8g5JgeYdtpab9hFVS4kCs6s+RdJxE
	wR1w3A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xs7b08k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:29:49 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-343823be748so968679a91.0
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 17:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762738188; x=1763342988; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mvQPOUskdjWPrB4UtpqZJVcpnC9hm6QOIT/T8aJTbnM=;
        b=ItAAtIhAAESrKHnS2Rq54HmUUwj4z5TRluvYRoC2DwBKX9fby+FTQwm0er1lm8ULd4
         IuGj9T178BZ9BS9Rsu/4QTdtgtWaXKxSCKhxdA/x2+BmODZstNi9ozUgyWT6RxPkkBMT
         wTeNtrYD7PSszpFy6cK//lv3NKa8yyoC+ytwYqpPPPrUlibGwsRhZG0sJR+jxajHuJcC
         QWudY6QlgBvC+r47MJ0zOkCcclF6GClmVoE3c+R/ra6bJvw38blXwivgJ/XxXJo+Dxo6
         4cl+USt+C9dJB7Xe+1CmREQw/31KLHPIrJCuqska5Ff4F6EP7qepjTSGIRwQtedpUXUJ
         VnIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762738188; x=1763342988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mvQPOUskdjWPrB4UtpqZJVcpnC9hm6QOIT/T8aJTbnM=;
        b=TAIcBYx7ybRLUX4oCx9t+j1mcr8f+4QKPAp7gtQ3je1tWEznRUfm7P5MYS+jDsGm5v
         xNyvA9+djRAnQ2w5Q8CAo3aSPkn1Z/lvzS0xF9451A4bkbKlL9fZVh9yL4seYD1yzazw
         PHdh8FXLo05dX3oW/DHoYMfa6+7+N93KriYTfvVEzy4CORs2oH+UFjhN5Wb1YSsxBaXz
         4cCxf7qOB9/XhS5lPG1xGh76ZT8H0pVtq8CFmyJBP82SWGjwrCXta6oGhhTbLnLKd1mz
         HyfKjwftpbUQQYq8+GZ9Pmsg7kioHSVwY2cIcXndkBot4Ai2scwSKiBki8AGhb5t4isL
         8s/w==
X-Forwarded-Encrypted: i=1; AJvYcCVh4eHvRY4Q98aid+gl6Rc6WPx7WVtg9ksaDWs9SkDL75LmlUtKwDPojr1cRXZwZQdYSYRRegtDOGhr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0YhFtyBDDrBP54hTaY8BrJyiYZMqaXBT1GIaFrPSBIMX6a8nJ
	V6iEA1Nf98QXg9pMnttGf8meN6+GOx5/Jc0OhQfvVV/WTMDLr4YLJ170aT9clyuBQVjiX4rEs8a
	K1SuZVC5KT2a6EhAsf75sWb7ZBWJGq3UGWRLmQPMlZPizRivymJkTcgzb+UPXQsQ9
X-Gm-Gg: ASbGncuT365jkhLPGlF7SziJO42yS0mfuAx/6hQHH6gDkqw1oOgDM1sdxsswGtshiPy
	sImIHHUq4iVJce7/LyydW6xVcVa0+UP7uvTxmFWg2vwDRBXb+ZeDExhMiAzECkUi4Er9fHdpo1C
	bDNeEOS0JCDDPCkjr8fG4PHKZQKotHm6XZI9aflZeE4xJdYoBmz9av4whlUD49mDwPNBejjDeKZ
	TAeMLnu9bSvcW1Resl9x6qo61+28SoPq4J5viMsg5z2FgtYpO3hg7N7Z9eauzZd9bRHoIHvoesn
	MsnSqrAZX2fBa7VUOpEeRiYMJBo211kB9MzjqTaW7XHp++OdDD0VNrUn3pq1IoHrZfmrkjzxVjN
	RH/VweapTKd2Z2SY7cGxwUwKIbMhJkzdM5YSyhAWzEG988lXJVDjouX8jmoyCNXG9
X-Received: by 2002:a17:90a:e7ca:b0:33d:a0fd:257b with SMTP id 98e67ed59e1d1-3436cd0bd68mr8856918a91.36.1762738188470;
        Sun, 09 Nov 2025 17:29:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/zpXBoEI0qZfIbWB/NFb7Wa9KJd0FMTt/M01D8g42vf/KLbZfvlDMgxiy/2OU7k021aGKxw==
X-Received: by 2002:a17:90a:e7ca:b0:33d:a0fd:257b with SMTP id 98e67ed59e1d1-3436cd0bd68mr8856887a91.36.1762738187957;
        Sun, 09 Nov 2025 17:29:47 -0800 (PST)
Received: from [10.133.33.229] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3436c3d7dddsm5695497a91.7.2025.11.09.17.29.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 17:29:47 -0800 (PST)
Message-ID: <b80a5bda-e0fd-4471-9aea-bf3b39ec64e6@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 09:29:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: add CTCU device for monaco
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
 <20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: XAewgX19Qbafk7sqs5cQQLehQFYgHN84
X-Proofpoint-ORIG-GUID: XAewgX19Qbafk7sqs5cQQLehQFYgHN84
X-Authority-Analysis: v=2.4 cv=LtifC3dc c=1 sm=1 tr=0 ts=6911400d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=51A4gIhVuH9znBGuUk4A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDAxMSBTYWx0ZWRfXyRI94DheRwXR
 z8G9HQD+AVA3SPF+wra4KIoWmsc6HdorbQMdOPwgXWCBoGZHQhKArQjsHahydg7s9y8ilzZxSD7
 J+VMPY5xMwun7CO2VtkXa4m23jA2JEullmtJXmJVBkSGzcvvYf58AQ+mEhlhZzG2s0vjJlNN0Gd
 LZ9rEc41k6qj+01AYdammzqckhSQLnbIU5OvHOQlPG3tfYgxo10mv1JaYsbvTdGi5LGbAdJ5A1U
 Vij94can237qqn+Hj2f/OMtPulKbKBpb3rliWTFLlsE0SnA79FugZpniJmF03YjRCTTm+44Q6uo
 flJH1k3glFRPmUfwbrF9QtwW3k6zSrrITMFEMNPm9Jw5PH0JlT2XuLAhX9RPQX4ix3HW2Uym5zo
 m6BEHOnB1ksGFaNh2I2XQlV2LrIrMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_10,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100011



On 11/3/2025 3:06 PM, Jie Gan wrote:
> The CTCU device for monaco shares the same configurations as SA8775p. Add
> a fallback to enable the CTCU for monaco to utilize the compitable of the
> SA8775p.
> 

Gentle reminder. Not sure do we have a change to apply this patch?

Thanks,
Jie


> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> index c969c16c21ef..460f38ddbd73 100644
> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> @@ -26,8 +26,13 @@ description: |
>   
>   properties:
>     compatible:
> -    enum:
> -      - qcom,sa8775p-ctcu
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-ctcu
> +          - const: qcom,sa8775p-ctcu
> +      - enum:
> +          - qcom,sa8775p-ctcu
>   
>     reg:
>       maxItems: 1
> 



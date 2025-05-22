Return-Path: <devicetree+bounces-179630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83320AC0F6B
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 390EB3AA5CF
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E15E28D83C;
	Thu, 22 May 2025 15:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YVKgPZpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A012F28C865
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747926396; cv=none; b=f3ytHCpbhcVWJkHTDRJ3hqkNQ0hGKGJYz+OaH0qlR0Y4UHwAC1tOwFEwTgfLBc1ZTsBCh+0GweCDYkuzoPU5y67vm2NkXgXVLZe1tt5u6QyBwQvS27CGH5AuU+Odmd8TjD2EPvpiOFRs1AHJ3pYU4JnejoQLgKXqaZ3JmyF5Heo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747926396; c=relaxed/simple;
	bh=mEO+SQ66q9f9bw9yAxTeWTvOGdYchecNjKdNFoT1k9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IwbsBlb9GQqoC1icZRsjH5NkMvrz9ypN6myEAPjtDTgfJ0YtJV/IDtMWpjqbFOe6I1DgWZc31vk1Xpf5cJPh4eC5BcBHbKvDp/RjECGZMrY3R0M7Kxy6DnT0UydJV4FNBmjGP1iwzlevcqQic6dx121iHP+eteo3zsJlUkp3Jw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YVKgPZpF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7qZXM000896
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:06:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W2ZZQlG8j86gUKyQclX6XprA53hnoYhy4zTXw2h1Huk=; b=YVKgPZpFDoHcUBTW
	yUth7s0dP4bliKVMvq7S4C2lsJ/fh+dB1JR/Cnn4Z+cpr9HoPL+t3Hq1DIXKe24t
	EKbT+Pmn4gBq29RZ+ON/vLl/StcUqeAFp2sCFqy0R3nBohP1/A17z0yq7rmF9myG
	Uo2yvC3Jy1GmsSCENPVvI0eF/Amm0tll5Mv0zoubMA0Z29IIJISk8l0OnSEi5EI5
	1PN9DZwacvrFN5gAK3DsKP1h0Qx2iFMyi83YrdU/su1F5qaixZQz3HHYy+gV5jKj
	NMxUiRlToGQtl/iTto7kZrQk/+Zn1TXUYAxdlii6Ik8gg1HT6if21j4exlzQNso8
	xJCHzg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s95tn40f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:06:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5841ae28eso213404285a.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 08:06:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747926392; x=1748531192;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W2ZZQlG8j86gUKyQclX6XprA53hnoYhy4zTXw2h1Huk=;
        b=g/3+8Q9VkV/RS3JMbEfVmFLzg+xKnQS+sdxI33BbgmnNFxrf7P7MqkcK7E/gRP1N/J
         7M04TSNYpV8tSNjjWb0WsqHe5NOOBl3tEWnFWkzijVFyyrFmh3OMKBfjLy0boOCXRfR6
         z1t2ACQZcDD7fOCDCu0UeqYXYOYv+ph+qNkgJ+0TA9BDhWPAZT8dVdaVjhkaHZoA/w7b
         1Axv9vxYorWp7lEpT7iSbivzMddDu63IPXDmfMwF3kQkOipM9VXzlZQcfH3Ph+n6MLZx
         FcxO2ckXBmvByRqLWW109NU+pwbJ2na8gln1naggyOfzwoWfIX+pVHmoF3WZdpe55eHI
         QRaw==
X-Forwarded-Encrypted: i=1; AJvYcCVToX2uLtYZeZLtV6BrR8XH6E+D9nDIJDr8j47RZia+zJGAdDTcccIdDwmQtBxDvm4XufVnPGmTiY3F@vger.kernel.org
X-Gm-Message-State: AOJu0YxVOTyflAJqJCBRbrDjdk78lLJg2f6m2IZFzHkF5zSDWt64he47
	9iHUZNo4b8hu+F9bK2eSQpg1CZqZv1zmp/eZm+YmFilBYfezqdg+fKa/+L7SNBxKuxnbjwqp6+b
	/YowXLwW7/hVgIRUTUMePrJvS8U4Upmp1VvwRuBNyXCe7ZtYygeVHDTQP535E4CPWtT1f2m7D
X-Gm-Gg: ASbGncssHpRGqdUfrGdTLer08vtE5PXDduO8aK/ximEppyUi3EXyjm+DsMqKvfHCUKB
	AE6t1LOJsJZ3+XjkKGuukYc6Nj8Jlhoa3iSAzTmMqQNma+sHC+mmMVzvO9ZRuU6JkJO+mVLnxnF
	nC+03ZBFcJWCwuuvSkbVguwqhgrFIiuHKtq3ESv72qsMAdBNrvDK0wYSEDVIiu0rfCWUtRmksjJ
	K/+daspWdmcAzj5cqKz7YCrgEnecySL3CQyJI1w6R4Y30EwmUt/SuZ2ZN87+ozTyNqcTccRa7/A
	ygkMnz4/+3wZhWoO0S+MRmEdJ0db2KPXOo/98sCTQNlaXlGmCI2sJQj2IL0fXCK6jg==
X-Received: by 2002:a05:620a:6406:b0:7c7:9d87:9e2 with SMTP id af79cd13be357-7cd467be344mr1502752185a.12.1747926392035;
        Thu, 22 May 2025 08:06:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSNzVT9npK6d+E8iUfm1J/u2+h3suqYhR++9LiAPyNlwVIEX5ZkOLp61BNj2fsTa3dIHMB0Q==
X-Received: by 2002:a05:620a:6406:b0:7c7:9d87:9e2 with SMTP id af79cd13be357-7cd467be344mr1502750085a.12.1747926391604;
        Thu, 22 May 2025 08:06:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06ded7sm1099929966b.61.2025.05.22.08.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 08:06:31 -0700 (PDT)
Message-ID: <757925b7-3795-409a-9419-b33767c49e2e@oss.qualcomm.com>
Date: Thu, 22 May 2025 17:06:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: fix a crash issue caused by
 infinite loop for Coresight
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Suzuki K Poulose
 <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250522005016.2148-1-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250522005016.2148-1-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QKBoRhLL c=1 sm=1 tr=0 ts=682f3d79 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=zEdONPlssZfnCtCruvAA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Wq6wCTx3cS0ia-Ie84HBMhv_n6oAceYI
X-Proofpoint-GUID: Wq6wCTx3cS0ia-Ie84HBMhv_n6oAceYI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE1MyBTYWx0ZWRfXyt7KbtmSkWXU
 MV+E5Z6YHIwivaYuz7EnU3uDpLqdjF0QGaJ+qB3LYjGlgfxTmGQsGui4IQ2/7SJhX0DqRUakgZ4
 eY7mNFLtQSZOrzaRPL2Ng/pfQBeqDPWZn79dbZfoPz+9eZlqClChRQVEDNrjVPGA85/uSpmyK3S
 UAJobpgsCf3R2NDhoakf9QP134gmt+8pQYMPx8Z8u1qYEVpxBwRd3KYAs/nPuNSVqsKuPUhyud3
 r0B4aetThf6vS1aWzvD+gSwHtByn2vxMRcF4+MpwuJenWs0dbg8MgKG5zwATR6xGMjI+hl4wl6n
 waYCIBgNmTVK1yFFUIuiehwIo8hs0GJ24n0yiMBOChjEcKYaW3jbmr3vs21c4HMLN/0iBWlqy8v
 ITZMeiEIAb7YjeLLpEHQBeuW1zdWxeIjWNXq5SP7G8CTpbdyNLEyfwwudrL7IqiO/KQi9UPr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_07,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220153

On 5/22/25 2:50 AM, Jie Gan wrote:
> An infinite loop has been created by the Coresight devices. When only a
> source device is enabled, the coresight_find_activated_sysfs_sink function
> is recursively invoked in an attempt to locate an active sink device,
> ultimately leading to a stack overflow and system crash. Therefore, disable
> the replicator1 to break the infinite loop and prevent a potential stack
> overflow.

Is it something we can fix the driver not to do instead?

Konrad

> 
> replicator1_out   ->   funnel_swao_in6   ->   tmc_etf_swao_in   ->  tmc_etf_swao_out
>      |                                                                     |
> replicator1_in                                                     replicator_swao_in
>      |                                                                     |
> replicator0_out1                                                   replicator_swao_out0
>      |                                                                     |
> replicator0_in                                                     funnel_in1_in3
>      |                                                                     |
> tmc_etf_out <- tmc_etf_in <- funnel_merg_out <- funnel_merg_in1 <- funnel_in1_out
> 
> [call trace]
>    dump_backtrace+0x9c/0x128
>    show_stack+0x20/0x38
>    dump_stack_lvl+0x48/0x60
>    dump_stack+0x18/0x28
>    panic+0x340/0x3b0
>    nmi_panic+0x94/0xa0
>    panic_bad_stack+0x114/0x138
>    handle_bad_stack+0x34/0xb8
>    __bad_stack+0x78/0x80
>    coresight_find_activated_sysfs_sink+0x28/0xa0 [coresight]
>    coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>    coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>    coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>    coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>    ...
>    coresight_find_activated_sysfs_sink+0x5c/0xa0 [coresight]
>    coresight_enable_sysfs+0x80/0x2a0 [coresight]
> 
> side effect after the change:
> Only trace data originating from AOSS can reach the ETF_SWAO and EUD sinks.
> 
> Fixes: bf469630552a ("arm64: dts: qcom: qcs615: Add coresight nodes")
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index f08ba09772f3..b67c1f8a1118 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -1902,6 +1902,7 @@ replicator@604a000 {
>  
>  			clocks = <&aoss_qmp>;
>  			clock-names = "apb_pclk";
> +			status = "disabled";
>  
>  			in-ports {
>  				port {


Return-Path: <devicetree+bounces-239720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6683C68BD5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id F0DEB2BB9E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D4E33120F;
	Tue, 18 Nov 2025 10:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ul7N/Xkh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IbRnJwej"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F3C32E15D
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763460245; cv=none; b=HV140yyjm1pX8wYXHkG1dbpYJCW+n7cMYyi2YNiZqzOSdvt7Nbr+iYWyBUQmKx+H4GIlczqzWy3ZbBqu+8xgPVCEft7inLwqbrMDhJ+A9nQg4oI9k7gz9ulDuoOHQ082t9wDBuqlLT5HiMvpKgvGbk/eLan3kgRHhL62dhKxnV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763460245; c=relaxed/simple;
	bh=uaXTbcqUswTm1lO0owD4I2Nf6g8eEhxs4aDT6oNCWxM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tQnDcyJGym1yQWPhDDxB/WXHg6lBlH0aeov0GFDACLVd/204wmC65lca/expkXJLCvNJACqvv2SBvMcwXddYwpfpnw9V6tfMH2a51QG/YhwyuaBRdSFrmX+1n6qHLny7YEfeXfnc5EmXtjtBMWNrh4f92kwpNgC+PjjxsKQCkpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ul7N/Xkh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IbRnJwej; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6H0YV4107434
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1mbxhSjtOo9c8WVV7gAU1V0GwN9HsgTa+1rC3E/DasA=; b=Ul7N/XkhYF2oMhcM
	wCvqAJCwop1tnKiOhklHsTwNEb4vnr0PyCe3+XVuEQ+XJ2F8JuYQxEx4bGnvLbr9
	uju5MD6ryP6WbCdS2rg5tYcfeeIS2Q8NacbCNFDsTbZohI8gHBoXxRxL3aDpeVra
	ylnZMaYcKbv3Q+86sS1CP3RDiX98q7Fqi/BrTNxmFTL96jcCOyaScEkZmHQhDmbS
	TZh/4Dwzy0pj6Vry2GhXajVyf3ajveowRMRBfYZvrXXCFRnEKQCZN0hiweCXQsWq
	mkGlGa/4YLn8sqQx/zRCakkBvyVWce5yH8VGc2syX0c24JPidptA3Utboc41kTGx
	2LfFKg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hpbnf8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:04:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b21f4ce5a6so135395585a.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763460242; x=1764065042; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1mbxhSjtOo9c8WVV7gAU1V0GwN9HsgTa+1rC3E/DasA=;
        b=IbRnJwejytHG+vrISZa2XrnE4uBmrEztbffqdrUpdaJ7oX5EUuIV2uSo5IndefTBQN
         H8jm0Hycv3BF/AVc1fqtz+PLy2NbTZ+4VyeQKHjFJ4M8OmIbPJrN1VRSNtmnNf0/HR8Z
         rQX3SwuDTfiX0HxoYl5AwS4dyIY+XWym0wBvSqXF93IyK9D7TR3FeXtkZK18XTASvnAX
         B/Owne65fIAUxxgTStjpFti0D51h+T3X6gU88yQVbOAUT8yPnQgneYjOhBOL/jpBEsZl
         uofQuhIIuZp/znJYi65I8ydHJS2AqZBcH12M6ePigXSgN7mn6V2g7adex06GuPGVefK7
         YTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763460242; x=1764065042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mbxhSjtOo9c8WVV7gAU1V0GwN9HsgTa+1rC3E/DasA=;
        b=gNj17KvsczDFdLuePpG2aQQEF4f0+3zLJ9kiQXAVy9x7ukRJ9jqsngCsD66mVzYFv+
         yQHUjZSpWgrzZiEXPCFxuM82ZevRXmDSIiItbB/LSCt9bGJtWCo3JQgc3+cnYfh3tsSc
         LrAKkzUBL3DwD05ojp/nxreejFKBxt1YSGKxySzAGxQx8CHvefpHxgWefx/gec9CpPrF
         Ufo7aWVLpOoyPx87GpdaecE0X368feDhG1VUdE0yt/+akVEL7LZPaCUF6O0J30+KNmKC
         2SyMDCPnfdMRuBTAVLcgn7ugeI/9YvADqhFP+V3zRih8NTHVm0Fep4L1rusHfZ1fAIHc
         pJIg==
X-Forwarded-Encrypted: i=1; AJvYcCXfvQT+GQ/shgMNLnByfBOS2uA4785Dww1pt5BqzKVULScgItpPjskBGZzXrjiY+U/w5ob0j/5uto2o@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmnu1Jq930iNcWWsB9AKlKvoNLkTZpq2VpGIyvP6v/RzL08H+h
	nr3SQzZmUcP8Y+9oIwMpL7wTScnSul6Z6/XpDv4Oq8mQwsjkehpUvEzSGduYffBrmIJMWmIFS01
	r27uzYubhmzTgpz1mzY60oN8HFCHiH0rOQ+f+rALATesIHkPEsmVWl9H4boKavVK3
X-Gm-Gg: ASbGncvWQPAp4s8IdxvBYaxYr79/2gwXWDdeF2E7kCxFukz5Cu72CyWUmIJ3wKHIicx
	MbLqFrvupJTHc79PSAtOOjJT2CfRcMKcujdH5q6cji9MvK1ZeN1+YZ0mW1k5OnKgCoWJAW8SNiC
	p/2OHbrirO1zSyKVT3LuJOSyoqPK4+g8mwaxLb8OS18SFyWOG6iBgRnN6haQYTJ2NsEHdZnFCP1
	mCGDp8PtqGhEswj0tWlVqmKCZBo0JOfXb2EfhB1Hg72DK2/HA/zBaLmvNJHOr6cXVcogkYwXPuF
	3sWt15SOoNuv+0w4vBPog+vjSFMRKdD9CgFN7Dl2ZDG64RdNbnq70y9pEc/EnNvWMnvxnt7xyJm
	w3vpemZvUYl+T/HAaU2nwWP5vmpnLYgWBxpvGzRz68jnZtdiI+SHE0GV+NR+T9u3rths=
X-Received: by 2002:a05:620a:710c:b0:8b2:f090:b165 with SMTP id af79cd13be357-8b2f090b5b9mr560851485a.4.1763460241811;
        Tue, 18 Nov 2025 02:04:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIy+KkT45fjbCFwlMY7g40iK0YvJB14Bdt0inaWn+KSTlHP5BpLyxOcvzr4gK8mYGxwtnkSA==
X-Received: by 2002:a05:620a:710c:b0:8b2:f090:b165 with SMTP id af79cd13be357-8b2f090b5b9mr560848185a.4.1763460241331;
        Tue, 18 Nov 2025 02:04:01 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad4635sm1317084766b.26.2025.11.18.02.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:04:00 -0800 (PST)
Message-ID: <350ddcc0-cbab-4b58-8b50-5004f27688db@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 11:03:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: qcom: dts: sm8750: add coresight nodes
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251117-add-coresight-nodes-for-pakala-v1-1-d26bfaa44fe7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251117-add-coresight-nodes-for-pakala-v1-1-d26bfaa44fe7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: X4AxGsBXkVybQgUop6JHoAOzIPixpwsK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA3OSBTYWx0ZWRfX8F7SL2wGQF6T
 c8Qr1fih3yRvLYM0NYcGazsDj/GhSCWftkBS4+x1Q5SLheSwyhbTI3CeeFeIOARp2M3EhlBlewR
 i+K2OLprXDCP191SpizXmQX7YwbscDGO7AwEV4S+I/7MrAoKhhFNx1VhnwQmlkYC9ALGrctGiQb
 NEa1SJgOFyMElg5VjhjRUuiOn7cnAAvk8WMkkzFDs4RqRNbdCfJD9C7Va6SWrG1kIkmnFhmFzrM
 MAITsnCoWcKqTPMXlL0L3NHxiuPOnYcTBMVv/NpSogotzCx117lkV6vZSRDfhCXvn4tBU3EAG1Z
 Adh3M6GSaUcHv3+gOzh4hRC1IcBXeBX96KLobykJWgCWP/TRhFc4ZlvJW+NAsSXCnNNg51JWhcE
 ct+TQD6x9E6YdSvEjtrl1LQ7wANyuw==
X-Proofpoint-ORIG-GUID: X4AxGsBXkVybQgUop6JHoAOzIPixpwsK
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691c4492 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=esBNrGW2p1ruLeLRUMwA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180079

On 11/17/25 10:31 AM, Jie Gan wrote:
> Add CoreSight DT nodes for AOSS, QDSS, Turing, and Modem blocks to enable
> the STM and TPDM sources to route trace data to the ETF for debugging.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 981 +++++++++++++++++++++++++++++++++++
>  1 file changed, 981 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3f0b57f428bb..56c2605f3e0d 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -3313,6 +3313,948 @@ tcsrcc: clock-controller@f204008 {
>  			#reset-cells = <1>;
>  		};
>  
> +		stm@10002000 {
> +			compatible = "arm,coresight-stm", "arm,primecell";
> +			reg = <0x0 0x10002000 0x0 0x1000>,
> +			      <0x0 0x37280000 0x0 0x180000>;

This region is a little bigger but it's not described clearly. Is there
a reason to use this slice of it and not the whole thing?

[...]

> +					funnel_in0_in0: endpoint {
> +						remote-endpoint =
> +						<&tn_ag_out>;

Please unwrap this line

[...]


> +		tn@109ab000 {
> +			compatible = "qcom,coresight-tnoc", "arm,primecell";

"tnoc@"?

[...]


> +	tpdm_llm {

Node names still can't include underscores ;)

Please also rename 'llm' and 'turing' to 'cdsp' unless there's a good
reason not to

I confirmed the coresight components addresses match their claimed function

Konrad


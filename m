Return-Path: <devicetree+bounces-276517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMJnOL4JuWm+nQEAu9opvQ
	(envelope-from <devicetree+bounces-276517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:58:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4148B2A52AF
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8D453043D15
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FF23932E4;
	Tue, 17 Mar 2026 07:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OhO1BVVM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YrkGJ1si"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6C538E11E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773734159; cv=none; b=Lm01lSJMadKZbsAMKakjDekfIfxslILoCIfzzYRuZufGYaIjuEHasG2oToJ41VuoY79EDBP7ufWTaHU7yiH8MyC33LRr4UFUNqc6y5iBuc5rJAPNKr7JQ3eRfRokVAHlkQeZNchG72kISD9jJzD9N+sOFPWAwYcb0nXIUvPxL4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773734159; c=relaxed/simple;
	bh=7yl3GR1QXQNjyAVCoO/3SZ9y7ZWUSE3qFHHNEg/K41M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h3zTCG4yz5JVqlH+nX1ec6/KHUBXjeWPHjjmAIsE8bP2KBMPq/phTVSzrXXXtTLn6tUAkeMTGZMhappeRjRZVrDujJtTlofG7TAglIrkSj4gmrmPK5LdoRnY47/r28Apk1eYGCBw7dw7JwymkUUiQOC9XwWOc7cJ45OlCSOdWGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OhO1BVVM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YrkGJ1si; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7RDaj2905965
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:55:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h6bXcsSsuFPm/9XTcNuJ37Rt9YpYn4KJga2Hs9kBIOQ=; b=OhO1BVVMrmYI3lad
	vweazq9xe+9fd4oEaF61lzUDysZNBnz60lRNq1T5IA64SHPWerOUeMTgxeGzNo5S
	jTMZG6nMdkwMzCEDSzHmUBctheAQZw5KcAYChlRR+iZRgk1wo6wJV9u5hgAQRGCY
	l2B87nv2Px3qjCa22dJFVKWJGQ8KnrPBUIRqon9VVgTUbhzJc0sOyeEHzWX/rKWO
	LBnW+47NWy5yTuXOatF69hkRk5idNnU0egGl1L7fO8qiqshvnL3ool7Q8DHStRdS
	7ZAsNAGMXJQggrJifjTWzNYv5DCPQkmnu83R/j1u7PekeNMmffMMOi6EKgRvOCys
	9fPVZw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy2jxg37r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:55:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35b9246248dso2646823a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 00:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773734157; x=1774338957; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h6bXcsSsuFPm/9XTcNuJ37Rt9YpYn4KJga2Hs9kBIOQ=;
        b=YrkGJ1si2TxqXmN6aJaDVaQDTRa/JhrjObe9qKy5xKtEpfZRobOxwbdpmJg2RRZko3
         u4bOvS7KvklKpU5HGX6rp10PCPLkhlUkIgrisGpQeM80iHBbLhzLdXdAJ3fFW7yJPeaH
         xP50OkgHqYEZocArlUbb+eVb6BKsTOeBunieA1k4pFz2qb/0ZbxnpKpP920E/a5eYtR7
         v/Z/jGriWR1QDyQk/QeVU6rlxXORdvIUJqzzwJdkMvFxTED5uzdQq4Ra5dWZxT3O9gop
         p0AbfQLOds/cP2Xk+0uYWBTbdu38Sr65qJKGlZLsm3K+HGqgd5FOCWnd4OdwnXO7Egfm
         iGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773734157; x=1774338957;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h6bXcsSsuFPm/9XTcNuJ37Rt9YpYn4KJga2Hs9kBIOQ=;
        b=njwW8kSUgHrqkez0QUZpzF64teLSj9nPcVe0oipD7fU793LhhM1n6CD54n6d1pG8M1
         jzZ3d8El/ILBRgdYHmAYvG2Ug3/7q/1nFxJlgd+Up47bB7u+XnrLwQ2SVD1FaX4rxhkX
         qnE0ZKbhg6LJVi4BfOTUGk84ojDtf/KhZ4tXbdRsxMK6JktwQWuSdqjHN3WZVk+uwGmr
         S+iCp0Mjvudkx8qdXxRS4mvXHVHBtiiPl3LB/zKc1PKZFe/OWRb/d+tyfcV2gtRdQOKq
         bDhUaAC+gR+o0+P9KQQua86HUDqLFdYhWSk0D2JRr5goRfRXSQihi+l3KAwo1MRwTuW+
         kFSg==
X-Forwarded-Encrypted: i=1; AJvYcCUC7UKTqyMbMFZFAFTlwONYuIl35o2hqe9vHZTfpBJcDLXOAXJmTjLLjpoyZNSVYRQUaHal3EYxxI/G@vger.kernel.org
X-Gm-Message-State: AOJu0YyY7TdK3jLclreNbIOxk4EGOUtBg8P7Nr4Sc605K7pRv5SMsHV9
	8j9Ev0lZWoS4ng+nhLpLTeZu+0tJcsP7W4Q34e9Otd4pjtRjCfE/Mf6Tkjd9DNz1QT2BXb/9FFw
	B3ZRKaCcWqEHVQprQQw1u6kioOYiWEfkXPTkyBwaoCgXL8yAMu05eRETJhUZzoj4V
X-Gm-Gg: ATEYQzw+RO/7C6cP4ECUV5uglmjSAFjX0wEGFH2uYw3hOq2iLcbioZhYk4wgaGH6w7X
	YTOaaQnph9f976YtZlAgC4V4BWldGsTS4uqrBnJypRnICC0gPDf97ZDCa/goln9HThcZOP0Ov9f
	YaBPQNGfr/YfXrs7cQCr1OvdHhDgbcsVv8kOXrzu94lNqkCNo5bgYon4T+2CMIZ9WgNk63WTIYI
	uxb2DvQpEiGlWCqBIoTE+4SYQPBFjMSMUdzFHda1ikQ32THD+VxGzdIiq95gNbFQnknXW2Gg6mM
	gcQz5WJczOP/3MuJ8wPCbP2p1SF9hrJuJNTpnarHayzI+n/YHNu+lxI9+byixFdzco8bhjyknMd
	cRtzThRVxJ98ApuIHchxLc9xURFXaYbXoME/yeEshs56hOwbwQh1APg==
X-Received: by 2002:a17:90b:4c90:b0:35b:a168:9671 with SMTP id 98e67ed59e1d1-35ba168a268mr5233525a91.32.1773734156464;
        Tue, 17 Mar 2026 00:55:56 -0700 (PDT)
X-Received: by 2002:a17:90b:4c90:b0:35b:a168:9671 with SMTP id 98e67ed59e1d1-35ba168a268mr5233504a91.32.1773734155993;
        Tue, 17 Mar 2026 00:55:55 -0700 (PDT)
Received: from [10.0.0.3] ([106.222.229.118])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bada47123sm2130189a91.8.2026.03.17.00.55.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 00:55:55 -0700 (PDT)
Message-ID: <78c138a5-6a56-0727-6edc-a6075d17b2a7@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 13:25:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/6] arm64: dts: qcom: hamoa: correct Iris corners for the
 MXC rail
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
 <20260313-iris-fix-corners-v1-1-32a393c25dda@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-1-32a393c25dda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BDG0Q2xHAjsYN91hDBGdnltJ1wdWqNGh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA2OCBTYWx0ZWRfX/eWIbf2XlurV
 ElJPtnMNL975pLK8JeXBRSoDkyagF1g1QYb8VS4RHm+WB27zJAT4UaH7APOV13EHEnyJpMLUiky
 DZ5fWrAAs4DKfe+NY+7bQd3Xvp9Un64VkgCRQL0+jof6JbY+Uew+4n1trRL+fVOLUMCSqAzJHPy
 S298wVbZ02BE8pP1Acz1jthFEjA876vrwVa1cT1xXRO14uND+9Y/IYBPo0PyzbDC5om1/lNRbwe
 HSsO6DR3RlLSLkNIP8a99KrbxAUwb6D+m/aXlNSAZSGN8dyumsad1ChugvhGtzx2sy7h4RAMQ9A
 jw+J19uT95naOtFBPoBguYx2oOAr+9W5UL7NLZpAIq/7Bey+bAQ8y3XlW9JX7S786rK50AkenWq
 GWcbbYfmMo8K/EY0XojqcYEg0b3E6527O9UgVVKo3+LZN/1X9tG1l7yvciUbgzks1dGaQGmU82w
 MgHqSGmdaLc+zAGLm+g==
X-Authority-Analysis: v=2.4 cv=c4imgB9l c=1 sm=1 tr=0 ts=69b9090d cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=RgczR8+8wRjDfzPIf2UjDw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=OQAnd7aFVPVlcVMD3vgA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: BDG0Q2xHAjsYN91hDBGdnltJ1wdWqNGh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170068
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276517-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4148B2A52AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 8:57 PM, Dmitry Baryshkov wrote:
> The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
> match the PLL corners on the MXC rail. Correct the performance corners
> for the MXC rail following the PLL documentation.
> 
> Fixes: 9065340ac04d ("arm64: dts: qcom: x1e80100: Add IRIS video codec")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index d7596ccf63b9..0866e9e2874d 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -5432,19 +5432,19 @@ opp-338000000 {
>  
>  				opp-366000000 {
>  					opp-hz = /bits/ 64 <366000000>;
> -					required-opps = <&rpmhpd_opp_svs_l1>,
> +					required-opps = <&rpmhpd_opp_svs>,
>  							<&rpmhpd_opp_svs_l1>;
>  				};
>  
>  				opp-444000000 {
>  					opp-hz = /bits/ 64 <444000000>;
> -					required-opps = <&rpmhpd_opp_nom>,
> +					required-opps = <&rpmhpd_opp_svs_l1>,
>  							<&rpmhpd_opp_nom>;
>  				};
>  
>  				opp-481000000 {
>  					opp-hz = /bits/ 64 <481000000>;
> -					required-opps = <&rpmhpd_opp_turbo>,
> +					required-opps = <&rpmhpd_opp_svs_l1>,
>  							<&rpmhpd_opp_turbo>;
>  				};
>  			};
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita


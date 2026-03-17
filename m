Return-Path: <devicetree+bounces-276513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGywGzMIuWm+nQEAu9opvQ
	(envelope-from <devicetree+bounces-276513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:52:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1766E2A51E8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48C40304A5A2
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0E93932E2;
	Tue, 17 Mar 2026 07:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WHvOryAz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HzRtZRI4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAA7392C5D
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733759; cv=none; b=sUi9E7FxYFqwxo2s13cVor0ZGR3mHbagTjkGovVrLaHS24Uh1CGxse7dPu6u/PoD6udwP7CFdHdhKl8ilTrTl5XzTSn6B+ZSrAq+5kgn5mdO4HON/MQBXz92mNHbTn35Al3fYBIYcp37i9MofIqkueQ2JUmPBGdDEiqYwYIBJnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733759; c=relaxed/simple;
	bh=kVYspbU/0tkfmgemtT9Y6p4T462qqoPfacPRrQhNkxs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TRs+M0Zo9vgDAxTG0yqQQQ2GRUgdpRwvTfhku8ri6Yiwson6XbjLTo7ToyTQ8BqQrAG2c1jUwHaEystTl+D5Ob7ncIgcXVsTcLhPA/U6XT5aWyy8djmeUkAVo3DVVf/MeO64tnlvXpjB2kuAC44vXqQAZuE/rAykrSBb04jaqzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WHvOryAz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HzRtZRI4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H2ZOkW4022797
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:49:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQGC52Uv4tcckpg5TgnxQjBECkfAnFsdlOKaF8a6K/s=; b=WHvOryAzQaTjEZxO
	2BIqDn+m4DfaraHJF/Zyo06pV+PusPmjD+pqtoOSvKNl7ab0e9/Plf17wXcCJghy
	8rWPvZ8QqpUwTqv56idzKl4jtg59U5XcIe2jw6fXcGeAhIlAdkgUa9Zxn+DgM2eT
	FrYA9K0mzhVWv+ihjIgm00fteVz5glA8Ua85EirHXTB4uxV2HmwoHNU/RoEDgfCb
	KVqWF00WK/4xqBhUhHkDjtcjZVN5b1UKB0Wb4T2i3lfz6qhZPhhB04sjW4iljf2w
	kFTP8IlkvasY0QB3zns14pmHwadpm6LSOfvckHhX5Hcq17cGHGyfB9a6JextNYny
	nyzHMg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxn3fjpgr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:49:17 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354c0234c1fso6186871a91.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 00:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773733756; x=1774338556; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JQGC52Uv4tcckpg5TgnxQjBECkfAnFsdlOKaF8a6K/s=;
        b=HzRtZRI43oVYfCZuuWcLvDBHntJKElHI1/gnExM3g76RndBxWuhPj1vYXgzppCAWra
         kKOMg4KsE6L8tc8cCc2pGDYOcvQApPxANYeUkZCDJDWFPckD5+Xt8kgBbUDgUP6FChos
         Z6BlfmkC6vplltlNIYMHD4HXbninN8Qs2Z/l+CRtZt5fNepyRyYEKIVMB2FGIUhJpCon
         kxraj1RDtrmGqX3B+46LmnoNrKadKh/48qDMKAcO3fVEdURQaQ43r77LxayY5CjVNqln
         ueZjl0D3iVFMx0kEZ7XaH1UzKm4h7j2rAaU5YFtzVS1Vxf+jvtkgwqtAO78vFuVuDoPR
         AQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773733756; x=1774338556;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQGC52Uv4tcckpg5TgnxQjBECkfAnFsdlOKaF8a6K/s=;
        b=JIPI5r8DyrHc7ONUokH7BrTl4B2Dhbp9HS8Kl9K3VIrn/EUwl1Hbb482UTJUCeqvHV
         ce6YtYBKQj4jXZ4pnm5DqucUPyfquZVAuGiw78Xiu/HcrzgDiVU/XnMTj/vOOk1gi8lE
         huygjVknUuoARs/GXaZlK66SLWMsGBF9NjY+mTy2v7UykigqueniIskRlhVhM8s9dLRW
         2aLYIiGAYPMyRFUSVAgyJbouoUUzUrbgwRhq5A33ibIPoPGGFPD4WT1KXHgwpF7OE1ZY
         bq2QWzYAtE+ep7CfunEfKB+CIDDl2sTD9HccooWeabtzH7NU/ig4kHO8gdUy4lkrpFGJ
         f8lA==
X-Forwarded-Encrypted: i=1; AJvYcCXjf2A8EZtrp2BpqtOkzHgxZ8JLq3IBlTKAg5ne3oFat3ZHfv915B8JFHQoSoZPGmkuiDgyDkfrfx/T@vger.kernel.org
X-Gm-Message-State: AOJu0YwFbq0lcOy3g4NzRSZPRvmSmiiqUoSHOdiyRNoFiO2ty4YjWAaM
	Ymd+R1CMuQnMKcsEwkXVQPb7qp1IrxhBLjAvRs2e7c2JmfPm2Fe/pB8XBgv9Yk2bESacfUTt/qn
	dYxWzKQZeIJt9zC+KclL3C2veT5D2Iol0l6NhQM/8IjMomBZ5OxTOLZNWF3D7Ap8V
X-Gm-Gg: ATEYQzzaZUFlXCDQHPGE6goAblbrkBbPW6AXa5+KuOwVSOVrm6SSolGfrqZVUmQ/luo
	q3aTkRvhMv1mbVts7+8HM9stTDYPz37wbJi1Gl4JaBBk0svnxU6NGGiTiIJSW3AiQ3kTXbOFAYl
	NBu3AxAnXObOad6jic/E2cSOFpcptk3jaC/VnfXd+9y1Cjou0UJRsYTpexyCxMqVsYHgUMC5PA7
	2phu3/NgFNK7a9hZECAh3sMwQtIS5kZUWpurejTaP7RV6UWpHBiS27oPYvwSQswUwv3yLAip6xH
	LVUvgehcCNgolDYwVv5/3ul/HwatCl1zqFY1q/3vG9ri9sNRhTQP/piVKVMc2VDCrIN/08h9xF0
	Ym3mJJN/SGg3E7DbFzrURPBuYZdFWN5MTtJ5dOig5RY/IOLQZRlrOzA==
X-Received: by 2002:a17:90b:4a47:b0:359:ff8a:ee55 with SMTP id 98e67ed59e1d1-35a21ec0e5fmr13571793a91.14.1773733756104;
        Tue, 17 Mar 2026 00:49:16 -0700 (PDT)
X-Received: by 2002:a17:90b:4a47:b0:359:ff8a:ee55 with SMTP id 98e67ed59e1d1-35a21ec0e5fmr13571767a91.14.1773733755658;
        Tue, 17 Mar 2026 00:49:15 -0700 (PDT)
Received: from [10.0.0.3] ([106.222.229.118])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badbcdad9sm2451786a91.16.2026.03.17.00.48.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 00:49:15 -0700 (PDT)
Message-ID: <7e64b04d-6e3d-2100-3b2c-e5366e054a8b@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 13:18:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm8550: correct Iris corners for
 the MXC rail
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
 <20260313-iris-fix-corners-v1-4-32a393c25dda@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-4-32a393c25dda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=C5bkCAP+ c=1 sm=1 tr=0 ts=69b9077d cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=RgczR8+8wRjDfzPIf2UjDw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=jz17cmUFc4N99GX7AB4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 6FuubGJ2wiav4aYDotXhYcf0rRq9y9TR
X-Proofpoint-ORIG-GUID: 6FuubGJ2wiav4aYDotXhYcf0rRq9y9TR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA2NyBTYWx0ZWRfX8ThCfv2rZDXM
 jl5OLelVHzRaS+zhBbjhfLRV/aWXi6lJl32y7BTsdcFicvm4LA/p9FIXSk6LMKC1SppDvJVzRVs
 dmfNoTVKrHwK2xYWAziCsitYH3J+qB0NPbbkxjgYuvPFNZAMUaFlIB9EfPu8ec9knKtLR42N18b
 3odoqkrC+szVRentoHSjYOzaNtudrlzxhDEyw/X3V/u7MlHk4+doccKJt3O5ck5rtEruXxhNqVb
 9hvoTSnFjIwOE58z1oaxNRawW3TbgxUpu2/7bMVoWqJQK+cn9yiG6UmfILH/AX1d2ZxAR2kZXKl
 hP5doyOhjY+Rpk/W0KtSuFYMI6EbnyA7dIu2LVEqH1RDn6PjedrgNxAWTgOh2vvPJG0WFfy6cVD
 8aLdRiXoZ+dinS/iacgFZ/e3db+VwZUJiM6G/LXHFkz8VdE1hjGFaWO9muVbe5S84fRKUiFXm8u
 acS5/RyjiIQ4JVoouaA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170067
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
	TAGGED_FROM(0.00)[bounces-276513-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 1766E2A51E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 8:57 PM, Dmitry Baryshkov wrote:
> The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
> match the PLL corners on the MXC rail. Correct the performance corners
> for the MXC rail following the PLL documentation.
> 
> Fixes: 41661853ae8e ("arm64: dts: qcom: sm8550: add iris DT node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e3f93f4f412d..6a338c522ee9 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3320,19 +3320,19 @@ opp-338000000 {
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
>  				opp-533333334 {
>  					opp-hz = /bits/ 64 <533333334>;
> -					required-opps = <&rpmhpd_opp_turbo>,
> +					required-opps = <&rpmhpd_opp_nom>,
>  							<&rpmhpd_opp_turbo>;
>  				};
>  			};
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita


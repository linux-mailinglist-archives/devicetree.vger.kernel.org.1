Return-Path: <devicetree+bounces-276574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIfqIEIfuWmergEAu9opvQ
	(envelope-from <devicetree+bounces-276574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:30:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E8F2A6C23
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:30:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D36AF30329B8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD9B35B62F;
	Tue, 17 Mar 2026 09:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AuOBz6uW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yeusu0S6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDC83559CF
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739647; cv=none; b=mbMADxbsJElWmUK1jY94pGVKoXDDgp8lspg+MRquR6CAS8eKdNj8zwqf+apbKBPdkS+p4SI5wG+Xp3mBh26v4fdWoBJNDIWby9/EKtZpb9+BMVlJachQKFcvQ2MSbfULvkIZ6fgd04D3elh2XoX++NIF+uZoMNK8twY+QDaQA7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739647; c=relaxed/simple;
	bh=PqEXds4GrlgZ3n52VaQfUbW8LHZn+0T/t/toWPk5DGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jy8DrFfdGNdZxXx6WTHIsjnIfVoVHOlAfKfxHuSVJaECT7QXK+pAnlO7by74UcDtS2b9TrPPUobqIId2O4vRJmZDFtLjVXCjv+r5JJXPieJwW2+4ZlwPdfcaLQ424uWCoERPCXdnBAHz2ATjJByDZwMyx2LGvibM/QB5wb9kEwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AuOBz6uW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yeusu0S6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H8vs1n4022256
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:27:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VsUDLAst7GCYzE791DlmXpqcmyhgQ6vfLLVyLS8iSTk=; b=AuOBz6uWd9ill70Q
	46wqbr2fS/zJP2yLzkN7fDs3xLKvHI6NXUfPqWkwFxlfz4Hm7QI1iY3cgwnGurV6
	+frQ5nwVv6zK8l2VLyH8fxGcIOUqwaIffATyxrFJ0FiZ2P02wYWQufHNIfSk7UKT
	aEVBRriPJ6DCqzR94AKX29Y+cQ4AOMKLm1FQiVEFV3Aq7147B/ysgayU1tB7GXLl
	N2EoBe554fTqYORXjtDcPZo5l91m6wW0ccqO1nWKJzPOeczJj5EexYfzg3fvS1No
	XyJZUelDKhY0ypCkXiFzKoSXiAvp75FrRF8oGO+DLZ8jUffOz/YKv0F9QvU+24aj
	p+lu1A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxn3fk373-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:27:24 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aec784479cso335729865ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739644; x=1774344444; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VsUDLAst7GCYzE791DlmXpqcmyhgQ6vfLLVyLS8iSTk=;
        b=Yeusu0S606MaraiVAAGPK3UxoNCpCGzfOB4gaogeVoJxkBVRhTJIxFS15sbcS8VH5C
         wPMzYnIWMdxWxCE/+cNljVooGs3bpHiLuPqhkLy2SeqQJjdMcqyeb3sCI7MOXd+6qTAo
         AUfGwZgpovUQPLCnaVzmgFeagLCiDkP15aacV34HMA5EQKVuNDZY78GQ8CaTN4vTUJv1
         DmuALXAfnb1/GlRKR8Hh1WTgV+hEF6D5BfZaVuXvSnfOJt0CXaSTVjFbrfmwFrinFf9N
         pNiBwxfKWHxKFz+8iJjBML0DcEp5yAgB0vIrNc6TQqQzFUfNUwfp3HLFBTMs8d78KSGa
         SOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739644; x=1774344444;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VsUDLAst7GCYzE791DlmXpqcmyhgQ6vfLLVyLS8iSTk=;
        b=cbjCImqkPt5uQKKKPpJWCcmwcqdqbxbnrsZdoP6xgIFjCQ34bvRYeB4lFS9fPsdkM7
         0ahHgKP0IquCwUveAi5s77ptMKrrLXQmkmyPsJ6XkybnWjPXjvNx4j/dsiOEmTNxpslx
         py3EeplJdFt9liKqgaNH400r3iPMrFLfzmLVD6AkYZOdzTTdeaO8rxAfPH+59ri3oA2j
         6DN0JKmuqS1OjVAuRHZNtOFXQPqvG3aBgp2I0cR1rQtbBT01s2A0OXFpH6/mqzfPOeXR
         mI8bhcsKmTwlIW64RnCuV+iZCpoJAMeBtIwBiuKLgfCn0H7nMCuF5EN9Rcr9dQ1KpBDf
         PFiw==
X-Forwarded-Encrypted: i=1; AJvYcCV6Xg7cij2fmvAlz5monSSUgUzKCFMiG8dM1ZY5+uUHaccoFDs2JzeNgGqEBGAND42lmtK4hHKpx08Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx00EhlfeRZ1s+d1IoXy+Vj8a4ZfFbJ0yZuxWeiyG1B/VRt3BUx
	KKjhBeVi3KE/0IY1nEUPnSs2RFWq2bK8ywUbKWOvqMwXOpH5kX/zQ/WJhtL3SNwJ7vjrQfv5DyM
	xELREvgisKmO9XF+x96g5sZn0+B317RNAENra5QSG0IX0KhfW17pfOGd+gQDaF9u5
X-Gm-Gg: ATEYQzyf53jpLgSWYBBoeyQSVc91MfaJe9at1xDbdtxPrJWL0xF0l2vuITXP09GOeCq
	kavU1oELp4pew2c601El3pqnUCGk5Bcux8iU7RtBHv7X1b2pGvJib2qJoAJ9aOnStVh198wWyFS
	Hl9J4e3SKDaRtTvorlLv/eY1iS/bseZ2+gmaG7AP3eHi9nuQkDVcRiLHato3XRUrO3oOXLtRGYR
	MwNOzL3H5LT/AuUBdqHl1qknPLfXD92FdaGtes9du7Kg4XwE0bOYA4pyeEq1FYbQ4pXaiFBm6MY
	Y6WTlgLoiR0xpg2hOuCXKLFjYyYRlFyzo9YR3N2aAdyIq0E9u6G5pEZj/i07C7I2AcLW6xCcdxq
	WJ3QOtXKZwcdKWAEZaKOxs+t+tRkX3uZZ8erBwLGBn6J9HksQj+I=
X-Received: by 2002:a17:902:d505:b0:2ae:ced7:4650 with SMTP id d9443c01a7336-2aeced7510fmr163910305ad.24.1773739643809;
        Tue, 17 Mar 2026 02:27:23 -0700 (PDT)
X-Received: by 2002:a17:902:d505:b0:2ae:ced7:4650 with SMTP id d9443c01a7336-2aeced7510fmr163910045ad.24.1773739643365;
        Tue, 17 Mar 2026 02:27:23 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0659a90fesm19021845ad.45.2026.03.17.02.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 02:27:23 -0700 (PDT)
Message-ID: <f4358798-c40b-4425-9f7a-230cdc6398ce@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:57:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8250: Add inline crypto engine
To: Alexander Koskovich <akoskovich@pm.me>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260309-sm8250-ice-v3-0-418bf5c5c042@pm.me>
 <20260309-sm8250-ice-v3-2-418bf5c5c042@pm.me>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <20260309-sm8250-ice-v3-2-418bf5c5c042@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=C5bkCAP+ c=1 sm=1 tr=0 ts=69b91e7c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=LnETC1lSbQsXWPk8PCwA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: _E3TWDDp9n4j4CzhF6eLrBiy7pjiu0pk
X-Proofpoint-ORIG-GUID: _E3TWDDp9n4j4CzhF6eLrBiy7pjiu0pk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MyBTYWx0ZWRfXyc+aJWqbzIa2
 FCWCZNJgJGu9Ld66ca3znDqifjqIr85F1fEguItHAnRNdpOoytmWwmY/+kGWqSV73/4f87MTzBg
 DO/I6VNnzurhpQz1lCGcmcOIaQpybyFmRvQ+F+V3PsYt51oVwZdEQeWaYRiBL8cjoE6Dr/SVVeE
 IY7sj7BxO/yoVkZ4iyHWdqGjB3fSOVvKA5BtF9qWN9fS95OmFlE7u1DzpXQkIglfEqYauCMowLk
 0yuiJJWCsNOyfhEH79w5Re7ejIN+u6sNltayiwIyCDozO3q0XjmACPJi1okwumwLcsg6Y9SPGTd
 y0hbw3C4j75twBSUBt5DL4ALse1C4H7C0jz8G3EKCWglaRVSR1dpyNCXVpTC7XweJxIl+N/TW3E
 doZ0Wc9CC11uKB63dICqBc+DXBfaPfhiGGO08mRIZrErhRf20+I3f+2XeLpFfrFetGKy7kI8wtu
 gWM9WJGJwhnkASznteA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170083
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276574-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,1d84000:email,1d87000:email,1d90000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E4E8F2A6C23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alexander,

On 3/10/2026 8:42 AM, Alexander Koskovich wrote:
> Add the ICE found on sm8250 and link it to the UFS node.
> 
> qcom-ice 1d90000.crypto: Found QC Inline Crypto Engine (ICE) v3.1.81
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index c7dffa440074..b49007934278 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2513,6 +2513,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  			power-domains = <&gcc UFS_PHY_GDSC>;
>  
> +			qcom,ice = <&ice>;
> +
>  			iommus = <&apps_smmu 0x0e0 0>, <&apps_smmu 0x4e0 0>;
>  
>  			clock-names =
> @@ -2592,6 +2594,17 @@ ufs_mem_phy: phy@1d87000 {
>  			status = "disabled";
>  		};
>  
> +		ice: crypto@1d90000 {
> +			compatible = "qcom,sm8250-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0 0x01d90000 0 0x8000>;
> +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>;
> +			clock-names = "ice_core_clk",
> +				      "iface_clk";

As per comments on v2 of this patch, the clock names have been updated to 'core' and 'iface'.
Please update the same here since your patch depends on this one:

https://lore.kernel.org/all/20260317-qcom_ice_power_and_clk_vote-v3-1-53371dbabd6a@oss.qualcomm.com/

Regards,
Harshal

> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +		};
> +
>  		cryptobam: dma-controller@1dc4000 {
>  			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
>  			reg = <0 0x01dc4000 0 0x24000>;
> 



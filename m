Return-Path: <devicetree+bounces-257819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MI1zAQeXcGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:06:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8CA54104
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:06:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A53FC581B43
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE7447B438;
	Wed, 21 Jan 2026 08:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TqMwfvNo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OZwFw9O+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C115747B423
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768985936; cv=none; b=fpukBL2xKVhgtQEnD912XLHTBd9xD/e6EQ0GPM7t7FPSepkx93NsofE4vUupMIUtPpeRrhUagtwxdukki5tfUkzAoIpkfS8PKC+LpZT6uSgiy9tJuhPlq7Qx9QbxmzLWQm/Ej1uxqTNa6J27sBnLlN+uE/CudMew0UgjYE8Oki0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768985936; c=relaxed/simple;
	bh=T2usZ8gSTQTfCOB+Rt+2OtkLgup6i3tdElu2GWesta0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O7IxHm8ZQOs4SKOaujr/eBhYvvof61ZnPCeoTNIRyZu0VFPbEt79yCmljzxykijjSVOrU2Rj0TqpaOMS7o1ZaQD6ag3iZNmYbcwdcZJlky6xlEr8OAq7d8Sbqo0gWj51RwAAa0KA83u9QxVpq3ye83DGJPNlT5uqjdekaQllZsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TqMwfvNo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OZwFw9O+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L4Fbuj2840844
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:58:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8JEk0RTuiHDD7n7vffGqoKnhwc3Of48wJVKaL6PKEH0=; b=TqMwfvNosfwrmv4E
	RQv3u0WwOXAA0ArXIBcxew5qui9yzEB3a6kF7rV02pkTYA8WYMMA/r6yAgP6pbGj
	kF2i0pEcCeMwdng5b1dBvge7Aj29lncTrBmJTV84bbNKIHQqFfF8hIAAa4eMVj0D
	xAcLBwvATq54v6sHftAHiX60EjxxopLBDFS5Zf+f6uPT3ZAefXj6BV1C5NgPGnbN
	8oAQDGh4xuVdcjSthlNuIZjbyJeZ3IHLl2zyclc+Nz4NoocckAWfwyyJDNtlcLGI
	FHf9Wg9uYNN4Q5QGwoWjJoeg5NL7GL+4EMbiC5Tcs3k9tSkKzrMBDntIuWi9MD6q
	TW8yTQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqm1s0w4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:58:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c6e05af6fso6132989a91.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 00:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768985933; x=1769590733; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8JEk0RTuiHDD7n7vffGqoKnhwc3Of48wJVKaL6PKEH0=;
        b=OZwFw9O+kwWNUohpxnPlfHapZgqKVLbdMuVjb4wXKS0lleB5hZ8hCAg7d8+lvD6hNt
         pGmAptlmzuJiz+zgbJ02Rr1OXdm0WOdFBU1MUZM3o4OEO6wrLmuac7lbfo2qD6eR29eP
         BTRVS8jwMaw1GqB13M46hFSXoaDDoez6FLsBhLLMQPFmyCRlYDexFyLG5zomigDKox4O
         gIPGMOk+wQ6zpaXnT1nhdtmI3Qc3QS346IQFTZDQFyLNEdrnqTmjS3z/vnRbicdmDNUt
         C05lBDelNC9PEUfXXRrDmDJedSJ4aafVMQJmYb0XYL6HS0wD7eYqVh+XRrQz62VDQ8on
         d2SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768985933; x=1769590733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8JEk0RTuiHDD7n7vffGqoKnhwc3Of48wJVKaL6PKEH0=;
        b=OmyGeo24mep5qnWRxprhNjJIbzQEFaaVuVZyb82FONDPAB7DLm6KIy4ZVk7kUJNHhX
         1C2TQKFp2J58gr8oK3oXAxiT17AvSYw04fBlPQdIjpuNRFhzsnVCe0fJflk6qiKzEduh
         TcLqHxd6DDR7XTlu2dj+9LsrE1zR1hPeEPZs71agFoilC9AzR+9wYgR6rnCGVnXe+uUD
         65IhcxMyrHobfeZ4TP6M6jvdEe014RnbbYjLuTzJvoixVd1Y1lhVZwH22spm8p26hPFf
         8XpnbZgCoJgd3jsgMnm+538wfqr0XNov4OYaK8rDo8f9LTvCWb61aOIRIqG1wYfsHLaE
         8DRA==
X-Forwarded-Encrypted: i=1; AJvYcCV3kyh2KmNfPe6V1Ll8GdIBaE3vskfb9ideCX/sWCNegIIrQcWj9K7MZMBvs8B/rSd2llRRDwZwcNA0@vger.kernel.org
X-Gm-Message-State: AOJu0YxCl2WpAWRKwVpWJjdEVqbybC/l4EZZ3bdiLMDciu9spi2o0dKA
	ji4+n67RcHZ8Kal+LuhM13xvmENjy5ziqxGSt32p0Zr5L8z3lI5rGI590mL6lWKuhGgcvYdFWOZ
	be26Tz1qEpIpiNgBDNiL4hg7h9xQoC6qnooKM+qYx4rp4QIrNvqma9OyBteNqVqUn
X-Gm-Gg: AZuq6aLSKnh5nAmqirwXEj5VJO7iqUOIu1mO6xr1VztdDA3EGeKH0bCKJRiOMPS8BJ7
	cB3lDPBk3NFRI4f9KiPB9hwlBlCw5x8P/l7O6zUJl7W8/rWXCAVKJE4m17QjB+nmcrV0CBLQcRO
	upBqqyNAHZjIjl8D7CZDYkWqCfJkhm/4a6vAZeazNJGrfWuMbvdU98zvIZBvU6DC2q2QYpkzglJ
	1+I/nGLQrQh/9M1GRxttdUdD8yFLt3hT3sxwf+gc6rslb9qWS8gis2Bp/qTBb+gdmjhd4yqpSe+
	kfE7ggeX1T6WmjnUWVcgmaNjQG+b5yCNdM9VaVWPvqQYRP6CuP4+Rb9APKPajCHg3xljPpXzM3n
	9xs4HeYYNZ0PQqOBVgxdVbs6jChBapEFBb2tl9IGRxA==
X-Received: by 2002:a05:6a21:a96:b0:37e:4319:d7c8 with SMTP id adf61e73a8af0-38e00da269emr14536315637.75.1768985933288;
        Wed, 21 Jan 2026 00:58:53 -0800 (PST)
X-Received: by 2002:a05:6a21:a96:b0:37e:4319:d7c8 with SMTP id adf61e73a8af0-38e00da269emr14536290637.75.1768985932769;
        Wed, 21 Jan 2026 00:58:52 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa10be07fsm14428100b3a.20.2026.01.21.00.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 00:58:52 -0800 (PST)
Message-ID: <e28195f4-e73e-4c02-bfb7-850bf3eabffc@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 14:28:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-11-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <20260112104722.591521-11-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA3NCBTYWx0ZWRfX7cO7/yrIrj4v
 HX7949VKRs3x0WTwKqpLzMF/b6QNPH5QYdnApDIBJAPqTIgO3lfAP0tqLF/ntYVnD0JJymcWgUs
 J3xBHGgDGznSoYMo5DxhRcefYbYFPkItMe6yeocI/7J1Ln4pBAvkTTojVQpdxQSzffl5Qqj8R5S
 +HnC8JuLDpRBPQs6EQvB3B+HvrtdzTQtjNMTuwBRLU4o66+zq3j/VoPGId7E6zKbUR3Wv3Afzw+
 6nTWdhVspPJ9+qGH5Wt7HDmF4iq7MQH4DytIdqD4d2HwjgqW12ruSgn8zqzHCDGoTzGoyhLdy7M
 4NaE74wsWDIIAlR4LSfyTm+zcoWWQ1V2m81QouifwVjweDm1BTzAjf8lFbahlZPuU5v2TKt9+cn
 kF41CgpuUTc3MIEQ3rbWAf1qrIHEhZSd4Lwp5Aab51p6Zpaq5sFFMCPZRm9F3BJSuyERG5RjdIT
 qvLSUS4NiedFvFvOBeg==
X-Proofpoint-ORIG-GUID: 4OiVar2bdy2ipFtxvLXwqYECwwwHQRzb
X-Authority-Analysis: v=2.4 cv=dtnWylg4 c=1 sm=1 tr=0 ts=6970954e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zVePdD6VyHPybfqkj0gA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 4OiVar2bdy2ipFtxvLXwqYECwwwHQRzb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210074
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257819-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viken.dadhaniya@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9E8CA54104
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>

On 1/12/2026 4:17 PM, Praveen Talari wrote:
> To manage GENI serial engine resources during runtime power management,
> drivers currently need to call functions for ICC, clock, and
> SE resource operations in both suspend and resume paths, resulting in
> code duplication across drivers.
> 
> The new geni_se_resources_activate() and geni_se_resources_deactivate()
> helper APIs addresses this issue by providing a streamlined method to
> enable or disable all resources based, thereby eliminating redundancy
> across drivers.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---
> v1->v2:
> Bjorn:
> - Remove geni_se_resources_state() API.
> - Used geni_se_resources_activate() and geni_se_resources_deactivate()
>   to enable/disable resources.
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
>  1 file changed, 5 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
> index a4b13022e508..b0a18e3d57d9 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -1160,18 +1160,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
>  	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>  
>  	disable_irq(gi2c->irq);
> -	ret = geni_se_resources_off(&gi2c->se);
> +
> +	ret = geni_se_resources_deactivate(&gi2c->se);
>  	if (ret) {
>  		enable_irq(gi2c->irq);
>  		return ret;
> -
> -	} else {
> -		gi2c->suspended = 1;
>  	}
>  
> -	clk_disable_unprepare(gi2c->core_clk);
> -
> -	return geni_icc_disable(&gi2c->se);
> +	gi2c->suspended = 1;
> +	return ret;
>  }
>  
>  static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
> @@ -1179,28 +1176,13 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
>  	int ret;
>  	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>  
> -	ret = geni_icc_enable(&gi2c->se);
> +	ret = geni_se_resources_activate(&gi2c->se);
>  	if (ret)
>  		return ret;
>  
> -	ret = clk_prepare_enable(gi2c->core_clk);
> -	if (ret)
> -		goto out_icc_disable;
> -
> -	ret = geni_se_resources_on(&gi2c->se);
> -	if (ret)
> -		goto out_clk_disable;
> -
>  	enable_irq(gi2c->irq);
>  	gi2c->suspended = 0;
>  
> -	return 0;
> -
> -out_clk_disable:
> -	clk_disable_unprepare(gi2c->core_clk);
> -out_icc_disable:
> -	geni_icc_disable(&gi2c->se);
> -
>  	return ret;
>  }
>  


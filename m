Return-Path: <devicetree+bounces-259860-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMclHO+oeGl9rwEAu9opvQ
	(envelope-from <devicetree+bounces-259860-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:00:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F61B93F3D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:00:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 748723004630
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D102E2D7D3A;
	Tue, 27 Jan 2026 12:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QxfuF+my";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dpk0u1hu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FF21CAA68
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769515243; cv=none; b=WM1mxeQNkQwlxH2U5FxjxwnZgudJ5xtKxCj9AviEHqQ50h0t+amYikYVYt2hnRVyuV5t2IcSC7XFuh7Tm2QExvWnoySSCBSV1qCNdmbupATYK2YesxUi/H08zr6pWAqOKGo1fvY/3cb4TvxIu70KLptM73WSo/iUhKpq3HiSAyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769515243; c=relaxed/simple;
	bh=COAX13BQ0BssH8UFRO5C0W52tZsy+r/D3rPcoFyQeMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O1nQyG0nvvmsCxbGSfocXqmxDS++loFlBP4UxGjbbewNpFrWxnZfwdJdKPGNk9uXy7Ujaomgkns2+QkSEZdPxAWby/bGhaPb7wARZyBR3ZmML1XzCaCakVGyuIWj1aLAOFoOS73GeoXhv7am7qp+M0MFB7wzHj6lz/X/UWbrXwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QxfuF+my; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dpk0u1hu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAjAIJ496065
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:00:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LNiSDf13rGS8T/IjUUar/9UDiB5owxUtIf2BxjiRE0U=; b=QxfuF+my+edrfNpb
	sq1xzsZLX7XxcBzvRXewlP8ibCskN0RKM/wTpTlybZmXEzyPfzksBeh8OIHMJC0v
	iJROq1xR1ZERuCXLCkJVNsszLU6LlgnJ6VeVa6e9SO4Cyufo4weUopWf6DXKyqJM
	C6RwrqRBVCQPIAQ1UkE5xqhzj2rroIfsJyWoQ/chQ18soqYV/3QvpEBKPVIo+OYP
	gjkUrtRLOOWj2Q5RoCVsgrJOqLaS9lor9LhLYSOSL2a+0hrSEqq+TFw1J1ayf7/D
	pxuohKAulysscRoCIcK2j2saI1FOEjNzwem1vAcPdB7n3y2vaf0w938ojx7jZU1O
	IioApw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bjmry-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:00:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e518fb75so83838785a.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769515241; x=1770120041; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LNiSDf13rGS8T/IjUUar/9UDiB5owxUtIf2BxjiRE0U=;
        b=Dpk0u1hu1k4ZNCbBNXr1PIY/hS4Zlves5Z1TnQRGBImpMWOh8kLm7UIzf0kQdXPxbM
         Lsp59518P7JjXyHQW1C0dViboh9irsj0FQZafoFwZqilaaddge2NI15sXeUoBpBx9QYw
         kXQLDuSlBRqrZbtKksBrtmEriHMzmfBS2bAkrcLzXpszbfivrC3L2drmAOIFETs2J6kJ
         6ZITSPeIDbHVKHQwHhuuFtsNd87K2UmAa7SHJ6KkFLRopFc/N7Hou7cqgSncBxvz6PaN
         PH0k4duF08sIpLyAMVLSrpK15ML953TAdOemNFG/4wIWz5ZBvcKHvNWYoOWtOE72/puC
         Yzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769515241; x=1770120041;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LNiSDf13rGS8T/IjUUar/9UDiB5owxUtIf2BxjiRE0U=;
        b=psGuroHBgQnb62Bto7YN6Dw624GORj7WuxbWtGr8sTibDvM0kcYb4ceKZvS702lRnX
         4HQ0ulcHYweCo5fwKih8QXg9VtW++Tv5vRqg+PY4cSw4Pt5zxDsrv3ReHOC48O6bNE2s
         DJuB6FO67LgHE/nNCnEFkcAxIcr9HU78gyg1KrG2yfOZ6OOWuAYlMAkGAcUdQToqwLyH
         QcbHpeOC8XZbpmW6wxXg9puO7d512WAG7e08MsAt6vIC5Sinb+MP7xT6mMB0Hfn5OeSu
         2sohpc5EbSd1rqlZNclOmIH+TcnV6OF6dFgayVT2/K0ehbCkjCS7B115xHqHaE8qFWWt
         TBNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgCNmB6UBnupU+fI1u8pu3jsryLUFSHQb0QFV0Mm4SSi41wuDSEwRfQzKwun724CreMCbEWDKTX8ZN@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/Nk1KmAk3GRTKUOdGPM2rw+Kvi4Ol4OP70Wp4fzqmz8Il0s8T
	JT2+by3279H7HYP69HfqaArBIDGvU2K534qed0tPMDShO4Bm/lvEZveW7SP343IUMz/l9JOvTPy
	crZFUG7R8uXFPBGFRPV5yZcKmc0XJPbjYfrZcXxUyN9KEcQc+W+uB5fKyIBl+lHgV
X-Gm-Gg: AZuq6aJ499uDDtj9oTO7tTXtEO2qHZ5jnGpw/SOhT4361qbWHMApErA40rQe0z9tIYk
	sfY5wyAYzsk7ENuxpEbdYRdbT40+v/c5hU0S19NS1n9QMrXxUakOU+yjM92aZdvghCo9sp6ek80
	edqTFz5ef82RQuWD1/J85iGsHxJiln9HkcvYlJd1nhDyuM0cEWuZDJ9pqkGNdYHDXh0lkF4hKq+
	WhqGOYiTgPLNFjKsO7dohJ0pynZMpcrj5uwqPnh5De+QmB2QbfKkFx7f8LI17I66LNR5Z7k7YFa
	aOzdO3d3S5in+2V+DJGFMAMZJUEja627DoYeqZSKXXYi6LieT4LY4QT8GVW+AAO3N29ismZvfZ7
	tcqa9aOXgQwZwNiIPjnQPuUcx6rng1jtbH/ZSKDyR5d58u3sY0ubPlURbXSaGDRcnX6U=
X-Received: by 2002:a05:620a:1a9d:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c70b845972mr110124285a.2.1769515240820;
        Tue, 27 Jan 2026 04:00:40 -0800 (PST)
X-Received: by 2002:a05:620a:1a9d:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c70b845972mr110117585a.2.1769515240184;
        Tue, 27 Jan 2026 04:00:40 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658666bbcc2sm4496530a12.9.2026.01.27.04.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 04:00:39 -0800 (PST)
Message-ID: <0ca0920a-aebb-4072-a098-48c4c9938c26@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 13:00:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: monaco-evk: Enable SDHC1 for eMMC
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com
References: <20260116214354.256878-1-loic.poulain@oss.qualcomm.com>
 <20260116214354.256878-3-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116214354.256878-3-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: htsXaTPoebwTA2iAJMHTf5Zk-yMI_mHR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5OCBTYWx0ZWRfX3/bmaI+86lBS
 PljNU+iF7DgE2QZOcLJVvD8ibxpqV3lw08OrlECtl9dS7aiDQUdw7UIyS94Jrz81KqbJ+rIjzZK
 n8aKflh7sT5kdSrHzCqnifWI5HRhL/NZjX9wS2YWcQmhH0Ad73Cm+t6NqbAQ04L+NkHVqdx8CSv
 iDDPAMmygVSqno6hBtZN92EGPyEYPKIoVqRSMXKjyo7SlLiyizXhFL/dkn++90yZ2K5VI2JNld2
 HSNtnaL6YebZ67T91CRzJErMTiY0WF8sBTZ1e9KkFQrS69JpS0wxhoZnItsF/DcOrFE2smYTvr6
 YBBJ8uV4T9Xppz2818yiCtZxvQEEx11IDDo9faKZ9uIS0rydmpu0aR3T07KtGBZ7WjX14ZaIVt/
 T3GgY7HhFTKSTEWsaUGmWsdiLgrCDwuLn+8+AH+DFDhCORdk3CuwWeXOuXaOEjVD45Zj9N2WAlC
 9X+wMT8/fQMCLgMy9fw==
X-Proofpoint-GUID: htsXaTPoebwTA2iAJMHTf5Zk-yMI_mHR
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6978a8e9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=F2uzNt_Jvis__oCUEkcA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259860-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0F61B93F3D
X-Rspamd-Action: no action

On 1/16/26 10:43 PM, Loic Poulain wrote:
> Monaco EVK has onboard eMMC, that can be used either as primary
> boot storage or as secondary storage when booting from UFS.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> index bb35893da73d..c272d7db80e2 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> @@ -76,6 +76,15 @@ platform {
>  			};
>  		};
>  	};
> +
> +	/* This comes from a PMIC handled within the SAIL domain */
> +	vreg_s2s: vreg-s2s {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_s2s";
> +
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;

Is that the case for both SAIL- and SAIL-free SKUs?

Konrad


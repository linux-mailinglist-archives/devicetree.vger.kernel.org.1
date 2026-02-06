Return-Path: <devicetree+bounces-263342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJM5LUDbhWnfHQQAu9opvQ
	(envelope-from <devicetree+bounces-263342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:14:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A27DAFD86F
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:14:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 13F19300462C
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489433939C8;
	Fri,  6 Feb 2026 12:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G5PPhM5y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZR2S+/qv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF59C3A1E66
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770380092; cv=none; b=X6ZO1wg2DBJvmTqXx2BdUeEyTrKF6uN14+Xu+XNSR/sCJej8i/h04s5xSlS20ZIMmgQLw78v/eXZplnN7HpOQXiAfLCtqFiyJrIko/48XU7y9TCsg6t+Vugmwyrq0O3c2FSKzVoal3Y//cTN8Vh/0d2BwBlscQOkorrLkr3P2ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770380092; c=relaxed/simple;
	bh=AqV5qcxeN8nQB9BUdUK/3PkLkX9oXR7yAFtflZmPmME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mtx2IyCm4FSXsJ+eHLjgsMBwxsIycAehiv1hfqOf0XdbKzXVAiqji2Hrb4zXria7HCyYLNtNZlXz+VM1WLNFighnT4pWelWmAMly1TKPl0t2Xb1umgwuHgSDiGvXY0oHp+r5mfrIiKtNIdMtRpDIgW7t3R0KzZc6VKrOschfrj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G5PPhM5y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZR2S+/qv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6168j14f695346
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 12:14:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hPsIZdUzqZugc9bxzUFqlSOc
	mpfL/VqW262y20s60Yk=; b=G5PPhM5yxnk5ggIdHn+b2UKd8gV/TPCp3A+WJKRI
	YjKUL7HTqz2LYKeyJiZiSsFHsFozV3RXMwCCdJHhyPA3xBjumGJ3Ae8qPudI1oSj
	NEIcP2jqt8z1Zxj6/vS2M/WALGzhIRdCrvXcl//zs06KueNMQ48Kd4Nrnr9KawB1
	p5lvvnGcy56IdEI9ewzALanC24zAfyrW/U+qvoiaEDpRmS1a0Siz5MMT+ku76phn
	etuv8i7DUl7eUYn8iQj+AsNdYdxZHTkcxKE/4eHzrYjBbHDbTS6dQF9QvdSBhgMe
	Z/OwHIDnT9bOqtmwsEr0RV/Dyj8N+FcSFyHxKBhiCMRfbA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c53qvae5f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:14:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52d3be24cso313541285a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 04:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770380090; x=1770984890; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hPsIZdUzqZugc9bxzUFqlSOcmpfL/VqW262y20s60Yk=;
        b=ZR2S+/qvYaStNaMlPWMUKkoFbWlZl4FC24p9W+lTmtmaZpoknj1x328Ji9Wjvvp9eL
         smMsOU3iRzkYxM4O3zklM38X4ohEebxN1f9DEcmUkOy3EslrLe8RZHj6ZPO3vJIyhdUx
         DPAfdJkWjY/b6OFUJf2SQGdspt/MCaE6Jfyq6A44CJ698bf3EaDex0ezV4ZDipP3L94w
         GDaN6UGOxljNnE1/GY92b5X8A6d8Rs31n++O5PbckZJJ4YMOemY2EjNz+EmdwHn3HdXC
         gGfdReqwkhEDZzFOt+dGsf2BxbARMa0bLiqlxieZU21hBgqU6OVtse/GbYWm1DScx3BY
         4Hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770380090; x=1770984890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hPsIZdUzqZugc9bxzUFqlSOcmpfL/VqW262y20s60Yk=;
        b=BSxbnvHF5g/eGDgWIVUoDBfjjql7F8r0cBAuT/JqlJO/zl1JNdZ/xlybLPCpC8zBjU
         JfFnmWsH4qakXGx7ljH0indGRX84XrmXno6totV1TBTbUujWaLXz6ptKqk3PHPHHvC/X
         i7egas5EPjWMOemEM2ZH2B8k2XGfO4eki7x2aL7Us6MjRbovJHkgoEn1KPodl8rOVv2e
         3xj74WuqxAxYyDEdPq0X6O2Gq9ev11tHrmUN+Wr+kFyjL3bYhJK0a/FMGqfteZlq6Vq6
         XdPpzesm1rz/WgKbeZFYfFJkUjk7cXePp+yyHAGBQwYOS1Cx2zGTg2TgJavYeMYuLw6s
         zowA==
X-Forwarded-Encrypted: i=1; AJvYcCXe07CufX/ADvTk2SLfX3ZkqK24ksa8o7B08JZvzif0DlRbPexjwg9byFFjLda7bBFPJ9pp9+UNsPEl@vger.kernel.org
X-Gm-Message-State: AOJu0YydjAJfkARk3NFYWZ6K10pHDr9Njah0UK/lwvNuuJzSYZZF6UWM
	thDU1L+6exMJvftT+ak1chyaiQ0NCVS4AaN++22ENbGFl0cIhDXE21S/CiT7fcoXUn3DoNjLNK/
	DbhLSqgSf23GxwiWmJMD+7BGyCglsyU593+yjDXjm7/zqHmjjKGuUN+LC5Egslckx
X-Gm-Gg: AZuq6aLmqnJGmf3HYEm0i1lkPLi7m6b8oCj+jabp6f8aqdrGEh4j3VGVW6g5Wc/UOCJ
	WuBHfH5GJZ/kvh7uMEcpTfM7MaYTqKb86yafJ7wW7Ycav9BvsfwqQ8wM9NQnD8qqqxCXpu4f7Dq
	84EUeVn6rib763EM3SQlY08nIKNMnAd6CwpE3F+TbHClOhDKOTuWupBDeCaCOeZLY3lJni4+Xp9
	71Vz6IociOPNAUwUNLXFLuTmXL1DKxFH9IGPD5LX+E1CHnMODAzaxMb+CW8j+fSfRnfRKWFfTYz
	Vx2LZTpHGhwbF6zuGdMpQowdmZeXd5zk3/HkD1XP8wnRD4rrivmL4eCVVI3bm7ThHW7rH71jX3a
	XeXv99sCUq++uYsxeWiBIvehZCj2HtswmXUQ8LNEY5O/lvcSMPStD4qEBAkw4E7S9W1Q+kPqNJ/
	MdVTDeOsQYD4erX1luGROj5Sc=
X-Received: by 2002:a05:620a:4407:b0:8b9:cf85:40a0 with SMTP id af79cd13be357-8caf09633cdmr329175385a.57.1770380090145;
        Fri, 06 Feb 2026 04:14:50 -0800 (PST)
X-Received: by 2002:a05:620a:4407:b0:8b9:cf85:40a0 with SMTP id af79cd13be357-8caf09633cdmr329171485a.57.1770380089653;
        Fri, 06 Feb 2026 04:14:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b6256a32sm4659921fa.19.2026.02.06.04.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 04:14:49 -0800 (PST)
Date: Fri, 6 Feb 2026 14:14:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary
 USB controller
Message-ID: <helfsilh2qi56laxsounbxlp5zn5yq3eqkrodgsgtzxevwokqz@usepksge5gz3>
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-3-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260206104642.1038381-3-swati.agarwal@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=TsPrRTXh c=1 sm=1 tr=0 ts=6985db3a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=cXx1XxQZ0LH0QdJvNiAA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: d87tRpGyCqMJm_tj8dcsYW1_rSBsqcj5
X-Proofpoint-GUID: d87tRpGyCqMJm_tj8dcsYW1_rSBsqcj5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA4NSBTYWx0ZWRfX+aDBgKo8XGF4
 Ij/q9BM21FomiUTpdNM47AKMh7GJOrMAuwMKiyxmtroKU3/ZrSJAKP6TjaaTHqLc+oHX1XFwuKV
 Jr8KUpuU1PhgGDiiXZXrcI+EHZfBHZyr5Mn/BXeQP8wiuD5Y1+/pVauf68hF1A1hiJWhiteM4SN
 07JybSWBIf4G1VuAt7zu+XnqiNlhSLtP4SRZHq8MbVLfw65jy56S9euiMvgDKGQEH32uQPfUsKl
 NokqzBrRZIejAHAuk3clsHxwR/SvPAIJkReRQnCTc8+25Q2FED1HXgLbG//K/8D1lZcSPVb/LCC
 AGoKZbatedOCFVhrvcklEsX2/Pi/AG7EY8Mf5XbmLUhuhfDMp4aUtSS1sxxCuNH385OQ1S/PjVL
 zR9AQK6oCxtfQUNhZoKjqpVvdcVGH4cQEiJr8zT0ul8idkuqNRJHSp+TXGyWkc1A4pa6i7xP/id
 TMxzA7LJC9cFw7f/+zg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263342-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[a400000:email,oss.qualcomm.com:dkim,1f40000:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A27DAFD86F
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 04:16:42PM +0530, Swati Agarwal wrote:
> Enable the tertiary usb controller connected to micro usb port in OTG mode
> on Lemans EVK platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 53 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
>  2 files changed, 60 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 808827b83553..2710927c9172 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
>  			snps,dis-u1-entry-quirk;
>  			snps,dis-u2-entry-quirk;
>  
> +			usb-role-switch;
>  			status = "disabled";
> +
> +			port {
> +				usb_2_dwc3_hs: endpoint {
> +				};

Is it USB-2 only? If not, please define both ports.

> +			};
> +
>  		};
>  
>  		tcsr_mutex: hwlock@1f40000 {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


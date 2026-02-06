Return-Path: <devicetree+bounces-263340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UN6SG73ahWnfHQQAu9opvQ
	(envelope-from <devicetree+bounces-263340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:12:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC45FD7CA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B84E30041F7
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61533374752;
	Fri,  6 Feb 2026 12:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kGZ4o2gb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lls6YNhI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEB530DEC4
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770379962; cv=none; b=ha3StaJGiRtkBW5tSWh7WDivHjX1JdVPsVRcSR3rrxaHbmddXXGGZ3HDTPJtRhbWn0vtpKVyXzN6qrQLHC60/6Cv1Xy7cI/KQba8+3SOON46D2oAayPb6fS84Gf0eVYCraGK8/fLJPRR+1v/N4WBHRocMyBL3aY8KrxrgNWBles=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770379962; c=relaxed/simple;
	bh=WLA3qkioaEgwLN8xv0CK2hxM7HTJlbbCYLUiIFk6sgI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hw7NgAf90T4xAllH0fYwMvGFvM0ffkp5p+eGa5MiEsSNRW3P17cajcgSSWeswtcyOsNwdMKiQCHw0OQC8xShKsalPsXbYGvLyUpG+2cRVEiwZ7p9hrS5nSUzzsWX5WNQw1NeLJ+HEFvqOLVVoB9KvtMmOOmmP0WRhU713KGm8OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kGZ4o2gb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lls6YNhI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616B4Xhw3764804
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 12:12:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nFesCc7MpoRszQ5J6eLvd889
	VRKJ5gxQaWgaLovABRU=; b=kGZ4o2gbs15qunVdfCf95W24g3YYl8bqaUipzw9R
	dyub5s1tlF45ajaxKppTa4K9mTLOyAvHifc5t+Zio91dG7rKn+Vw8oxq7W0MZDzw
	/7k1fhsXRTKCdI6wLt4RjriKMPOOSuYI89ej9ggeVsJa4mRTPJG6j2+A2blacrdL
	9O8XOHBPxQa8PxPz4agtDszO6hdhg8v2B9rr7GdpXfeUPe0h6ZA/ZIGLbayiB+FQ
	6YiAsuYjqGghGzeKQnykDEfqLHlhQd8NAZj3zoU+H8VMWODVSR1kajkatu5twcnW
	GklhEnyOf5wrdIEZV17SekiFwREYXB6o1fJfBQqMszdm+A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5f3wg69y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:12:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a5bc8c43so627418585a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 04:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770379960; x=1770984760; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nFesCc7MpoRszQ5J6eLvd889VRKJ5gxQaWgaLovABRU=;
        b=Lls6YNhIp7KD/aSY5yesilCKM80M8rN54SYPb6bhOias+Jm3PnCNchgQxV6hLDpOqY
         xhNBijFBewQyPwfl4B2wRIOqNaxRkTpGDHxYcR41U8vDSIpDjZhv7xuMPt61oca1QpLd
         /9y2eBI0v9PCkDa0Ub5I06LGaQAycd0h85n+eMnVcgSxm5xxP8KT/VZ27h7PObrnfpWB
         +K9WaoK/gSuTnyadMnvH3U/J75R151GbNJxxesrLNZ376EYIqr8hAm2wIENLtRFTJuZI
         8Nxwi8VdTkE/cxyeEvNmtHy5hN+dZhggG8bc5Q+VUuEvhaHxp02WuJD4s74At22lxMSV
         5G+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770379960; x=1770984760;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nFesCc7MpoRszQ5J6eLvd889VRKJ5gxQaWgaLovABRU=;
        b=FBoEibU/V+VSLaHED7Hmk9aqpiCBjwTMI30wT1CR34I5eBn8CTizmJL4sibeWZbJv2
         5QGiV0/e012WVssJV/lj32KmOQOS9gAwD6fkNxyxbxvqZccp39VNCoAi3K2VExPOuP1L
         bVdvASQNBVQwPq9RNpx0d7ZR4P/pQLktO43hD689cmQBCOl/TRw43w95O/HUcR9dUG3v
         pf6QyqZ7ALzEHtx/AEpZ41Qo0tMbqQdZTKoON/MFnlUwri+VodtT97KotQ4z8x5XTRjc
         YpzJJKQd+ECwW0Ow8ftTpyiGOuwzAZ1Y+rAHrW/CocZ2H6LiEPWzSWGTd8or0kiHl+ei
         9zuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcLafm2lZdJ6NKoc+orzmBWq+WH+hwhYEgPas8b79EmwdpFXZJQdeZdtxbFf2AoUv9gJaa450H8Gjj@vger.kernel.org
X-Gm-Message-State: AOJu0YzhwfkDggY1/zjXO4mdx8UcaVcWTOJiJ0muzJl3SzqVZXnOflLo
	HG2Qeru04vpwKrrgAjkmMEgpZ/EWv6J7uOs88/DCPjkP8jFu3akML1wpU6NzHBF2US4lx3wYmH4
	gxS0xKVQN5uR3ofnYYWdG/jfdRSdoSSH2b0RwMx30EbhVuHsrMsl81sPnpyf7rtYV
X-Gm-Gg: AZuq6aKgtoa/Yrc+HwAYjJUOaPCC4f14fvROn7aRYlfxNHMhc/WQmjkL/vK8CJVAWxY
	mU/IWml5K/DDOEv98vDTSjs1zpxH27PpN4g9X+3c6n7hSR5cO/lKr8dFJvv0cg/8EOyoUrXhdV5
	PEEM1v1wRHCJdO4i5P/nnbL6pHjVkoIfJpvznzX3wIx/FB6R1yFYlamdlTNwWHFWc6+/qFhGk+K
	86GD8Vr2ls0z+oA8eO3Nd6O2wg5dX4xdrtM5rHgJd49cpliHkBubZ1gWo6fRrvYdD7ndu7LzKpp
	cmobL1f11CaHkFQVGk6BhzFFhMJ8fvgONmM4aH3eo3bNEgBgyuMvKx9xDLLJgv0lmdfU8pEX24u
	OtUyIfbL6ickOpMZuREob4yn2gk2uQVPo1unZpRPDYe4nVQgLy9cQVIhceHLr+puP+35wvhrPHT
	w1yqn1ezTeryho4gZcEu+p2FY=
X-Received: by 2002:a05:620a:29cc:b0:8c7:1595:7355 with SMTP id af79cd13be357-8caee678781mr290717185a.33.1770379960097;
        Fri, 06 Feb 2026 04:12:40 -0800 (PST)
X-Received: by 2002:a05:620a:29cc:b0:8c7:1595:7355 with SMTP id af79cd13be357-8caee678781mr290712385a.33.1770379959592;
        Fri, 06 Feb 2026 04:12:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b6431d7bsm4655581fa.46.2026.02.06.04.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 04:12:38 -0800 (PST)
Date: Fri, 6 Feb 2026 14:12:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: lemans-evk: Enable GPIO expander3
 interrupt for Lemans EVK
Message-ID: <s2z4z2evasqi23n2agroelphvmx5y24sc5nv7t57iib2tqsaen@cvricqqpulh7>
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-2-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260206104642.1038381-2-swati.agarwal@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA4NSBTYWx0ZWRfXwmN/dRMqjrnm
 4jTeOAutMsCYy2wP1I0k8n/YQXDyIuhSuxPNJYMLeN9Hpdo/8pYHVhX8eWIS3lmNBBLy8W1NHkq
 dqOMBVGFhvJb2yeS9fDtVq30nye9dlfe10etxwANKqZSpgRz+ppk1AwSI5Iaugy354KHE42Lm8T
 bABbMKWRX2omQOPQapYSKZ2t7Bzd1lwz7525+F6JqLq7oz4KIqkVo3+UiaOLstAy3uBp7W5i4Mp
 EOA051i7O4as57k4K45VgnmRj0IDrW7Se2C1Qm88/rhHTBkUt4JPvCZTdTYhLyE8ibVbqFdjFY7
 COvfdtnrHfGJEvdBEXHmRKngPA3a9FRLFmW+wyNFSBf2HeZ2KQ/O2UrI7LxzxjCGn+s5CwZ0la0
 Qh92LHYRX1s3Njvoj/xkhBwCCqUtJU11nT+9vSzDpafrDIdReJk9CKEFEn6cqVCqS9bZnv4V7MF
 WPuC7Dir43rMqcP7mPQ==
X-Proofpoint-ORIG-GUID: VWtb9xnvUfNwCSHdlFZYceAU03P7N7Vz
X-Authority-Analysis: v=2.4 cv=NajrFmD4 c=1 sm=1 tr=0 ts=6985dab8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=N97ESbxI5-6tziTrXZgA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: VWtb9xnvUfNwCSHdlFZYceAU03P7N7Vz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263340-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.50:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ECC45FD7CA
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 04:16:41PM +0530, Swati Agarwal wrote:
> Enable PCA9538 expander3 as interrupt controller on Lemans EVK and
> configures the corresponding TLMM pins via pinctrl to operate as GPIO
> inputs with internal pull-ups.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index a549f7fe53a1..473cc2a81670 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -649,6 +649,12 @@ expander3: gpio@3b {
>  		reg = <0x3b>;
>  		#gpio-cells = <2>;
>  		gpio-controller;
> +		#interrupt-cells = <2>;
> +		interrupt-controller;
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <39 IRQ_TYPE_LEVEL_LOW>;

interrupts-extended, please.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&expander3_int>;
>  	};
>  
>  	eeprom@50 {

-- 
With best wishes
Dmitry


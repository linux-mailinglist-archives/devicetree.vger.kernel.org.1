Return-Path: <devicetree+bounces-277313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WP7nKhjBumkGbgIAu9opvQ
	(envelope-from <devicetree+bounces-277313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:13:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB76D2BDF71
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6833F30E0DD0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD793DEFF6;
	Wed, 18 Mar 2026 14:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I+1WtZt5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HNy4rPHR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AE73DA7CC
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773845256; cv=none; b=LuwvfS0xBDewbmCj+igpCQ3wAjDQ7raLXLwT5l9c5lS6cy4cxQqg8YMhtgjMAlQspb1Wm2p+idBIZZEN4mWIR5phalZzuMbiLxG3uH+vAKVfF8U5INMEVZd7i8V0YaMxlBa1GcmcBpopmS9XbuPTdY3O4N5fsTWVFW+EGOfZBBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773845256; c=relaxed/simple;
	bh=144QKYSHxMWmAavZR6ocyep67WF0JCwmhutuM4nZTso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f6gsus3WJ5BGU04Abp8NlbkMkjSL3eXA0hmkecXXYdz27UVJeIUWYoAx4BJxju6GAiQDy6TmmwJ3zglJ9ZFOzwcBwh2SZM2Txvc+DicHaXDgR50q8Cj9QWKrFh3sZ98EREZ2DgQamQ7sVTg2Us5tyw/GffqnxxY3LJf1q5zeKO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I+1WtZt5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HNy4rPHR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IC8smR1459476
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:47:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NdyUPWI+XQkYGeQQLyVUfR+m
	fd/pe0n/rlyWuH4Ovmc=; b=I+1WtZt5msEQa37RWeJbbgw/7Al5NOda6esJSlgC
	2Zawrs4f1bzfoXGPKngIx5xaJl4KtpppaX/WpKoclrhWIBloUpn8BpuFIrxGYzhJ
	PLPFKn3VaQ2PKLsrAx6Lo6M8WyvGryagLgfOx7+gegWNYwi3wW7yEfoG9ChOHoR3
	howHk0UF2/uN8pyrso8HcSOUdXAgJSzXpYojwYvtQWNEPfnMH5VATBnx/C7LPs4m
	DpzYGnomMBO+MXeWC50yLr+B5H3Rl+xRGf3K6RxuUYjV1xdBiI39VAUX8L4I0y4L
	ukpF4Km2b+w1MaQNtBfPf4ng7EIIdqtq4CDrtl5kjUDtLg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyut18k43-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:47:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50937c5b742so227042961cf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773845251; x=1774450051; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NdyUPWI+XQkYGeQQLyVUfR+mfd/pe0n/rlyWuH4Ovmc=;
        b=HNy4rPHR8yyiR6Uyqgz1128w8gHfY5mN1qkoc1Cz4luMia90f8uDwvFeHz/sVMV55Z
         46FQDvHC4SI75wu0/fa1O5jXSz2zj/hcpjerDO9NCJPJazU4CTZ9fMuFbrCI8IEsI8Tq
         8EsH5zogMeFi30R8lkq9uNK/iVnE90POfGYoIJV+1o1ssl/bgehtxnKdXqMbxyGQKIVg
         00P2FT1DWFS3TQT42B5pvze5mFCwFDeqliKyw6QvEZ7k9P6vsf90fkYaOJirBFpKFAxK
         SOLnPuCxJ7ZbQjL9cHSaoKhIi+jXqp2lA9T770CBwrXqrBo3QZeWXFCV6qpdIE/ovHKy
         3+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773845251; x=1774450051;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NdyUPWI+XQkYGeQQLyVUfR+mfd/pe0n/rlyWuH4Ovmc=;
        b=pcuuEl4vi1fbA30HuW5lCyS31QiMvPO1rgMiErZ9BhDJhCE1AM/XeTlluRUQtj+cz8
         lJ12JD9PEQmezKj1GmivKs+Kq9ubQ1XXrsMuw6OVD1eYkZNB4M6mFSHj9AcVqWW4hmRB
         SxNN+eWkI8xaUtKcakrhHXO2yANzpVqB9ZNy9K/8cKUHChmIavJW/vyUoQI965DksCjf
         gRHSqii7RjFZVNy5ny6ijX8tOFOG7bffDqRmGpplxHXTZGEfpHnXvkhY/PySus9gkkrL
         PrJ6sFo9FLcHRWNuR+HIgY+GSgoG/bhQ0WBRJAx2eXiBlmB8ui06r2JSBZXl5KH9PByP
         ycjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWX3CA/2wWnWjY8SaAa8/Ys5sDF8xdFFcGw8XoDXO872lROSvFcoJsJzs5wwzmxEQ8Otc2Ww6cSpgC6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+Mp/SNFobx8IxpFBlzw3z//ErggfFWYnWN0maoIMAMjsi17M2
	Woto7eth9chI2qCRcyle23gt28N6QOHj8DuSHzdfVq+OI+KxcXyuC0xN17XECPc3HKOInSf5eYZ
	9tclniFYUvL62K/hO2s+aU7JlU0L1t+s4MCtcch1QUGvbZjnJvQB2i/j0apaluZHl
X-Gm-Gg: ATEYQzxwNISdL6iKBpitPBHjZ2YjvMhWrT/Bd4E4v+m4fSyQJYU/JZQmbL7LFhCV3N1
	4VYvKw03cYCgw12ZQCjtsltDmCAH7UEAyJlIUyblcO4bNKXNz0goHAph+aT+Kvk3GXKGmXFsPWd
	NsyoYqE0+fxvjt0BsHX9TO1xmTLhhp2sdAD8AHF2CmTrc13m3IMIS27U2zaPtlq/f2Dr111WKD6
	HWSH/mzk2SKQnzSX1Po4cjakgrpP9lgWx3WL5LZIpA69WIKq9q5HJd3MbBGrplXcX+ILfMfoIgF
	w4DIFoxP/vyUhtSg35R7zyWqRw9lx5kemhtDWkdaXq7OTEEUQtxPPdM+sudL8V+vMVvNYYKIC/f
	dQYyjDIWNNqSnTj8Nb+PNxNFQygt4cVSEfntOluQuJEn/EnpuCCkVmqRQGcNf2fZ/15J62ByGlE
	jB1ZICn2auWhTBsV3aMaSrfvD9z3OUKbfwayY=
X-Received: by 2002:ac8:5fd0:0:b0:506:9e57:8ba9 with SMTP id d75a77b69052e-50b1485dae8mr43951191cf.35.1773845251110;
        Wed, 18 Mar 2026 07:47:31 -0700 (PDT)
X-Received: by 2002:ac8:5fd0:0:b0:506:9e57:8ba9 with SMTP id d75a77b69052e-50b1485dae8mr43950811cf.35.1773845250534;
        Wed, 18 Mar 2026 07:47:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c7b7a8sm591096e87.80.2026.03.18.07.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:47:29 -0700 (PDT)
Date: Wed, 18 Mar 2026 16:47:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Sam Day <me@samcday.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Petr Hodina <petr.hodina@protonmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sdm845-xiaomi-beryllium-tianma:
 Disable MDSS
Message-ID: <73fyiqoxxg2gg5244wkukepdfw6lnguq63si22qsx2ueyna4hu@l4vyykvn43oo>
References: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
 <20260317-beryllium-fb-v2-5-36b69dfb760c@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317-beryllium-fb-v2-5-36b69dfb760c@ixit.cz>
X-Proofpoint-GUID: q3oFXbh6AuPlnL1WzMwNHiO6aEnD_vy0
X-Authority-Analysis: v=2.4 cv=ModfKmae c=1 sm=1 tr=0 ts=69babb03 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=sfOm8-O8AAAA:8 a=yhfjJl8z3IGHiU8HblIA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: q3oFXbh6AuPlnL1WzMwNHiO6aEnD_vy0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyNiBTYWx0ZWRfXxEDS9qJIv5z5
 hwUTVG/xwars/96jyFF4d7GIBySqsW0AHH30Qpn9uNuljyawL8zcABWaWT9AMS5+bxIgsRvoEGI
 o+lMBuaijYMyyZvQQ+FVSQ98xEfGkywUGxEk7dHifwE1TuNJQ6rjOBZ4W08UDSdsRYwQf7t1zk5
 cgxROOUGaIMyc2Bps6BORNfsU8NrIcCEI2XinMQRYjbAi3GOAj4qlOWj5zqKeO/itSlgEJWIa4L
 IdeKZbP1A5zNOHn83sjtavpLlpQCfQw6vjbSDhj4O2NNN//vyCP9sgO0YfHvNKJTYFaphTMh5Cd
 VDp3l606M94g/M8YhLbcCznzHrIRTipCbBuF+RHqFdGuSI8SkDJ2HNitQ4XxtLoiq768e6ptxi+
 XF0Oj771eW4AM/QbaQPbRUgmpDREZrr6b9i/BSKDjLNeouLsB6+WwXGVmic2YLUozjS2aXxuV0w
 cgnhHCU8d8YtJnJ86Og==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180126
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,samcday.com,vger.kernel.org,protonmail.com];
	TAGGED_FROM(0.00)[bounces-277313-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,protonmail.com:email,oss.qualcomm.com:dkim,ixit.cz:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.963];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AB76D2BDF71
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 11:12:35PM +0100, David Heidelberg via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Currently the panel driver for tianma is broken.
> Disable MDSS to prevent DRM taking over the framebuffer.

I'd still hope that somebody can get it to work. I'd start by using
prepare_prev_first. Sumit reported the panel as working in 2020 and I
have no doubts that it was the case. Another option migt be something
related to the dispcc (see my [1]).

[1] https://lore.kernel.org/linux-arm-msm/20260217-sdm845-hdk-v1-1-866f1965fef7@oss.qualcomm.com/

> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
> index b58964cde8342..d1c7bccaab500 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
> @@ -36,3 +36,13 @@ touchscreen@1 {
>  		touchscreen-size-y = <2246>;
>  	};
>  };
> +
> +&dispcc {
> +	/* Disable for now so simple-framebuffer continues working */
> +	status = "disabled";
> +};
> +
> +&mdss {
> +	/* Disable for now so simple-framebuffer continues working */
> +	status = "disabled";
> +};
> 
> -- 
> 2.53.0
> 
> 

-- 
With best wishes
Dmitry


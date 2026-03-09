Return-Path: <devicetree+bounces-273142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC7PGC88r2mDSgIAu9opvQ
	(envelope-from <devicetree+bounces-273142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:31:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C63CD241B74
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E882302F40B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D80336BCDC;
	Mon,  9 Mar 2026 21:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R6ucDigm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DJ+hr0ZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C98B341076
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 21:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773091877; cv=none; b=lXMIbwaSQmScmA98b43rCTWMhESOTc2GBaUT1eMhn5Ibg7Prnb9e/kvCmT4Jpsl4lVwEu8pMz/HUZc00Kr4rXU+hWIGBWwc80dcwjWvxw4yYV60DstJjdfXvNmP/ciJIk1Ujoj36Ekw9fbGA3bqTUonIifTB6W9V8Mr4GfO9NpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773091877; c=relaxed/simple;
	bh=QMfppnJB0bOmLxXStgiwpIw3NO4O3DrzoI6RFVjD6kA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l5DYv5NpbQhh0fc66+YZepQv6na3EKgr18WGLpRuKc131lACFjbI9kJLPRDBZYIPVQMlj8EZIlVdTtYj65kXv6rDIzltXQ+/IjcyUpe8hLyndvZULEu7ywJOmb9TYLi/JsSUvgTOXa9+anNXmJMdVgNJ3w0C0qEi02FiJF5ymM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R6ucDigm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DJ+hr0ZH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCEwI1212194
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 21:31:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/erZTekXRBJfl6UaU98s9N9P
	EOnpIY6iDEfc9ousCHA=; b=R6ucDigm4RD8BxJVg6VvO1A2GLolKLoFLb6WNLC8
	nhLMSf7U6DvW77L7xuqtly8Gao24o8Ug5zLF1kPKv6EJW3kCSug+pphhNQR943Hm
	7rMDK06xKd15pIBuw8wGvLC2b8rZaecdIlDIm/Ug3zCmSADFMvAJHjGzF3Gd3GCn
	hPb1t0ZwAX77aULgdAOZmCX8BztW8GaBca9hfkbndKazs+4O+dQBMOeFn/zdIHCv
	MTE5MPG2oCoYgnPQuiNmLCp5h0wj/AfPjJYjhbfMalFfDjVdDpcbhzaLJOB1MOHo
	6ewRGqIZouPDR0svc22iLQmj+0j2gXlN/Y6dxFT1NyJ+1Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cswwkhsam-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:31:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd80bea54dso1018546785a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 14:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773091874; x=1773696674; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/erZTekXRBJfl6UaU98s9N9PEOnpIY6iDEfc9ousCHA=;
        b=DJ+hr0ZHRExAEMCNTXBE5NBgEnrT5k1pXVXf2ongnzPJnUOL5H/CoFLPIS/ykPOQzQ
         YWXiIXGv9swxHok+x/274lHs7SPOccSxec54TvrCuZbg+wE+6V0+ithHImtuA9f9fGjx
         kIkHEXcrt/Sajq/BfX+ZsURn+3fgyim2yiSQUJSXkR5llgxnCtlVRL840ZGwCnSWLodc
         25w4Voz1UAzz1PwlLomj4U92b2RuLgtsbomm9rpGdUL4ZVAwrpIWbl3/PJIwWLA8M2Ai
         NmXTwxi2dTx+KmvAbjBpsCSjEIj76rGm+q10CrvbtHiE/01NOT05RXG0zmKb5ptgVn+C
         WnNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773091874; x=1773696674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/erZTekXRBJfl6UaU98s9N9PEOnpIY6iDEfc9ousCHA=;
        b=WJj0lCVZAYc2n/25+ZbI++WGhmkuD0Dewwlp11M8OJ/qHepFeA27zbNehrOh2W5udk
         AfPpsDO0FOin+Oa98h52dPI/y/y9CilOB1rmc4w4uc1V898Z2/tgoPESakOvQr6ctPOl
         +uV1jTzakBCmEPYN7ikPYU+6zjrd/gQRh1nuOrPzVNop4ubVaGyCrl85MiDLinxpHuqj
         oLuRNur8Cba07xcGG4/6R/MHdbtarnezKZ+GpZ5eLkWBInN/2XFRClVsI+Wjq8Sfl2rG
         gWkfy+oimrBf/BQHu91uS8ptSW+eEQ7uq2lZgFxDE4D/SkCnRNjSmPyyVttvaZVks9hi
         5kPA==
X-Forwarded-Encrypted: i=1; AJvYcCXXAmNUJSfSNtTgCD4JN+C5bWlgp5xCYVyjugKPBTsBvREoYerGqAGr//l98StXXfkhXSd5fIdbF9Xw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9mYaTUzoxM7sArQDV7ZaqFCIow19WMdJ+w/PRvL+jaub863RR
	gBnLQhXc6N8iqOoNHpoo1KYVc6pG/7IAonXyV+l5evaC4YJ9XC8Tp2u16mejoEyU1DPPrCzZqFp
	VgT6D14JuYRqf018SXPWNetgRU9dTUqRyyDzh+OIN+RVCIL5iFg8lVFBP9FkQzrLt
X-Gm-Gg: ATEYQzy4bzRDfEs1e2ahicyT9djBdSsr4M441SwWf/lezpCZ+8cs2Q7NfylV1Rdyq+6
	IGfgRVS/Lnvf+sLz3VhL0QMWq5xvwOZLiQljcx+naN3/U4ZwA7FdWX+KvBt/9xZVQV949itQMuU
	NbK1srZRSkhz6BtQUzJLjB7puvEVEHynug0Bbd+Z23AosFz38rBc2aLnIAJUrKqGYmgnWF+K4Ql
	nrd1ML3/VNod8WcTgkD+sKmrV7JWwZNBOtM0bg+GgsnEKcERTBHgpJGGxZq3IQCv8T1buLKa+gC
	bmEpmj6w5SDtrfIm7Bw8zPaWD/s/RrcZE9blw9MlFgXoOfx1i6U0R++14ReCn8hADtFur9ZcTVc
	+sEQM7x+phbkxV4hkzOi619Y3lacOoDNbk3j6gkiirxOqXSYQrr0cqc0SPK7Fgd9X6BCKEVTTvx
	KLGLuJ378ESZKKcITpobR8BA1vsuHBjUCmXPo=
X-Received: by 2002:a05:620a:7017:b0:8b2:eae0:bbf4 with SMTP id af79cd13be357-8cd6d407d59mr1565777685a.19.1773091873603;
        Mon, 09 Mar 2026 14:31:13 -0700 (PDT)
X-Received: by 2002:a05:620a:7017:b0:8b2:eae0:bbf4 with SMTP id af79cd13be357-8cd6d407d59mr1565775185a.19.1773091873189;
        Mon, 09 Mar 2026 14:31:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5cfc545bsm1463281fa.13.2026.03.09.14.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:31:12 -0700 (PDT)
Date: Mon, 9 Mar 2026 23:31:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: glymur: Tie up the CX power
 domain to GCC
Message-ID: <zhgwgzgf2sdsxooqdknhxvk62mif57vcu3g73roptqwxblofbb@4hsgltmqpru2>
References: <20260309-glymur-fix-gcc-cx-scaling-v2-0-d7a58a0a9ecb@oss.qualcomm.com>
 <20260309-glymur-fix-gcc-cx-scaling-v2-3-d7a58a0a9ecb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v2-3-d7a58a0a9ecb@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cZ/fb3DM c=1 sm=1 tr=0 ts=69af3c22 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=XFCnTzhwHPFgJtnojrQA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: QsG3F0X8sc-QQnZv_8CnlMHk08JS7fA9
X-Proofpoint-GUID: QsG3F0X8sc-QQnZv_8CnlMHk08JS7fA9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE5MSBTYWx0ZWRfXz37S/dHVBnHm
 uH4trCKbvQTwRETCAuSLhNOBr1XLW5jOtZHry/7tvvflCM+G06ozBXk65WV/F+20ZS5spB4L7Nj
 67Ze3C+YJVKpHUjCz9EOxaesfJm4SAc//m67MCcREK25HGj/0gu5I+LuHtg/WSXqJCwuCKtVuJs
 YJXsgdOCvnSB9HyoJinJvhx91LrYfC4S95Dxhy+TzEq1hxDrPPgpVSGhxfSKX3vp0UNxV3HnYRG
 OEZzQzRCUyfZwMmoHONSfs6vHsi0GSHwj+m5wSnlwsM1+tYK0gZLFkEAxtj5ncTNk3PLwtizfwY
 2tHTuq8oECWT/nIr9wvcV7LPx8OJ6R6+bLP6Mo1pcAuBpoNKrN6GSnI0UaWGmp+NSYGJ1fUpcht
 pxlMsqZrfyDrFhOO2K231v5LhLQFqKWHbyqDA11UcRDuXXG0YtUrTrpxDrI9qllHEwvz5AwtnP1
 8kTW6aykUUEDBbWxQZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090191
X-Rspamd-Queue-Id: C63CD241B74
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273142-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.134.160:email,0.12.53.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 02:08:18PM +0200, Abel Vesa wrote:
> It has been concluded off-list that the Global Clock Controller needs to
> scale the RPMh CX power domain, otherwise some of the subsystems might
> crash or be unstable. So adding the RPMh CX power domain to the clock
> controller which will result in all GDSCs being parented by CX. This way,
> the vote from the consumers of each GDSC will trickle all the way to CX.

c&p of the same set of phrases doesn't really help. Please write commit
messages, describing why the change is necessary.

> 
> So add the power domain.
> 
> Fixes: 41b6e8db400c ("arm64: dts: qcom: Introduce Glymur base dtsi")
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index e269cec7942c..5f8f208f6063 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -764,6 +764,7 @@ gcc: clock-controller@100000 {
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> +			power-domains = <&rpmhpd RPMHPD_CX>;
>  		};
>  
>  		gpi_dma2: dma-controller@800000 {
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-269210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOsQE7OMoWnouAQAu9opvQ
	(envelope-from <devicetree+bounces-269210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 13:23:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BDE1B707D
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 13:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD57F30620CF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966783F074A;
	Fri, 27 Feb 2026 12:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZHh1UeoB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ClGNTsEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE023644D2
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772194918; cv=none; b=Fo7mI53mrqsp8YSXGgcD901d8/i34by+hvHM/MqwNn5gKr8N4wftE2PduvRKWXN47d3+A5ZPjrjc1FAQnTQba0l/sEvxcebE8IfzkOvIeXGeIkebgGhBUIY0j+GQkJBSIwYPRa5AZ0l+8SFMQyk1TORteSIjhqgW0m/x7LHM09w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772194918; c=relaxed/simple;
	bh=v5molqPzaAZA+lTVUGCKHRjSWjIX4ogStM+HrDjMEvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fbvFPa+Is1dLLxiO7TQjBp5jdzicjvwDvYPy7qidpCOzY76LgWD0yNrStDrO6ZbxAe2ewvxFYCU13p0fioSxlorQRfhTPggB8MNX/SQ9XD63A8dCfED91rqMVwyhxi5onot68htR180/RfvzdaqZepM5n1wVPoYA6cDuzlHFxPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZHh1UeoB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ClGNTsEJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R9qI042438925
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:21:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=r8I4DPIt95O6xxSUoTifQ8Gk
	urZuCnta+a09zVGv4Do=; b=ZHh1UeoBKh611U16htOywMP3W3z9bxIWJoQDbAen
	nDWG4m8jt5R7MJYcGncJvYbHsLuxDjXJWmuBGZ7ac/YDT1RbJLSYH5++JhbXV7dT
	Vb9kZhIuTb8iUtUyzBvVjPUcZk+AcYipIh2KE9PWi0T4HiYqgDin/Lz4wtLfkMb9
	MxD2wgwZvx6kv7uMsKku1WklsLARAVE9DiVkXfDgbIuigPsczuZZ6fS9zpAojBAX
	ZOacNXxbcQ5gBwuii9iSV/zUKiNokc0krsoMiZQjEwBX+VJmbeUqdqQiM/uUDdL+
	F2J96MOClN68rBS/F4Rcd+CuA7L5uLJkuKGdiHesirQ25Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cju4r399y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:21:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5069ba5af5bso144128171cf.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772194914; x=1772799714; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r8I4DPIt95O6xxSUoTifQ8GkurZuCnta+a09zVGv4Do=;
        b=ClGNTsEJJZFuitrujELNeCu4Ye+kG93dK1cQiHUx4ntfUpV8cfsFNhho9vk2Guwj7n
         1KWqf//8VWRCM2BbytdmnJXoD3txIorZgI8jh/DFsfTSTTIyZ5EZm40lxUXNNORwHnSA
         eVWZnuhXGOHIfl9WgyOzQXT0/FGLMS2oFp5OREgB7wEEzYGxl/B6dl3N0T3pRPmrjZca
         KNZoqfvbTPy1sO9bCBC4XMUideIs7qkkmiAXiupmTgC9ram7r0+17VJ4sxf/eOwAwQDz
         R56MtuBOlYjtGWAj1ICX1Bs0oi3uJEF1fsHU80a5Y1BjCZj/+sBjk+YX1iQM+z7syxxq
         iLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772194914; x=1772799714;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8I4DPIt95O6xxSUoTifQ8GkurZuCnta+a09zVGv4Do=;
        b=RYCxfVCsdv+Kv89fu6w5CSeES8LBxmkAWQEE1G5WcSTG3/n6Btru1qwE8KTcPO/fWP
         Yt7whSMKx5DwR2p2xe9ekfmcwMsB2/3NELmMyZIuqFtX3h30rXMrzZ7oGmjAT9iXk4O4
         tl728KjHRfSU6mGcNLnWSJx+IeQMRmuVJqLhDusikpjzWGSAY/IFrQFd/t8XRz7rgELd
         dhWR/w7inxY+k/ppdSJm17E6P98Nai76AG7v2MPR4sxz3naqgeLzLWGsr+OpqGqvo7uR
         ZgQNWVk9D72AMKb+QMqW9aaj9zSt24ab79PPMC4V+M8GE1yRxiLyVubxQt1r6t0QGwNC
         N4/A==
X-Forwarded-Encrypted: i=1; AJvYcCXFlNwypVfEOQiXJG19Aw6nIJoVhw05hqDyIJ7ywd3GusYSj4UlGFHl2/FpfXGfSNYdmPrPCx5supDO@vger.kernel.org
X-Gm-Message-State: AOJu0YwfyOIlv7S523Z4ergQRySKg4AgF9+O+jLWY4PxqaZJKhiCXzl7
	Wdr3n7AcHrt9lVdH88nNsI65oI/2kjVokAViWrbXEUsI+jLQihUy5yDp6xdrFwBuQq3Ibq04VNE
	2zMtE+nt6bIPbGnjAHhdKjVP+86ka83BIPOJJy4CTrnGGlfQbdAMh7VC0uxb/uhYN
X-Gm-Gg: ATEYQzyk6OLuT+SwClNczwItsbNPqLg5L7f453JTJu9je/yBc+rQ8F1cicJlWGkgR94
	byDoYkx9zPthaOfzxKxZ21ssw93bZ4MZRcwdNPjAl343JfaYvM6kVEYlyA2UnljUbF5dOqxdPEU
	UsHca5oUbc9WRAsHiqSXPl9EOLJwiHfk2Afdd9d43SpwqBIgkskIyUz7PRVLYvpcdC0s2nqiqh2
	LpI7GUfY/x03SmBZfCOr8NFHzlVoz30omDFqPqNWAkOkmY0ampb3iO5uoW57BwNg1qMI/8yz6nD
	uYOQdoawIh7LGb6MopQkE5f2yc9DT9bUhvx07UKFS1bTv9sAHBh9RhutqvwMOmP9sFe5ZPXrva+
	e4M5gkD7ty9nxCIz4KgjTwieWqOhniuxqiyOPYQfKElSuozbdqv/WyCKu8ttpCSQAMFg9naEF2E
	MdqUxfAVlwjuSZ7DGtxj502sFoU9/xtg0PkJ0=
X-Received: by 2002:a05:620a:390a:b0:8ca:305b:748d with SMTP id af79cd13be357-8cbc8df263emr325819085a.53.1772194914296;
        Fri, 27 Feb 2026 04:21:54 -0800 (PST)
X-Received: by 2002:a05:620a:390a:b0:8ca:305b:748d with SMTP id af79cd13be357-8cbc8df263emr325815585a.53.1772194913739;
        Fri, 27 Feb 2026 04:21:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109de9671sm1826827e87.88.2026.02.27.04.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 04:21:53 -0800 (PST)
Date: Fri, 27 Feb 2026 14:21:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v2 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
Message-ID: <k2v2rjipwtbfcd6ia66mdlauwalicjmudxtzkqhlowkewiezqq@7d6jgxw5gt4u>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
 <xkrlyk33bddfwjxh7n4bplubbegmvetxqukcxmpbeqncosdb4v@fpznx4z6noc3>
 <m4kxd3kww4mihirzpoef3fa74sjtaifm6y3tvemwiloq4gybi4@zjqwiqqqy6kz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <m4kxd3kww4mihirzpoef3fa74sjtaifm6y3tvemwiloq4gybi4@zjqwiqqqy6kz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEwNyBTYWx0ZWRfX/t2oS6Cs9Dm1
 5G57M1//vHB9ynV7VnOIrKdxDwfL81vD7Wn2WGApFpvi0lFMQMj+KbcTzlp0bhzKMRjAm3fczmq
 YOui7DJOhrDQxExXzf0AtS72PaTf0CkHGhPEFh80lvzN/mxA+XmZmTMEA4b8Q9Tj60UI0UPTtb8
 kMtshImCxLByqtVF+sSXe1Tox02C4+MQ61NQpFrRS41NNm6OdPtkwoKckIBbSw155pFTY6I9CuH
 6BmmRaKzuibjp1lZxctCbRwSCXazKEBd7SI9Afk5+yBc3x4gpj0Ta5imq9AOhD6F1Dr6nRpSrYY
 79330COj8N1xKxrZ4ajhFUfTKb+3nrNd25qxRCiDo37ZwzBEsXJK+LlvzDLorYMb9bmWfVFr/l8
 A6B0VzdFu8/InDuK7/1dA2xx3PWEgNtaHyns54mIXRpNMQkwrAzALWuVqjfQGlNjcXqmwyQb9Iy
 D1L8+APdRGgJe0lJgJg==
X-Proofpoint-GUID: NLyJXvbkdHVWTcVuwLPfgTaOQubQ2RMM
X-Authority-Analysis: v=2.4 cv=KZzfcAYD c=1 sm=1 tr=0 ts=69a18c63 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=1YNG97yNERTmMkZp0_UA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: NLyJXvbkdHVWTcVuwLPfgTaOQubQ2RMM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_02,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269210-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,af54000:email,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A7BDE1B707D
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 01:47:44PM +0200, Abel Vesa wrote:
> On 26-01-13 19:48:07, Dmitry Baryshkov wrote:
> > On Tue, Jan 13, 2026 at 05:00:05PM +0200, Abel Vesa wrote:
> > > From: Abel Vesa <abel.vesa@linaro.org>
> > > 
> > > The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> > > controllers. Describe them along with display controller and the eDP
> > > PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> > > clock controller and link up the PHYs and DP endpoints in the graph.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/glymur.dtsi | 431 ++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 423 insertions(+), 8 deletions(-)
> > > 
> > > +
> > > +			mdss_dp0: displayport-controller@af54000 {
> > > +				compatible = "qcom,glymur-dp";
> > > +				reg = <0x0 0xaf54000 0x0 0x104>,
> > > +				      <0x0 0xaf54200 0x0 0xc0>,
> > > +				      <0x0 0xaf55000 0x0 0x770>,
> > > +				      <0x0 0xaf56000 0x0 0x9c>,
> > > +				      <0x0 0xaf57000 0x0 0x9c>;
> > 
> > A quick look at the memory map points out that you missed p2 / p3 /
> > mst_2_lclk / mst_3_lclk. Is memory map incorrect?
> 
> Sorry for the late reply.
> 
> Will fix.
> 
> > 
> > > +
> > > +				interrupts-extended = <&mdss 12>;
> > > +
> > > +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
> > > +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
> > > +				clock-names = "core_iface",
> > > +					      "core_aux",
> > > +					      "ctrl_link",
> > > +					      "ctrl_link_iface",
> > > +					      "stream_pixel";
> > 
> > This wasn't actually tested. You have 6 clocks but 5 clock-names.
> 
> Well, that's why it is RFT ... :-)

Please don't post the code that is not expected to work or that doesn't
pass minimum sanity checks.

> 
> Will fix.
> 
> Thank you for reviewing!

-- 
With best wishes
Dmitry


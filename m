Return-Path: <devicetree+bounces-273162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HsxMyFer2kXWQIAu9opvQ
	(envelope-from <devicetree+bounces-273162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:56:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3086242C5B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 945E2300C361
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 23:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B3F396D1A;
	Mon,  9 Mar 2026 23:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d4WX/iUv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BlAYXOLp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF7F3793D7
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 23:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773100564; cv=none; b=VdhCxc5Qgk4uAPrddqxiFQeDb40OwcP/jycCYcRQbOFCHjcZ07J7BBMKCXTzOIWnoNqhS67Xa/FonEATIybh3BomWIqy+5QcOa6dQJOO6G+gsHHpOHSgYmzkKKZKnENCniD25k7R3Kl7oOEspLoUkWWB1/a1RHdKt416TLQA7Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773100564; c=relaxed/simple;
	bh=APoB2GRIaTLewPG2eJJrNGl3EI+jktO1KC29NiUkO3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LeI4I6of5A/3UMW7NaBRszeiZUvaC/SAHjt1dCBuKP+EenfPOloYP2nLw7td1d69zwBxltJAiM0kUiZRVR3dvMhB+IBFlKXbeh6exvbLOH3UOLr1CzdUptjeE4Slz8UVZVfzOOfyVCqofHpEdMR4MdMIRqQnAXWqoUiAkyEvwC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d4WX/iUv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BlAYXOLp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HC1Td2427925
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 23:56:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Gg5U06zvmfTeNo8OPcFnYQbQ
	yTfxWnitEMe/QrqOWCA=; b=d4WX/iUviZxL1yn5BMH5jwJj4eSI84LcSv6hPnW4
	mXEcttwdXfm8JFjBAgLyy2TGBeomgn7rOhN0fHRgufzPfkQLt5uXjZqWBXpuhAtt
	S8kfdt+AA1A4PtMnZUIuK+OtbXmEqNk4M+2U3TslkjNuB/M9Gp17AwLpSM5Px0n8
	+NOdKvuLe2enPrnCUFjmMgYkBtaz7rjks/d69VwBVXeXwUMXx9QQmU8r3A8UclpD
	26hxOx5eD2vyEl1rCy3TctTilzqoIOOlWZIlr9ZDtiVkBWB72XKSPOa3HoXxorFi
	QCJHl0TbphAptx9+bCvy4Cqohxsm/FfivQZTgyK/n2ngCw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct1ekscd0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 23:56:01 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8950562d351so50157746d6.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 16:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773100561; x=1773705361; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gg5U06zvmfTeNo8OPcFnYQbQyTfxWnitEMe/QrqOWCA=;
        b=BlAYXOLp1soMMQaMr+vg/p1VZ1b5uBZYiKZ3PnIrL9Bqkd03GVKzftgOFVHoa2CAVd
         jfpam6iWknGGgykiRhMiX3GgUfACZw8oqvyX5Ck8d3+KVYItmzIKc/TtQNE/SrFzMbLe
         Rc6S76VmWy3iC4vC+ReDEiJgwQOE4UBE1zNpXY92HoJICivoDh6Nf5BVrVUV0+PU4XIo
         SQTHUFu8fCpP/wQCILaV+ZZKNORBrfPE45kLqufQZPQAgxR2u8u3rxPCoBJX1rHJMYsL
         cIj6dBK7w/clFlmS+qa1P8HppjObV0Etw/A4ho7nheuAIDoS7a0c1sp9+L7X7uqJMAzb
         A1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773100561; x=1773705361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gg5U06zvmfTeNo8OPcFnYQbQyTfxWnitEMe/QrqOWCA=;
        b=Ilg6B46JnWPeo2QI8VhbYuzOhGhn6VbHQc2eDQdwkXCwZ0Et5aowvV+HyHqHQKgMzB
         Ip2sMR+uZC959WQi/utlzGhf92HnUGwVuQFbhsRcl47K+cHH0spl0xhwqgvBOtGiZE9N
         heXavZ2Qk73L8SuVJksdd7mArSQEgz7xHVdONgA4cnS1MCRdA6SUJMWhUU0hR67aIYFt
         Smktb1/hPJQ28p9Az5V6r83bCOztlUu2n0471YgxP98Yum9s8SrAqPfQQxu+cTNnNTM8
         QUCq/LH0JCXxiuGf/XbUr6rxEyxHQDumsGV5AHqTNLlaTU3iLGMaFztJg7suwTmbJhml
         rFmA==
X-Forwarded-Encrypted: i=1; AJvYcCVyByjFc5YN9eXfkzQGESww39GtCc9h2zwg8TnxGFkrgHAwSpKexMIWFYaXiMaxrvsBTqNlttSHSY2H@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3n8JhzGCGDIcXka5u27zRx4GEqc1Ev99KSN9LQZs4jvrtk5IP
	x8oSzv4LghaE2rERmf8WV9KYj0qsAdxfZslxOXEJw7Jhr+Uew/qsxfTxGO78GNlGiAM37DHSlqY
	LOg4H0NYllpm3IbtDGZQu7jwTDlVSvJUz9he+9zp5UFkVJ2dXWJ/YnAL9c1tVqEMv
X-Gm-Gg: ATEYQzyy8m40bBO/BAqltNGfqtcQ9HhqOBxBmzVj1x6YRCg/txFMSWATNBnIg2EH5a8
	YZil7KLBqpuZ5UMZNkGU+uTqX8thDEbTip4yQ6iRGMYXrEo8xivTucOJ6nTrm+WHPjW+uzb9MnU
	s0V3GZhvsQ+8J3L5VOrQDmDlALg5+eX30Ufx2tae2QZb7ojk+nZHSspigOawi1MDMJUiCzpcEU0
	Y81KRjKGpCq03X8XBaTojXe5csB1PdcXmgnvVZ0Bs3fZjy7TCz2lRubcb1LxL6iSGQJSaNjeNc0
	/rmOT+2orDBRCJyZpdquhcusdx2F4WTbMC8ruP5cuR6j5KRPsKQU7EjgT2Aun3dKwFB8VXJq/MC
	5lRTCcPirzA3y/OMTy6TiRNOd8Ply5zAiLuTb/iElUe79rGP51BCdke3BiqSdVoojmxLD5VKGzr
	9ThEIp/cB0iBxM4rZcsCwmLo9/zFgKYcbIysI=
X-Received: by 2002:a05:620a:44c2:b0:8ca:fdc1:cc9c with SMTP id af79cd13be357-8cd6d514b43mr1695425785a.76.1773100560874;
        Mon, 09 Mar 2026 16:56:00 -0700 (PDT)
X-Received: by 2002:a05:620a:44c2:b0:8ca:fdc1:cc9c with SMTP id af79cd13be357-8cd6d514b43mr1695421685a.76.1773100560383;
        Mon, 09 Mar 2026 16:56:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5cfb8087sm2034751fa.11.2026.03.09.16.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 16:55:59 -0700 (PDT)
Date: Tue, 10 Mar 2026 01:55:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wangao Wang <wangao.wang@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] media: iris: Add platform data for X1P42100
Message-ID: <wjue34qubjrdzwvmu74ysb6pfq7sy75gmihfzk2i4pw2i3koxz@pdg3vq6cgytk>
References: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
 <20260306-enable_iris_on_purwa-v2-4-75fa80a0a9e3@oss.qualcomm.com>
 <20260307-curious-skilled-ibis-fffadf@quoll>
 <b65e62e7-c223-498c-9005-af8c74861a66@oss.qualcomm.com>
 <8a7c3b44-200f-42a3-9888-aa72f401cea7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a7c3b44-200f-42a3-9888-aa72f401cea7@kernel.org>
X-Proofpoint-GUID: Ui_0N6nL5pC8H-O3tHtPMR8LOnMVUlCv
X-Proofpoint-ORIG-GUID: Ui_0N6nL5pC8H-O3tHtPMR8LOnMVUlCv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDIxMCBTYWx0ZWRfX+5YndBo6pigw
 qM9s1iMbIN1xbLEewKx41CnzZW8f/syPxIfREjR20F+vcG/XUH2+tNdq0HK7JT9sW1XLuExMdRh
 racN7a6NdMx4wkBpcUS7JT0gwnxJamE0ahBgfidqTkACAjG01yLktSPIOBVIyJXlodOiHETKA4Y
 n0U3juBuLYB0p9JsKXiaWdgddSuZVMqklVDs+zh6Z4nYLgYHZ5NbyVCCBZkqt+cgaattnKBuk6A
 HRcA1Wr+YvTSiIr4xnwYCxTtyMJjDySLjR4IVLO1pGrf8b+VFS+NnJySUgGzD5lg4nlZVJD5aMG
 5xKIUcCergtWUNH8lTIesEnULU1q/Q0bSlKH56DpV94bK37EmYeHrHdjdWQpa8KWQ6EHUHIXM7t
 tggJbXn17JqARu8J4AtwKqyUVIqlkMNRjrpQ1kt0Vjtip9MWJkWAwghA77RLnKstjjF3D6LhQTB
 PhWW5J1cWoLtFggrGIw==
X-Authority-Analysis: v=2.4 cv=eIEeTXp1 c=1 sm=1 tr=0 ts=69af5e11 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=tZouj9Mp9CdiKozPqckA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090210
X-Rspamd-Queue-Id: C3086242C5B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273162-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 11:49:42AM +0100, Krzysztof Kozlowski wrote:
> On 09/03/2026 11:43, Konrad Dybcio wrote:
> > On 3/7/26 2:18 PM, Krzysztof Kozlowski wrote:
> >> On Fri, Mar 06, 2026 at 04:44:32PM +0800, Wangao Wang wrote:
> >>> Introduce platform data for X1P42100, derived from SM8550 but using a
> >>> different clock configuration and a dedicated OPP setup.
> >>>
> >>> Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
> >>> ---
> > 
> > [...]
> > 
> >>> +static const struct platform_clk_data x1p42100_clk_table[] = {
> >>> +	{IRIS_AXI_CLK,		"iface"			},
> >>> +	{IRIS_CTRL_CLK,		"core"			},
> >>> +	{IRIS_HW_CLK,		"vcodec0_core"		},
> >>> +	{IRIS_BSE_HW_CLK,	"vcodec0_bse"		},
> >>
> >> And maybe that's just IRIS_AXI_CLK clock?
> >>
> >> People keep sending downstream code and name such stuff because they
> >> found it in downstream, so I have doubts.
> > 
> > As the dt-bindings commit message states, Iris on Purwa has some new
> > IP that needs its own clock for operation
> 
> 
> It's v3 IPU, yes? So why that block disappeared from further versions? I
> would assume it is still there and the naming just might have changed.
> 
> How this clock is used here looks exactly how v3.5 sequence is done.
> Alternatively that's AXI1 clock?

Looking at Iris docs for Hamoa, Purwa and SM8750, no, BSE is not the
AXI1 clock. It is documented as a separate async clock, it's propagation
is enabled separately, etc.

> 
> Or commit msg should really explain why usage of this clock is different
> than v3.5 uses its clocks.


-- 
With best wishes
Dmitry


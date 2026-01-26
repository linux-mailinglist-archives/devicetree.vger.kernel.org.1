Return-Path: <devicetree+bounces-259459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI65AthHd2ledwEAu9opvQ
	(envelope-from <devicetree+bounces-259459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:54:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCB687568
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:54:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7AD73305A38E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DF0331A70;
	Mon, 26 Jan 2026 10:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c5qG7zfI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OMe3uPDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACEB32E6B1
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769424469; cv=none; b=VQA8QHJUcmgVEPa2OgeFYcOZo3jvx4B8Ze2Xy5smSCf8fSnWc7b1dEbod/iaU75o7p2XqzF/tSzgdjLVWTga5G1UUQw4k7WzV6YYaPMCE7JRb/GvhUDYZ5cePjO4UuMfaxOYB8M0xnL5Ll6UXBHxyNAVC47xLbQax9sJSGD/Bxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769424469; c=relaxed/simple;
	bh=sTLJl3rsNSEUgx7iqQ6tKPa1zSfAw8ucjHF4XLqfzn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GZ3mzDtHI+33PcdyhAAlbFL36xvgzvXR8Ln5M7tYf+T/o8EHU+jLViwxhyoUbu/38REBmi2SNdhEkUzxKbG3vgOYDdPe1Pmp+L/U04JeEXqivqk3zqpRT17vik1Vw2L856NhqagZQqP41InbRItn/ZFy6ZqapxRSvLt+KFsN70M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c5qG7zfI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OMe3uPDv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q8wtdu499513
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:47:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lbeXtz+hBcdSrQWtsJRaI8c5
	ZpQVcFsiyXQvqEXDDLw=; b=c5qG7zfID1ZBVJFP4S/HNdUhO2pz1AT3zN3UM1fO
	XuwFICvw2C424o46fziJZGpAgCxFQWsHrJdL+BdfXmeUCvg+2ecKxMKxHqpVnzYa
	iPpQuX8jE98oayXmgqqWgi1g8Dsw+CRd5AC5XnCJ1gSA4n3CAQp45+hXZexXIs0J
	n+1SOJx1cB9es5ToZSnV9SyC/1udTajJ2fVn1Z1fiP+sFILed1igOyc84P8B9DZL
	CFv/w118jdgj6kZyUMv2YAsSub+2g5aymNw05Ocf1N+dGZFujxfeNv3UnauySPDl
	HLIE0My1Dvl2A2YvtkDXOr563biG1VOcxJgOhvIxJGp/XQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9qm8qk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:47:46 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5f5337e9fc9so4364234137.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769424466; x=1770029266; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lbeXtz+hBcdSrQWtsJRaI8c5ZpQVcFsiyXQvqEXDDLw=;
        b=OMe3uPDvYeQX4JYnXpiOHgWdim3rEQHZV/2PEr3d9TCptMPlzl1v1JXWEZCEl3rBtK
         sQlu78GJNwj54we73byXriyBz/lKzKPIbPaBTpV4AX9u4wjFzvIxUdXVKdJo24l9qANR
         QL/sAECzfkAgZHYi3MPNQMxaiWSOlbG+2klF2gs89rt2wONKmuuRV7rpMb8/b441BqdE
         50nUuF/Lujw/IetKNHStSYj/6yw6G1aHRk52r2cHBlR9BRtTcEy9bP7wAOZpupgC+PNo
         NHq/yZRji8oVFzeh5WiM+cwlziXjw6fehq4OzPHEuhxpUhdDvjHEhny8tO6ymmmQLdCc
         MzhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769424466; x=1770029266;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lbeXtz+hBcdSrQWtsJRaI8c5ZpQVcFsiyXQvqEXDDLw=;
        b=ISqzYFOmXxOrnmW+Crplw+kJ9QDerIY7a6MPDCZmAV49svgT6/eubYRKgcU2ZMBHjc
         z2+yX991TaanT1ph4b6YUX9d9oQUpg9sDXiD2IGODqaaVSwq9eEZj17MWA4AAXx7IVjf
         fVgimAA0rrGPKVSznGvik+hadkXIwM2atEyOxyMg3XDNhjMBa+ftaZkT+N5rZUDa28AP
         D4BH+UZdjhgQe+g5ZSgjaZLSZNlS7gepmP/sWdJ59fOkey97HwLyFnqkZBZ0nfgGZybs
         OLJ0rX9+IjQ1dhiRbDCSSWEaBPFgCDfaggAnSXy9S0cA0LHzTV4l7QPJigZ61/m0Oe/v
         GexA==
X-Forwarded-Encrypted: i=1; AJvYcCVqrWueLR/05TltFyB/wJJhKgsk001NyWkmkCpkR41p7iM/R4O3GI67TZH/9uQK8UTEIowCPFaLl8n3@vger.kernel.org
X-Gm-Message-State: AOJu0YwV6JGih3D99Y8EqA9MCWhtyloXQrv4RfWclRQds+2G5paSYf+a
	qU7uBsKs6PD2A4y5Gv+VPk9FVK9RtZiQtH1skqpnjuUAVOfEENMLx0R6SlOrd7dwZ7HsByafEY2
	vXD4neThWIk+y/DlulSFvsrXLZNnk6qYu4dqDNa6Q8/ZefIqCpa0ztS20YsrBL9u3
X-Gm-Gg: AZuq6aKpooAc20d+YnAtDQRTPBcu6UgoWIghGXCLsTlowr46/punvhkP9YnBqICui8z
	hkgu0Wp27aJyUSJNZvT7THdip6Fadf7ZkfoVrX1uJdezBsgeqb1c2gs4UKxIYr3ENA14hLEPytT
	jEfLY1tLgAxhgKE7vC5H94nNWP/9HcLlNQQv2XWdKMjPJeQS441hISQIIyJcrzu1hcjh4djwVEx
	MrLxjJ+JnWXuFYwwipbEfwgkMakLQt3Q4Km7dJA1GHqAvP9iFMWSoGYrACsxrY+8d5NB/Pg9XJl
	LBjDE4K8RJT8x9xA9Cqj5KGZ78SkxDHziKo9bIwqBd/CCDNisfVr4tZN4Q1WEYXgy8LxPXkuxyX
	ys7QamJkumaf1D5r+bENrkMMGACmqC0OcjytuTbyd7bezgdshcpMPxq3gjl3AZmwMJd7O4qD3Zu
	ohbWoj7BLofnZeFYid2J/GGeQ=
X-Received: by 2002:a05:6102:2acb:b0:5f5:40ab:2d65 with SMTP id ada2fe7eead31-5f5764b392emr948444137.22.1769424465829;
        Mon, 26 Jan 2026 02:47:45 -0800 (PST)
X-Received: by 2002:a05:6102:2acb:b0:5f5:40ab:2d65 with SMTP id ada2fe7eead31-5f5764b392emr948417137.22.1769424465379;
        Mon, 26 Jan 2026 02:47:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918965sm2691950e87.55.2026.01.26.02.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:47:44 -0800 (PST)
Date: Mon, 26 Jan 2026 12:47:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 4/7] arm64: dts: qcom: sc8280xp: Add Venus
Message-ID: <ecfzllcz2b4h45eymsg4quncu5ec3fqbheufn5wtkbykb6dg3m@k37ocioybgpx>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-4-d21861a9ea33@oss.qualcomm.com>
 <136bf12f-cead-4485-b689-af780c937e2d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <136bf12f-cead-4485-b689-af780c937e2d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: QSW46mbK0Bi74HIa8CWJMf-VQXrq8zkJ
X-Proofpoint-GUID: QSW46mbK0Bi74HIa8CWJMf-VQXrq8zkJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA5MSBTYWx0ZWRfXx0lIQQiVn1LZ
 F7elnvPs76qU4wFUHFzwrS8o3IVN0/W05Qlz70GNj+Fxrf6mgmAk1n8h0lcLEON/hfDXO9PUjQH
 P7qzebRT8j4H4vkf42F8x86KY6E+lN6G6lv3y9YufvEOyCyuCFeukLQ3xX9ZOfdim7smv4H/ZoP
 mZIlqE1Xm6wxf3bJZ03NNCWGw6JwXeiD5ht9FNBFuzOOcJhe2a9rwHhdx/EL+zrH46VD0UE4hRo
 uVCjyiuxN8Qf8eVtFYtUmujIcQEbNzPIewEfAQ/JVx/65i4QxsxfskGPGkMotYpAB3GbHl22FZ0
 pjAOa/oaaW2JJBIZx3Ed8DrAI4HzHdJYsxT4IvmFcpu3lt7pOV5miTBo6m7f1kDpExqrohngc7s
 CZH2phBidv3RaAm4Wci9skqzMz/SovPy+4AdHJbEsu9P5qb+dNkgcEy/rNtDrxl6T8P6v4hwBCk
 OL23FfDSZ06GVJdW81w==
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=69774652 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=7dog7rJr6usjdEcn8tQA:9
 a=CjuIK1q_8ugA:10 a=ODZdjJIeia2B_SHc_B0f:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259459-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6FCB687568
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 11:00:25AM +0100, Konrad Dybcio wrote:
> On 1/25/26 4:33 PM, Dmitry Baryshkov wrote:
> > From: Konrad Dybcio <konradybcio@kernel.org>
> > 
> > Add the required nodes to enable Venus on sc8280xp.
> > 
> > [ bod: added interconnect tags ]
> > 
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > [ johan: use sm8350 videocc defines ]
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > [ bod: dropped video encoder/decoder declarations ]
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > [ db: dropped llcc icc, switched to sc8280xp compat, added more freqs ]
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +			venus_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +
> > +				opp-720000000 {
> > +					opp-hz = /bits/ 64 <720000000>;
> 
> You need to div3 all of these, otherwise this LOW_SVS OPP
> will actually apply a more-than-TURBO_L1-requiring frequency..

Hmm, is the OPP table for SM8250 then also incorrect?

I cross-checked SM8250 and Kodiak against, msm-4.19 and msm-5.4
correspondignly, the OPP tables are written in the same way.

> 
> [...]
> > +		videocc: clock-controller@abf0000 {
> > +			compatible = "qcom,sc8280xp-videocc";
> > +			reg = <0 0x0abf0000 0 0x10000>;
> > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > +				 <&rpmhcc RPMH_CXO_CLK_A>,
> > +				 <&sleep_clk>;
> > +			power-domains = <&rpmhpd SC8280XP_MMCX>;
> > +			required-opps = <&rpmhpd_opp_low_svs>;
> 
> AFAICS the PLLs will not turn on if *MX* is at < LOWSVS, but they still
> need to be scaled 1:1 with MMCX as the freuqency rises, so you need to
> wire up 2 power domains to the OPP table

I don't see this being done for SM8250, should it also be fixed? On
SM8550 we indeed manage MMCX and MX together. Should SC7280 also scale
both CX and MX together?

> 
> PLL0 supplies core0 (iris) and PLL1 supplies core1 (CVP)

-- 



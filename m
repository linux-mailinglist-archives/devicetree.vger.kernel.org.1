Return-Path: <devicetree+bounces-262437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHUaExiUgmnYWQMAu9opvQ
	(envelope-from <devicetree+bounces-262437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 01:34:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B45CAE0099
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 01:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C5CDB305157B
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 00:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799EA2045AD;
	Wed,  4 Feb 2026 00:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iiD/SY5R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cOPl9hhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD63419D074
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 00:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770165268; cv=none; b=DtJalabQPp3UEk4ON9XLcAruD0Vdn/dBbFr+te5f4Cy7UM/SSL4vMxPFxvyt7gSwET6EacGiT6eKv2SGpAbku+m1WAlEbZkYKn54NViOKEHoB87NJy9Ind4YyM7mfAhF0i/9gt+8FDIEEt9bZFqHme9wcdOyMxTyXo5IZshgOBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770165268; c=relaxed/simple;
	bh=JZQapraUF3c0HIr1n5jj+Xl9qv7HTYhB1kxe5WGZUaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ftIR3SAl5/xWOa4djj5m7IhmPf3L/5c533Gzk47fc4I8N9w/Gp7Zs884NAMEADSzLcfOhWjj5pf2+tNidrk3O4QwoVZ52LyDLjkgWyTkVDVM0pjqpOoAQWvnzavsX7zRPNAayfO+dbkHZlNvkWiOrMtVhvrypkZnY2j1zHnd0Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iiD/SY5R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cOPl9hhW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613LJZIl3515030
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 00:34:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+Y3KpF902MQDgPLjbKI9jOw8
	WubVDSA0uuvgF9yv9j4=; b=iiD/SY5Rgv0STdjZ5h7frGuIcMsCV8YFBPpsHp+d
	6LVuHDda6W0DujxoQzCS8NMvvFacO3Iq0WkN40Hu/lAWS72aMQQHiuuJeXO8YX39
	W/6Gi08KwNXZZzhU/984rhIMVMzAHkgDjH2HoE7YeDHkEr0wjIMRegZ4aGUM3OvJ
	ASWQSFXuUBAFSbIotCwio1c3fb3Hk2HBBzos+K+dW3Xp+HNRGHB4ps5LgCVN+Mi9
	uBF3juwgZJnhngOb808MeTwlvnyvkiipQUr+olmfR9H3AVkBodEoGAs2xigPwSFs
	PhYNpZeFRnjhFp4D0p+i1kr6sUgzHts4cb09RAHJAWCBjQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ru98gh6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 00:34:26 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8946e21ad8cso89759836d6.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 16:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770165265; x=1770770065; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+Y3KpF902MQDgPLjbKI9jOw8WubVDSA0uuvgF9yv9j4=;
        b=cOPl9hhWamm91ab/QF8ki42J/YjU3sh2wjNqKB20bH8j+bMlQTL9eEfOLEilkW17nm
         5fAm+Q+LTqKG4zZpcGT/mjpLjGpDndd3lu2Xw56O7suEcvXcFHpq3fKqIjscmczNWpwx
         kL2O4WFABqudSQc1Z4p7SIW3Ik8WU7DBwvyKS0zg9w0hYlST5UzVPQhpvqkH5b+MlITK
         JXtd+stePugmulCvgbFZHAZvO6xobG86irRXz12PW9so+MdTeYZEK+ymu4lUWgSeKgUk
         CiCLjdQbYxX135xYHOSL3Nw5u9OMCAhCHHhRVmutXAU8JbhXzwy0oP/xAJtvfxzpzSSq
         GcyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770165265; x=1770770065;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Y3KpF902MQDgPLjbKI9jOw8WubVDSA0uuvgF9yv9j4=;
        b=EvTmO3ZUySH2Z0kSI1Ndd/7LAl/g7RBrgjdL4JrHYdac2X7W6sSHTmJxC+teO+zeI5
         uF/moG6BtBEtWUcCg2tsEV8/0lGhMjdeR8+QIknOfX/XFebf9YgwFMwj7j2DCfzZpRYY
         Cq+V249sRBpLLK8CvHSx8oBPZT817vq2SJUGoF4tqaFYmoobmr/UJrzSKFvCwq0fKx8m
         MMhx0oYg2P06EdRBaeqICLDTHgAVYgn2+9jK6OqgTFFbL/z8DB7No2DvpHGzeROfbshq
         bDDZSPvH35zOIWeT1it9yB4vrsK+YHmZRbl8q1iMdgZLt+YAPNe9DgoxZWw+Mt6k3/d6
         FGjw==
X-Forwarded-Encrypted: i=1; AJvYcCUczh2J0ACqg+txYHTtj3zVDqn9jeatrvyoepxTP94q2i+XHR4ypEqvuE6kv1M9OjQHflueYZmoxmuc@vger.kernel.org
X-Gm-Message-State: AOJu0YyynmVSkGDpe4Fq+YXNgf/paQ5UTwbneaSMn1HscxbfCh6Pszjt
	oaQdE4CPL1AdVOGPq0S2MBbTdD6voefzlIqAd7ckyym4r0Z8CgTFkEd5zYAgV6ebcQNb2PrlhlP
	AO6lNBN5xLZBSWedhzPJFpkdlyRS3tt9h+n2gWmIWx1itC9QbLQHvhccLoaJtJJ5x
X-Gm-Gg: AZuq6aL3MXml6uCho0JomnmnyYMNiN5NNbJWc3p27yaqqdVov1XxjT00vQHFGi6n+PQ
	eMtu/jqAZ5D/8CaWJ1W/392DLomB5TmYPML59KYl3PBqBwUj5+jJWGiJZ7sxc3ixuLgIZGLdIni
	QPADytiHQF9HsPB7hc4foyJRaro6vc0+ZS1KUWzTHHtsBJSPzXwHFI8iBe3QFa5mRDnBRlqUycX
	KtOWDx1bkxp+Q3jERI/9f7QCpRBMyumxekAcVvj4kJrYK+OjGHCDWK2L7tYEXdfPxbs+KNhVHLR
	2USZcpFpQPyI76JtOlADdDiwE2TVrV7bRRUbQLuuYhwKgQF8+5atb8UGGjWQIoeVOTT0OrJX+ul
	OI4l7pVkuA73lDfRmvAjT3hk/tyAEmq+QV3owV+p1SDZtAmVInDjr6vx6qkZ1u37Se/RNUOvEsE
	6RDgmiXSgHuvAfBQiJL/ej8+o=
X-Received: by 2002:a05:620a:2808:b0:8c6:d628:8bac with SMTP id af79cd13be357-8ca2fa066d0mr184302085a.73.1770165265034;
        Tue, 03 Feb 2026 16:34:25 -0800 (PST)
X-Received: by 2002:a05:620a:2808:b0:8c6:d628:8bac with SMTP id af79cd13be357-8ca2fa066d0mr184300085a.73.1770165264545;
        Tue, 03 Feb 2026 16:34:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3869204003esm1713351fa.28.2026.02.03.16.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 16:34:22 -0800 (PST)
Date: Wed, 4 Feb 2026 02:34:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sort out Iris power domains
Message-ID: <abl3lfuruwzyrvf4mz2kcvhfr4efxwms5cqgyfcnfsf5ntwyrt@dyqdamcq5sru>
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <20260201-iris-venus-fix-sm8250-v2-7-6f40d2605c89@oss.qualcomm.com>
 <95d2ad4e-082d-b399-3a35-99fd6a3e78c1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95d2ad4e-082d-b399-3a35-99fd6a3e78c1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwMSBTYWx0ZWRfX1qPQAdLYwleF
 jrZD432yhZohvtR/e/+VkDZZDC9cO47ruRRHm4GoxkGnQa60SMJBAINe7gnpmzBh6y8o4QoaKu7
 14mVWl1FLsVmwbFyZboWx5dVCHYgmjlj+DsJJzLwVZ8g0QPOLwc2lXwJM9jD9EQs4elrYucQByV
 hmLuXOMf4DSbs1TZBRdgVpIlIv9nn4X7pOIeo/fs8aFKA39vwebDtYRWG0CWtbSV/3txw1kiFVg
 LGN7jTdeIsAQMg5DWpDFMtk7UhI6nrjlJ2f+IwifTMAUd0Ur5PcbP1OHyHyOHbZpEGmjcAhCVVl
 9cXGeN9ztIknE5LE9yNkqncsUZOhgSS+n6KnI6eAjhq4eOrUAGQ0QVijjbiQJb/vRctABLgGN1v
 vq7wtaR4C9DTpf/NBibsTwigaGanOtLRJg9cmHNOrSx/zSsnlddKVoHVdskQJSqpErbqUXLa/lw
 pQ9nQpLGjZZyBlcOuow==
X-Authority-Analysis: v=2.4 cv=IJoPywvG c=1 sm=1 tr=0 ts=69829412 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gnWdZZE6b5bJ3VmEtdEA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: C2g7_6E5ceoBiR3hfafjLtD3ey1UqqeM
X-Proofpoint-ORIG-GUID: C2g7_6E5ceoBiR3hfafjLtD3ey1UqqeM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040001
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262437-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,aa00000:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B45CAE0099
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 02:37:16PM +0530, Dikshita Agarwal wrote:
> 
> 
> On 2/1/2026 4:19 PM, Dmitry Baryshkov wrote:
> > On SM8250 Iris core requires two power rails to function, MX (for PLLs)
> > and MMCX (for everything else). The commit fa245b3f06cd ("arm64: dts:
> > qcom: sm8250: Add venus DT node") added only MX power rail, but,
> > strangely enough, using MMCX voltage levels.
> > 
> > Add MMCX domain together with the (more correct) MX OPP levels.
> > 
> > Fixes: fa245b3f06cd ("arm64: dts: qcom: sm8250: Add venus DT node")
> > Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++++++++++------
> >  1 file changed, 14 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > index 980d6e894b9d..531470506809 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > @@ -4321,8 +4321,12 @@ venus: video-codec@aa00000 {
> >  			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> >  			power-domains = <&videocc MVS0C_GDSC>,
> >  					<&videocc MVS0_GDSC>,
> > -					<&rpmhpd RPMHPD_MX>;
> > -			power-domain-names = "venus", "vcodec0", "mx";
> > +					<&rpmhpd RPMHPD_MX>,
> > +					<&rpmhpd RPMHPD_MMCX>;
> > +			power-domain-names = "venus",
> > +					     "vcodec0",
> > +					     "mx",
> > +					     "mmcx";
> >  			operating-points-v2 = <&venus_opp_table>;
> >  
> >  			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> > @@ -4348,22 +4352,26 @@ venus_opp_table: opp-table {
> >  
> >  				opp-720000000 {
> >  					opp-hz = /bits/ 64 <720000000>;
> > -					required-opps = <&rpmhpd_opp_low_svs>;
> > +					required-opps = <&rpmhpd_opp_low_svs>,
> 
> should be rpmhpd_opp_svs for MX for PLL to get voted to 720000000.

Ack, thanks!

> 
> > +							<&rpmhpd_opp_low_svs>;
> >  				};
> >  
-- 
With best wishes
Dmitry


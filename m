Return-Path: <devicetree+bounces-266583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MM2dFATAlmmslgIAu9opvQ
	(envelope-from <devicetree+bounces-266583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:47:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7945315CCA2
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D48A4300608C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804042F3632;
	Thu, 19 Feb 2026 07:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A7cf32EM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XGvN1lsR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D18BEEBB
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771487225; cv=none; b=ePEdlEDggXaBp7ZVqUPiLgrPuX3/nnbrkJHPuyoY38hA9uwy5L48A7QdAqU0Bskq22GJoS5gOLGm6eAX/7kYxHkavp1/LnEzTEQxIqc+PJfYDLoDsNrEnA6/vCwXxG4EW6pzD6CUDTe8t+BE8zC9+tnSNbKmUau9E9qJXNXi+Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771487225; c=relaxed/simple;
	bh=HENVNu8zANQgOkGuXOuJ6QaqGD0pjBgxHlfPGi15+Fs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X9Rog0CMNjHgiV05KmA+N2pie+xW1YVyjBokFCBpycfjcnAYjUjAnZb9cgQRXnXZwYclX18l1bjdia3N1Oca8ozFHkmFF9bV5qWKEXp3N+4sNekRKd17S6uD9DeTmDM7nins+6e/WRSZzEEuKuR7BBTFDd2J49+e51xZO1ZPub0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A7cf32EM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XGvN1lsR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J4d7xF422211
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:47:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/Ey4wxIRsd6+dK0vuIpoKQE6
	m/rBwdi1/lYgk0pbYdQ=; b=A7cf32EMoqoZQKVEN/ITkmAcGECYyf/E+Al9GwQU
	lAEANcWFb8Su31s6fqrjruBdiv7LNZRjuMDnMxkBbatAANaiiFznNLbEh5ior2Mt
	I6L+qtOusbJ9v5f1SCMLmHN4co2ixauXC6DG+iDdjKCuZdN1TtUn4Od7hmeVIjzP
	IUSd/AQygas8rnYdNt3hJF4wpXasd0fR/xYS2X7yA6HSBZRO74OuulQChbzhaOvz
	KcgLf/Bj80ix+PTLfDEPCTWTwDiXJIuoilzaJX0GkdkCbgJAxDZclexTQv2GTmYe
	Gp4mUEPC3xh83MWwmp6HVFo/pIzEFfHmZDkXbw6U8095DQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd76e3ptc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:47:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3a2eb984so885268785a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 23:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771487223; x=1772092023; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/Ey4wxIRsd6+dK0vuIpoKQE6m/rBwdi1/lYgk0pbYdQ=;
        b=XGvN1lsRIVqyJIqQN3o0CREijLt1SSM3gWTAkXk52eI375NjiX7jSob9DPXPHRdbj7
         dg+M8c6PNTWORUPcERZT0zE05Y13FhN1MKtl6Tu7ByD+lMHc+lHMbYDj1y8bHEIt8R98
         KkiVHOtq1lFE8pgLDOqUlP4c1/+ZgIKk6dEZLYpAFyBnafrJwN8Mk7925Pxi1HOyKnCY
         39a3vd6e1O6z8WJnGvNtIPDSgG2L24YXTr20Qp8itiip811VNWefj5g4vpXIU0RJqDr3
         WwrtnHF9/0O+vFXVOOUVMOD04KrFCfO6Q4xM9pMaG/ItFHiSpXrSfs3b7rwkv5+eepVw
         xFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771487223; x=1772092023;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Ey4wxIRsd6+dK0vuIpoKQE6m/rBwdi1/lYgk0pbYdQ=;
        b=tXoFO7GmL9+4Z0nYrxMGthMwxGTKW/m3dELKcR4axhoirSBzObCNOWfArdIMEepeVU
         tuJEm5LVSbNEKnpEFZIdJB4+4TgclwHVIwFebljEP2E2HaL5+f6xA4Q7WtwM1pSMJ8DZ
         3tQL7IycoaHXJf4YfxAavCN0IPd/5F2aMvUlgXF6PSEnsBCHgFizbUq5bzAjchIKmx8E
         Tph1vslNRn9a7KpoLYCxkqBVS1VfcqrXnGSMURESfufOj9Tg9PlnTvzHXUsGOJt3ok3b
         AO8/34pSgXgE8CjmLqp96IVNm+ZqL1I+CdfSSjKO7/9RWVNtE8vEYrJK2nzuObm9IwRG
         9GOw==
X-Forwarded-Encrypted: i=1; AJvYcCUBjO6o0WpKI+eo7aj4UNHy22ygNHRjVc+eI1Czf5eeDa3XlysyfFYz5SBoLA9x+ktOzcK3sdcSxxwH@vger.kernel.org
X-Gm-Message-State: AOJu0YxitFv/353ViZpPWYUfYXqGEhfF/XAOhQOIo1+0y6DGC2HmOD+R
	I8o5ah1QxoBo/ZeLzAX4YbAaBzdB2pcxj4wDlJ2amttSG7H1ebwxCmZ/d06Qgp4IJd4mCqDRwrp
	fIKN4GozGUbw5BUpPpjznswtnMKU90DZDB3liPDinDpgeYUbMg+h3XWBBvHkoLDIr
X-Gm-Gg: AZuq6aIX2TF6YEeQEryXApDwgmTmPUMXPWYKPEMJcFSQH0xFqID71zp5QeNDs1WZPFc
	5i3ns35IlVEf6625hB4dqb3PmhOTQILl3h4kGTzRc3akXwq1sTTAn0b13L6TN7mAIoI2tZl9qr8
	RaZUM53tFgsxxzyY4AxPP9x1CwOTg374VoO1hFNFMRXovv5bAKoKJr6LJD7VNBInfeA7vWyzqkf
	32yHuKbSZtbIT+EYiMpPNefp7Xv/BSSn9Eu8++4EhYFj0XOjEYBL3ciN8H+t1PI2da1WBHTKbON
	wnbBL09slhzAlt8SP1OQprhKcg0ToyHQo0n/LBPEDLXSXUXGSGyDPPI7xdR3FwgByI4p7+WElzl
	Rf1rAHvCTUyW20+ImuKt1s7HMiNi955f/0TcVpP4JAHoO8ZrVnbyJ8NHK119wlyNpEZzSqr9U11
	+qSwgGEoQAk1Leo1YkgKrnq2nofqz3QBojbcc=
X-Received: by 2002:a05:620a:a508:b0:8cb:4d9b:6b4d with SMTP id af79cd13be357-8cb4d9b6f20mr1685502685a.10.1771487222618;
        Wed, 18 Feb 2026 23:47:02 -0800 (PST)
X-Received: by 2002:a05:620a:a508:b0:8cb:4d9b:6b4d with SMTP id af79cd13be357-8cb4d9b6f20mr1685501085a.10.1771487222126;
        Wed, 18 Feb 2026 23:47:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f568dcfsm5227041e87.28.2026.02.18.23.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 23:47:01 -0800 (PST)
Date: Thu, 19 Feb 2026 09:46:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: msm8996: Drop redundant VSYNC pin
 state
Message-ID: <qet7nucpnt4q6htfzhzkinxnrkiavguxq4kaulvhbeiwhpckhl@3dmcpen4ijk6>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-1-2799b8a4184e@oss.qualcomm.com>
 <cq7bdo3l4w7fi2aymo4ovafrj2y52k33dspeii2lvv75viujet@anvldr26j7to>
 <cc02215b-dcfe-47e7-bc16-0f467b6648c0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc02215b-dcfe-47e7-bc16-0f467b6648c0@kernel.org>
X-Authority-Analysis: v=2.4 cv=OKsqHCaB c=1 sm=1 tr=0 ts=6996bff7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=C06l6ZPG7BehnnCa1pIA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA3MCBTYWx0ZWRfX6zLzRu3Vkx5Z
 g5EuvC56rPrUfNyq9OlDev3EsA53bhLggIidi8g5MZC4BmPiabPupsd2Q9496gPUyUFaTIusUUY
 JPBMn1z51OknlBuVG3vrQG29fFr8eNklTUvso2l8nYWWUxiqMV9FZpZqNrCNuv6bEHHO1TY0eBw
 g87VzAKIrMKIAC7pR5fAVSu8pX1LjTHFBQJKZPA/U+rNnpSlj3aMRVFS1b1JrKi8ihc8IW+Ve+8
 WspeXVYbqxkE9lEEn55YQOGE4CJnBjK4rewqawUZuNuLiBk3E7GNUUpwD2YFsBODdeuDk3qrSP1
 5mjXfIb24MLOgZZA+RE+mQKeg2TbuM70ONVv14d/K2oh1cKeZMkftgdQboSQKTYYiyzrUHcGWsS
 Yw/448sYSXhT+9+LRAycQy49oHOEBVigPF0QHERWmKU1JioY0kKQava+kN2Mxy+UiTrgk2u1yvq
 3cZssptIlvrOtcVtyRw==
X-Proofpoint-GUID: zWwPqnNbnejgzN395hwmKioR3LHadWrP
X-Proofpoint-ORIG-GUID: zWwPqnNbnejgzN395hwmKioR3LHadWrP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266583-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7945315CCA2
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 08:23:45AM +0100, Krzysztof Kozlowski wrote:
> On 19/02/2026 07:49, Dmitry Baryshkov wrote:
> > On Wed, Feb 18, 2026 at 06:24:23PM +0100, Krzysztof Kozlowski wrote:
> >> The active and suspend pin state of VSYNC is exactly the same, so just
> >> use one node for both states.
> >>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi   |  9 +--------
> >>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi    | 11 ++---------
> >>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts     |  2 +-
> >>  arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts |  2 +-
> >>  4 files changed, 5 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> >> index 63ab564655bc..a4dcc88bb01f 100644
> >> --- a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> >> @@ -745,14 +745,7 @@ mdss_dsi_suspend: mdss-dsi-suspend-state {
> >>  		bias-pull-down;
> >>  	};
> >>  
> >> -	mdss_te_active: mdss-te-active-state {
> >> -		pins = "gpio10";
> >> -		function = "mdp_vsync";
> >> -		drive-strength = <2>;
> >> -		bias-pull-down;
> >> -	};
> >> -
> >> -	mdss_te_suspend: mdss-te-suspend-state {
> >> +	mdss_te: mdss-te-state {
> > 
> > This is not used and probably can be dropped.
> > 
> 
> But I think it should be used - it's just incomplete. There DSI is
> enabled so there should be a panel using the TE/VSYNC. This looks like
> being added for future, just like many other pincfg states.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-276708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH6MFc5cuWnYAgIAu9opvQ
	(envelope-from <devicetree+bounces-276708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:53:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F11DB2AB41D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:53:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4B4B130117FF
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364D63B9D9B;
	Tue, 17 Mar 2026 13:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="leEvFxs2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="El56LWF0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033413A1E80
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773755596; cv=none; b=NzrCUPMvZzFTiUgPWwX1AN56SThw/g+XcwEwQqvGg2hxaqHLFaYzIyBvhrUZp5eEsXtZVpus2mEw+X/fG96NapZVAdnrT+it5YjGcYIpWdYBR+OaRGhF2iYv+P9zWjCJnvFDQ7CqQequca6ki/rVS/36wxlwzro0IqKqJcf2E4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773755596; c=relaxed/simple;
	bh=b6Vgyel4TY9klRHwNVtgWwLvyDJTEZt7H4fLjD/kO3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LbqWH8+dAwFy2lkxVgzFRwFqbGwxbD6euxLM8QnTg18tK5kIfJINk4WnOh8vYeJ+wvvCLrhHMUdI324QdMBs/eTgj7VREu/5Ql+6WomqNl5thyV7wFZoNKwzjkaq2hGlUajv47F0XGn4nvrX5vE+QSwibvxs14enCrCohOW95C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=leEvFxs2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=El56LWF0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HBlqVE1026309
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bpTtS4r/US8w0yCGm+f/nLs9
	/NttMKNXkwMdCRus3/4=; b=leEvFxs2Jfcv9rBAiiUVQZ0MV8rBGSGM9MQmbhC+
	U5PvNyd2U3Mvzz3+z6hQNnpYMrf607w1LWdx+q+T0y8m8GGfPjZ/0MrKth6G1lv4
	P+GCLTsakK3rzHeGqIwVUm3PGfEuoW3c6Il68FX57XJHZ0d3VxVHnVm/qAzpq+qb
	ECoDcMDz1IElIDkQ4rYxAYmbFKYtMKWKbm2tXmB4NlJXnKOpK2rhaJmMcQ1XPi0+
	iHfNsnillgBnU74bcYc2xZ2ZYUGTOcL6AB8e2qUEmjEvM9s4YQ8hOjS5Kv1DhJHY
	P51zXFbfE/SbJHP/FmvGBvDVesP4CRf3GS4jutxyGv2BLg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy6d6gdem-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:53:14 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c70ecaef21eso2682198a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 06:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773755593; x=1774360393; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bpTtS4r/US8w0yCGm+f/nLs9/NttMKNXkwMdCRus3/4=;
        b=El56LWF0+923CpJJ3y6iORQlFdjykqiRBkal0ZRKCVG4qKxw/+9uddrCMYrzxrpMRE
         5Y9XOygwhdreaJ6vh0MwyCKcI3BH0/AhfeTVMAjl/bbboFIjhvQ3/f2xT/FQTX0VAjQ8
         o8bqJx8f/HdeIVPwYgJxPshxbzKwtGrFjUC7bBCUz2nZOYJu6NN2t6PkGcAbxISh86Kw
         FfOi51nC5a4cXE2QlKRh1JiIIXEwPZaG63p6eUXLKeOa8hns8RnLcg5oCkUlFIcW14Hw
         9pujzT7Ozyv2mPCHP7hQTOLMYwPUO7MafAzEHcvaJ4FVsyHdTs/ID5/Q1CNAwe8B8Vfv
         LOrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773755593; x=1774360393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpTtS4r/US8w0yCGm+f/nLs9/NttMKNXkwMdCRus3/4=;
        b=rjAyXXBfiHzwWPRWTQ6CFRn0a2DyNc57Ak5oqgcAnXwln77pd48Iuvtg8QVkZn0iwC
         pBXDXlpz1z59qmjOD9hcbmO1hQGNM0C3jsJtQN1yN1YyZpBxOQegi1FkGuS/G/0auXvP
         sGgF5h75i622qfrFRfwRZEtUK3E6I1eMYh41u/WPreDO3OT6X3YZooCXJVETRSykr+C4
         HQu+5bQghTGUbC/o19sc/ZE42ST8ehpVjM6pK5Bvc3U3PjZB1TKvn1Vz2LxkBfSH44Ot
         1G/ZeS7aB3hVvq49Llbekn2oS1GyqGORk9vxiu/XffQWrUbhFtcQTX0m0OitdBtOD0Rs
         6kLA==
X-Forwarded-Encrypted: i=1; AJvYcCX+patV7FFgZl4w/k406bL4QXko1wqTq70kmIQPPI3+7pR8iFt3s90MvFReXyKum9m9Q0zrVJZxdHKc@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu7ZoTSTw+jOQeKFvn5KHei+/MamoJdxuqSFmuGgKAJT1vwSiF
	5o1TifCkORlu+KMM6kifXsCTm2XDSKqzE4x0hLvPCPGaGsINacqoZguGSUM0ITDMwUKLXvQO+3i
	Wqmwz9TX4Oz5qsHcLeTNj8NQY7aC08zfl4QxnYj4CH5tQgGOAl5dNuXG2bJWus8O9
X-Gm-Gg: ATEYQzyzCUQ8kyEOsObD57YwU3oHRLXvW8oNnIKMh2vDVAAKtuQ9nlyIHP8IvltTgNe
	7fdPpt32oM5yqkr/05Eo/gp8zs2u51hQVp2LnaPjVJi2t77C/0JZsVMfKN4vyYirUKO13Lq1zGD
	L7qbtHgZSPdKGxTJndtjZKCrPdj4gyQYvE/PWKXyVfPEnDg+By3iWW7dngKsJXbNwdUcEXIYcUB
	fcCogw2oo/LbY9oT+h9563SO5lD+qMS9AWW49IwonhWyGAZJxq0FcqlN6hiOzk0jvtB6MC22Tvr
	H7y4zMfaJzehqZXegT7qRwGSXZI13BkgUt0uIQh/3XG50nUImkWDgogiWmfnpPpv2tEp6Iya8it
	6fzFrxAgoKZyZWx1NY4YsDn8REs4kklzempSCTuX4uPbOHlnvKDp0wOXKY4mAIWz+uKIkSxxp9M
	XEYYCxDzPC3DPw7qOhRKC6op4cCfr4/vn2d9ZIhM/UgQ==
X-Received: by 2002:a05:6a21:328f:b0:334:946c:8ef4 with SMTP id adf61e73a8af0-398ecd6937dmr10927314637.6.1773755593514;
        Tue, 17 Mar 2026 06:53:13 -0700 (PDT)
X-Received: by 2002:a05:6a21:328f:b0:334:946c:8ef4 with SMTP id adf61e73a8af0-398ecd6937dmr10927276637.6.1773755592939;
        Tue, 17 Mar 2026 06:53:12 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c74028eecd4sm6941461a12.26.2026.03.17.06.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 06:53:12 -0700 (PDT)
Date: Tue, 17 Mar 2026 19:23:06 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
Message-ID: <ablcwpT3BSnT9+In@hu-vishsain-blr.qualcomm.com>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-1-8195fa931ff1@oss.qualcomm.com>
 <8ba05ebb-d1d8-4d58-91f3-554f3de7dc20@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ba05ebb-d1d8-4d58-91f3-554f3de7dc20@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEyMiBTYWx0ZWRfX6q+SxztYLHVu
 hjvg04G5WFEvSZEouA2tfPytrTXZKBMEgZ1uSNpS5otr3DT4h3OSx9nmGGp/CHFHwwebdUbpCZR
 NRzm6Pbn683fp6umcqH9ZV+naF4PdnbHIwP+YEcuTurZ/JkNr0hA7dfFOs0OE9TYYYxqn3exHzE
 pG4VcGpKh9hByNCSJt0RIEcGnecLwU6v0oBVuirNbbVwtW2MpeiygjJItLeDLlVMG3hIYlQ0j0v
 t3fvPgVOYZLufbTM9lTQKqMYxLkXZXVPmdmEeMyCiyr4cyVEBzlcEaoxeK4hVBZo880guFVbpeb
 ijNch0DF3MiBrrBbPCTuQ/U9xlIeIkdOd9CuRhC2n872dN+Mu8gZqthCJu/JG0ap6TDrPWsscHr
 Bhf3yPhj4F4S0z3Kej8qqdqdHUESTBqhPzDUcHbHtuKpAsHeKqEpEyLRfk54la4QO/5T44hH4PY
 kiXaZYY0ocss1n1vX1A==
X-Proofpoint-GUID: y3LI06mAwOKKyIWrTvmPKJlgdpBTRTwO
X-Authority-Analysis: v=2.4 cv=IqMTsb/g c=1 sm=1 tr=0 ts=69b95cca cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=yPRXMzb5bhx7jaTskCYA:9 a=CjuIK1q_8ugA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: y3LI06mAwOKKyIWrTvmPKJlgdpBTRTwO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170122
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276708-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hu-vishsain-blr.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F11DB2AB41D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 10:22:04AM +0100, Konrad Dybcio wrote:
> On 3/17/26 7:03 AM, Vishnu Saini wrote:
> > Monaco-evk has LT8713sx which act as DP to 3 DP output
> > converter. Edp PHY from monaco soc is connected to lt8713sx
> > as input and output of lt8713sx is connected to 3 mini DP ports.
> > 
> > Two ports are available in mainboard and one port
> > is available on Mezz board.
> > 
> > lt8713sx is connected to soc over i2c0 and with reset gpio
> > connected to pin6 of ioexpander5.
> > 
> > Enable the edp nodes from monaco and enable lontium lt8713sx
> > bridge node.
> > 
> > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
> 
> Subject: "s/monaco:/monaco-evk:"
Will fix this in next revision.
 
> >  arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
> >  2 files changed, 95 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> > index 0b26cc334a69..0ca5615c996d 100644
> > --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> > +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> > @@ -52,6 +52,30 @@ dmic: audio-codec-0 {
> >  		num-channels = <1>;
> >  	};
> >  
> > +	dp-connector0 {
> > +		compatible = "dp-connector";
> > +		label = "DP";
> 
> The labels should be unique, is there any silkscreen or similar that would
> be a good candidate?
yes, the connectors are marked as JEDP0 and JEDP1 on the board silkscreen.
I will update labels accordingly in next revision.

> Konrad


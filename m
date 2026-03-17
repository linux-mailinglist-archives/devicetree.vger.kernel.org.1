Return-Path: <devicetree+bounces-276711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IML3IGZluWkyDgIAu9opvQ
	(envelope-from <devicetree+bounces-276711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:29:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EA92ABF45
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F55030BFD48
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DC683E275A;
	Tue, 17 Mar 2026 14:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pw30oC6E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I54j2MOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4B33E1D02
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773756620; cv=none; b=HvXWXOfV4kxUSgl8aE+VxR/vZ9v7cDDXB9Gb0xkD2MVxZ4q5NRJRyiHibzLwCHtJ+H6C+sUBqfSs2+cLutb2Qb2fUrRQEspcyF+HRFoZVO4XcgSlOHqSAeiITb2L5g1fBnIn/FAXFuRyTf/Hps7WEbul7N7xNeNnYtrt02kXph4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773756620; c=relaxed/simple;
	bh=X1Zbz+sEXU6c+/0lCIpKvPzLbkm8HzvkrrdgWdXOF3U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j0D3FW+/WEat/yF3lelfXMfqVj1hI3+9Epn0a4oshTFkqEYN1AvfSLYwA6IPyqcAMAN/rRNwywv1XxijpSlxzHXV7B6w9NXzd4zMum9g+wNmu0PWyuZSbSsvzWqKGzRtV4jdfUVCDmjx2M/vyeI6Y+9aeWOj5Qt/5UqDaM3DwY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pw30oC6E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I54j2MOB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HBlghs1025607
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Qm2Jw4oJG2l1RShStElAyz0+
	zTZdhOV1PGtvykJsfig=; b=Pw30oC6ET/PJTZFWO1LtlaHUumkQhaQ/32oKxBrN
	tHOWMd9DECJ0qMBUBdF509GtJvLX3KybTHUSv3IY6ixrz7nb5dYZEKGWKi+kipS+
	g9oyw8LWLnsJVislDyHGxxY5uK/vCLlTNMXlX6guoITBDdy3EsyCbEm523yN385v
	4fpMSG0KJNmT3kvrvMZxBWfM+BpYyq1p4c+Lmp3dM10FWHyYRZ0RBL1M62YPeqIi
	ks4eTmLsXqLRNCw5Lnqj+8tRz251XRd9GqgOTJJs5ue07kNKuha7AEFhJDXkw/Ge
	Dme4Jf+5c4PXTRVGy74y7fhafb3G1wS+/xpFD+86x2VaTA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy6d6gfha-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:10:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ab017c21e9so34937575ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773756617; x=1774361417; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qm2Jw4oJG2l1RShStElAyz0+zTZdhOV1PGtvykJsfig=;
        b=I54j2MOB1nuzBi+OV7jLhUqtB+ovi1P11e0u7uXP45kfSY/d4XZFpGqHsldIzd1SCz
         iHGOf6pXV0VEXhO8HKxLB432pkn9h8/5w+gV4Fva+4NkMLsVnOWPaPvvZRd5gU/dCmfy
         w/l7JEIjNUzbSZqAEvqFy8jv4xZMFi7RjWb7/hfEtWayfWgiMAIjRqkc+3CIs/ygBEzI
         EvnJmrLSEtpqgHr3xd9ve8t1S/MQEm/LAtyvypF9c/hHuaWtk2i8462fm/WwokYtQkGT
         ZAnAK1rtdQOfBuo316FJCIINlOY571tanvmR+XQc+NyBL5kXLUAnNxZffxigs1TVCCfj
         bDEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773756617; x=1774361417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qm2Jw4oJG2l1RShStElAyz0+zTZdhOV1PGtvykJsfig=;
        b=FEbIgqNeWx+k5wGj/yHQfKzEfyL38dqLusmyhCEpsrTxqfrAL83EtUjoxhSc2emxvy
         txwVFhbV7jLlF884bVxr4QgtXw+lR7/317XUHxyhA2a+kTaH2QguC1a1Y1/6hgOIUfpl
         9MijcaC6Ndw1rpZZeylpvjTs3mz+NlXgoP3lD4DP1/MMzpTDCUiSHxIpyVcyWEBJqdwW
         ovxk9ENTxMVmE4GExGYnWr0Rz15oA59sfJ64zIZe3u984tOltOJNGuQBAs8jNi6aHd7o
         9njvweX5CPG8ek/vlXOXxPsBdqHcmAMYvi2+7ZOHa+6u5qzs51/FXG7m4onOrJjK/bWV
         F13Q==
X-Forwarded-Encrypted: i=1; AJvYcCUrekcwf8Kd3k62xlyjogfzHpQLGTCYLYhsTW6EqzKAZDBmNoJ2Rt0EtfenrdQWX/IJ7potstmEaVZM@vger.kernel.org
X-Gm-Message-State: AOJu0YxMZIHjYjceiOj9m/OQB6aqaF7kluqXxZBRBJP3/axDJk13vUlW
	C2zgx82AI/qZt/J71wVAIxtTDIvHIr+eEqJGOunBb+ObIlP8CdaNmOM0t+vyjhrHa9u4uEzRCYx
	l0KQPnKIXQVT7TlEAdwHQiRzSaBOQ+z4Rq8J4KWXkm50E1egOTQaIbHprzPIg2vWd
X-Gm-Gg: ATEYQzyOsJZrGNZRFuu9W1Tyt4taM23MykvLm0olzsxHht6Su1yBm/hfgGR1UcjUlYC
	V+g4f0oW3reNda/rpAK3APhNdKE7102qJW6Gv/Ct7hXsu0VrdLivIPlJD1v9c3AYyOar/JGkjKv
	DD/HDVl0A762gNUuRe6Lx8gRxF/zSNuEFaDbHOcDD1uTpzZlLgclyT19mejzY/3J70/3cGbfgGI
	4lxr6HrmtiTCgRnjeCkTEkola6RXkWRC1uHP/k2Z+lwsYJMTy9vwsBOToVKAAllmFrC0FxJ5E1k
	pKLaY19LIQXVpRphpEgDS10HMF8QZiscNnivCMh1Vx9/vlnrKifjitT/0bLPHOUw3jpKsLD/KRk
	gdZLZWJe78/7ZnrDaEDf9+m1clwRmS0wYa8NX3L3k24qYDGxujEgNv1GSZTaCFthIJKi0JxgGAz
	goAkYi0+ZjtHjghORlRm4X8dW/unnAECDIz8z0xj+67w==
X-Received: by 2002:a17:902:d549:b0:2b0:6a3f:7003 with SMTP id d9443c01a7336-2b06a3f71b8mr9209905ad.0.1773756616836;
        Tue, 17 Mar 2026 07:10:16 -0700 (PDT)
X-Received: by 2002:a17:902:d549:b0:2b0:6a3f:7003 with SMTP id d9443c01a7336-2b06a3f71b8mr9209505ad.0.1773756616157;
        Tue, 17 Mar 2026 07:10:16 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece8453cdsm136752165ad.84.2026.03.17.07.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 07:10:15 -0700 (PDT)
Date: Tue, 17 Mar 2026 19:40:09 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
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
Message-ID: <ablgwa53EVBD9HIO@hu-vishsain-blr.qualcomm.com>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-1-8195fa931ff1@oss.qualcomm.com>
 <617cc5dd-9012-407c-8579-2c08fc629047@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <617cc5dd-9012-407c-8579-2c08fc629047@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEyNSBTYWx0ZWRfXyKPCPwFtnoez
 bqWZn6p69WBR6/or9GJWk5Qoui7uwiVmU/C6sxhOgMiTfHe8J1nLGWeBDCYeXCxHmrkPHcM16qp
 t8HhWt+qlyjcKGirH07bji6MXRznRttplxNKjGEQaQq6JJlVVLdeftNQDbd1etH0aprmkJgqKae
 8l5X7FThWl7go8oVz0plxvBgqCbqqq348Xv7CNoi4oJxogFzZM9+8Y0m/t6QrtR9X/dMmsRpDMm
 xnrTF79gqA4Ywk1/oBO2RiRWYF7EOFiGk302QFEVcq78hmXHzBdaS++b5JAhOb1hult9CaTmipV
 yR9Ea2y598wbAaI3xbs2RfzSfuKArGXtiQd9O0iNYixV/JPGoQux9qn504KjyjqJw0JnQ4THZ3Y
 pA1KbNSjOmq5fGLIZCVKYdJZq3De5PVNr4eUxQ9SWiAbw1QPQhT/bWsoREe4iKCDH1Wgcb4DZiG
 5gOvPI4JSpNPr/SU3aQ==
X-Proofpoint-GUID: wQ8Hm0x499WOnq72oHvbVzjFrdi4mSXD
X-Authority-Analysis: v=2.4 cv=IqMTsb/g c=1 sm=1 tr=0 ts=69b960c9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=U0Tr2J7SxeM8VPz3M-MA:9 a=CjuIK1q_8ugA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: wQ8Hm0x499WOnq72oHvbVzjFrdi4mSXD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170125
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276711-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,hu-vishsain-blr.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 00EA92ABF45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 12:42:24PM +0100, Krzysztof Kozlowski wrote:
> On 17/03/2026 07:03, Vishnu Saini wrote:
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
> 
> How v1 could be reviewed already? v1 is the first posting.
This series was reviewed previously, https://lore.kernel.org/all/20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com/
Maintainer asked to submit a new series once dependent patches are merged.
> 
> > ---
> >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
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
> 
> dp-connector-0
> 
> > +		compatible = "dp-connector";
> > +		label = "DP";
> > +		type = "mini";
> > +
> > +		port {
> > +			dp0_connector_in: endpoint {
> > +				remote-endpoint = <&lt8713sx_dp0_out>;
> > +			};
> > +		};
> > +	};
> > +
> > +	dp-connector1 {
> 
> 
> dp-connector-1
> 
> > +		compatible = "dp-connector";
> > +		label = "DP";
> > +		type = "mini";
> > +
> > +		port {
> > +			dp1_connector_in: endpoint {
> > +				remote-endpoint = <&lt8713sx_dp1_out>;
> > +			};
> > +		};
> > +	};
> > +
> >  	max98357a: audio-codec-1 {
> 
> And here you have example. Write code consistent with the rest.
>
> 
> Best regards,
> Krzysztof


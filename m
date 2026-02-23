Return-Path: <devicetree+bounces-267607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KdxNRKjnGnqJgQAu9opvQ
	(envelope-from <devicetree+bounces-267607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:57:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B3B17BE84
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:57:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ECFD30935DD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF89369977;
	Mon, 23 Feb 2026 18:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O464EdD3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e9IvyeVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571DD1C862E
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771873003; cv=none; b=Iumv3Qo+JbwFPLvBGFBGmiGJVpJWi331cbtuOMhbj8hMX2+ItHTPbmg4msdWL1NTIzdEL7BZ0FfkZ6FR81CgYv9gG+Ga+crWgIpNfa5tvXncieGfktlEeioMtge9YFjVoRVGC57i/QdxXF9j76FewBYknIJPviIKMbOOhdYcDzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771873003; c=relaxed/simple;
	bh=5b56lDacASiGgUnOHSgqdjRRVkfE8yl+ebI0jaiiNks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AhRlkB99QeD2w+a3fo4TGvJCz+Ks8YvmODr6I+jwhFwF/hrOHyqOX+P9KzeTfJ6C9shGVLglwtfTPs+iaomMU7pdCsYaEXQU9Z6v+MnC3zLqMPZLjj+m3LXdPPnii2JlepTcEhrGl1MNEPIVEBkZ2gXRqQkiRyvkCBbpq217kzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O464EdD3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e9IvyeVI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NH4OLr910235
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:56:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z+HyAuLlmMZX5oKqom1qGaIEtsM4vcIwqAOGKYp5mT0=; b=O464EdD3vtFXL7ZB
	dNkuu3gIwpa3OBIKRWIrKIQr6GiEO5NEi447KaLkstcHP4bdNk9piXFQ4nlqoU2G
	Fm/5GRJcBZS5F/Co28jkkVDI0hpWku/LfspiJ2nVf7EQn+AI/W5XRlsGMqBWZwtt
	XF3DMZ0mzFArtJ/+VrU8w54oti2unXSTSR5a9yeZbBXbGIJG+mlCBYlwghNt/7xd
	uIVz9FKmNHAl/5j2dTa2oDLAb5g5S15pcqgSxxbyTWWNNUjCYWCud2jd9yQ+nXsx
	yQohl56/sEfFDNDEDLAItgxJxLlqbues5Ksd2ewe+oOJb3mkAaQdWhZCUdvG5/eY
	r3luVw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtyj8bqp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:56:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3b0d938dso4826117585a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771872994; x=1772477794; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z+HyAuLlmMZX5oKqom1qGaIEtsM4vcIwqAOGKYp5mT0=;
        b=e9IvyeVIa+Yarrs50zj5NbTuzg6u3FsJOIPyur85IJyHzTzuEsOUITxdwDx/p3sjze
         dZpc6lvdvGhZgZqFPh9WOoAAETPOrcbjhNi2uT6e5BuiB0IAMJRaxJKLjrLLT9u50BUz
         SWNhIZfyUqLDx/jMw8QIy90fWjSakpKXbpSS3SI+nDzwg4H7S7bvUxZIoAaer5JXAy6K
         JyxtY5LR0WFgXpy+XMd7P7r9i1uYA3wRVsBc0JiedY7d2fbSwESnLnKzCRpQuMdXbCX8
         u5OvZaKd2mI1IvcykNegMCACnMy7Rowpjn7Qy4NEggkR9fUkI4QkMuIuOYgxg0jhyt6p
         yvkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771872994; x=1772477794;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z+HyAuLlmMZX5oKqom1qGaIEtsM4vcIwqAOGKYp5mT0=;
        b=c9nCEVoe3xdX1Mqz0yBcrG+bmokxtLEliWu03V8EJsGfeAgBZGLepDmUX8wxivVvc5
         q2reUFAFi7Vh4kom/5DCvYdun4IA3LSjxlQV7MKOc1sH4INAh6lhApCMLQ4EmwllriA3
         2B/3FUVJV0wQyZ9Y+gOx4VTaAECNvV62/WUhlGtqtmwm7YljmnafA9qXrD092rr/6IYM
         vOUkes62mJqPBDp6HthKcbDceEtVLNbk7SbyQfYXdiuki5AOP9g2qAbG6t4oViVOh/zP
         k8a/7tXGng2Xc5vZzIRGV2UOdcAbMt1Soaj7NNxCfrMQxQ8fxr8cq/Q/yqZC2+KAs3FT
         BBXA==
X-Forwarded-Encrypted: i=1; AJvYcCV6L8Ql3oz5WKAtSZjFlaqenSefmlUtJUeawitBZB+WYCXgPNxY7MhOBHD1N8IC3hGSAKxwl9Cs2ABY@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtxhzg8YBQ4sOXj3MWd+Xi1fyaNo5RTrIswRnbfyt1fg5u8gW+
	q/SYGQkvDnO/EnvhjfRKQVjT95ubc5mBwF279eURvpZZ19TPCYTXlbAfmS6RkBC9ofGvr+5Z1Li
	m5U/BR6psT9JaWaCWIoV9EdtfIHCHcfG7R/y1alqRqpe8OK33pRJ8SFMqtksi4bAP
X-Gm-Gg: AZuq6aLLZOIslyYPLNfXFVgngzXHgBoxwgwUKd3/VEucLgs8j3pY59ggTWaL84rgWM5
	rMezSAsxr+r4wS6Tv1P7/RB2uFxLyh+o13p8EsIOamzDo9kUWrHuwYc6R9NBDbYPMNFv5+0abMK
	s9SEvBYkT9rNxwwydkOGl54TKvIJ/CbtSQ4Jv/kRxhFMrfuxxjTAAZYqscEzDcQ0nMTwFOkKmOd
	+iXf4x3CKL3QKDfo3C56vOBU7rKq99rw6yKly4i0TaHxHDEODezKwJPvOL93su5FATjjFnGlw6V
	gapU7uqx9/lqLpuGLPnbjJ9VWMytOCavIpTxAVc4xOFD5RP96p6SoxeJoiMK0gHJk8iTBAKiskj
	f1BG2giOTFVv+yX+0/5f6KpOSkIfrHOPJouNaKfdlUm4ditabkNfSVydrzyNOK6BNfUC4nncWb0
	kbxu78gwzhmRroj3xygnQjCAuXqofkW6EV0y0=
X-Received: by 2002:a05:620a:44ca:b0:8a3:e51d:63c9 with SMTP id af79cd13be357-8cb8ca0274amr1248483785a.25.1771872993800;
        Mon, 23 Feb 2026 10:56:33 -0800 (PST)
X-Received: by 2002:a05:620a:44ca:b0:8a3:e51d:63c9 with SMTP id af79cd13be357-8cb8ca0274amr1248481085a.25.1771872993356;
        Mon, 23 Feb 2026 10:56:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78d2c28sm17104231fa.16.2026.02.23.10.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:56:32 -0800 (PST)
Date: Mon, 23 Feb 2026 20:56:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus
 Mezzanine
Message-ID: <ffy7ufbwofipmctotg6l6mrtamakqc6xxrql7wqw3rslhd36uv@payikxla7pzk>
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
 <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
 <at7j3kbdixd7aveiol37pwgudl2hcogtdrvdgcvgbbm3t5irfc@4nvv5ptoezyk>
 <4ae0dd46-5f5f-403b-bbc6-1094159be302@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4ae0dd46-5f5f-403b-bbc6-1094159be302@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Jq/8bc4C c=1 sm=1 tr=0 ts=699ca2e2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=UtARNm0GgD_E9SB-DbgA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: gV9Ji1jj-nReuM9THfLTu54ZR3uQyeTt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NCBTYWx0ZWRfXzQhu7g7+dMNq
 wRJitBSr8qMjRVQQavwgzhzfU0xmHBkvMPxE6ej2Bz4e1Fkx85hwdBsBWZa+o4lvqntNGELpWhM
 jf48D9Je07FOs/GnTZQz4Rdd0hQ9ZJdCP7reD8limqYOoQKlGGGCdvy2TXmC9jRyXY2BwpeD8hV
 74TQOiaEcueEXdUselUPSWusJo4GUi5+t4v8HIhnlECKERTOuO+RN7nhuePB1JhfLfG0W4QazaC
 g30/v4G/ei6Be89LlahtvR1mbw1urMwmEMX1kX/JMusu/vBrK2dLRULebkX0rrr6AApOAyNtoD7
 jP0t1C3C0QB+khpyKtEKd301Q1b86+3S+YZrlEJhWXmhZ800nonni4hRXs7WRQ49jo7XdFmX4vS
 sBZjzFej7MzPEW1cBuW1sU1kDsMsow9oKjeCjGnXPAkLtpovHHMOZ4To5Q3ZMMUX+7zvTEQ+C8I
 KHAJQG8bG9lDTRiBIuA==
X-Proofpoint-GUID: gV9Ji1jj-nReuM9THfLTu54ZR3uQyeTt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230164
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267607-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 43B3B17BE84
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:17:11PM +0530, Umang Chheda wrote:
> Hello Dmitry,
> 
> On 2/22/2026 11:57 PM, Dmitry Baryshkov wrote:
> > On Sun, Feb 22, 2026 at 11:05:45PM +0530, Umang Chheda wrote:
> >> The Interface Plus [IFP] Mezzanine is an hardware expansion add-on
> >> board designed to be stacked on top of Monaco EVK.
> >>
> >> It has following peripherals :
> >>
> >> - 4x Type A USB ports in host mode.
> >> - TC9563 PCIe switch, which has following three downstream ports (DSP) :
> >>    - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
> > Nit: routed to? Is that M.2 only suitable for WLANs? What is "WLAN
> > endpoints"?
> 
> > routed to?
> If I understand correctly - you mean change string "connects M.2 E-Key connector" to 
> "routed to M.2 E-Key connector" ?
>  
> 
> > Is that M.2 only suitable for WLANs?
> Yes, this is suitable only for the WLAN module.
> 
> > What is "WLAN endpoints"?
> 
> I Agree this is misleading - will change this to "WLAN module"
> 
> >
> >>    - 2nd DSP connects M.2 B-key connector for connecting cellular
> >>      modems.
> >>    - 3rd DSP with support for Dual Ethernet ports.
> >> - EEPROM.
> >> - LVDS Display.
> >> - 2*mini DP.
> >>
> >> Add support for following peripherals :
> >> - TC9563 PCIe Switch.
> >> - EEPROM.
> > If there is an onboard USB hub, please describe it here. Also, what is
> > the story of mini DP ports? If they are to be enabled later, please
> > mention, why.
> 
> > If there is an onboard USB hub, please describe it here.
> 
> Ack, Since there are no DT changes required to enable USB Hub I did not mention.
> 
> will mention it here in the next patch.

That's not what I meant. Please describe the USB hub in DT.

> 
> >> +
> >> +	vreg_0p9: regulator-vreg-0p9 {
> > Are all these regulators a part of the mezzanine?
> Yes, all these regulators are part of mezzanine board.
> >
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "VREG_0P9";
> >> +
> >> +		regulator-min-microvolt = <900000>;
> >> +		regulator-max-microvolt = <900000>;
> >> +		regulator-always-on;
> >> +		regulator-boot-on;
> >> +
> >> +		vin-supply = <&vreg_3p3>;
> >> +	};
> >> +
> >> +	vreg_1p8: regulator-vreg-1p8 {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "VREG_1P8";
> >> +
> >> +		regulator-min-microvolt = <1800000>;
> >> +		regulator-max-microvolt = <1800000>;
> >> +		regulator-always-on;
> >> +		regulator-boot-on;
> >> +
> >> +		vin-supply = <&vreg_4p2>;
> >> +	};
> >> +
> >> +	vreg_3p3: regulator-vreg-3p3 {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "VREG_3P3";
> >> +
> >> +		regulator-min-microvolt = <3300000>;
> >> +		regulator-max-microvolt = <3300000>;
> >> +		regulator-always-on;
> >> +		regulator-boot-on;
> >> +
> >> +		vin-supply = <&vreg_4p2>;
> >> +	};
> >> +
> >> +	vreg_4p2: regulator-vreg-4p2 {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "VREG_4P2";
> >> +
> >> +		regulator-min-microvolt = <4200000>;
> >> +		regulator-max-microvolt = <4200000>;
> >> +		regulator-always-on;
> >> +		regulator-boot-on;
> >> +
> >> +		vin-supply = <&vreg_sys_pwr>;
> >> +	};
> >> +
> >> +	vreg_sys_pwr: regulator-vreg-sys-pwr {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "VREG_SYS_PWR";
> >> +
> >> +		regulator-min-microvolt = <24000000>;
> >> +		regulator-max-microvolt = <24000000>;
> >> +		regulator-always-on;
> >> +		regulator-boot-on;
> > ... supplied from what?
> This regulator is supplied directly from the DC Power adapter.

Is there a physical regulator which outputs to VREG_SYS_PWR? Is it a
part of the mezzanine?

> >
> >> +
> >> +&tlmm {
> >> +	tc9563_resx_n: tc9563-resx-state {
> >> +		pins = "gpio124";
> >> +		function = "gpio";
> >> +		bias-disable;
> >> +		output-high;

Please add a comment, why is it out high.

> >> +	};
> >> +};
> >> --
> >> 2.34.1
> Thanks,
> Umang

-- 
With best wishes
Dmitry


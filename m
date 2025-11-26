Return-Path: <devicetree+bounces-242224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 49530C882F7
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 34CDD4E0545
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 05:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA3730DEB0;
	Wed, 26 Nov 2025 05:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lM8HwPw0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SlPRxa0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62851F03D9
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764136220; cv=none; b=or9TuZDzfOdi2ZhOouTQfswjrcLn4WbUtjLX7/woj34SIlTsXA+JawcCtRmJUsC8ToenbyKfaED/DxKAsM3qKpa4MO1t2ui0IsUPCs1EegE6m6OU0NrMHSrfKjFkiN8sa0ybnPtOp6DHTyvU2EZaZPao5GMVs8Yvn2xUQYGuX5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764136220; c=relaxed/simple;
	bh=ttF7g/HI4xjWDO2S+W1eWwXwb0J1pzuOvnpAW6X680s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fgo/h2JND+P36j9cWrii9rI9t09aoxv4+3bC4k4S9MSG5aQTi7Dx1FC+MQf+3tGOhOpqNBR0+m60MyKm3Lkl6skyDdW1IHs/a8tPmcQGmHuhnBlmaISRppfbx5l1rNN+utAaaeBtjfV2CMJdFnB/3dUdXZoFeGnIpyk+a+PjgPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lM8HwPw0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SlPRxa0N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APHAgxb3890277
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:50:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vrcddnSWMIMist8s6iUOyqA9
	lH40P75BQ8M7NzoNT24=; b=lM8HwPw06UwJhEYeSnF4WklV9yIyg0ui45Cvsei/
	daI7gIVgpOnuYHkZplSw4azaHPQ8HtMbKvr2EJ466l4XOuo9SCVrK6nCOptVLiXF
	ZlKReiXAEro4eXIE+8efGWMqLiELFZi1Tw2DFjBNemgxemvDh9II/mz3k5wvKsQE
	NWSobL7YSRNN8Z9ehrXgDxBPTdWnpTRGueCAUNjED6SSDhcRqkLiKwtTVo6mLGp7
	6gNevpWq5+OYB8wLvvI9AWUhBrGCavyQpU2gBHKMSB8NHk71GBRBSYor/6n7FSQM
	bDCiE6Dc6VLI4z0iWDeQPFqDVXovyLvzvRYfzPZzBqmECQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4angme9n8m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:50:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34385d7c4a7so345839a91.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764136216; x=1764741016; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vrcddnSWMIMist8s6iUOyqA9lH40P75BQ8M7NzoNT24=;
        b=SlPRxa0Nuoq3VoBhtdqujkkIOlpUEd9GYOw/5Kv9Ycvt783QWExzn+QqAbjpGnEiD+
         nwd2Sflhfr/of69cqhPs6Tz7+5zXjN70Mi87sjo4ifFz7R6FQBHPvtbOrtfZ2ovM0b18
         LAJOU10u7JMsZVXz4HMFHhpcwtAJ0O0P0jHQrbbkFdD0ZbHw5X+ar8Cwi6JA1Syuah8d
         uRmqtPO3S4uR5oLrOsVX+ZV2umPOSXKh3UK8UKsAH0DnavE4JMNRv+iNhmCcakpU9KNC
         3Y31NqDm3c85LgW1VzefjIbULiCulBWOIa/+O9m6NBc95qJKKw5DqqH5XYyaAs/nlrCJ
         Gr3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764136216; x=1764741016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vrcddnSWMIMist8s6iUOyqA9lH40P75BQ8M7NzoNT24=;
        b=e6zvqeWAPYdrynHL9cJUKJ+vU012xMk6+XS/Ev/aUm0jeBuyLCr5CAOCVfn373IgFe
         rdoDv04CC0xiUe+8DtOEx6Bzh8ThIRYqqcSFcmVKVsuwC4r8ycFOcItyKWFKm5GS54D3
         WDq+6N0xz66MTrgpxqTFzkUZXv7e/swB+t9RHaRpLEyZMCPH1n4QZX6luXc+EdDwJsgj
         SY8RFx1yEyNEPkI8gHIX1ka2TLWaWBzJpnJ1A6uWXqRVlKddgrgc4q3YgsLBq5oUApRh
         yBE7IvMBnDSz14+BZWmTqfhLfCxNUiAnAsyUw5gnECmwzSdUheiA2vB/Wy///hxybdPd
         Y/AQ==
X-Forwarded-Encrypted: i=1; AJvYcCWK7UjrRw8XdWz6SBtURVP36NNNSpdn7Y56Vz9Lb2PGFf8iRFHudMsmrzR5HjFyKlwxPwroHBgUlF6U@vger.kernel.org
X-Gm-Message-State: AOJu0YzHoh0p0UXQ2U9zoMWb9kUkdpFGc4VTDSdrxXsZfUJAyEJU3Q2N
	4PNVpp9rByKAeJJoaI3LK64+GlFyMBw57rzkvGfdSWaWT1tshnM9b32YjVMgeTmAfgBSPHGWnJg
	MfVYpS21+LEbChHPyKdFTIVfknPOA9d6JDxf2JE89h6NpCfEJyPnHUoDRJeTwuo60
X-Gm-Gg: ASbGncttvpmI8uiE4Sj5DPkM0gnI/pNMElsYCycscO+TmtKNZm6tka53biORCP/DS79
	L3VWv5A8/KN7eNCttJ65tEtoORTHgQF45WdmguNmhdlfa0t7T/myoBo08ENS71uzbip6uOPEEeP
	HzEmXy4QERIPH1FZKfEQR8mdVxTKaAIvbDnI6g6brD8eGQQXx6XgZU5SiBdftb1KXm8eqvboyT+
	5heONzY/NqEqWQV5qXbmKawa8j7+l4X6Pb7B/bHeiAu3Cb09UpmKOmrzLm+EiazXiTuneNQqI52
	FjV6Wbs3lvixuH5r0em4hUC+Z8vJm3Q/09VqpE6JS7Rfvxjb0jH/oW7VHh7dyXoGhle6UbgGGFV
	SCQ7Kz2spV+7fQXoUsdyFIYgyIquCd1yFcAwvtgZDBp4URE07m4flHkmd2mh8zkij9fxq23Whoq
	i+eB8YDrMEAQ+KaFjCXPzjjgVRBm/sAug3uYXjDoA=
X-Received: by 2002:a17:90b:3a84:b0:340:c094:fbff with SMTP id 98e67ed59e1d1-347298aa082mr20939771a91.10.1764136216376;
        Tue, 25 Nov 2025 21:50:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1Yd4RRVFedf+s50sVVrr6yg9PjUjyPbdiVwivB5S7YHm+LoWXx+GQ5QLyqWmewklrHSiJIQ==
X-Received: by 2002:a17:90b:3a84:b0:340:c094:fbff with SMTP id 98e67ed59e1d1-347298aa082mr20939744a91.10.1764136215825;
        Tue, 25 Nov 2025 21:50:15 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c414c226f9sm19690543b3a.53.2025.11.25.21.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 21:50:15 -0800 (PST)
Date: Wed, 26 Nov 2025 11:20:09 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
Subject: Re: [PATCH V5 6/6] arm64: dts: qcom: ipq9574: add nodes to bring up
 q6
Message-ID: <aSaVEWlyQ2jzGFwN@hu-varada-blr.qualcomm.com>
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-7-gokul.sriram.p@oss.qualcomm.com>
 <40aed2f4-ec33-4087-8245-7c4acf861387@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40aed2f4-ec33-4087-8245-7c4acf861387@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=PJgCOPqC c=1 sm=1 tr=0 ts=69269519 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=WJw7T6-RpKapZiDBOtQA:9 a=CjuIK1q_8ugA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA0NSBTYWx0ZWRfXz/wD7aNpqXaZ
 VviOfJpHvj7DJz5FmFVPPsYQh9fwgVZCniJa5D/P/FntgJkZqBLADxPMZkYKGeBCtnaShx0vKBp
 juXjrhLx7BPc1XrwLc29uQt939NamqG2L8snf5pw/4xbefYf6KKaFG+Pj++sm2t7qelfT6j8cTO
 mwt6UtcPncqBE6yGeuQ5ORVxW7WzgVRADjyGPLqj0PTXEJ8Vy4OtOXb+WbN3RRGx0LugE1X+BuE
 kC0Lih9Zkx64Cwp78f239214pkIp62FQOTfqI6s7pSBmtyNznMA16WNjZoIQx/O6/4tr3ov2Fuv
 lQqvqYpxPKORheubGxeRFarG0YEeckQP/MSYXuP1lz1jcXVW7xhc3EPpqyAuC6PGDHihA/jTlse
 eEH64cHNrr/2ZvZVR2qP92hgW4TpQA==
X-Proofpoint-GUID: 2ilOLNPuPN-hHNhool4Feuc1nDn4HGVl
X-Proofpoint-ORIG-GUID: 2ilOLNPuPN-hHNhool4Feuc1nDn4HGVl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1011 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260045

Konrad,

I intend to follow up on this patch series as the previous person is
stuck with other assignments. Will address the comments in the other
patches too and post a new version shortly.

> On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
> > From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> >
> > Enable nodes required for q6 remoteproc bring up.
> >
> > Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> > Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> > ---
>
> [...]
>
> > +		q6v5_wcss: remoteproc@cd00000 {
> > +			compatible = "qcom,ipq9574-wcss-sec-pil";
> > +			reg = <0x0cd00000 0x4040>;
>
> 0x10_000-long

Will fix this.

> > +			firmware-name = "ath11k/IPQ9574/hw1.0/q6_fw.mbn";
> > +			interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
> > +					      <&smp2p_wcss_in 0 IRQ_TYPE_NONE>,
> > +					      <&smp2p_wcss_in 1 IRQ_TYPE_NONE>,
> > +					      <&smp2p_wcss_in 2 IRQ_TYPE_NONE>,
> > +					      <&smp2p_wcss_in 3 IRQ_TYPE_NONE>;
> > +			interrupt-names = "wdog",
> > +					  "fatal",
> > +					  "ready",
> > +					  "handover",
> > +					  "stop-ack";
> > +
> > +			qcom,smem-states = <&smp2p_wcss_out 1>,
> > +					   <&smp2p_wcss_out 0>;
> > +			qcom,smem-state-names = "stop",
> > +						"shutdown";
> > +			memory-region = <&q6_region>;
> > +
> > +			glink-edge {
> > +				interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;
>
> Shouldn't this be 323?

Since Q6 uses 321 for glink and 322 for smp2p we have to use the same
in Linux too. As of now 323 and 324 are unused.

Thanks
-Varada


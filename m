Return-Path: <devicetree+bounces-269411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJdfKyj5oWlkyAQAu9opvQ
	(envelope-from <devicetree+bounces-269411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:06:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEE31BD31C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2FD13059FC0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A254944CF51;
	Fri, 27 Feb 2026 20:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VJ51v4Rp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DUO0H0Ou"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A81F42EEC1
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222738; cv=none; b=ibHX6PmmdADgLDf4RoyShzsMmBYr5l26cdhu3iZ+RCYTracubb0233CJ7xljWUif1VwCtwb+CwzIW447KttZF9O76o7GOHdHk/Hq4MYfmP3bATggiIQOzccuO6eTgFYDjGCMnfYY2s5BXwMy2ro0E2edAFYFYpgS9DbbN2o5wL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222738; c=relaxed/simple;
	bh=TUVltdJ/ZRrQou4ZSUlo3iVSRzHBPqVVNv0MSvHIat8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QvcIyJuxaUTNYcLx7zyfxxEOFdo2ydpOZ7Rwb7ZDFoLTUJ7MVu7of1miX3Xs5Wf/jq0N8CNVckdFHEHPCUWK0eDPi3GRhi4mKd9SzeXqG2ofD/XYEi9NTDLZZbT50dZQ/YdHuxBF6+pj4lF5t7WpZsrXRyahFN25EnlhNCuPNkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VJ51v4Rp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DUO0H0Ou; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0Gvl702140
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:05:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+PaJnxpYSkN4GnXuVqXUuXUZ
	PiQwtKsLWUTLjFzoF8A=; b=VJ51v4Rp2ylIyCcUprmmjmw5qRQhhmcbT7GLKYQA
	1YE/S4pizy+zdU90A1/+fx60nfkWdQsF4wFoJsUL18f30h21RC+vMZbgI9b3ZFMf
	YLMhAaHq6Ozl/PQjTOtIFD4bLNzhnuNwt+JjW0wTy9PxH0Mzt2PhK5VmcRqBBtoM
	4GtGUPmEBGTbDC795v7bWwzWXA8/yWCCt+lev1Pq7jYJIsrltnKpDqj9FM5zOmMF
	ufYTqBq/3OCiIxHi6YW12qht9sRsH2kBTiSbTbhH4n37IYal0oFUy45nKNcYJFGv
	hRxIFBq0gY0KYl25FEb48cZf/vrmwgE3d1+TLw9hAbbZew==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck8x8a0jm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:05:36 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-896f84e69b6so194032546d6.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772222736; x=1772827536; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+PaJnxpYSkN4GnXuVqXUuXUZPiQwtKsLWUTLjFzoF8A=;
        b=DUO0H0OuKVq4knBB1ID+u0i/cfeuFTL4dgYrqdv5sgG5PoXPglo19YUu6XbEROm8o+
         VaNvA9sgzpApfYYyDir6GG6TXZ/xG7u3/Wk2984ZwOPQH7ngooXp4cvraGLX+LtWeGYg
         CVS72Udb2OBxUPgE+7F+o9jJhPx5VEDAKGBAoUdZi94p3+ETmrqkluHU1Hrz5Mf79ZyQ
         tKtEUlIuKGDzuJ4UL91vi2K5dqW5NT8/ydgPCfJBCmwnMrfcuXzCvZ8H/7pnGa9YDaIZ
         Zo0FjBcfKKJwnEOD0p+B3KjAcfpOOClP0GJz9uNQ0BC0obwBZsY4nB/JxFFW0UauvgdC
         KoPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222736; x=1772827536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+PaJnxpYSkN4GnXuVqXUuXUZPiQwtKsLWUTLjFzoF8A=;
        b=LqwFd2+xJ8FLO3K+mqjtWPU5L5CxLtvgJxoaG0JVzdJxVTknTkPDLFmqOW+3d6Q/jE
         lCMA8DeLYoyGPQAUzdJdzXTPeUa9iY0qgPs3JHP1NpiCzgrzUJBUzbiNvOhdAcREYJIR
         xiiWMUTUqE/0Zsxb1802qMRCS05zj7Fk43WouoGq20ujLFYAyPPQw8EVUy387sZNuO6r
         D5d8MWliPFyWDWPw1Skdk6556hviUXwk/9nCZaU6RlAy/4gabP3/Uh1v8LVxsBxdhmCq
         wl6NyNe6lrgmxbRndf4NXueUH6n9YsegA/MT6VNPaLUA2jPwTQbQvj4vAnA4Oid1B+iq
         mEoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRdrVf/K7mfPpo7VY0sHK96R9pdJstol/Bo7FVWfkYhfi44DHTqGEcjMsNrjd+3GhVlfx8kapPDmcq@vger.kernel.org
X-Gm-Message-State: AOJu0YxcGKpJPIO+A3URCpEKk8Nsbjki9McOZhKlxwfIzCmoMB7h+HX/
	WFhHcHOvsMqm6tBrDhNq8ldsBwdrc/vQMrEluUm4gLc2l9stOXZh/7cHwXy2GRbp83joNUZUqU4
	NbEEDtC9iSD7lS+Fplxmi7YaBOyzm3Npk3Zfv/zmq38u5WB3yWkizicqB9nZ6hEpn
X-Gm-Gg: ATEYQzzYZm9w5Pua7u7iMmiBdHd/mtCIXmq9+7y2I3MbHyBd0WPT3O2dV85lcL5QMIl
	+oWbsAp1hsE6R//Ic33mhAhMeu9IAx3J9YY8vABoQ2X4NpGKTZPIp/eY/2YkxCps2VH78O80ppx
	7KrESROMTaGOrOmo8tUVuC61dAylSQ+ZzYb4frV81XCDMtgbCiH/0m5gF1GobtBqhovWL9tMH9Z
	3SqKkNF9Ot497qowK4F6n8yNAZZK1EXVQPK6d5+RGA9GoKoGQufbTNoD0iEsNdNWTSQyOuOZT6c
	gaDiSl4MKZtexVBKiY+KU7HZgvbvQWtULMM9G4jVKZF80qZErw0nWfoajj8E8Ju7Cq1Wt/2NWih
	AofAvOMt20vZJ1aFqhcJKKYhvW2oeOi/awIpKKp93jiwfm9u1rWAuvdcAA7/BUxXfaP9QXO+vlI
	Fyl97cH7e+DCeUEpEAMXRDkiBi4ZdyzwK23yQ=
X-Received: by 2002:a05:620a:40c2:b0:8cb:72b2:2a14 with SMTP id af79cd13be357-8cbc8dc4142mr520714985a.16.1772222735587;
        Fri, 27 Feb 2026 12:05:35 -0800 (PST)
X-Received: by 2002:a05:620a:40c2:b0:8cb:72b2:2a14 with SMTP id af79cd13be357-8cbc8dc4142mr520708285a.16.1772222734942;
        Fri, 27 Feb 2026 12:05:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115235884sm285191e87.48.2026.02.27.12.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:05:34 -0800 (PST)
Date: Fri, 27 Feb 2026 22:05:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH 0/3] arm64: dts: qcom: monaco: Enable SDHCI storage
 support
Message-ID: <ltuoonopd2fmxhxnfmezflwqicyagha3jchxl3inputbtnpvhm@gsgnsccr62pk>
References: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=WZwBqkhX c=1 sm=1 tr=0 ts=69a1f910 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=k1c93xX6YGTXTvlK5nMA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NSBTYWx0ZWRfXxa/dhUbkb1eB
 dup7MXe8lya//3L4Ea6YhujyxK88COVssg9Wspn6e9bbU4dXaneEcEPo577T37HZZVLSDacNbud
 w5OrWc4PEXLIYwI58YEV+IsQr1ZPyGqtAIEK+cLpQjUFqcaecdY9wXer7zr6Mf1619QP3+pVAxM
 zRDji2emi88IGSNvlSWpBf0gc8Z4sMlsX63p5S3kAe5JptiOjIDPZU7QA6t1x6fC8JocYWQhKsx
 0sKb2DlyN3/S8EpJbbgduw2eO4+s0tySR7d6crJPW5YMoWYlaGNxEgO15g0cWfvgZeEzHdqB3Lw
 OdNHCeJSuukhEHHvDZuGuhxjLJpWf46bxqs9qoTPcd2hiKKs8Ku0rJvi9OtMXD/kKu0Qn9Cg60/
 fv6OUT1/VAUa2liBENLDDdfxPkLAUsh2U94pTXDjyBkRDY/tNSjswdJCIXxvLucKW4rW45eJ2t3
 GlvwPwPoKE+U7/UD0IQ==
X-Proofpoint-ORIG-GUID: gDrsXu4OzJfVMN5ISgbBEZ_VyAIk6U-Y
X-Proofpoint-GUID: gDrsXu4OzJfVMN5ISgbBEZ_VyAIk6U-Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269411-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: 0CEE31BD31C
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 04:20:52PM +0530, Monish Chunara wrote:
> This series enables SDHCI storage support for both SD Card and eMMC on the
> Qualcomm Monaco EVK platform.
> 
> The Monaco SoC shares the SDHCI controller between SD Card and eMMC use
> cases. Previously, the common SoC dtsi unconditionally enabled the
> 'supports-cqe' property. This causes regression for SD cards, resulting
> in timeouts and initialization failures during the probe sequence, as
> the driver attempts to enable Command Queueing (CQE) logic incompatible
> with the SD protocol.
> 
> To resolve this and enable full storage support, this series:
> 
> 1. Moves the 'supports-cqe' property out of the common SoC dtsi. It is
>    now only enabled in the specific eMMC configuration where it is
>    supported.
> 2. Adds a device tree overlay to enable SD Card support (SDR/DDR modes).
> 3. Adds a device tree overlay to enable eMMC support. This configuration
>    also explicitly disables the UFS controller to prevent power leakage,
>    as the VCC regulator is shared between the UFS and eMMC rails on this
>    platform.
> 
> Validated on Qualcomm Monaco EVK with both SD Card and eMMC modules.
> 
> Monish Chunara (3):
>   arm64: dts: qcom: monaco: Move eMMC CQE support from SoC to board DT
>   arm64: dts: qcom: monaco-evk: Enable SDHCI for SD Card via overlay
>   arm64: dts: qcom: monaco-evk: Add SDHCI support for eMMC via overlay

You are adding two overlays. But what does it mean? Does EVK has no uSD
/ eMMC at all, having both attachable via some kind of mezzanine? Is one
of them attachable? Or are both cases present onboard with the correct
one being selected by the DIP switch?

> 
>  arch/arm64/boot/dts/qcom/Makefile             |  7 ++
>  arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso | 46 ++++++++++++
>  .../boot/dts/qcom/monaco-evk-sd-card.dtso     | 72 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/monaco.dtsi          |  1 -
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  1 +
>  5 files changed, 126 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-sd-card.dtso
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


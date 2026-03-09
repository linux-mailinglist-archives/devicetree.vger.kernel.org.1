Return-Path: <devicetree+bounces-273085-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCyfFMcdr2n2OAIAu9opvQ
	(envelope-from <devicetree+bounces-273085-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:21:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E929E23FB36
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:21:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58417301F3B3
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958C0361676;
	Mon,  9 Mar 2026 19:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VZ59geVV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EijIl+2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398353603D2
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773083992; cv=none; b=ETKXCgvo2dOQxjwF0tbBO+Zm4G+uAVvtdYe7qCHzzcyUBbiTTQ3M4DRq1iRckyq/KrbyBfjT8wz9unLD0GK5jta9nRpbxbAqivMMV12hCXP7uNbAalEfz8B4hGDCe5SVx1M6bx6B1DJXaCSyehrKOSdBVOBXivoH2jvZPlguGuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773083992; c=relaxed/simple;
	bh=jhU6kwVb7AGeIWqrHMoz5uRpTNsNQk0Nb3huxwwfwmw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mCr3EmP2HIFLy1/kxYaO8+ka7nkz5RvZEhPstypWGcoCTDsCe7TXTl2KbHiOuBW2JtqIjGJPT178czsJBwBamu4qA5o79L6fxQP9nY99bRpX7k2H4+ExGUktUT1b6i4PKzPoaLrQSLAoC9hla9MHYgBkvicnrLznESEvjntJ9PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VZ59geVV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EijIl+2y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBtRR1921304
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 19:19:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	01PiEFiVdbkTxdM86ZdhmN4JAMNGcg+sNpQ3C7imXXE=; b=VZ59geVVAwdNWXtE
	Sa/JuwzIL8Tp8cT5720ecSUmXIF004OBOoUyDz5N3VVTyQnOt7X8O47D2ppZFbFN
	J/CgVESGxjkRriNwkbwOZ4mvMPAj7AVgOxJpEWhcJ56n8oy9dtJodNiLwhVjkqTb
	tjgYCt8NKXens8D/RlSDhZhTcb5V3EIdDRNQSJgeWf1fes6KT783vleKECddwpLL
	XlAVhHnO7S0hqsq9bFO7o+4i5ldGvYSBUxpRYAwUmvR3dKQagYUJtPPCaRz4kgvn
	k7HAMe7RNMd1lR1mpj72TyAvbzh4j71NEVNK+QuhUrdMytWbM9eef2V90EuF88Tq
	tlc57Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy819hu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:19:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4d191ef1so1647449185a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773083989; x=1773688789; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=01PiEFiVdbkTxdM86ZdhmN4JAMNGcg+sNpQ3C7imXXE=;
        b=EijIl+2y/saontIpl9E402Jr57YD3L1GhAl9NonkT/Ejr7lzMnX3YD8iZb7qpZ2uIX
         K0x6qGO67sqZ2qSLQI24/eDQ95EwsAAsnUehYIAQDykUe0pYT/HIRQNiNKBUD13KO8Yz
         s8cWdf2lDNauZyO2OAyYC6h0yMh18e7YJ6Yfj/w9nrQ9PKuF6GMgmRsF/hSf58FBzpOK
         6od/DyTCubEs4hORjLWR/KQHgo685CkbS+0bc4ZotYn/DKxSssvWpMl9951NsH9aIiG1
         5N27J45mBg8dVXwK+t6Mo2A4MEfXRrzcLdBglw88WByAoaX91BasTF/MQjZZ+mj1khRk
         OLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773083989; x=1773688789;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=01PiEFiVdbkTxdM86ZdhmN4JAMNGcg+sNpQ3C7imXXE=;
        b=JtCIy4BPnyJ3nvpBOzJTIveJ66FkSYw0MMKePEdnyxXG5PUPxCZHoCGK2SVT1JbP9Y
         wlc2z+v2DeyZhuWzCdEisyyXaxEAX2R2toOSCko6oA0cMWDEKDLPK8OnsJPhGhNWDdW+
         3uib9tyQjEWgyWOGhkMtzDj6GjBKESLC30TjDJ3m2HXfZJLFCSdF4pnETjExVus/81YT
         FFd5Alj0PyjVjMFLQET+baft0V/i+bZGDu6Cz3RMaLDtNvmLi3DIk+IdQCwriG4KGTy4
         16hT7fvN+MngIkdT54fptgJo8dJ0G22h02Ip5KcWr8SaZn4YWktPNQZjGvpU61b2FpK7
         Zxtg==
X-Forwarded-Encrypted: i=1; AJvYcCUMTV2k114JP4z4XfrXQlR8IeIbC8Io99wgF0PIa/BvG1fza+qEMEjvd0498QngRAsXQJK2JwLuMs5E@vger.kernel.org
X-Gm-Message-State: AOJu0YxB3fxhYKqk/5AP7SxenIUMRIteJR09xsIMtoayL7YupaHyoBLv
	cZWibdF4TA9xMLKzrS1FbbQqxclFN9FrCOm6nk6uAyLv6xJJzYEJ51NZmpeSoJdOWXsiDXIRGDj
	mU3iwGR5dvNAC134eP23twDDWe4DZX5hi6g46RRnguT8R0Cl0bhzm2GgoMZR0Dsaw
X-Gm-Gg: ATEYQzxSvqs1kyhI3VwStZkAbpsG0ueKoh6K4VYaPfV5iR09MFP/K+QuKpWfQ06Cnoh
	mCwaQ7kFTcVPwWSt4L/P+5RLB/c0a3OtzXJYpF0RHXpPHEU8fRtMyL9gN3DPBgh7WjbKa61uusr
	KPY4o3K555qu2TK1ZVD5OV2d/Q+ugZspJseLEmj7qHhWWXtq+UQUQ5k9n0Uv3cv2/ZbXE0yt1bs
	GXyQWBsz4WWlVh6iqSgzBOf1xSQXm7XN7Pi0hKMs0oz2o/zqo6NwP2hwiW8kYKIQgF2NEakWn9Q
	uW+lGNpvu6iYLzBVygExymFATeR1AnNqdWS6BxVoLVba6NXWOnHsEmFvRUx1erjOMcKlmXEaeDp
	RBdqVwX8TpOkx/r92G39SaYuAxEKU4VuifAa/XxJ2XsLuub7jRKM8okCoqDiosHCwm6GBOpmfZh
	MXcovE3ZlDNIrudOiKqpQhW1iI98yhntCX+cM=
X-Received: by 2002:a05:620a:4694:b0:8cd:8635:c03e with SMTP id af79cd13be357-8cd8635c42amr611777785a.18.1773083989230;
        Mon, 09 Mar 2026 12:19:49 -0700 (PDT)
X-Received: by 2002:a05:620a:4694:b0:8cd:8635:c03e with SMTP id af79cd13be357-8cd8635c42amr611772785a.18.1773083988527;
        Mon, 09 Mar 2026 12:19:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d02b7f0sm2277794e87.31.2026.03.09.12.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 12:19:47 -0700 (PDT)
Date: Mon, 9 Mar 2026 21:19:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge
 with displayport
Message-ID: <i6cdhcdj7f3lbfvu2lvakbir7ovds3yfqyod5wceiedjqrlxxo@5gntl3peqz5b>
References: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
 <20251228-lt8713sx-bridge-linux-for-next-v3-1-3f77ad84d7d1@oss.qualcomm.com>
 <z3y6wb6irac2ef3f55roy66wzyufel4vannfbynoivzgl2cuob@um5eomgvt5uc>
 <aZo/NRg3IxdyKZ6I@hu-vishsain-blr.qualcomm.com>
 <wvjfla4rk2qxzayloov6ofna73kl22nls2a6h5uzvap4kasfh2@nqvpdsassfcx>
 <aa6OGbZjT2SdTxJL@hu-vishsain-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa6OGbZjT2SdTxJL@hu-vishsain-blr.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af1d56 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=0qI5wC17y978S6CmwcgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: CojuZk4f8QdbI2HZ_voAZddYP7DLY9UW
X-Proofpoint-ORIG-GUID: CojuZk4f8QdbI2HZ_voAZddYP7DLY9UW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE3MiBTYWx0ZWRfXyVKiAZG/jg6K
 3eZbF3znxWfkTYH0763gVpyDRX4DmlioHNrqxerzrqT3F2ww+AdLevOeQegAOD6ZewprxCrn2xF
 9LGIyMmtRfQYnW9CWplk6lWIHKSZAe01Fp/fr69ZixYyElK230xUvBxovJBL+/pWS5o4XCDs2D0
 WIWSJICAd9SL9LUaQP76Ts7KjNlLDdYXZ9ATx3jwgggCREXgc7148tS1Z+iXRU1qW1B7SQuKaNj
 oIxyci+ArFeZFtTIWOe/sOco6/urQf/+J3hqq59kiQ7oRG71Rf/LEKliwFKC9d1SCvBk5JCz7P9
 6ad2YaHQZ/rH0gJDrBVkzFkPSkLWC6IO+1TFQVQ33PWCTizuqGpKoac5jVfemD6KEuCcOEl4Q5g
 MDXzvw+di0WcS4jCV6k+wqqoPahDOE3smyYm/IAFtysZwfbijAU/fCERZ4WZvK9NGsgjurSEhIR
 7CKwja1EPX2Pnp8zQQg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090172
X-Rspamd-Queue-Id: E929E23FB36
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273085-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 02:38:41PM +0530, Vishnu Saini wrote:
> On Sun, Feb 22, 2026 at 09:16:54PM +0200, Dmitry Baryshkov wrote:
> > On Sun, Feb 22, 2026 at 04:56:45AM +0530, Vishnu Saini wrote:
> > > On Sun, Dec 28, 2025 at 05:49:30PM +0200, Dmitry Baryshkov wrote:
> > > > On Sun, Dec 28, 2025 at 07:10:38PM +0530, Vishnu Saini wrote:
> > > > > Monaco-evk has LT8713sx which act as DP to 3 DP output
> > > > > converter. Edp PHY from monaco soc is connected to lt8713sx
> > > > > as input and output of lt8713sx is connected to 3 mini DP ports.
> > > > > 
> > > > > Two ports are available in mainboard and one port
> > > > > is available on Mezz board.
> > > > > 
> > > > > lt8713sx is connected to soc over i2c0 and with reset gpio
> > > > > connected to pin6 of ioexpander5.
> > > > > 
> > > > > Enable the edp nodes from monaco and enable lontium lt8713sx
> > > > > bridge node.
> > > > > 
> > > > > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > > > > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > > > > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
> > > > >  arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
> > > > >  2 files changed, 95 insertions(+)
> > > > > 
> > > > > +
> > > > > +	status = "okay";
> > > > > +};
> > > > > +
> > > > > +&mdss_dp0_out {
> > > > > +	data-lanes = <0 1 2 3>;
> > > > > +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> > > > > +	remote-endpoint = <&lt8713sx_dp_in>;
> > > > 
> > > > Does the bridge use DP signalling or does it use USB-C signalling here?
> > > > And even if it is DP signalling, it should be correctly described as
> > > > it uses signals coming from the QMP PHY. See how it's done for laptops
> > > > with DP-HDMI convertors.
> > > Yes, the LT8713SX is using native DP signalling, not USB‑C DP Alt‑Mode.
> > > The QMP DP PHY is already implicitly part of the mdss_dp0 pipeline,
> > > similar to other Qualcomm platforms where external DP bridges are connected. Because of that, I intentionally modeled the connection as:
> > > MDSS DP controller -> LT8713SX bridge
> > > This keeps the DT consistent with existing Qualcomm DP bridge descriptions, where the PHY is not represented as a separate graph endpoint unless there is external lane muxing or alternative signalling paths.
> > > If you feel strongly that the DT should explicitly model:
> > > MDSS DP controller -> QMP DP PHY → LT8713SX bridge
> > > I can update the graph accordingly. Otherwise, please let me know if documenting this more clearly in the binding or commit message would be sufficient.
> > 
> > Please check how (and why) other boards handle the similar usecase of
> > DP-to-HDMI bridges. To put it short, in your DT there is no notion that
> > it is a native DP rather than USB-C signalling.
> 
> Sorry i couldn't find any good reference for DP-HDMI bridges to check signaling. I checked these
> DP-HDMI bridges PS175, PS176, PS186, PS195, PS196, RTD2171, RTD2142, TI DP159, VM5200 but none of them 
> wire DT graph endpoints, Please let me know if there are any specific DP-HDMI bridge you are referring to.
> 
> I looked for other references where USB‑C signaling is used, in those case the datapath always involves a
> USB‑C controller/Type‑C mux/switch explicitly represented in the DT.
> For native DP signaling, the common pattern is that the DP controller output is wired directly to a
> DP connector/bridge, without any UCB‑C components in the path.

Yes. Please see qcom/x1p42100-lenovo-thinkbook-16.dts for the example.

> 
> 
> > > 
> > > > > +};
> > > > > +
> > > > > +&mdss_dp0_phy {
> > > > > +	vdda-phy-supply = <&vreg_l5a>;
> > > > > +	vdda-pll-supply = <&vreg_l4a>;
> > > > > +
> > > > > +	status = "okay";
> > > > > +};
> > > > > +
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-270830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pLCBBxiRp2l7iQAAu9opvQ
	(envelope-from <devicetree+bounces-270830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:55:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE0F1F9BB1
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:55:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 205E1303F053
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 01:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0CBE32572E;
	Wed,  4 Mar 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hhgK5UDN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iJN1mqF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871E530F531
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 01:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772589333; cv=none; b=LA//hoctasNhj3Wb044nLtepaaVJeUWLcyaNiOoBE4MaMr4Hi8g/hvL7HFzgf9OuocToZMQQSSUpbfPeYjwnAcCLYy6aAZS77XlRJp3za1ErX6DbYcxLTTfnxjTzqB4qb9qAK/Dyl1GEe5DopjntXIm9z+bxzbdyqqWBQt/tOR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772589333; c=relaxed/simple;
	bh=UFg+j/Y8ZucMypkuZJF7sEz4IZAIuHIRmFuQhsOzIpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tkrHu2smssg5By7oekX6guKueSE3at+5caJtc+BjHTObUpeCxeatEH9xuWzT5L9nzWFL6Q+IC5P1wrO63d+pvrYSQBHU1rEY/RhM6olpPwEt6wpFZ858M/dOZjp9sKyZBb83bwRDJIeyMMjDCe3IUUTWCQRoY6yMnFIqsPXrybA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hhgK5UDN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iJN1mqF3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0SsF3669966
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 01:55:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OHbm5naIkR5F0mYCp+/Z0mxA
	zTgo5cKKpME6H9yKg1g=; b=hhgK5UDNlWdv659lFXkAByI2YHxtScYeLL0QduTT
	MhOkzDFl2lw7ys+cgdz+JX+lpdlezAFPIKsrrwpophIMphyj7RGN59FwcAiiLGDR
	CMIdIjcSRuBxypSoxiC42cig5Q9N6hOQq9oTeypHKkGfej8YX/DxTG3xT7o0Nla3
	RyyrE5XI9D7vR9Bbye19bDImp/HoDoNb3rwHtWJ4op+P9APmu1QWPZ4kltY8kalv
	nDSnNKIsQ19kDBHcvd46p4epmz/pLSSieOFkSlqVEm1S3K5RehQKc8NHK5wJgfmU
	e+YxvF8UMn0Wflykc0p0xB9nBeE1qG628LTl2Ls6n/A4Lw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnswe3ta8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 01:55:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4d191ef1so799932985a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 17:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772589325; x=1773194125; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OHbm5naIkR5F0mYCp+/Z0mxAzTgo5cKKpME6H9yKg1g=;
        b=iJN1mqF3UeFAqM3CIR/Ts6MNMRvFapnG5Fihqn8MtbU8ddGq+zxI+c09upqRAT7hVB
         /7VaJJW1QkkX9PsWVLeAqCEecSpUCozNw8x3vV5F9gJmiPEnT5KefZpmQALdJK9Ftl3A
         LrTzkE+h6Ps6TJyo/cUhxhemsENmX029W5ZgkOnW26LtFbA+obavn1S+glamgo45tfqB
         Vco2103j12eIGZeyE040vQFUBbodI62p1TXHKalKYFmRCI/1eUtdG4MKq7uYVaIj2571
         DU2bPukmUTKooJBzZP0S7MTGkW1qGwWm5/yWDWlAmQbqr+VIrN9X5xd6QJfbuNVQNQVp
         VJRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772589325; x=1773194125;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OHbm5naIkR5F0mYCp+/Z0mxAzTgo5cKKpME6H9yKg1g=;
        b=U/yG0FkxxeJDWzs1mso77PpKcD2Mj0kclDaCExjHWitOyhwipvg9V/TB0LuaDk/Fit
         pqcwUO2r1lo7wRpSEuIsdwHcD90/SJ1gUR+L4m8L4UOeubWz6fxPXln8DmcPD1UKPYIe
         +Lt/sQFWvs8H7zoMrEwz2xmwqH6/SJV/jh4+m33uTNy3b/IUvlss/EPCp4lUOMfWAnfL
         2/ucpsAFvYjNJ3iVmx7SUCD49W8aSyif0RUTtsCjr7SRpf6AEtxKLDaGknkkLWXOcGPa
         O+EPcJN5wMkD3y19XDbdM7zU/VEELPI3a0hd3U+5wgecW1mlGGWMh0F3kdEFhVERw0UP
         Y5yQ==
X-Forwarded-Encrypted: i=1; AJvYcCX27JS7Hh9SpSCoQBFAxT+m9BUtIy96C+OiBaPIKzXRW9NPNiL6Gl4424GkSmDmMIH2t50QwVRUvvs/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+TCJmoYkuouqY+OP8ov2cB5+3sK2F/vX1JHiz8vHXzH3Qq5uM
	Kj383s9ILgH+hJICqV0QAhmStdVxis28ggI4I3OONBIMK0DQhFi4ECbLrs7vp2hPnpBCGXAEa7U
	bPAU4EYXhG4GeTKAkD5lFJWMAE/k9SdD8Bmn2GUifYCfHmbxoibQfmBHf19U/5V9r
X-Gm-Gg: ATEYQzyON9ZGvAos3mf7xivW0FdDMrUGNs7uXySxuWOIRepHN06Ajq+gz7SUzOIj11h
	1fHop/8J4QpKSFsysmYQNgXywwxM5W3lktjaxeyWIP4DFoxHr6zfQPFJDwCO/MDQhjxAoqUnZ26
	LE/4SeXj1SbjpQywHty3eM54SQ0Bp27ug3D1wLG4MgKVblMu2zaKqs3K0557GZgA7b6sIgxmd9z
	I+Ph9Zl0rL0w9T5z+9pBZNSSyyGH7aTj8qflrm30lV2xgVwKzfjrLN7NplNHbcbEL+jFQ3rolFi
	GOkeT1pUrIzRlAgBWgyj0gz7i1eYsRueEYFiHBn+GvnGJWWQYjH55JqnZaYxSk8Ifjl68vr0dLX
	1/H/PW2TxKpe8vdHNsrhnXq42YIwIt7mZcds+K38pAPSArDEospn5O2tse+YcjVmpWaAQ77ADub
	uRz3TyZyg7DOJ5sOc6Xaipi1jJelhXq4Vensw=
X-Received: by 2002:a05:620a:2944:b0:8c7:9e6:3a72 with SMTP id af79cd13be357-8cd5aec377amr64462785a.6.1772589325343;
        Tue, 03 Mar 2026 17:55:25 -0800 (PST)
X-Received: by 2002:a05:620a:2944:b0:8c7:9e6:3a72 with SMTP id af79cd13be357-8cd5aec377amr64459485a.6.1772589324780;
        Tue, 03 Mar 2026 17:55:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123583e48sm909623e87.18.2026.03.03.17.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 17:55:24 -0800 (PST)
Date: Wed, 4 Mar 2026 03:55:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sdm670: add thermal zones and
 thermal devices
Message-ID: <55s2gczljwgtk5rihaq6iu6a2osotruyostrhjawwz7xywlumy@7vjt6vb2kkwt>
References: <20260304014530.27775-1-mailingradian@gmail.com>
 <20260304014530.27775-4-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304014530.27775-4-mailingradian@gmail.com>
X-Proofpoint-ORIG-GUID: XbZXh0fD0ig_hBo8uBQzFf0IY1ZVv-yr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAxNSBTYWx0ZWRfX/RdoKpeII86Z
 ErVPlI5fbCoDVWh//bxEJX723RAojQAVIaDom2z78YmIa1CwGIwpgOLipiJqGPo/4tGfEIcvDuw
 N6yz0Bx/3Ydc+J6TCepBYONJyR5vHDpiUZd43m19c7Hd6g5L2UWG4wXP40UGz/YY7tWg1x4rF5R
 zYooLxClIP5sgLuJ2hfUD5Fp8EPO/0xsIcHP2Ui30h/yhTofPKOT12gtLWmDA4yE70dAwRKJ1QM
 GYCvIsSH7mRkJ80o+8yTpJ0WS4b2/Dn3t2UdUrVWe5mGHHHv6z/F8jHoHR09trLVOuBQf0Vo40U
 GT3Skkun0gM2DlFPupim3209DYtuZuMgcdOtEUMbDJVP1PqeEFYFqiBjJI0lv5o9LAGR/4uoyKa
 yvEE7rDAuKM87nmJTaEm965GPbSj87GlvBNOq2QTqWnx2FQNzitWOo0PyFYk+8TnMpSTSllYK79
 H9Wdq3NQ8kD//csBGfQ==
X-Authority-Analysis: v=2.4 cv=TtHrRTXh c=1 sm=1 tr=0 ts=69a7910e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=pGLkceISAAAA:8
 a=M8YKDcNaA03c_0jmb2cA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: XbZXh0fD0ig_hBo8uBQzFf0IY1ZVv-yr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_01,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040015
X-Rspamd-Queue-Id: 6CE0F1F9BB1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270830-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 08:45:30PM -0500, Richard Acayan wrote:
> Add thermal zones to safeguard from overheating to high temperatures,
> along with the thermal sensors (TSENS) and CPU frequency limits (LMh).
> The temperatures are very high, but should still be safeguard for
> devices that do not specify their own thermal zones.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm670.dtsi | 474 +++++++++++++++++++++++++++
>  1 file changed, 474 insertions(+)
> 
> +
> +		mem-thermal {
> +			polling-delay-passive = <250>;
> +			polling-delay = <1000>;
> +
> +			thermal-sensors = <&tsens1 2>;
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&mem_alert0>;
> +					cooling-device = <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

Why is it only cpu6 & 7? Note, SDM845 doesn't have any cooling maps for
mem-thermal.

> +				};
> +			};
> +

-- 
With best wishes
Dmitry


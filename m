Return-Path: <devicetree+bounces-272589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sO+OOlCSrWlH4gEAu9opvQ
	(envelope-from <devicetree+bounces-272589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 16:14:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FF9230DA2
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 16:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 668D53014114
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 15:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9573528FFF6;
	Sun,  8 Mar 2026 15:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dq9PsUjD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ui5KTRdn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C728B26CE2C
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 15:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772982858; cv=none; b=UpZIDJvVP4EmYOP9HIfCZOfUV+VK0gFzI9zvQI61srnUbIrqrUUc/weCxNXvvK8a3SIKHK/1jMCoOiGcffc67hrFrId2j+JdZ++EJNB8d5aynG3YzL82dEcjR9qSYzyl44p3gqTsniax5dDiGzQL/m+w07EKnb3IEathNgHx89Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772982858; c=relaxed/simple;
	bh=/R9KiuwCc932s07yKhCKfSnuDTut1BiyCOcEKscpH40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EmbUStbXEp8R6/d97ht7TM3pkwUXZ967/sKVQvrM3mMfz82MI0H44cGD70Hv6XbeRUqtDjU/HEhnyNr+gLDP9vf1agX+D/lxsXNoiyjSTEisEUkhaWC6qP/zib7j3D+gsaLPa6Cxj8M7tfSGp9bepKwDWZw12GyJGHm0+YzNcT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dq9PsUjD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ui5KTRdn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6285Y71k481917
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 15:14:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=c2gyX71uGOT28R9wcuomHiWX
	Lz5+YgMpzvWecME3waE=; b=Dq9PsUjDKP9naiYiz+d9Vz/2JoYr6nlEJGAp1XcR
	lxdAODUmeg+c2fgqPQqHGu2Ir3huJKmNtVQSVkFzc4lzOkhSQQcE3FxHGuJAyzag
	nmbFS0jkiOyg31ij+JWcry41BVSXaj2riZWn5UnB3UxmHS9PAvoRAFr8Q0oWJRS2
	pmLFjViwOIcJKWeV3fGk8OkQDeL26M8tdcv5xdYECosHaH51N1aP84/yBErHRfK7
	KywoUWqJIQpw5xU5cdKKBTLzZc5P+i2ykSsPXtRA3PPDeZDJ22pGk/1qsXtZRHGn
	C4aX7TdRCcHnoA4FsqUtQw/NmIcKUsZWxbhzUPzSBkWZ1Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbbg2s75-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 15:14:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7f6ac239so465641285a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 08:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772982855; x=1773587655; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c2gyX71uGOT28R9wcuomHiWXLz5+YgMpzvWecME3waE=;
        b=Ui5KTRdniEy2n4UBYOXr8XXWUO7EoFEEyoJYEHiF1y0p0VEJRCYO7RaIH+3IHSwVE4
         eeg5rz6kr0syitWaOVxsTIFoYLqbLESvN3OBNR8rdVaKH/YCllHWQlMvQoHL05Ej5hAs
         2im9mbQCfqYEjLhhJELJDHL231bMD5Iy7ltbiTjzP9rUSRQHhtgYB5jZSo8GQe5f704O
         +FqjmxuEArEglGhcaConvz02rIC8e3NpLYmDsqbH1XyYTwVRatt5VMV6ySHW9xYNL69/
         3hbaLGd6VyfnLMQWa36LCzv1Jtq0kTIHpc0RPHo8VL6PGmdwtQd6WyGrG4KKmRXmzsPg
         rHCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772982855; x=1773587655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c2gyX71uGOT28R9wcuomHiWXLz5+YgMpzvWecME3waE=;
        b=mNHBSyvn2klppYwk7LcTjrgcE3aelwLlmFXMo256f1g+mUU4WB+WSBLAgGFBIRou+N
         uwnSPTPFUW0oVq3MUZVRbiNjl1XYKrKp23qKSx+Q6EFhJo+bgLWm5lti8PefJMl/WrMw
         lbbULltytCi1TOKzs5nP+cIM6AWI1fJgR9vXZkWNsv1+ZvHAuShNW+HLe0s/YluTHTN6
         ugpaHk9UV0n3Tv7mr8RrC5R0uOxPsYBxheJW3KEyFv6wqA3Vvt8GY19P1IXGq+rctxbN
         2hGvbHCMz2bIbmJf04jpBdAdvw54BVnJNP/C8RzM2nKARgO19TaBeuBciZFgqJ7V+Fmb
         yvsw==
X-Forwarded-Encrypted: i=1; AJvYcCU+H9mQdxjBWrjzyQy/oPvhdTvQdJl6kMF++QzFEXwS1gq0pR1H3FrVu8JdIpkjDfHJikOHw2oLPebh@vger.kernel.org
X-Gm-Message-State: AOJu0YycPuVFKAMSDqYUlq1di8d69cKvMQJpCQN8uaESCcK+lwVUEzuL
	DxKGR7XRFnejrQOWbPSBNzV+h0bNhQEB3gFhGhUVwxCHlGmSBDAzMOtf5wMG4cMpeipSXQxug9K
	TeUk/8fLRa1HE2j81ERTu7JfpxqwdW6YdZK3UqFdGD4UXCn9lOFrLHJ0pn9ieMTG/
X-Gm-Gg: ATEYQzweymulwOU/ITDWx8xvg37bNysoDG/pMtSHw+Bzi34/nneJExcBVEOUVgL7Pdx
	ezuW1b4cvlSTGesXvc5LIuTOQKjPbPWKZOw+JrSphCkjhUH4P6PxKPpFJWroQI9L07erj1+9cww
	CkSAdzuNWHt1YPN2DKBVw/sJbmvuGIqzu8hEJETPrAzxip8txrJJI/++KkiddgNrpBhS7lpMiAe
	PdRQJyo3mT5OlN4ccCCMzWeJiV1PPD7hQCU1kta8oolznFyS1/b5haAyTDzBV7LizvmqYq0aFj2
	Ya/65tN5E21HCyEIbV7DchRs1htDfNBtN8N6IkXPZs4UctPOfgot0fP80Sp+34Eqca/5uQYD78N
	/cgI2qAg1dmMlqchZfvl0qNtTNldlkWtSW352eSCLtgNlTBOFOn+9gKfgXU1TsTXy73CkfE4E7I
	l+PbrvSoWlfWFrE6rR9fYA5aU3fatMG8gqDZA=
X-Received: by 2002:a05:620a:294b:b0:8cb:4543:c5a8 with SMTP id af79cd13be357-8cd6d36dc58mr1185477385a.21.1772982855073;
        Sun, 08 Mar 2026 08:14:15 -0700 (PDT)
X-Received: by 2002:a05:620a:294b:b0:8cb:4543:c5a8 with SMTP id af79cd13be357-8cd6d36dc58mr1185473185a.21.1772982854653;
        Sun, 08 Mar 2026 08:14:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a4203064csm11602251fa.32.2026.03.08.08.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 08:14:13 -0700 (PDT)
Date: Sun, 8 Mar 2026 17:14:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci@protonmail.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 Hall sensor
Message-ID: <qwrl43rbj5p7oj2buvt56shf6apmuottf7f6tkl56utaqowtaq@yfes6ilfp36j>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-6-aa2c330572c0@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-rimob-new-features-v1-6-aa2c330572c0@protonmail.com>
X-Proofpoint-GUID: gUED1p13CYAbBegJjGnJuPw4EZYmzx_l
X-Proofpoint-ORIG-GUID: gUED1p13CYAbBegJjGnJuPw4EZYmzx_l
X-Authority-Analysis: v=2.4 cv=SumdKfO0 c=1 sm=1 tr=0 ts=69ad9247 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=sfOm8-O8AAAA:8
 a=irybvU1nrzm0wZGzBgQA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDE0MCBTYWx0ZWRfX7PAu0Kn9Giqm
 BFFbrAwWp8vqAw1Yopg7NhNZY5ttnANeUstJWvQT0QkUowMPb9Dx7PPkvNM3UI27oLG08yUf0bR
 He4kZ/X/8UW8uokdi5guPV/gmPiJvhOyUlqSpPS1VLnpzv/KMa+dSX8GdTBRrTxJdhbvJVqeJly
 51ROknxNBEkqXY6sfkKT3fyDPzPCc0C/C2d7kuhoXFc/92Jn9ltPnRH36hn3vNKMuLkc7TsDKRU
 h1IwZYqHqtTPLjjS17YTtENk25p7FvH7gLE7k/iOSUWHXQkSRSxzwoszppflo7yEfk7IB/H9aip
 F3wG+lyiZsa+0ciyRhsAVEoiYFCF4hg5D392u5ymidMZoBgB5iNOvF1F5UfA1WFiUM+/kMxGCks
 Dosvi1L7lTd+J3nNAUvlQebVgh/W8AEEEqn5hfqIEa7N5B678jfFaYFtqwBkz88RLtl6rNw1SLz
 6iJKBAisDFWlg++hMwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080140
X-Rspamd-Queue-Id: 45FF9230DA2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-272589-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,protonmail.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DBL_PROHIBIT(0.00)[5.93.78.104:email];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 04:52:46PM +0100, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Enable the Hall effect sensor (flip cover) for Billion Capture+.
> The GPIO is mapped to SW_LID events as in other qcom devices.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 25 ++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> index 709ea6fc9fbb..83812050a0a3 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> @@ -44,6 +44,24 @@ framebuffer@90001000 {
>  		};
>  	};
>  
> +	gpio-hall-sensor {
> +		compatible = "gpio-keys";

Is there a reason to have a separate device for it? It can be squashed
into the following gpio-keys.

> +
> +		pinctrl-0 = <&hall_sensor_default>;
> +		pinctrl-names = "default";
> +
> +		label = "GPIO Hall Effect Sensor";
> +
> +		event-hall-sensor {
> +			label = "Hall Effect Sensor";
> +			gpios = <&tlmm 46 GPIO_ACTIVE_LOW>;
> +			linux,input-type = <EV_SW>;
> +			linux,code = <SW_LID>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> @@ -335,6 +353,13 @@ gpio_key_default: gpio-key-default-state {
>  		bias-pull-up;
>  	};
>  
> +	hall_sensor_default: hall-sensor-default-state {
> +		pins = "gpio46";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
>  	mdss_default: mdss-default-state {
>  		pins = "gpio61";
>  		function = "gpio";
> 
> -- 
> 2.52.0
> 
> 

-- 
With best wishes
Dmitry


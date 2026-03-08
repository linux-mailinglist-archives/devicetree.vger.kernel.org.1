Return-Path: <devicetree+bounces-272587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGEkJG2PrWnH4QEAu9opvQ
	(envelope-from <devicetree+bounces-272587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 16:02:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E10C7230D26
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 16:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91380301497E
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 15:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6614B27144B;
	Sun,  8 Mar 2026 15:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o+aD/xbb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kIWU2Vnh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3247822A4F8
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 15:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772982119; cv=none; b=W2AcqfROGodc46nJPRAfZkymYWI4k9BR7bsLjoeEdCk8/ad7Ml7xSAQhSddGGGuZPa+hMUI4lBRaLWCL1EmTStTuAgxls48OWough7gYdt4xHdgc0wq7a4F2rD9idjY5ai6nt/c02NKU6+yi9qYQX7suslpNRlHJs4Ys5WS9UH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772982119; c=relaxed/simple;
	bh=CsAcqgZ1zLO44aTm6JqflT0W6rXcO3EjX/0HQ5Q8Xw4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hZy/jXGifdUgN62UCadXwoW4CLxd32GAmLbmUnoRP9AgKnwpLaTwF9bsYGY9Kwaauh24nh8grfPfPuQ6oNW0v73tbU4WnmyVZ+GachCN79dA/c7WspGLpdmRfbgBiUHdokLid5UUIt7IzjX4QKyhGg0p2MMyAefjv8pIvbizPmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o+aD/xbb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kIWU2Vnh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6285FIUR895140
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 15:01:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BwabE/ZDUGVLXR5B0ijRMwfR
	m6xlXcpiu0L9ARNRamc=; b=o+aD/xbbiF4bgwIqiKNgkFdNK4W2eGuccsale8Kg
	igvwigaKcX9zTQywkK+vPvTIVd7mycp+/f6uldTYsaOQDwhwNL8MivVT7ZhZQCsz
	gT9+kAGGpknEbKiDz2EQn+ujTEQ6/U9i/rAvZyPn3ou7wD7hOQyZvjWVD6/ielPz
	qn3ObNUl08WmqGYF6qvlx4gqjSaD3Q/i9pzptxXs0W4ofL9oouFbd7pLA4ntTaqR
	6i/ypu4AngKIX39/D1MT58Eo8AiN0lZo9NiJS63QhqajfFaxmwL8idW2ugjcE2qA
	pUCHsrKJ3yR3cpzSNB5EO7gC5bzFTPh/321VgKzQnn8xsg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbkxtr17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 15:01:57 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-56a8c0b9ef9so14894724e0c.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 08:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772982117; x=1773586917; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BwabE/ZDUGVLXR5B0ijRMwfRm6xlXcpiu0L9ARNRamc=;
        b=kIWU2VnhqsYcHJAtuy4YVmdQxDtqCrWmCk0KqikagKr0BFGjRp0TLP6+ccjkqiMKGt
         jTqYw9IP/BrSCZSQ0I6a3OGWoy0v3edGphs5QCFyppt34GOzDIxuLLNTNoD/6SFcWU/P
         ZuVyur7G8XDjgmCEaDuIJy6zbgry0QNNhOqr3Iq8myYE5HxuUU2ubQjkFLKGuPMBwQnf
         hFYqoI2d02Qol0EAXEszFIeGxuC8OLfOlEm1JImP4OHTK8S/iF9zf9c5/MUXSYVMpex9
         5GR8QD/7/GRgvHwY/Pdu8T4uvpeW7YflyjYmb4S9y4TAHGLaxu9GI3yrKG2McCfaqDrc
         Q0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772982117; x=1773586917;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BwabE/ZDUGVLXR5B0ijRMwfRm6xlXcpiu0L9ARNRamc=;
        b=krUNYsoCykMvyXPMyPN/UZhK1rSzi/uXUWQ2qZWTcVRKWIuohcvWhC0CJmak1Lgk8I
         TwaOemf+Uy2gkvO91bdR73FTN7FbTQNmLGZDNXYpto+IhLxuhmtOow691xIlOSLdgOkd
         ZQGSqB/KL/f/2EhqvqA6yCWlP2vmmMRzMXVVSMNR3oGSn/XfQsA+NMlhGecPuBn6vMSK
         VWA49qoArXM+wmZRnIXIoQcs+UaZhxtpniO7i/R6acbog59eiAAjuJSS5n7tRKFN3iBs
         VXm/fnVa69rXndn85x//LtS8ABPSPgELQN53klRH0A1M/9KTuFGAXBbEG5ZBqqeeaSKR
         SdGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGnMY4bNKJcPEfRr8lHkSHltw7gaMXsQSfLE0RYrv0t+XIdMKkYvIPb4UiBRQzXBJ9zhkefRvyXIjJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzPfo/X6pkCsEclwX7RcFefW5iAV3vaaTDggPza2MEQbw5m3XJA
	00MboC50xoNVw3doUXGinUuVqZMXPKw9AnNmn1TCbuJxpShyOxOmnyVJxxIzVP2WIQAmBfxB8jS
	e+7UEfTogcrogUjY7GnAdjcljpW3hugxTgm/TT/OnrUAU27nAYvfq+REOeo3fcn2/
X-Gm-Gg: ATEYQzzGNjkrLjnb3LxS/94VkkhRkY0J2EjW6r/8bmUjIzCCkQ9/kil38biZNhSFtuH
	RApIUGcc4Y+V2q1vRZG2yoiihEL7sO2BHXkf5OcX1tHtkMDlN+msTIHsEaWPZ5/I20oYULY5RTE
	qcbKpAmf7jUbUg9xCyeyhu9G5SSyRhLjFA1RBoq0/enB9Z6ObG9hGbxtoYzUPnFx05fScaiNdiX
	Ye2xfYmR3S3I6m/RfqIBn6gq4sCmiXgG+FLG4UB71HrO/JGluYP+vSD2IOEOsYyfVrStim2G++o
	aYHrGyI1V/e4wO+j60JGQNPOChWwESYRJZPjLOIJqgTbGmo0K5/HDJCJ4kxFBBfh2bAYPcvE5h0
	oYeZDafPEqKtbxV2wdD5a0tl27VQernSIW3i5URle+75jT+w7tM+1ps7L8JlSM3Vl0yZwKyvkIq
	F2I61bWkQz51K/4ZfjVWDbC4j5Nb7YPYQvtsE=
X-Received: by 2002:a05:6122:4f87:b0:56a:eb30:4e77 with SMTP id 71dfb90a1353d-56b07f721c3mr3178733e0c.19.1772982116331;
        Sun, 08 Mar 2026 08:01:56 -0700 (PDT)
X-Received: by 2002:a05:6122:4f87:b0:56a:eb30:4e77 with SMTP id 71dfb90a1353d-56b07f721c3mr3178693e0c.19.1772982115811;
        Sun, 08 Mar 2026 08:01:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d033ab4sm1503815e87.33.2026.03.08.08.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 08:01:53 -0700 (PDT)
Date: Sun, 8 Mar 2026 17:01:50 +0200
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
Subject: Re: [PATCH 3/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 display and GPU
Message-ID: <ne3i5tmvperssm4pivae7jhmqzvyy7ftkwnacpaf4ukdqojtha@53mhrxlraw3k>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-3-aa2c330572c0@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-rimob-new-features-v1-3-aa2c330572c0@protonmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDEzOCBTYWx0ZWRfX+cQjOm4/hPyQ
 KW2ROtGxDvVGofRtK3/6VJSzpk3HxV5xzcKzLFntrFkqrfpfu0FgBeHvIbkCavES9gNEMlOUlUC
 b6sdDLrPgiFa7kZZu5mrCgVSo7c/2WrOJ/sDhNStRw/reGiQWa8eWs5qBGek9yZ0qblpQO86Gr2
 StUeBezqAsWBrU+vQ90U4LP3G1o6FzLrpS/k6Dd8CnkofdExCoOCiwLX2R0Xj1PtponziEsao25
 JhSON7lJg1NYhDuyEw+SWiIyZlcIfOufp+oz5/u9fggXMjgwCJ4wGdKU4noEKjySJ0XJwmdYdEw
 HM120PjsEQuN4/3fFx9UIpQPVMLWjzU1eKvl3roy2NYqrRbbvDv3fj75deOIVrMwRZhMLZ4UkTf
 CAu570mfE5pQ7Ep66OMG/6/mDSKEVI5nfx0yYm0CsA8TTgQN5cW01fkp4HEBasT6R2fqDEJmZMz
 /B1hpizeH4Cx1yGCMlQ==
X-Proofpoint-ORIG-GUID: BKyATWKCi2qVoK_8ZaA3HTBR2NhXt6lH
X-Proofpoint-GUID: BKyATWKCi2qVoK_8ZaA3HTBR2NhXt6lH
X-Authority-Analysis: v=2.4 cv=LOprgZW9 c=1 sm=1 tr=0 ts=69ad8f65 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=sfOm8-O8AAAA:8
 a=QiVCaVSgwpAuPVqWOeAA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603080138
X-Rspamd-Queue-Id: E10C7230D26
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
	TAGGED_FROM(0.00)[bounces-272587-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,protonmail.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
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

On Sun, Mar 08, 2026 at 04:52:43PM +0100, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Add the description for the display panel found on this phone.
> And with this done we can also enable the GPU and set the zap shader
> firmware path.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&pm8953_s3>;
> +	vddio-supply = <&pm8953_l6>;
> +
> +	pinctrl-0 = <&mdss_default>;
> +	pinctrl-1 = <&mdss_sleep>;
> +	pinctrl-names = "default", "sleep";

It might be better to move pinctrl nodes to the panel device, because
they control the panel reset pin (rather than some kind if DSI-related
pin).

Other than that LGTM.

> +
> +	status = "okay";
> +
> +	panel: panel@0 {
> +		compatible = "novatek,nt35532";
> +		reg = <0>;
> +
> +		backlight = <&pmi8950_wled>;
> +		reset-gpios = <&tlmm 61 GPIO_ACTIVE_LOW>;
> +		vsp-supply = <&lab>;
> +		vsn-supply = <&ibb>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&mdss_dsi0_out>;
> +			};
> +		};
> +	};
> +};
> +

-- 
With best wishes
Dmitry


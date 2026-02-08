Return-Path: <devicetree+bounces-263755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFA3M3cMiWng1gQAu9opvQ
	(envelope-from <devicetree+bounces-263755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:21:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6DE10A6ED
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:21:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9EFE30078FA
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77CDF35D613;
	Sun,  8 Feb 2026 22:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lzn2udmM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ayqnLRoR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31101341657
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770589301; cv=none; b=OFC1rtoMTE2Bd8+YdmIBLZtC+8i3YuSpX0ErwamYx/Cu8sGOJ2uU5LzAPybWun6k0SKP/XK5cfBtwwVavWNjN0wLiF2srOJVTY4ZideOlHuqxjOL2HhAVO6NoCTDgXSlQnOVHEDruQ4+Tkxzm9R4u7s47YE4TS6/M7j1//o3udE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770589301; c=relaxed/simple;
	bh=fqL4MexeECx+vkwEA1F/BuCH0L2heCPFV1NXUEcOGJ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AXDm03sXWwjIYcgVVaJpXfX+gLuqeDHWuWOuWg/bP+GnKWhceDrflMNmcoKBF5I3ZBSiN4QAM0e3YwyOM6sGGqpA8EPrKFxlILkMCydCuakzyPf//C05Gv2q2GMy/a7w6WD7UAAJHtCeltU87D75LunPck4XiE7AytTF6uqakrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lzn2udmM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ayqnLRoR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618B0f4A1636827
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 22:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZKKCfL4j+Kw7qRAdk0gTGEl7
	2FgrEL8wLEcL3SRPoTE=; b=Lzn2udmMEn7HLTwq1LbJVn/paRy3c+HWs2TIH9cJ
	r77IqmwxaWKf3O0fEeDw7nlx6Wl9Huv+TXprq5ZWSODcpcLuMam9MGTPEYC5/pVg
	GA1i95073p/FXgtITaWw8HzgdS18d6qgoYRHx47FGZf3nGc2nF0aKXauf31csJOb
	fSyv7/eot1LLz6Zj7r49BPCNafOdPQi5uebks5UJE7ZQw3PTBNeYK3m2DM1e4N73
	1ipjtE51LhVQwmboPUGg7UOSaQZTTRGLKXWwIXlTIetX+eqxH5x84pUgbsncQhlV
	i6IzeckKmQi+cME3upy3+kqPqhu8jYGsFzg5k7EmZTC7Rg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c6g659bur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 22:21:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-896f8dde688so17607416d6.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 14:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770589299; x=1771194099; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKKCfL4j+Kw7qRAdk0gTGEl72FgrEL8wLEcL3SRPoTE=;
        b=ayqnLRoRhD2Goj4xS7oZIqFPABpEZfAFg7Pq2GufsT5uLXsjYjFfu01eJgApQ9KsJw
         5zUBbAyI0bmKe+MQsqvqBsOyDseRxl4k6NsrKty8X69WqplItKIIlbTiUJrLuoCf6ckG
         L8xoQqTE8fTdGZoEeDE/4KFXz50m35fs1OBAb8bdEiEsqqyz3XDyAhGcUzvzSvNKScjU
         InjKEAMLihS1PqpkE4Gh5Edsfw5ch6w5chXfvc1WH3FgyVHXaXcFeXPau8goDTeYUJIS
         N7Jhu/CEsKPY/NRy+J7lsbypRWYN2sSS767EElEwAMZlls2jYmVze/bidCdEu/G+NVA5
         Rwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770589299; x=1771194099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZKKCfL4j+Kw7qRAdk0gTGEl72FgrEL8wLEcL3SRPoTE=;
        b=t9kx0dWoOeW0TQvkN1SNgKNh2XmhPZGwbA6I1+Sn/HQXnHnyuNw0VH9coD+Pejs9j8
         4xbKbJMMSCmUgzvKC/jfNjGyQm5Z8TgfTonifaUQeEGvvQ9L8JnQkify2XCzK6EU6zp2
         AkoR1T8BB90O50oIgwbPlBYzNxwO5tIi364hlg/Kpoil+koQ76Sh2Vj7ly2/9MCXGtjW
         cYQTeL4uXFlk3xqtOkDYA0rz6oF6AaHj6N+xTc/Di930LdAg6kr4YnC8nFjLiYJmWrpA
         1XI0QYc2DGCTxedchqifS20qtkzOQvDIyM+l4bCBf5i/IEwYxbrfl+10moFqE46NBqfj
         JNCA==
X-Forwarded-Encrypted: i=1; AJvYcCUcRJtLpm8lVedlMOOUHU/qxnCKFMHA9XEWDBhJwb9PD2YJMuKoElSGMJ9G4Xr99CIVbQsgF/nDdtlG@vger.kernel.org
X-Gm-Message-State: AOJu0YyK9mmzMVOLmx7CZj0xLvPM+nOJsC/pkmkiFo86R1+z/jtSUeiA
	5Kkj832ej4Od//dZ/n+bdiZeigRio09uhoJGm2LJ8tyifNH2sFB6Buw7aT7J1vmIvjtvj4cq7M5
	PObqRzYWhJ1/3wZDh8oMZd0VVI+Gt3xcKgkfaOaBAKGkkHX3dzvNIjZABFBzeBf5D
X-Gm-Gg: AZuq6aJrhXzXuJp2+T13F3+wjls92PMkwpCj4RWTJirHDgRVJE0/xcjo6mEYp/YYxq9
	kWWTLqfjvE74ICHbBhtbukfcVkPUlUDcbfPHVWw2fqq1uCA7nSrCDrrbjKIGM5SGCQ8K7rxE41L
	R9hdM0V+9xuHUgX9e1yYw05iyBlE5ml3V4iY/cqGPJ1ezocXaIW+Tw9yw+2n9RFwl49Tr7YtL0Q
	9b0EUr54YQMD/HUvoeQOGqoVJCRKmcRu3hvQUCVfpYlQPQ0qDXUm/Go1ClL7pUvba4YVb2xCn1D
	mcKQV4Scmf8k/SwBXgkb2e80nk7KP8l2TR7AGRto0keEdaxsdfItEhcX4MVpJhlRgkEwXWdWY5J
	yV2LMhQuqxrcRpZ4jmWHg3PZESOcFyQ3+Il9V7xrt2jC6A8zxlacuadmaTWn2OGORBO+gvgZOTX
	LjmyLhR8u+D2m16ATfbKI49rM=
X-Received: by 2002:a05:620a:1929:b0:8b2:f29e:3af8 with SMTP id af79cd13be357-8caf1fa635emr1193996285a.59.1770589299476;
        Sun, 08 Feb 2026 14:21:39 -0800 (PST)
X-Received: by 2002:a05:620a:1929:b0:8b2:f29e:3af8 with SMTP id af79cd13be357-8caf1fa635emr1193994185a.59.1770589299025;
        Sun, 08 Feb 2026 14:21:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6feasm2201807e87.7.2026.02.08.14.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 14:21:38 -0800 (PST)
Date: Mon, 9 Feb 2026 00:21:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: webgeek1234@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Xilin Wu <wuxilin123@gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: pmk8550: Add PWM controller
Message-ID: <4qs5xm23x7qsyijjkkftcpen2d5at3hclbogtgvxxoorrctvk3@elfrpbhky4i4>
References: <20260207-pmk8550-pwm-v1-1-f2b26ab98d8b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260207-pmk8550-pwm-v1-1-f2b26ab98d8b@gmail.com>
X-Authority-Analysis: v=2.4 cv=GqNPO01C c=1 sm=1 tr=0 ts=69890c74 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=d3Fc6ww0Fr534fpUGg8A:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: U_p9b-U5l9LOUpBXX1d2Je16INf-7RqF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE5MyBTYWx0ZWRfXyASGvo4drjJX
 jNl/9w/f0StsR4Alrfya62BLJK6O75AKCc6aSqShoYEn7Gb0WzXszoQ+6l6LDRCbw+hlgwHKKbk
 i6eDnaOkd6nvsDiVtEF5cl2SxIF73g/Y0Npcx4s95cpVgO3w1l9jUT+Ek0xByvZiMmCpGEG/NoD
 MwjlPuLvViNzG2YLeoWDje2pwKSAVd0vwTgFTQIAETtzhZhXIRyp7D4Uzfzg/N0YhtMa7PESY4x
 GGrZJLLVPrb0H5P+lYduUhTylXp90Xm+WJiIPiY6ksJVN7I8Zf9hoR/iGulSawWLamMA2VIjRXm
 krfF97xzFvKYgl5cex6Is0UFrRyyNpw0RDhkdrkMiByPNDl7ZDGL6m8cTD4ozFgvKVznli8ru5k
 TaYmawredhyW52keZjgx14sgJhrACswT0fo0aMuK1hZgGK6DGKbG4xbSjcm33Lwxf/PKv206IvG
 knzwbBIMv5gA3ZhsnYg==
X-Proofpoint-GUID: U_p9b-U5l9LOUpBXX1d2Je16INf-7RqF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602080193
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
	TAGGED_FROM(0.00)[bounces-263755-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2E6DE10A6ED
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 08:12:11PM -0600, Aaron Kling via B4 Relay wrote:
> From: Xilin Wu <wuxilin123@gmail.com>
> 
> Add the PWM function to the pmk8550 dtsi, which is usually used
> to control PWM backlight on platforms using this PMIC.
> 
> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
> This patch was originally submitted as part of a series to support the
> AYN Odin 2 [0]. That series stalled, so submitting separately.
> 
> [0] https://lore.kernel.org/all/20240424-ayn-odin2-initial-v1-0-e0aa05c991fd@gmail.com/
> ---
>  arch/arm64/boot/dts/qcom/pmk8550.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


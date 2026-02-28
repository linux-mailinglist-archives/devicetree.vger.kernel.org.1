Return-Path: <devicetree+bounces-269495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCEPGe2Womn14AQAu9opvQ
	(envelope-from <devicetree+bounces-269495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 08:19:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2251C0EFC
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 08:19:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17DFD307E0B3
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC7536655A;
	Sat, 28 Feb 2026 07:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p2i+SeIY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LfE6Ia6u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F934364E8D
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772262947; cv=none; b=kE4nBkfeBW0k0iIDk1yXYn8TC5QJI7m4JHdwZb0CF7hSpuwfJFmfSHxUTYtpgXkrN7/V/pzQu2+ti3FeA+sX+Rg0E/jzr8OPwDe6ewBQeR0EfKwSQUQgBMF4QBeVPIh7McvkHKllztwT4k6i3D189m5ZM8UtxoJQEexE2AmB3Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772262947; c=relaxed/simple;
	bh=FZfK0THcNQL97dHkTP5bOx805q6e96mowiOv2wzRXvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GvgvU8dZkGUcV3py08GXAJpQxCCoGLj/dNlNgc+ozbqRPklSSh3/Ux9djNAohQs/eF2z9gE6MwVf3HR+hCuqbS9v2n2CIEFOBsR980rdiW/IHybq799IstsBWqon8mVawnVDCnR6C9GamlrPZsnyUqXnIFpQUeQvrOKa0CSIlho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p2i+SeIY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LfE6Ia6u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S6NmFe2377260
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:15:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cRT6K5A+POG6twMPbIzsk873UZaa2C56CAb63A18WK0=; b=p2i+SeIYx9HNRJG6
	oJIViTxVbzyet14Tu90rnLpCcZ1mX+XIeVFOKkqA4nUHuomBrPB7yJMDtFjzvY7W
	jCwlwT/zFvcdsAh00z3QFfT1mCZn5JBHTleYDqmZe2y3LpCQ04dBDubQGVLrmSad
	jxRnIe5VH/3N0YeAXZcfbYNt+qiofl8STfPXF2hFNhGe4s+RD74jOIFfsZkxXuQr
	qiGD2WDpOKdlTx068241iH9R/WWYFeAY8szFvFSWywn9k1jzVVyQ3AjG289RZFNd
	7s/R4svEwPDwNcv8XJmEgLemQ9h5nJQr75wbq1nLPnm6JWiLzE6G5oWrls03jUyF
	4jjN7g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshd0dsw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:15:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4e37a796so2131542485a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 23:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772262944; x=1772867744; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cRT6K5A+POG6twMPbIzsk873UZaa2C56CAb63A18WK0=;
        b=LfE6Ia6ugORNcsDklZDHZb4EMRVOnHH4lmh8rsuP174ki3gDO5jjycrCzZXCZ3X2ua
         6983U6ChZpqq2YTO/u9j4cLb8krTEepOtXFTd+fsg7WsY2e6DCDCv7OZYipgFj7DX9re
         t6Hp6UyyDeuypJNTMXz8EijYGbFBsJVZCYXfvdBO62ojANvwd+y4R+7sSYqiyr5eyyYA
         QWSfYAWRpkdyzugbQMDvIJ0DC83FYCFnjA+f5JlZJ+udLzGUvmmi2f6LL1oA0GLXP5Cc
         0xDY5OCvUAlLIO4o1JBcPolxgz+CI+YDI5xTLnU/Lsw+J4AZ0j/tx5vXnbdmokd8Jb/a
         dJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772262944; x=1772867744;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cRT6K5A+POG6twMPbIzsk873UZaa2C56CAb63A18WK0=;
        b=WNbK5goOZS5h2YLYvnzAZ6UHFEnz9X0FUutaL8PVUmcDpHeGX2Z9ItvXEYtHXiAJId
         gIzhNHbbwtSEg076BxpjdH9jyq4yJe/C1xo0mePQqttz3tVXrBz/Dx21NkWG3GKjRBdO
         Fp8FYrnZOKqUA+9mIndh/Msq+t8iAKOz/rzOFNz3mf3MPOpYs37tgYwcN8SC3OAlSq9G
         VSeE1iJq+cqNV7Uk/0uKAo5OGO533gZtFGPKO2ia4aCFj+jvKzZOcAI9n7g3bXrHI3Kh
         KRnDaX6I97592W8/c42WT8H+IM8V8+XzLR3IUFYgbpiEzWgU0uM1cvcxOkKLtzP5/HrG
         /viw==
X-Forwarded-Encrypted: i=1; AJvYcCUFKDQ6J8/rr+lAgIAn7mp75ZLvmnXUNf/Ql2GHpRzjDTt+BApWHOHUC+PwYG3YH1ArZVNMjTQYPILy@vger.kernel.org
X-Gm-Message-State: AOJu0YzR/cB7yd9KlBgfxms5JwbO03bfkxnihOlaqr7TbJP6Es1Rip/A
	ZNHtaWFeVjEVfzghc30wbuIeTEMG0WF9JAj48xNBcuACINitm2Tz4QfHDhnUC+XSUnIpkHbAfhh
	qXAk5Dp9/LAeNrp17MVcXdr+Fb5uYxivhhfF4gtk2bzkWOQnWlJjEKobdvGrFyWqIDcvlb8CW
X-Gm-Gg: ATEYQzxqkUoGiByb2Vytp9AcgffDQkeVXINCZYXEyd93eV+66TS2xd6IFPXGgBnlZxt
	6e5HV59pA1FnsEoB6BkfXmBJNcwNow+MpooLHYifENCvezwJO6xHIkmjCVyq4HimY0Tyf8MCFzE
	wzpNckxCFaeq5i7UC54mtg+kYUou5tAQX6jLKpQDwLEtQ7NH1uXYP6iO5vA/URmRSlqzNenFYm1
	FgcpuP9TLyB7CIrEkcOkEJDlD3v0E0GsIbiQL9ldbda6w45OuLLAWA92IPOdbG4cGisnMUx/ck8
	r/5yBrcyDeo2QUscP0kW/sQyOreeQBvEkH7T4izAj36qVUMXaPSBf65vtgoXl2krjAvkBwMML1x
	CzkgzS986WGpyogudutD16DtT4jLEqSLwsdETtSBJZ1iT2Cl39cp9Iq3T8Ti2n+7ldvQR88Tnhw
	wFf3TKhBH1NUNVmyzHo1EtaAEsKXqas/sIEIA=
X-Received: by 2002:a05:620a:3711:b0:8ca:2cf9:819a with SMTP id af79cd13be357-8cbc8de8394mr652060785a.40.1772262944175;
        Fri, 27 Feb 2026 23:15:44 -0800 (PST)
X-Received: by 2002:a05:620a:3711:b0:8ca:2cf9:819a with SMTP id af79cd13be357-8cbc8de8394mr652058785a.40.1772262943709;
        Fri, 27 Feb 2026 23:15:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a10a319f05sm2269020e87.50.2026.02.27.23.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 23:15:42 -0800 (PST)
Date: Sat, 28 Feb 2026 09:15:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: use DP controller
 native HPD
Message-ID: <nts2p6gwzvv34pjqst6hmiiscx4u4bluwuc2zh3slvdwewqehy@wb5gdwymycbc>
References: <20260228-edp_hpd_rb3_gen2_for_next-v1-1-aebc047eddc1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260228-edp_hpd_rb3_gen2_for_next-v1-1-aebc047eddc1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDA2NiBTYWx0ZWRfXz7HKUdanUD2s
 y0R+0lBU0YmjXWANj9+wVLay7LbuqQWm7OAFq+oxePmE5jykGVzfAiVrSzFKTi5OOJ3tWL3vfWN
 ilBN1IveENdsZdJ6ARPpUTCq2EZUckTCNL0zjONBsQIQo6v4mVoR47DY/BoJA3cZ9du7Cssc8Bx
 tl2Ou5I+BfUPkv4WY6E+JpN+2zi9GBonbh/fmZKyQ9EcpS+ea2VkE4DL4eUWAab/BxEwin2r6KO
 Tlus6IuQM4ORsEI0GL6GngMf/aVA0wZOYJuC3rM8fTamURsz3ojx6LcY5RJfIF11UK05UYDBBno
 5U61NRBx4OMUoDuW7u2gLHyCQlPlPIicx8b/ZsdsagKTbfpGtGu9juAqPCBP/hUlaToSqeIkDPZ
 hZP7ebMoyS/SLzbYHq2GSlmLagAPTGq7EedQOo1NKy8j1TgJUFvtHx+KUjf3YxWqcvZ/F/zbMtE
 JVFFImP/ipyPcz+1riQ==
X-Proofpoint-ORIG-GUID: IQNQSZTyarF37VvKlgclh5EyBN_ScRLK
X-Proofpoint-GUID: IQNQSZTyarF37VvKlgclh5EyBN_ScRLK
X-Authority-Analysis: v=2.4 cv=COYnnBrD c=1 sm=1 tr=0 ts=69a29621 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=197WrjzsBFOFWKeaOdEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 adultscore=0 impostorscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280066
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
	TAGGED_FROM(0.00)[bounces-269495-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB2251C0EFC
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 12:29:05PM +0530, Vishnu Saini wrote:
> The base device tree configures the edp_hot_plug_det pin using the
> "edp_hot" function on GPIO 60. However, on qcs6490-rb3gen2 this external
> HPD GPIO does not generate a connect event when a display is already
> connected at boot, causing the DP/eDP display to remain disabled.

It is an issue in the driver itself rather than the question of hardware
description.

> 
> The DP controller’s native HPD correctly detects the connected sink
> in this scenario, so continue using the DP controller native HPD
> on the qcs6490-rb3gen2 platform instead of the external HPD GPIO.
> 
> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 
-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-257655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CrCMy8PcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:26:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 752B24DC46
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 81D1156F6D7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D0740F8FE;
	Tue, 20 Jan 2026 23:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rd9XiSEm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qm+K/UQL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1403EFD27
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768950611; cv=none; b=GT4Dfs2ZfDQ7W2PB4S8IuTh0Ou926YtoBl6rYo6KjsGS9Bv4XN0036SvY2LzXMLJ0PZGwxuer07YGEoL6wcQFd3aCa6Ix0z3KOQh/bXYtHAC7ul8tvlnN9qM0V8sCa1HAWyFACfajiSg4aeOjud4Fswhub7K2ocBr+f43Eb9C4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768950611; c=relaxed/simple;
	bh=NIQ/63GUhsFY4Ery9iMkeAbTHqYRbg38gCctqbF4YH0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rh1JcZHfx7qUVrf5k2NMZ2wQwA29486YLJK6XaCisHRKYYosqckl12s1SLIJcGuJmnnnGXhNUXTOvhQvVkUMy8j6oKp7oRh+BGw2j/L7Tq4kfRptVgI4tQlbSzM8IP1Pf2pURH6Ger8257jt52wylwWg+9aYTn+FpihcBNhhWMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rd9XiSEm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qm+K/UQL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KGwe2R3256451
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=44UmTTgBaVFchfd+hkGNFFI2
	UCRflmj/K3ek7ABjrvw=; b=Rd9XiSEmAilOWCIh6ILHGKPb+g1/40P2AeOPOu3Q
	RD2MpbC82wpIFBjgNbBngIQ/eK7bF/l8kyUOapiJlWo9seI+detfgG3jutElEHfd
	I5y9UgVom9WQ1l/MIUyNMg1jPxQkE+ydg6gLKUzs6wsC5B919lHRIl5HsFFrpLwU
	vgj8pBknRjLyezqDDPAeFhnj9yrDYCJUnWGIZLKh5DrILZ20JmesJLT/4pUuzhqo
	cVR4pVi85Pobrbx1pSc9wN2cqQuxLLm/7DV4CvefEYfV4p65oIidJLbQxIU8Sqh0
	mRdVIPBeYsRoqJxdexfslTP7PX1A6jwgluhcxOIF13gEKA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7tn50-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:10:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6cfd52556so155977385a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768950608; x=1769555408; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=44UmTTgBaVFchfd+hkGNFFI2UCRflmj/K3ek7ABjrvw=;
        b=Qm+K/UQLVgnJh1AMoLApQhrspYftLvazvHgQtR08y9CwSvsb2WOOjW5yVEozPoO3MF
         EtAFfaiqeTH+0XpqLBr4qN5qscYkw4yhfudDNZF5Fe8z7DmFhC1IqECnSFHsjBwLPsxj
         i0NL1ASAu1klsOwhMYDPCqZLSn/arVh4UW94ET3QnNU8vurrlyIb2+rX8IRnWz8DhfxA
         kww5UQF8D2vBANh7oAjLtky8wWFNg8fGSDDNXz2B97mnxBTE6uSZN2GMGTEs8oSLZBjj
         //LOUebkYPkw05sEBRuLuPeUjHNS/42PK6PIOW5EVQZ+bkkdyPHoWHS2qT+oIl8iDrZ3
         /YKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768950608; x=1769555408;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=44UmTTgBaVFchfd+hkGNFFI2UCRflmj/K3ek7ABjrvw=;
        b=YYobg5GNgKjVatBCUDENW5Ma56G+lzZe7H9jp2q9GVuWawVEA54MFIlYh20wgh2h0d
         OXohgxYbyCdLa3V+ediuIoBW3iksSoLr8oEZ2wBnf3Ejpjd021D8EL2Vxv5UwOrkRcLa
         UJCti2zs47PKlkysYqykIiiwVihaslk9hOCpc4k9WgvbiR3JwBwxZ+Mj7LEgQ/K0jasG
         RWKeGxs5D/JrXgOGqyev7f4SGcbSfOcKRk7aTFIOsaEretMJ9NQwAeZysM6mzvaN/W4a
         v6NiGGHkJWlydyqddUM+6CgVnIDnOr38xabFveyNLELZ1LN+BBP94sTPcLCOxkwn2w94
         c6ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUz01hn+t4716O/9+uYdO/6Saw0lU/sTGASAlYTglh94jwOprxYNUXlg4UGUfaY1MC3eHyOORJhyhsi@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx4WRBFDq5tQkVTXLGolbik1OHslus0srNiKpliiD2Nn8e9TAy
	9xE1K1jDRhPCYnY4J4U7cOvz53BFOuRaWxUG6MxSpXPQmiOTzqJRMme/4j5w0U0DYadG2xFxpmS
	8CuS1rtUylEIIzQYUimqKUuhi3Dh0hwmu53cH96h2PVw7eWLECja6+fFgQrrLHEuq
X-Gm-Gg: AZuq6aLM3WTbppKukHJUPJ0exFZMsnZzyLPu/iWawsnfZ5+5wjOue4jCg/xGdZCoeMA
	XCeWa8VbyRMJj5ZuxiFFLq5/Y43Krezkg4EV5To2/s8O7tXn9xa4+E15rBqbTcV2z1Eyx4IITxa
	fvn39j4dAJSc1o9zPkNb2aucIaWam+6bWZkATun1sfZSeBYl/x+Iv1Gxl5OoFTmDRRY5Bd1rf8S
	zITkzM+JkqStC16GZSI8vL8hkvOGnfSwRys+qtHsyQl2yM60zJktNPTZpP9uQBEgeqWmT/Xre1f
	NWRepnc/nOTKANUvCQsjvbDRZsWr54Go7F/TdeV8n7GtT3THKDfsWfBqERvtYyraj7q3ERBOpw2
	0BsIuIQ/AKwPzl5e9iqzC34IQikxWm05aAJQIyuQ9D0GyeAsLzPB/AcHKZt+2A+a0besOf0zeYD
	A8bM8cBI6mYOtK//ikMhswCF8=
X-Received: by 2002:a05:620a:254d:b0:8b2:63ae:6343 with SMTP id af79cd13be357-8c5919e232fmr2803741385a.28.1768950608129;
        Tue, 20 Jan 2026 15:10:08 -0800 (PST)
X-Received: by 2002:a05:620a:254d:b0:8b2:63ae:6343 with SMTP id af79cd13be357-8c5919e232fmr2803737585a.28.1768950607693;
        Tue, 20 Jan 2026 15:10:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf34ee9asm4427103e87.31.2026.01.20.15.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 15:10:07 -0800 (PST)
Date: Wed, 21 Jan 2026 01:10:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] pinctrl: qcom: Add Eliza pinctrl driver
Message-ID: <65yantz2u7ahritw5nvynvzsfo7zwy5kycr5km3b3izkgngjsz@jvfzmnw2mlte>
References: <20260120-eliza-pinctrl-v1-0-b31c3f85a5d5@oss.qualcomm.com>
 <20260120-eliza-pinctrl-v1-2-b31c3f85a5d5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-eliza-pinctrl-v1-2-b31c3f85a5d5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=69700b50 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IdvXttJtJ_SF0rQpgKAA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE5MiBTYWx0ZWRfX9R5lzzvGcBEP
 tMWgBUM4qDt5KoJwTjFSdYUIWPjKFa4NTrANSJNTRH3lDVDvXPSLYl6zImot664fyLriPdcDI1O
 s7dTCUQU0r0+ozi0f8ga0bn85PMK6jkvzLFGeEKcuZwmP1t4qgrbOneJXrtkeqVr9Qgg3rOcj8s
 wlNOsKybaVVsR5b1pNWJ8ziRwtAk+gREPnHi3CvHsyJMSCAU5s78qLqexMdZAdUHEsMa2YRpX3r
 zRC6n8bSeJ4gOAlyZ0inKcSVxrBdt9ZsXBIs4biTZVtEcQTFUcgsBHIavUGKRDIqmQ7iJOKVO6H
 8C+kwn8BsrG3E5c7RYRAK+5l+aK9SC7kqC6OqXnXYM7JBPIUNGsN+Hp8JsCvXhXMNN/2wI01t1a
 Daj/KM+DhP9gcUAEwLW22nZz9awpj++0FQWcpWulo9SEJF3A7iaH5lkwe61luFoUDdYjpsAkWb3
 1E5GZQO+jjCdLPnpGUg==
X-Proofpoint-ORIG-GUID: FvtxtDKKxR_QunpN8942Axsy77dtcE3r
X-Proofpoint-GUID: FvtxtDKKxR_QunpN8942Axsy77dtcE3r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200192
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257655-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 752B24DC46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 11:56:41AM +0200, Abel Vesa wrote:
> Add pinctrl driver for TLMM block found in the Eliza SoC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/pinctrl/qcom/Kconfig.msm     |   10 +
>  drivers/pinctrl/qcom/Makefile        |    1 +
>  drivers/pinctrl/qcom/pinctrl-eliza.c | 1548 ++++++++++++++++++++++++++++++++++
>  3 files changed, 1559 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-264566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GND4MkHhi2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:54:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B90A120903
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52C063034DDB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10FF42C1780;
	Wed, 11 Feb 2026 01:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lxj4Kw3n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HSog8Rxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAD62C11CD
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770774768; cv=none; b=CXJhazV7J8m9jKk86YhnHuav6VVDE6Z43RPNRSWadR9ty8urA0vq2HYU/0A37Dff5Kqw66Wck/UL07sdO80feqAeNbCuVqMtG17l2JE3Fb2GNvPhGRHEXroXGAQZUWKB7j8Nc5fMZMk01dObrZPL1mt+pvzqSPRT0cIrmLLPzg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770774768; c=relaxed/simple;
	bh=fdAKuYmS3VYQy/QrunS0rpFps8lsoaDNeeiFrltpLVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i88+rBbtAafWLYiwew2+CQchdowMy7TSyun3caCMBNHM/1JZ0rbpGhcJ9XZph9zIRBmTVRlYmHWuZy9nKQFcaDkly1I/EYZAWHcJR5omIk4/tGjNUMT8z22Rawo6++G0PyyyiXGsdVOsRsr549h+J0Hdn1P1tyMGvupASiVsjm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lxj4Kw3n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HSog8Rxj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AHFClx2396523
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:52:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+3TobhK+3vpoVqMM/YkshGNF
	bN1rdnZkJIapT3bAbNw=; b=lxj4Kw3nETYAZSVJmuk5bsMBTITJvK+o/rBm2nsw
	/GLioOpOPe1mBZtgi6370ziOyLzUzokrarwqiCbVf1L7Lt243MyXh9Ryfxq1Y+N6
	GAagiz++nYYeZ7a46XdmaYwTbZNBK8XsbV5XaLj0QrAA64tT3k/i2MUza4qMTmNC
	PocE+qBjCxjMV5KD6XGN1aeZH+wENy5ME7S5V3ZHntICi6LT6f55yJAgHHgOgPPf
	Vx2Iujp5qq31qiICj/4DfnGf46Pet0IVbkOu7aQchukk1MIfnCjKEwlbSExAEVV3
	ww4FlpE2hOwjfGY+C1KLxNrk7AKEMfdCdvVw6pLKGC7XrA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c88wqhgbm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:52:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70fadd9a3so1815267785a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 17:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770774765; x=1771379565; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+3TobhK+3vpoVqMM/YkshGNFbN1rdnZkJIapT3bAbNw=;
        b=HSog8RxjCWh7sZrQToGUKurRdIHUfEVex9dGZeLU0OVv5n1AYwDe1H5UoLPiNwr6kQ
         eXL70iVEXLuWplovW6gSAEHa2Yax94zk78hGlBkmcIVC1WtTJariZCDXaAPFEj3sxl+Y
         Cxr/V+bZCbimyj5reCMi9IVVgLg8PLA+nHr+Zr47SWHIrbKmbYyj+p5+zufbGwWUQvxt
         aEKXijDiyR0qP0VRDjfvHBHC+y6eGV4sFPW2cVz88zBhH+3xN0ASpUYqPHdXUXpLIew2
         uS9zDecBqUEDXkpG2OknV/XSGfLqKSA61+LwSWgIv/e2VEiYrfwjKhgoywOcKkjo8ZQr
         +jdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770774765; x=1771379565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+3TobhK+3vpoVqMM/YkshGNFbN1rdnZkJIapT3bAbNw=;
        b=bOQPVFYptTOpMACYw7m22i53I+mE03nL9sEZUen+xM6PZYuS4xvlICPoWwC0OPh4eB
         BYHM9vuyTHJPMNy4iGXuZbhs1YHTbVlYRQ/dBNmtjmw5M0aHnKuJTi+w/6A/x6+N8eaW
         IxwwklSxn4wGs3i8oqW8Fc4xBehfs/ubHmPFX6GtkgZ25R8/QmlPkk6r93tYoSSDTrB7
         3yHGpOtKRQxsCKQAhRvf8z7ZcWufLmzPhb79P5qsqMPYP8pJmJWGYayHd7QTdsAD/on3
         Ce6HiCfLrPbC30femMevGw9JD7H29fIU4mvNbwj6+lSPeIMFUsYypR1NxxmilJIn8FbI
         7Kng==
X-Forwarded-Encrypted: i=1; AJvYcCUtK1mJi8y2eUBHbCp3dHoEwENhG0u3cmL5cdNdwfEdKJaVvQjaggeDBn9zY6JNoVRhidYcpwTvj3Db@vger.kernel.org
X-Gm-Message-State: AOJu0YwJRBVYiSaQ94vNMEdrRSTp8RaoYR+I8t0YYVka7LBIXG2CmZ8a
	pWmpw1roTnmjcrog9zN6d+1xO+loxl4gqpKxpkMUO/swkihAF//CcEofjbbKBJHgxWXOSqazl8+
	aIs+zSJn9MFrrZO0MFfH5XhVYG9unpxjThpn0bXghibRmnw7FnqIt/wPUD/oTEl8J
X-Gm-Gg: AZuq6aLxGneYKAGRz7KWnyD0mOtIm4ZM+pXNoWCL/MVyt51fo4NyDlSssQO0i1i9HaQ
	GKCYYV/mZgt+5VYKtJq+xZGwOaedeRkBqtewKwDS8t/CfrYovGOidbM3sqKDanYR5Nke1LcSHel
	9uQxy0/4iPqyHG0p/hcwTeXVeaV7i0NkqxUkThPIm8cwkbHBui9XccLkEj3O9fiV7o3RrnxTpBV
	dyaZRNrI6QLHVHBRow/CWlEtRU84ldTxcI6Da6X8LCwFtTyrNc/ILoyjwBnk1ttpcWAy9Bm6B/D
	KoSYqO+wms96TE8wqMJMWkiouW0mJ0ClJ2WLYqnR8NV4lMzKbzaX8EshMvdXioQVkLWrsjhhxZX
	SYTaDhKBsXPfajAiFs2A/+vO9Y63pq/vZjN/Hi43Oe2MCX9PpLGc0V0EUg0Cgb8e+Iax4xjJHIy
	JFoZjrGeXR08fKfFHx9BDQqLvubqe08vG6FXo=
X-Received: by 2002:a05:620a:2a16:b0:8ca:2cf9:81a0 with SMTP id af79cd13be357-8cb2803f23amr187100585a.51.1770774765247;
        Tue, 10 Feb 2026 17:52:45 -0800 (PST)
X-Received: by 2002:a05:620a:2a16:b0:8ca:2cf9:81a0 with SMTP id af79cd13be357-8cb2803f23amr187098185a.51.1770774764676;
        Tue, 10 Feb 2026 17:52:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3870692b818sm520411fa.45.2026.02.10.17.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 17:52:42 -0800 (PST)
Date: Wed, 11 Feb 2026 03:52:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: monaco-evk: Enable the tertiary
 USB controller
Message-ID: <d3e47ewvgtmhhvrcl76xpxuobhaltbjbghd7ysahu7lijcqc5e@iyak4kcr7ga7>
References: <20260210155329.3044455-1-swati.agarwal@oss.qualcomm.com>
 <20260210155329.3044455-3-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210155329.3044455-3-swati.agarwal@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxNCBTYWx0ZWRfX/iaNWQKM80/B
 XD/yNHssh7xdVSRfZkzGEAqiBcmDyuPHXNV087sor5Er8AAHvHW7AtvuLAXyryID6Fm9bbeWpif
 zVk//r4axgqLV38+C3/aDq330ab3lTXRuVGoD98uzf3/QAhIXDGs/YhrjG7bI89dC8Rr7/7KGEo
 jqRNwncoN02UJii1leR0rPKHsqX3tbFKrEkZcobtnXn8/GtyKnCZ1Y2Zjy9R7/YIeqde+mjDgw1
 C8W1tFQxeGBvVRKw8liB38lj9BS2wbJuMKm6KyZxOyZTeg5z/oFEvsbXPmkfp5P6rVInpcyfoA/
 ACdT5LOahg+d6A9s7jTkeflYHshqatGtIetbOK1JwbucDYzicCdsjZ0EBaMlu4wJSKANxGOb0k4
 9wG8oBDd6fzQh/HhXWU6oSj+07NIBTnO6ynupB5vEjg5W8vFlYm4LzEQ929CnP7lPfOVPZ85mc9
 h8Gn32JGwZVa26+QJTg==
X-Proofpoint-GUID: 9XXp-mbMMckIGRduwQH8R-nO2jdjV7Nd
X-Authority-Analysis: v=2.4 cv=W7Q1lBWk c=1 sm=1 tr=0 ts=698be0ed cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=U3EUIoqi7yMjyQG2jewA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 9XXp-mbMMckIGRduwQH8R-nO2jdjV7Nd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110014
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
	TAGGED_FROM(0.00)[bounces-264566-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2B90A120903
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 09:23:29PM +0530, Swati Agarwal wrote:
> Enable the tertiary usb controller connected to micro usb port in OTG mode
> on Monaco EVK platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 53 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/monaco.dtsi    |  7 ++++

Two separate patches, please.

>  2 files changed, 60 insertions(+)
> 

-- 
With best wishes
Dmitry


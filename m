Return-Path: <devicetree+bounces-257644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE0dLe0McGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:17:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 226014DA3D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53521A8F9F8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C18C544BC81;
	Tue, 20 Jan 2026 22:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XF9FxYhQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E5KI/bhK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E27342EED9
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768947915; cv=none; b=mRHcR/MsX5GPPwSNiqTzGZU7jhr2pRTJK6nJR02p15XUyp6CPpx6YO5ZHa5IIRNv9CH2a+7HC1TgvW0iw5IcDsTfvfK9l/0wgHluDF/1G5CBAK76Rq9WcllRlXERg3K9sOrSrCZjCsids4CpuxlVnYj7e4hVhtfSzdwV3dNuERg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768947915; c=relaxed/simple;
	bh=cTj02y19SgXIrX+rAaKBOytUNYsqq6rgn5QzgG8X0Vs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uygm9EmWyxwguJMrJ6vvjtOBtNy4DQP1u23dACyvoTtp/D9BJc6IA8+auuWKaZ8k3xeVwBnLP6Y7F+fvHOMV1gwWKA4AOoDfaxMG3FdcZZ+ETu4pnHr6cGu98goN8piOmHJFwjymudcrA65zzPLIZ7xSGf83S1W2HXgI2TUsTnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XF9FxYhQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E5KI/bhK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KHTbm9827155
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:25:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eDkYb7KCyW+8CDys9pwRBzMB
	3hSM6daXL5ZW5dpm8ts=; b=XF9FxYhQdNyg5G5ufEcDNsxVXycRn9qJPN/etTd2
	qln2FjVqm4TR62yWsoJI949z+HLIxucKUaJ4gZsIZW0jUGB9rO/dvDdT7wQSbzm8
	i6U1GkPEWvgCtTHvdIo1IMpqJRRXTabqqSbTh2KrTcWmWh6uOaEYqHiJtByDZaky
	Qk7Q0hArVWjRYgfwJo1C5MogAdTAXLtisAitZToEx93Pz2NivmySahlMCDDT738n
	rhbzRyiIncE2K8HmD2rpFJR9TJwMy29tl7n5v1cLojxvDAWd2nAhT8Adg69j3A93
	EeKllOrsJfV0JU3adZVOvY1Sr/NtFCjBuc2XJ61Z3yfCZA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bte5e10c5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:25:07 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8946b186018so28585036d6.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768947907; x=1769552707; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eDkYb7KCyW+8CDys9pwRBzMB3hSM6daXL5ZW5dpm8ts=;
        b=E5KI/bhKo37uCOx31Aew5DATZgffk/DfFZfMuYP5DPsfciliNFcOoUTMgli30vt6k9
         I8spAmw68yLACNAiooHqfHti5WeIvRV32hBiM28qEJohq4buNULwLAI7TtW0yxfFE+tc
         X41rbsoXmRH8yklobuNgpNaVwu+ws4GINJUdTHI59Zz9TjfqU/wCbp3LgadRKivCc3Cj
         E1/qIl1cide+6Hkj26PxaFqfcsXarPEImAGyVRdv9tqjO0xk6avjkRjQS8XsVV52Y39i
         IrQH2YIaZTqTG77rZXL/emseRgkpbk075uR5dvIpGE1ly6Bv5yHO/l3f3rC3ZHh0Ih9V
         04HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768947907; x=1769552707;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDkYb7KCyW+8CDys9pwRBzMB3hSM6daXL5ZW5dpm8ts=;
        b=gV7qrck8mwBXXgHr+0+nuWRimr2BuSN96WvbFbnWMjL+ee54AEd5cL8juHwWpjUN5b
         9DLiUDgVM+D5J2cDMHEYSy/DNryXsPnCG2YiIXXz6Fahc0m0QB6+0IbM6xSIKoSH0zKA
         6O6MzJ/SAzLnE6E8ISB3W/+0F4OJXlrTN0dJLT6EkgAMc2j5qlyid7Z918WiKFmDzEhM
         tbJafeh8+vK11KrlQm1kcZH7pfGkU6kJzjHKd1tKy+TikaLQiTDgom+UN421KkpzqSez
         BN+YpNfbExZsjBgHx3FHVqgAcl/pwdq7qAkNwy2/ag9zHMeoph2/VTUgEZ/1rRUIsHtF
         22RQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAaD+TWKwNR31th8FTaAxOOg7BQtr4bx6VtYHzKPJJyO+sqjT3K/db0Q8cd2KGDnjCBxX890K1lIkH@vger.kernel.org
X-Gm-Message-State: AOJu0YyFnFSOQt/DQbJDXm9/ygj0Dz8r8mYCKfa+O2lkYgn+f1ltX25T
	d1W4zLPFC8Fza45TxRsSsyr+1uAF/D92VETdoVI6M85tseiOlrJomulbg3pyoMXbwbEG1QQFZ+X
	PqlQ+Lmi+IDgAGkO29yrYRnXR/rBEk9n1H8vnWtaBdz12T0szOkSXA4dMKG7CLD59
X-Gm-Gg: AZuq6aJAxP8ysW9PCNSuk8MGnebxEb+t0T9HMRK3crkbamkPeE1Ic//kt3q5OxjZFyO
	97nasjWyocFEsrwpRVOb88DDXgSs8fu3jLW0Rqfltnbar9Dwvpr+1pmlRuBTxfv0MCs3QfBTc8K
	tqeydfpjOkHBFbbSpNUSm60WKwIt0lYFeMNT5eb6femZsQJdNy3KKjbiBp0KdIY8eWReVFfUZw0
	Kbmva9cBZvExmAsFvnNIqElmgBHyasephSmL7/ezyiA1cZ08h4xucVkuRK6uZ8NnGEeUsMSFfEC
	LQUwiuBBcgjGfStfvstKJ8qDButVgYgC1Z/KT/pMuusBxUmc1tOSJPtbUsmDyz5LOHwFGMB7Wz6
	7PuXE4W4LZymuIjaPwP41rAY6y+UhyAz+p3JyvcwAk+KnM3n4YOrvCv4J0BrWyHOliiTdsuFk5Q
	CrPX5GZJPAfhTOY0sNoyAKe5Q=
X-Received: by 2002:ad4:5ba6:0:b0:890:8aef:2b3f with SMTP id 6a1803df08f44-89463eb1965mr54611316d6.65.1768947907341;
        Tue, 20 Jan 2026 14:25:07 -0800 (PST)
X-Received: by 2002:ad4:5ba6:0:b0:890:8aef:2b3f with SMTP id 6a1803df08f44-89463eb1965mr54610856d6.65.1768947906926;
        Tue, 20 Jan 2026 14:25:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c45esm4318138e87.82.2026.01.20.14.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 14:25:05 -0800 (PST)
Date: Wed, 21 Jan 2026 00:25:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] soc: qcom: socinfo: Add SoC ID for CQ7790
Message-ID: <azeiywnu4lzxkcf42lpjyu5qe5g35bslcc5bx3vek2npb756lt@vwngidfda5kx>
References: <20260120164706.501119-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260120164706.501119-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120164706.501119-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BKa+bVQG c=1 sm=1 tr=0 ts=697000c3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=L65tXJRmyiXgDxE9kDIA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: YsmJ3EvhRPJjPs_k79cIdrv6GdzG9WdZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE4NiBTYWx0ZWRfXxE5auufEiDlJ
 mlr9O6B7Lry3uafZyfTB7mxos/HojySVM6ZxiZIXfRLmQJc292xkCIFnSbAHXnDuIeq8S1qN50T
 mtSBhijkmGtGr0bcP/PdUQRI2JEjzbvOh9MaEZtXLjoOyjVLxkHLdp83NBNRxollou6Jdvgxw/v
 LTjlgxt8bJhHRJJ9Y/TDIjRWBIxeszLfabOSLTMa5d4BWgx9wDjZZwErq7ECUrrRTVb3u8pIyL4
 T0Sv4nfQeSKBPUE/0JWMqqLXVOZH0ZrDqSrjI0YCqBHis/dD8TNYo2nL4MWQyiXS9UXKyl8Lsmb
 AVtY91Iu9n3Hw2OuVV0w45VPlq/HFVw8E31ZUzwmzAiD1RpzWQxbAh7UN1celier9jDG+zM3B+h
 NszaN7xbQq13AqLyCq7lgyR816ZPTK5kieJ1oL9UcTOkdpHEu2xR57KhRALcS9EEbexoY+p+QMq
 wBiDrhrsoCnKFJqKu1w==
X-Proofpoint-GUID: YsmJ3EvhRPJjPs_k79cIdrv6GdzG9WdZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200186
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
	TAGGED_FROM(0.00)[bounces-257644-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
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
X-Rspamd-Queue-Id: 226014DA3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 05:47:08PM +0100, Krzysztof Kozlowski wrote:
> Recognize the CQ7790S and CQ7790M SoCs (Eliza SoC IoT variants).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. Add also CQ7790M, extend commit msg.
> ---
>  drivers/soc/qcom/socinfo.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


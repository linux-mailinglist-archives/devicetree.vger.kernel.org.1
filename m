Return-Path: <devicetree+bounces-257653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPPjHHkRcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:36:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D95044DE80
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C65E388F643
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FEF3B8BCA;
	Tue, 20 Jan 2026 23:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h0B5kD7H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bEkNbdcY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486E63A8FE7
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768950511; cv=none; b=CWeTL3XHChY5F8lnitpXN4eEBPW5s41yuCQ+1IAxn8zQPgUaN8yw+U5KNv6uap+LFKm0m34uCFejLsC66zlyTUZEV3bZl89C7xpV+SZC148mJt8I6TscdMEm2TDw1N67UNIwVE/6ikSjSe7GFvT3kXvpERIiNIlEXf5m2iwR0GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768950511; c=relaxed/simple;
	bh=uee/c8hGQmUEMEsglQ4pfz4tBNsSFvW/JoG+vtVkY7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pKPEe2gpp1iHJjSRB+l6u2W31uf7upu2jMiZX6rP3shIQiOFi/3ooQO7ExP08Pnl8oZhizt/z66G0SUXaO/s5TRL10vj5tfPSHJ4grq8+PeHbTeVXIJUB8C6+bR9O1xm+dNm32nzwkR1rqUsKI+NVnSk+5rRf2zXwCr+zaniKTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h0B5kD7H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bEkNbdcY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KL014K1530084
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:08:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bPoWw3jrSB4sufzDTe3r+Tk3
	qxkR/xWPrmc8ND4ZI7w=; b=h0B5kD7HN4kFRYOVBsS+nSPJ1OyK8xXU4foNMiUb
	hYL0abEnRS99Dwqav6+sSYozHBwVrKQOV7w4CeC4I8tyVFh42hT/GOXQEyv2EH2O
	yK0jEk56c0sG/gZBPCU9NsXUUQ+H/kacvW5ZobucggG5JjCxvw253/k/IuM6kwfG
	yP2W6yLoqUIKXh5bmxuhJ3jqNrNXQqzMtV8azNihJBS3TALgb/CQfYbyR1f9YJnZ
	eDkzloCD7gnSN9hKq1U1gpEDLAGqEy79birQ+0twpNpmlckx+v4mJyBOak26Qbdx
	Otttl9w4qLBjG+c7pD39jAWG2BNTy7XOLuHzaG3AS82/pw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bth83gbpc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:08:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bc4493d315so1584982085a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768950508; x=1769555308; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bPoWw3jrSB4sufzDTe3r+Tk3qxkR/xWPrmc8ND4ZI7w=;
        b=bEkNbdcYctxbZLBgltWvoQBkcnS3Uhn635d67EsxkrapaSAZEg/lRBlPhhNcfNqcTa
         gttUmlXGOL4b7vrzWaay4DDTwSnEvkDchWpZrBeY+nCwH8Py56MR6YG5KJQUJxlw5bv1
         Rvnd6JgPmQl2likLT8ECDj5DVadXFa7wLpw9Rt3enKT8HaJgFEAcAifg/X9r3QLaZnBe
         GUizSiDqt1EB/Slm/ERxuyIrr6+70ug8dW0YBzQNWC9/VVi32HF1tAst7GhJNwB/IEzo
         xXEGGQ0RIOgN4+V8TZF6G962Yst3y7ABb4C7DZhjqQiA33dmYWCZl6AJRWtk0eCMIlXm
         TmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768950508; x=1769555308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bPoWw3jrSB4sufzDTe3r+Tk3qxkR/xWPrmc8ND4ZI7w=;
        b=Hd7rJWQuJ7AOS1lhsEYawVaU5AIK86y8VYtAZdbrTPqQAx8uwlEYluqF/Hv372NPSL
         Eko3SccXw28ZgoY9rvEH0QfIGkebkg3AAOB4FLC5/1hxYQQ5bpvBuCV5Y5LZGUWvV5c9
         nGhErr/snf0Vtzg8OZdEfy5S+xrSnUe/TYYM5I4pcZj3cBnvGxCJSsddwT5V0mzN3aUE
         9Q3pYBivXDPd8cIcIVHLze+FBoYzjflOexpOeV9En4qlt2uji09P2e2Qh/Jp6cXoV5NN
         UT8gc145YhDqP7JXYW2U+ca0WmmCm8wqWSOPGYCcv5FDpk4kfsk2RO2m3vwhzbSniMlR
         DVaw==
X-Forwarded-Encrypted: i=1; AJvYcCUqg6wXQ4/lVO8aUGCBvPMrJ03ihr68m3aEVBpxg+ITuRB9bW+FY9+Aa0iIm1yF2iM2Pa8IOQwjPSqn@vger.kernel.org
X-Gm-Message-State: AOJu0YxjpMcEjygZUCPNwT4TVx2TSYCHOmwlv7rtQccllw3oE1265qOA
	0FNcZ0uKtDZcOZEsfWjnFKRYt6FxzTTLuJ3hjcu6Zqa/3VrMnlZbSo09W0B7+tLsL3uFE7rNxKg
	zvY/3rVO/3DMya7O0J6cLhU0+l51a2m2B90MAxgj6FmnOabbxSYfqAR2t2wiIlOHc
X-Gm-Gg: AZuq6aICBiKONXhNZt1k9Dx9kHoCAiaNVikhCMLlXHY8xb7An0vt57eZs2m64TXzBCR
	jzVzQhMylJpGlJuOCI9i5hq57eMelln3ow/dEV3mST8XzAKdpU5HMdTlHzvCu1bIX7YVvuHQewB
	/ZRUwwbDZyObk1Kfgs1zWLUOwKTKyf72KmF1rywuAitG0xm1oyHvgBMFhNoVuEldUShV8aYs2CH
	S/nYdtJBdkmfokS7BXEwkpcuTZgKgbEqRC9QomRQsjhrDA69ATbZx3j9gdCBnlZTDiUv0m5x7mK
	fpQWkOodWhJhoXi3+LVXuiOOrN3MJvFkYCDvMG8s+9KfRZGBpYISjxtJeRfO+kc2Lv5eoZX/tGh
	7qKPyoPE/KaLEUXfpt3vuzmUILTdPNUJ6nq95P31xqYk/hP0MZRh2ConNXZX0duDX/0NnL3VyIR
	fdo4D6yAcqbmxRpr3iAVDIQxs=
X-Received: by 2002:a05:620a:400c:b0:8be:94e6:3e6c with SMTP id af79cd13be357-8c6a68ef9edmr2120660485a.39.1768950508461;
        Tue, 20 Jan 2026 15:08:28 -0800 (PST)
X-Received: by 2002:a05:620a:400c:b0:8be:94e6:3e6c with SMTP id af79cd13be357-8c6a68ef9edmr2120656985a.39.1768950508016;
        Tue, 20 Jan 2026 15:08:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf397684sm4451161e87.58.2026.01.20.15.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 15:08:27 -0800 (PST)
Date: Wed, 21 Jan 2026 01:08:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: defconfig: Enable Qualcomm Eliza pinctrl
Message-ID: <ywpmgdcnvkttwpnxwjk4oqw7k3nqniornlijyimrt2efifpjoo@wv737kyzzurs>
References: <20260120-eliza-pinctrl-v1-0-b31c3f85a5d5@oss.qualcomm.com>
 <20260120-eliza-pinctrl-v1-3-b31c3f85a5d5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-eliza-pinctrl-v1-3-b31c3f85a5d5@oss.qualcomm.com>
X-Proofpoint-GUID: vKfIgR8OYNdNaqxyLb8y_CTym9oob2Im
X-Authority-Analysis: v=2.4 cv=TeSbdBQh c=1 sm=1 tr=0 ts=69700aed cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ibwh0kRmhpwBd6XjUaMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE5MiBTYWx0ZWRfX9TqMOo5WZBKO
 sOL2aUfGI8hO7R673kxiRQPMPHiK8cb+IsB5KpFWrE3Ofc1CfejLC9Q0zIi/RVUr/ew3eQOSOIO
 xBzG6mDsJVuggpqCOrvwWSoTsTU3JvxAvqXkm9k60mlBm8O5P/TfDUvNWKTPZmSBrMTJUmy4RBO
 R6BACMRnSDCHV2EzRd/FXLM/8+CJs2q9cQ/fDPCeJ7/+lisdoSaLvN1TM6T6Pp76rO655XuEYKs
 XNWTI4XYq4+hTGzFS1fJqpfeRaQ9/QZB6C8Xs0tJM1UOXEOdlKVnVbhgmBSrX0ETQbt3c7ZQ60f
 dwaZ/O/sZHrVwVRRe6FkcgP7XbYu3d2gOkqQVPGQsT0QarseYFxATCuaoJ5vT/43+BpThSMtzCb
 MpFiHry5f2usWE5GJkDKtailL2mOcbh28FGCyGLIca93O5Ydh9rPBnQsZX/lzZ2t8qJan6ltTlc
 i68c1eMYXZTe2XvUhcQ==
X-Proofpoint-ORIG-GUID: vKfIgR8OYNdNaqxyLb8y_CTym9oob2Im
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
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
	TAGGED_FROM(0.00)[bounces-257653-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
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
X-Rspamd-Queue-Id: D95044DE80
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 11:56:42AM +0200, Abel Vesa wrote:
> The Qualcomm Eliza SoC needs the pinctrl build-in in order to boot.
> So enable it.

defconfig changelogs talk about the boards, not about the SoCs.

> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 7a6d7e70d383..7c100e51af88 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -647,6 +647,7 @@ CONFIG_PINCTRL_IMX91=y
>  CONFIG_PINCTRL_IMX93=y
>  CONFIG_PINCTRL_IMX_SCMI=y
>  CONFIG_PINCTRL_MSM=y
> +CONFIG_PINCTRL_ELIZA=y
>  CONFIG_PINCTRL_IPQ5018=y
>  CONFIG_PINCTRL_IPQ5332=y
>  CONFIG_PINCTRL_IPQ5424=y
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry


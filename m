Return-Path: <devicetree+bounces-267689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPd4IgYTnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:55:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E10031812AB
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B3C430AB8FC
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8B6826ED41;
	Tue, 24 Feb 2026 02:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A/VDW1O8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bNB16/2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE20E26CE1E
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901619; cv=none; b=Vm/catGePb9FGyN59rG2cRSYNIZIET+0vZKakOyCNszA3lwwHRyF33haLynI9D72ATjXP5lLcSNTy2knMKkGR91EWju0q+bvn76Y2YXad+B5xyV0NDdNx30EcdSW35E+kJcG3vkhwHapfVcZGl67SN16k0KPQYnqrsHDFW9JNIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901619; c=relaxed/simple;
	bh=W8BBdVsa93lhkXy1HgKfWwtX97/mEx/O19ptBXjieQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XYxzOCksinv7LbIiYUyzZ6sxfEw7/Sf8zoM2TM0ICjfde1oy7zg4qQlHe1Fx5+DFRXIxyhYlAPjofojJ8MXhL2PK5pFiz2as4HZEsHzJeCXBssYK41XR2ozo/yPoUgcuimbHwDrzhTCTZGwBtDZxqTjWUXI5BFJkxZG/E3KNM0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A/VDW1O8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bNB16/2Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O2m28w2119887
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=95WCvKE97NdLyP2MnsuDGXuZ
	rq6UtGh+pSzps0Zeq9c=; b=A/VDW1O8xh8zTCjFm2+0cM9txf7IuYIFXWuxcbrG
	Iyj9Frlk2JjQTvy01yRniXdrWhPzNtQhElG2J64woghCqbYvbqfKQ4N4R/RoU2e/
	OmtEF8k71MiCFCH8n0nYDJoptE5aihy5iuyVd0+y+THU26VVMfkP6rSjapkoEOS8
	KCoHFTOMGVfV3Cla+9p8ddstnf7QrFtyUdLz2yP6pep/P6fBTIcEPB7JOrwK5hN5
	bR7oldxdQloffrgi/p9ML2G4suNW2ZCmb3xyhpBMygcHUoJtv7e7rA7fhoSGR+2m
	msdxD6p9/h1wuEMzPXqdMFNEtwGkypkz97uufavsihhGjA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtyj9f77-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:53:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3a129cd2so6046450385a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771901617; x=1772506417; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=95WCvKE97NdLyP2MnsuDGXuZrq6UtGh+pSzps0Zeq9c=;
        b=bNB16/2Zw+29X1dqFYGZzgiZts8vs41nQx4KUJNF5XkNpDIk2+GNMZVq0zbCbV3g2s
         yBfxlaBuUZd265R6OdlgwSOYmCx4wscIui1n5yeiEYKjFLHnpdFqZIyH/lkEA1u8Yt5Y
         kfZQtkX0197VR8D5QqqXwnKkc4U1ntYrDj0aG2Cd/Yfl+4RxuilyuEP6BD7jvsyQvApE
         udEc7Ru5QNqGhkild+IsZDb5vm0hky6byDhbRD+Bdce/ChnbJQldsPCDQ+RXh0/IVcpY
         Kls4Q77lnOzuxRMthIpCAZK2GP3CqnPPfY3aW8fTo+VP2a4PRlnb74sfrJDj/N/RTmu/
         mmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771901617; x=1772506417;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=95WCvKE97NdLyP2MnsuDGXuZrq6UtGh+pSzps0Zeq9c=;
        b=WaFFvA//fkPQfrgVdMRFHfkOxve7VQytENLRERYu/w/hn9FN4s8BrPVSqQdHxXPXzz
         2Gkua7+Ivt5LqVuD/AW3Xy1AWmbIK9q32L8BtxjcFsXuvo1yQcZx9Aok9YZT9zQdLhcA
         Q6d9cXH/Gmcw9dP8GBJ86CiUVngNRAFAJjZML8KU4EI0QS2PM0+AoWvbbnZfz9m2lVy8
         QEa294nSF5bC+U/7++yvO7G/Qn3I49+Ri+OJqeLbtRQ7764aQ4hu9FUEunFwi9Z8N10O
         pA0p99VMqzsVg76lq5G0xlVYj2mgM0oxxGjgZqj+meZB3roU4NEeHpbMFfNnBC7Xz5LI
         HBGA==
X-Forwarded-Encrypted: i=1; AJvYcCWfefUKCKFsFnhEU+O23nzF1E6ydiIZAGSE8NHeepRPXpR3hkGHD5P0rF4dAacF3jfH340hETi2wC7N@vger.kernel.org
X-Gm-Message-State: AOJu0YwPvIm68KCgGsOoJwzVq4NZz4INHllsgsQuyEuKenYZyeO2bqhW
	G0kXg3FNT2l8mWiKWNc8pOzTpQ6RU4DX4vAMprQoVdyPyZJ7sBE6G+V2mYVVR/apmqlUT3BFT/S
	xdzzXyzc2kIyJaeyV4ZuXSC6MBMZP7fbaNro5LMriBWnRp7re8JY23qAWVQgQMrFQ
X-Gm-Gg: AZuq6aKBqhbj0uNtQdpioIGB41eDhCIvrWHKnXuclp4Tkxjwg5xZgIeEDUwZLngJ3Ct
	4JaAnU0F3bPpifO315hpIlYg4iebpySOmMSvhenr/ptlsyJ4YNSomaWvCOxyRWRUw9V95dHrQ8I
	en/QuCJ/VxqbQBHS9dxt4GB9dU44b9nxIVEtyWwcRndiO6EuvvrI913YIacftkltgWDtRrt7G5d
	H7BHsHQaR/AfopveYu7oIOsVOuJBaPzEbzkd8eNcNWnANxcabQjxUgQRuZSNMMXIb8UO2z1pRMd
	qIY71Oum+FgdjcEFOiJ7mR2gg8e4PmC7seWeLcZm4N4rCJg0ZQvx2+mvrlKG2fwbL+2lBxstyHy
	t/r79TeQET5vGixFoptxzwndyg1IjQkt8LnlsN6gnsAdABCPgOghmZiH+DsjYlU9GNM8bYtREUb
	MxRNVXswQbh8KjHp7Su57bi9Uws2gUxYDcEDM=
X-Received: by 2002:a05:620a:410a:b0:8c7:1271:f336 with SMTP id af79cd13be357-8cb7be3b598mr1899575485a.2.1771901617071;
        Mon, 23 Feb 2026 18:53:37 -0800 (PST)
X-Received: by 2002:a05:620a:410a:b0:8c7:1271:f336 with SMTP id af79cd13be357-8cb7be3b598mr1899574085a.2.1771901616632;
        Mon, 23 Feb 2026 18:53:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a78799e7sm18391061fa.8.2026.02.23.18.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 18:53:34 -0800 (PST)
Date: Tue, 24 Feb 2026 04:53:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qrb4210-rb2: Drop redundant
 non-controllable supplies
Message-ID: <iw2uzz5ywv75hd2b27zspjyca4bqiuw62qep66ku3u4pmuzzen@azs7sspcupvb>
References: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
 <20260223-qcom-dts-supplies-v1-4-f90ac885b3fd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-qcom-dts-supplies-v1-4-f90ac885b3fd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Jq/8bc4C c=1 sm=1 tr=0 ts=699d12b1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=YQIQ00YL77e8QyTPvtEA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: _p8BXp7m2qjms1Nfsi4Q34az_Ym2EmD3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyMiBTYWx0ZWRfXzC3XrYjMkhlQ
 Cu5ZdPTOo3TS5ig/ZroCxzZiNUe7L4eHhrSEKnsIonKp+OjHuVAsdcWvE1S2gujV6aaeFtlqNKD
 wUfb7fmjat5NcoEHlu5y1cEUHIL9v0/qG/jpugUX3w/0noR2sAY7gZBCOlkdvoJptaRZ1QCs1/E
 /5RNkciaf0M602yYfI5K0zwACUHLxSqfXs6mLUHCZBqjTQMBZGpK0LIH03e5hOqRxYllwf4LgXM
 7I60Ezzp8+TUGvkdgjZKYC1qkPPBJMA86pF20da2+J+XoBFB+on/mzT83zu/a5DyYLIXxPTVkpp
 RoVVSKE5IMpAJvrwbJS+Sa+hg2lSMmYJQ69jmeNQ+ywK3Lfpuk4tqtwMsDBdewc3N4npJrfaOg0
 1izw/Yx3DquzXS0SN9VvqBCnaKyF1XHXpGfvPnAqTtHLh4/YdAni2IC7AP+4p0Oc/LJbthjuMTJ
 NAqY399HcsPF+GEO1zg==
X-Proofpoint-GUID: _p8BXp7m2qjms1Nfsi4Q34az_Ym2EmD3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240022
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267689-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E10031812AB
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:54:20PM +0100, Krzysztof Kozlowski wrote:
> Drop completely redundant non-controllable chain of "regulator-fixed"
> supplies, which serve no purpose except growing DTS and kernel boot
> time.  They represent no added value and because of being completely
> transparent for any users of DTS (except the bloat), they should not be
> represented in DTS, just like we do not represent every transistor
> there.
> 
> They were added to DTS without providing any real reason ("The board
> hosts a whole lot of fixed regulators. Describe them.").
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> I really wish people say in the commit msg WHY they are doing things,
> not what...
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 45 --------------------------------
>  1 file changed, 45 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


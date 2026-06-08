Return-Path: <devicetree+bounces-308202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lfHKMEiZJmrQZQIAu9opvQ
	(envelope-from <devicetree+bounces-308202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:28:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B71E565512B
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 12:28:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=AYmamVuI;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=hir1ueIX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308202-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308202-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 014A830080BC
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 10:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE8D3B7B79;
	Mon,  8 Jun 2026 10:22:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4E43B1006
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 10:22:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780914159; cv=none; b=W9A00uFg3U7pmX8RcTIKN0VoaOPaCvEARtvSVD8PfIso4+e+oN6PXk5/JjfjuRlTwLSFOjTSX1QR4iyV3kTkFkEg38jAjCQqqCva3zrBEkY6yfhLn+ogjq7Z5mCHsupJIChlNo5kPJ/9pAPH08b2jYdcJs7GRKOX9Oxfss2T+mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780914159; c=relaxed/simple;
	bh=2zV7V26zU4pOU/kgTmW1ImaHfMZhebHeA7Bki0BNmjc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XsMERo9iA0X/dn6rb9YwXIvO+f4RVVoHeBJbU7Tnbe03WX7J6JsA/I/IPdjOdkrD18BbYtCiwXX1iRO9ShAKJkhGDw8sO9jOuuvQIa7WeJ2KhMhyrYpbuz6R7fh8KxVEXCKt2gQXfSEQoDMmTuaSLAc0ApTDFhbxJ8PfiXXcRJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AYmamVuI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hir1ueIX; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658929dr2677495
	for <devicetree@vger.kernel.org>; Mon, 8 Jun 2026 10:22:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RYvl71QtDzEZ7qSnEjRK/0Px3BTe2QEgb2RI9epOOUU=; b=AYmamVuInxW08hQT
	1Dr2d/29gXXEMycGMyF4zaT9Gwwos7EpLAQHWux+tNwYa947NqDrmicztu9HzBH9
	t4nsVjhgRHgHLjXIUKi8VCE7DgK3eweVxqqh1tGafVm+m46aSiM4outvodlYh26R
	uZArtAv/FG0gPQyvZM9FHa/hFiNsF8gtCCw1FX9uF+VB0gp8W0+3GSocbrQB+E8R
	c37kGs6O1CnkV6BfVsZIibuH+1BIutlsiqkWfj6YFFAp8jLEZ5HXSJEpPvXtmVp6
	90wjoCkOP9UoWsJ+yOQR1AUh3BiqtUESHdKPxSK79KCO4LaWWkuvPnIHy8K1ppuP
	dlyFog==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4entrkrbe9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 10:22:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5178a632a12so11736491cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 03:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780914155; x=1781518955; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RYvl71QtDzEZ7qSnEjRK/0Px3BTe2QEgb2RI9epOOUU=;
        b=hir1ueIXfIOwLcm2rtW0XWKyGH9YtAUFdHXDao9bT+hkNCc2XUhsm5lUPd/FhwzwFK
         67IlKXUQNhO4SObUKXBLQ3+oSFQGdlZP9GmNrJSXNRx8NdN8ibw4jUZYknxn41zmfebJ
         xNCSnrVJu56NyuKDrpmIiLsTHCwRyw+T8JrfVeMgq3rWP8Zl7YUWSpLhLRTMqwdSD7+K
         4TduVpuFwTVOydfDe1EMThXcC7SsF2Vf/Zg/oqiKGG1amAcNwAMtAECcbZy3LoNRwlI0
         gtH7Ii2uAz/J71FxQYPdA5xepB1gEWiIs7c9RmAgyMEVfzjvcRdg3SYDT+DSYgXOuQvx
         9n2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780914155; x=1781518955;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RYvl71QtDzEZ7qSnEjRK/0Px3BTe2QEgb2RI9epOOUU=;
        b=T0DzppTX9agthO7EtcTAKsBzOyntTzIx4z49SdvW/8MN3Gx1SpKUJmTtWffphgCi9f
         oxr5SPpjEQBL17a5u/gDMaCslBSshjR80lT0t4AUUWxfYCuINOL0NJfroUhafxQvvL92
         Jz+LhfQQ741YViA8zqJphX11XxxKN+o0+pKHLNqfTlBDGRgVtyCzNu0PSTYLTn0gWWI/
         waL3l4I3+KmYzq1g90Bufm4jF7tOzEuAVI1PD2o+YuPciKG+NFX4nLwvTS4d57+m3FGU
         /vEtZOc3Y9aTjpULr1f0wbNvzAGRqX3rlibye4l9GmEsguEtFnbyxpwLuOO0/dZbpZAE
         5Atg==
X-Forwarded-Encrypted: i=1; AFNElJ+5hSMYdxOg9YrolCAxBA/ri6t2sY93dWVJaM2vQXR2fS5v+XHPxpkJUJ1ZW2YB9XN9djMX+BJW5APF@vger.kernel.org
X-Gm-Message-State: AOJu0YxGjxAMEh27in0kJP1nCHJx9z/AoQV6LgDBPEwzYDolfJsLbM2n
	njUqN65b/MP+ho4vBhhUoJzeM/00MGI69p59yCq/POTBy/QrzQYBmBHi3PL3MZYNyONcKTnBo9O
	Sq1Vyd7DSyz6bPGuQ1Ty8VKvWxmg0NIk+17st0MJfoYTYh7kyZmtmT1c8MSw7KIhZ
X-Gm-Gg: Acq92OERub8eAn5wDlOeopce95fGBleglJJGCXrnC7dPN0whd8w3sKCVgkAqLxd27mE
	h6h6hxgrZbU/CLqbnw9cMSJcVhaLzThaD6GkyVkEuNgkGTNdMsvGtv1gWAattfXwowdW0Qu29CU
	L3xYcA6fzfOLI3s04YJLEtwZvJJS9O4ndFN3ah5bTdVd4CShoqdOcxyJJ5qXbdq97ysoc5dTb9t
	zl4VdLA07ydBKN6Z1ILuqf2eyhEtIor65wJYqFjTpqiPBhd+kp3J1fgL2iARE6WcdEox4Lz3uBN
	+TKCSEeilXKMJERmUV17V8IAjw1mCAOK5dtlB93MdZiOxw0y8euHHg3H2FflL4Ug0NFo0/C2aio
	Zvvw5kQ/uO/R3uDKIhw/zwoRuCH08rlOoNQBWlwe7UslpbkLDxDWAyVTS
X-Received: by 2002:a05:620a:1787:b0:8cf:d289:d0f3 with SMTP id af79cd13be357-915a9d85c2bmr1432112085a.4.1780914154931;
        Mon, 08 Jun 2026 03:22:34 -0700 (PDT)
X-Received: by 2002:a05:620a:1787:b0:8cf:d289:d0f3 with SMTP id af79cd13be357-915a9d85c2bmr1432110785a.4.1780914154487;
        Mon, 08 Jun 2026 03:22:34 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65b58596sm6917561a12.30.2026.06.08.03.22.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 03:22:33 -0700 (PDT)
Message-ID: <c59579b0-8c88-444d-947b-615a623f42ce@oss.qualcomm.com>
Date: Mon, 8 Jun 2026 12:22:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: ipq5332: Move PHYs and PERST# to
 Root Port node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260602-move_perst_to_rp-v1-0-8ee5b80316da@oss.qualcomm.com>
 <20260602-move_perst_to_rp-v1-1-8ee5b80316da@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260602-move_perst_to_rp-v1-1-8ee5b80316da@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 6kX23k7-NHMcppz5gixRRmFJoMXIu8mv
X-Authority-Analysis: v=2.4 cv=Z+3c2nRA c=1 sm=1 tr=0 ts=6a2697eb cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Doh2zD5oPK5BlR8ocyYA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 6kX23k7-NHMcppz5gixRRmFJoMXIu8mv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA5NSBTYWx0ZWRfX4zf76HLjbj8V
 VVTJw0gp2atAYAfpAS74vw1SzHae0s1fjpM07CcfvgcpQw68ewsZ1pVU9ZV/TuNlLkTeIdnGrtA
 uBW7Ol75lmyV0oc880UhHcObQRhqU4nQ+x9+2PI5mY/cUpfcjAmkjJxHJRDRMKL1KpNwLsnx3VC
 yw8ODSydTkA+tHqV08zh92x/6OklifF2SlhGVQ1Ou6I7EmLY2k9NxnJDRDr/Ps74l5Ky6YU4URZ
 7duQJu5KrlytR2WFtg1fiJYi7suB+ZkBGl7PpOkWgQqtWCkJjxe2tTRqwS9l++u5l34MmSN8CAF
 3G2kqABbQR2SdBbtCE14LZZIjyWFDjn0ot/nhl8/JCTbRkS/UFz1P6fG65RBvuLfQdd6jEwH0bJ
 /Aqn2VRzbsk0fg47MUFkuZ1VdNVFUrE8D7WOo6UBT1kJJ5aqbtIuXP2kx47BNFlWvGRAGot9Zz1
 Eo8swtbnVxQbjgl4MEw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606080095
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308202-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B71E565512B

On 6/2/26 6:34 PM, Kathiravan Thirumoorthy wrote:
> Follow the new binding style by defining PHYs and PERST# (now RESET#)
> under the Root Port node. Avoid mixing styles and move these properties
> to the RP node.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

[...]

>  
> -			pcie@0 {
> +			pcie1_port0: pcie@0 {
>  				device_type = "pci";
>  				reg = <0x0 0x0 0x0 0x0 0x0>;
>  
>  				#address-cells = <3>;
>  				#size-cells = <2>;
>  				ranges;
> +				phys = <&pcie1_phy>;

nit: other socs (like hamoa) do it like this:

pcie3_port0: pcie@0 {
	device_type = "pci";
	compatible = "pciclass,0604";
	reg = <0x0 0x0 0x0 0x0 0x0>;
	bus-range = <0x01 0xff>;

	phys = <&pcie3_phy>;

	#address-cells = <3>;
	#size-cells = <2>;
	ranges;
};

Konrad


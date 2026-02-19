Return-Path: <devicetree+bounces-266607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOUwI1vWlmmVowIAu9opvQ
	(envelope-from <devicetree+bounces-266607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:22:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E05DB15D564
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:22:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43E6C301F484
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E03338922;
	Thu, 19 Feb 2026 09:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Us/RhLff";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D193ZhWg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1E010F1
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771492910; cv=none; b=pIU5rFyC7lOQUKdXx0u1aJUmthvLDoXZxqynrp+8BFyM1ov2hZc80CFYtYcmTJ2hzBwWzZtApkgALjuE0XXFOw6qLGYHtaLIwyoER6OVWKUH/rxWiOVsMy6arWzNEUVpm66Sc//gm6okHkG/R7vBzQMSRDkuP8JzMAjoLCLoZ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771492910; c=relaxed/simple;
	bh=F4CrNS72BqF37MrNJfDOskQGDaNJvrLv/k6/7wTb8/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XeiPajyrt/Tq9G7I42o0D0WLllL5aWm4kxQk7NQAh/BdZ4TmVdp8NRyJUQaODlwPp4AklTiIDfqunrQKfjCXW6OuWLoMQ+TC6hfHpWtyFfbTgYaW+P+4CuWpv4y2uCrvg9JRsJDBomW3m2n83euFm41SqJatmbxngaDp4Jaj38s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Us/RhLff; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D193ZhWg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J1F9kc160722
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:21:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U3B8eEevosduq+DKYCFjUdWy/QcE25leaFB6RdWGJGc=; b=Us/RhLffHurJZZnx
	ec68tYteQo9z1hSnB0WQAN0cKYDL6tM4UYg0S9u9pb4qhxBgQfhzdpwGXwMmdHUn
	Ax/wRlzDL9DuQWGTyeG7GdP1W4k7NYo+hARqASWcs3U09pae/VT5+fE64l1T52wE
	xIH/j7PeYwoBtMu2YV0I9TlDbnSprSgdnE6Cf3ZjsnU7xHd9rnXCOJA8ToUuyASy
	NiXcQH4r9VAhs5dxHuwT8pm63YjnUYtaJcRpjjjrlDmOaxVPkz5qV7LCBw5Kc8e5
	WC/JXIE64Hy0lc5ElIrDnwpI6cFs3a3h+MuVS2hlyXY9z4JABewBbvEnAVAyBt8c
	J12Kxg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrpg8wdt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:21:48 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-897193937baso7412256d6.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771492908; x=1772097708; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U3B8eEevosduq+DKYCFjUdWy/QcE25leaFB6RdWGJGc=;
        b=D193ZhWgtL8wqdrA88V6YPXyFnONKC6tJ2ABmex6XpWgZ4fqvMe7hqJy+blKnblMSZ
         95wzNo/u+yzxrOFssP9h6kmf1bpATxqYCNz/w959lGMMqQXKzFM8BTaCNBFxRMEplyLq
         xGbyLUlAkuCCwnJxiiiY4RBvm25fItxnYSt8YFHnJNjX5jFRPZMXbIvCz1rIwqFMRnxS
         qBVp2DTYdlpstu7udJf0FAe/WwyIUiJwdHZQITcF45fscr73ImnKnMTtyFhbxFDC5AH4
         CVnVJAmVJwTIRs490OW/vpF5QFzF3CkRs3ZMK/MpU9Yw11/Py0hEq78KJAtGmajriubR
         vOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771492908; x=1772097708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3B8eEevosduq+DKYCFjUdWy/QcE25leaFB6RdWGJGc=;
        b=dFGtrMnUevbT1brMnB76BH5nNcjiK/2w/AxWPmMJMyIcfyvj0ryMmEWsTQXr14R+/6
         ljSNYG6o9LhAiUxKzJYgAEYgSm07EMWAiiJmuE0qvd10iPzL3AZMMqE71exxRqLS/3ux
         D/x1SUvELAi9+1sndXqJFiep5a6Tv7hfmG4M3eR9u2iX2WG9v76IwfUk4MwyPIQwfD6G
         qL3tAb3ScEhrHg5ynwV2Tq9Q4z6Lhq0pjJegiPytdxmRfWLD+4AGFvxNzwUCfWPemJqs
         Psw9cD5iIMaeY49uxr6L77PNjTWHCh6LlmhIuh7kLBW/j3nLazMWgjET5ps6sND9xFXM
         lg6w==
X-Forwarded-Encrypted: i=1; AJvYcCUkw09aLDSlztWU42yQjAozQlFOMQkYUl17moi4IIX1sgMusWGXZXXB6rIj6XEaQb5pj3CcUKsZL/2A@vger.kernel.org
X-Gm-Message-State: AOJu0YyBiqF4R1F3AtD5R/WNeUaQEoOdmPbUTnCR4WiM3t/neUDyMk0A
	OPJ0RzCN2uMLi4wYq/oFvx8qU7UdGxX2v6Z9dSEu/QSPsBNdvtOcWoIr0nwrbA8XyY/3wKblwcQ
	HDYukpxL9TnJHdYdn9dpljaMwbL/N3bIe76/JtMYiP0pA0HaOe40pOvc3JrDfO9u8
X-Gm-Gg: AZuq6aJRvAS5R4ibC0/wiP0Mpha1mZ7oWCloy9oH2JKVOx1quq6V+dUOYvLnslQZvQl
	MqxuDPcKwllVrb0K9kRB47XRSPeksBMzn2mpub2Sd/NOpXMiOL+b9hMBNHQUJdTf3N9BBdC4gpP
	BXVYA5q5FQRdiWY4+cpsm4IFs6WGBQBXGJ1X1/a3TVEg//aXXQwe6chiaAg9+fGJ+GvmY1D5Dg/
	IsCem4Yqd/pDMfGYrrbvAtBYhQmhc11QQSn94Lo1Yh7Ng0oI/eeq0JDeSW0mFJJWtNcvSa+VtTt
	CeUEYZNzGXuwyMrXDlmkFmLsIVkMcgVLC7vYw0NWSQdPjecKf182Jna5gG2hwlh/11QMDd/oYuq
	CGUtHWWzMNQNqJCUEt3Oct7scrUV4Hg1G0baPq+/TA/xGXP5i/I/fnR3l61tSz1g2SVzKw4Rc8U
	zsnec=
X-Received: by 2002:a05:6214:4e04:b0:897:3f5:6a92 with SMTP id 6a1803df08f44-89734709680mr224289866d6.2.1771492908133;
        Thu, 19 Feb 2026 01:21:48 -0800 (PST)
X-Received: by 2002:a05:6214:4e04:b0:897:3f5:6a92 with SMTP id 6a1803df08f44-89734709680mr224289756d6.2.1771492907757;
        Thu, 19 Feb 2026 01:21:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7691f0esm553696266b.60.2026.02.19.01.21.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:21:47 -0800 (PST)
Message-ID: <58e9a5cc-b85b-44bb-8af4-21a4ff304321@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:21:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: sm8750-mtp: Enable display
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260218-sm8750-display-dts-v4-0-1743e9848864@oss.qualcomm.com>
 <20260218-sm8750-display-dts-v4-2-1743e9848864@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260218-sm8750-display-dts-v4-2-1743e9848864@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: r2MMDkPgURWXYbtxUVom0HWTIMHewKft
X-Authority-Analysis: v=2.4 cv=JrL8bc4C c=1 sm=1 tr=0 ts=6996d62c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=RDxhGNbnkNDaWsAXneoA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA4NSBTYWx0ZWRfX4Sc6zlXhVefn
 d4Xno+B3NC3excmWKJfni2BCBok+Hj9mMgHLEnI0NJTTTX667O/dpZRy6FNyJiEeAFNvUKQ1e73
 WHniUYMQtts/dsCMKa4IylySLSJZlCyqYXdvPGtQUht06HUNDgckMJzocb/pg0IDLvltnX66MaA
 +RCkMnMiJyDxuWZ2q0xb2QHJ3UVsIOMLDXBRKMEgTrl3eQXpzWvhz1r8WMQoMKZe4fFEb9OET9q
 OjqKNPBXzC5Shbm4GaDQB2BXb15T2B/rw4hWx1hvFvXSb5yqaY4W/1Hj8bg6C+QpqH/OPcMinBC
 EY+TWMCOSleiGE9Fu8o01dgaoIAriJYkNev48bcPHxXxoHQfFAouFjQVqVLtVzLtvV9H/X8S/Sf
 9BOzJHt3pVdWB2h66lcoPc9o8cdAUdgKurExrlbdF6AqMoWLN7r1RkfXlp3Az9EKdWaAC1pDeqD
 XmNfbTxPV5IzzlaRAXw==
X-Proofpoint-ORIG-GUID: r2MMDkPgURWXYbtxUVom0HWTIMHewKft
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266607-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E05DB15D564
X-Rspamd-Action: no action

On 2/18/26 6:05 PM, Krzysztof Kozlowski wrote:
> Enable display on MTP8750 board with Novatek NT37801 panel.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


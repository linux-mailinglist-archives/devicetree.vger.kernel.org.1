Return-Path: <devicetree+bounces-273256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD8eEfyar2mvawIAu9opvQ
	(envelope-from <devicetree+bounces-273256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:15:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC6C24534A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:15:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4171D301BAB8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2668E2D5C97;
	Tue, 10 Mar 2026 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZLNERmQ/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eSgA0dvo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC81522F16E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773116154; cv=none; b=hBsNnHV+j0+Iw/94gFIu8tWLyYljEn87tNX492P7u/X1RP+xNjDhSFL9G1Rnk9+8DiG2yjMdQBErFRuynWenmlLw4JYPbZBCEGFuKSuaCDEgpwYxrPxFBmx+HB7YE/3NsJtrzrB6J+yNgPbGoCZdBJEJtUJ7QOzkVlrxvjIwk70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773116154; c=relaxed/simple;
	bh=f51VE6sJX/RXYshcjYQsXKsEcNE3geQPu6lKeol6qGs=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=DONQKhZaEs6ZlqakuinKc6YWS00+tU4xp90y+6CHCbWeC9fmutucrG3VAWE/DQNR7WqxP182E/JxjSyasgGW5boaXprT1skJq4WC0oIF2opm6VR3PVP+l3mN+Zr5iLtrqM8K7nA7tNebw+EGyOP/v77JbXzVamfKl6JASsSwO0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZLNERmQ/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eSgA0dvo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EAiX246492
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:15:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C2hG4y6CSLvagr3xcq/Ogt7zvKTJuHqWEL2nllvvJGc=; b=ZLNERmQ/K+0qF7aG
	gyL4s+m2PA8XZaVe7lgIRtQ/UiB//qyUmj3GSYHLqegV4qY2oJySrYmSOWHZUJAQ
	9Ywqkl8RS+VQN6NUo1mEuqPXrTpPJmQ3E6dMvCfzV5TRel+QyMNI3dXRjpVSrlQL
	PnQTL8mbcwT7IFjQrP0j3ESAyoeQAGLi4z9awOaKpxTnScEMIkPMv/4keeAP49Zf
	YzkaEyaFuE7a7qyIUqYY8+TqCOulz0o3BMy9O5MaqohA1OI6mUY3inSOD+3282Ud
	lKRYjnuvb7xO+j7aqhSg2ufShGUdLJxyT4dzD1FdH72yEeYLkk5gCcfsL+lL5Kne
	7zxQYA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct8800qra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:15:52 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35842aa350fso58567956a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773116152; x=1773720952; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C2hG4y6CSLvagr3xcq/Ogt7zvKTJuHqWEL2nllvvJGc=;
        b=eSgA0dvo8ZInL1VjMdeCsg3LauOBtiB8dKvUm6IjEJWb72s4wUDRdmrkV6Uss1GE1n
         bkcHGaQlwPMCtzMl36xBlYM+YwH17rO4zfViKOTT3LamcDnYNKVNgb1aBUsz5lWCluS2
         XtLDA/w9Tt2xNllytg80GCgHoxgONN3Me4r2qtebPbjV2JqZ1IFfLiZ1nYjPFxjOpSP9
         YG2pTX6lIOtxk6Onhfbh07DMdDpllvcmYYyy9APCdLyYpN9XUBINEoe69MX9+b2KxzNd
         P8lwFlisYhaFJQZqWIsUZLYIuu66EgdYwxNS7dyJlGAhelEjZHm11tl+d4U7VvvjLsRu
         Lb8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773116152; x=1773720952;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C2hG4y6CSLvagr3xcq/Ogt7zvKTJuHqWEL2nllvvJGc=;
        b=b7c67ZfbRzt6DwMAZQSTKNvh6UAvSappViYvcAKAItfJfOdIXjFJJGrySZAbvQTDY2
         Ix/Di06XOubhP87YyqpZnRN1f0ygmiO7oFX2OkguPG3ntHBUmcE7cg04FXItjfA654Xp
         FgtOyRnqxeQLPHR4GbABKK2S+yhQTQb5nHBZ71Hh7C9PcXl5n5za7HHHPSLkwCHBGP/j
         ZjOmvlaDLaG2435PI34QzLhD+ktvWO1+HXuM4XY0QhzlqE8XrXdxe8ovXi1+l5CXIYLv
         PSE7/ZtmEY5C4TcWPJBpyf8KaYqmHV7hP0iZkbfcpRxCU2jucLPjyuLtwyPrY7AIHi9I
         /KMw==
X-Forwarded-Encrypted: i=1; AJvYcCVE+MwUrt+SX/JvkNHHPnE1FEZtvjDcnuBjvUVPUKVBHsye8GyuQb8CpCfZOJs3qG1XYp6RgIWoTQrv@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr8ZxIappEcRAw1OsWXKM8DiwU+ktzsn9saN/c5nFMZF3yUMQT
	j5Gve2aQ3oTdouVF7GuPX1RgfQ60tId2WVQwn8b2SC77fFWqs83MIKhz0Qk26IERtkp+1NkdQZi
	sOylVj/wth8/cDRKBIbGbuZKBcS6VRYvz0wo0B2mOgpmIpl/XZU0hobumeBuS7Nw/
X-Gm-Gg: ATEYQzyL4cuqeHBL6JWWLGDiluSJdOJacCfdxlKGi4YvjkUxA/YAq1n5LlUC4avcDdO
	bityMM4/jmjMPdM67hFhA0v36DXOFT7kcwcTOlIBYwPnr2cBYu9ORlNehuN/SO6LE1JJut0cKcu
	S78RUhuqLQHHfksvrI2EV6LC0PkeuWMu0m+PRnoNtlIYkrx4erXytleejep4yMWq8FpRW/OElBW
	0C98xzomgdBTDCa9gLv2vsC2mLhje+CpZPSXN9whLchrQzXeLpj9T3N0GvTKu0T7H8wyLZvhAM3
	x/EyFJSO6DP5Cd96XG1FD2K/dJc/4yTBnAQAFUGlFdM5fTBBKvjVbux36/khtADvt7ruMXafz+5
	NbCxFeGc5tDApEAHZitlSfKzxfDXllZctrHhE+WlEBvdDGkOUxA==
X-Received: by 2002:a17:90b:3947:b0:359:406c:49f3 with SMTP id 98e67ed59e1d1-359be32e852mr12428057a91.27.1773116151617;
        Mon, 09 Mar 2026 21:15:51 -0700 (PDT)
X-Received: by 2002:a17:90b:3947:b0:359:406c:49f3 with SMTP id 98e67ed59e1d1-359be32e852mr12428025a91.27.1773116151174;
        Mon, 09 Mar 2026 21:15:51 -0700 (PDT)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359f088e3casm1332498a91.11.2026.03.09.21.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 21:15:50 -0700 (PDT)
Subject: Re: [PATCH v5 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
 <20260306093332.4193993-2-neeraj.soni@oss.qualcomm.com>
 <20260307-llama-of-massive-downpour-2e512a@quoll>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <704b2d33-102e-74d0-781a-a9c7475ab0f2@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 09:45:45 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260307-llama-of-massive-downpour-2e512a@quoll>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAzMSBTYWx0ZWRfX3MCYSntfTaSM
 tWxT79CXBkdDTGDrVa2dEKmFcTVH7eXjWapLmUmGxEdMNmiiPu1Ej5sTycyQSWmWRsEEbzMBerc
 O+KTtct0UwSJnEsIaN3xYuLpj2jHfMZ2u7HO4vzlTsVCcTxHX3pK9ENn3aPGQlO69N8gl3E2Gum
 xllHzO5KbD6Sg8wcYhgLur8L3yZsDgjINz3++ZWM8IzCCvApTAXSyNaUu5iYt+9MW+APXP6DlEE
 qpYxzQN10WRrpbZtVo8sTBEjUyPF24/SLGRCx3aqyIYuCCVHbW9MW/6usJuZdoDrWnI99GHqIfN
 g1bKV0yoVM3gfpk998yI5RiDxOt1XEQZ9q7Lb33Md35HQjf4tsztzyaVTvw1eFCNGRCHg9KlBSd
 yWaBDl7Ylg4lF5N2ygAnpRmhYOFwUDMLQXm9oG7VDJ9TCwhzkkHe6MNtflr3Iu8oyjqeEOd6LBB
 wEUVmG8Mpf2J9Q2vohw==
X-Proofpoint-GUID: PMG4KpfBSXb9NbEuDYatU198UG7pWVOu
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69af9af8 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=9FgRAxV2nyzNKyt0_24A:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: PMG4KpfBSXb9NbEuDYatU198UG7pWVOu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100031
X-Rspamd-Queue-Id: DAC6C24534A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273256-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,bootlin.com:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/7/2026 4:06 PM, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 03:03:30PM +0530, Neeraj Soni wrote:
>> Starting with sc7280(kodiak), the ICE will have its own device-tree node.
>> So add the qcom,ice property to reference it.
>>
>> To avoid double-modeling, when qcom,ice is present, disallow an embedded ICE
> 
> Can you finally fix checkpatch warning? I have impression you ignore
> checkpatch in each posting.
> 
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> 
Sure I will fix this in next patch.

>> register region in the SDHCI node. Older SoCs without ICE remain valid as
>> no additional requirement is imposed.
> 
> With this fixed
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 
Regards
Neeraj


Return-Path: <devicetree+bounces-222955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55331BAFC1D
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E5E12A2DA9
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F51C2D8DC3;
	Wed,  1 Oct 2025 09:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BCcdx13r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AED28506B
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309381; cv=none; b=sMDD+r36wAIq82SCz1fIJmhYAo8CPjIXTTbDyRS4KP3t4LcYCWI8l2CfYpnDglh76Yee8WXGpW/eX5ptOfYyGXRzG5bqBFdOAVsLG+L65NCcqD84SefCmDXNsAKr5fwjOKGqx1udu6UkKA4AJ+vB6RyTDUYqJC7wNbhLiKG9Icg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309381; c=relaxed/simple;
	bh=rz85/arNz6RsO3g0zililQ8uETwv+F0iyZRoWVQC+EE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=an2b+pCBTn5QzMwy114NrKEXF5oNar58hD5nBr8T431HFJ6gQaUn7NDJHvB8DYhNh0+57Sh0UGyJ0OFwV8OSX4Dduxu+DeRoNCf6c2NArwmiODIa7HzY7hq92FtmM/Osbyb5SGOSvHZZqTnwJFrtGsU+uyCtJ0jAK5IpKLiWSbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BCcdx13r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5917gqur013504
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:02:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZPfFz+jJCaCOBtaru36gwrt+7dEJBz4BRIuDpZVmIA8=; b=BCcdx13rnITI8ibx
	ZWmYphcSmweMZGvlDEINVH610zwPBu3VzVjK01VAhTl0Ov3bPR315XcEEH7e9IjQ
	nHmRXKVFyeUVIR65WC3gJ/mOhlld3Qo6x6zhPGKCiZYhUDc8CGscbnhBiuLYjYA9
	uwQXEvAgoJUSW3+QXp+WcJWFyvQjG+QyshfqvfzaAjcbII5zbaqxkd0AIr3ZwIsB
	IYw37j5gO038nJuXYQNFRvzNxUABAD6tX3KWmogw6wH/z58M+ueS2KlmYoAhdbxU
	sGGckbI3XAHV1nNvO70PYnMkGFKUZ28QzU2jeElyiLhRPr8Tt8C30ZCZ7VwORBA7
	7xW+3g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a640b9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:02:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-853f011da26so262401385a.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:02:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309377; x=1759914177;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZPfFz+jJCaCOBtaru36gwrt+7dEJBz4BRIuDpZVmIA8=;
        b=i5jwUSCKs2Um47WwGgpi9GftefZ+/MigMJT1VDUmZOBEkNcLzo3BbS7LCdWK1NabGk
         QxIDI3UfPiV0i6L9YweikgewCKxoX7B9czQidaQV77ktpyuUAek3nleP/kwigb5T8pWo
         02zs5wPkBB4z2giEWaKARBNJM05wGxCawH8TJDWqJsdszw2KuBbOATE3DfqffVJrAwHr
         UdxV2FukqBC+wEUiViWAl8QixsgWEOlL/GkrTMhgoCkXDIIqyd0zJFSgxJtzVAOE8p7e
         rlpqEKZ1wZxVgysjluwSl9WDDsEFLmFjfI+siItPZAbMJLdIwibleH5n13mKK2GvUzLm
         BBmA==
X-Forwarded-Encrypted: i=1; AJvYcCXzMS0GYZzRt1WokeucMfkpKjJsExrZJoebM9GH5oxaQ4UWd4MyjfgSzqniGzvmBlgYX10P2wb9p56X@vger.kernel.org
X-Gm-Message-State: AOJu0YwhpsW//bmyaAIvse/FrbqtXSGlaR0nAqYjWb+FMAZkQPGtMX5Z
	GXZ/a/Y129xsB2865zHHNxyRLGTdfnftvf4xxulUOdvSlxbG0Mg9GfdxrCiz/Na39osFWHrVsod
	fPeRApv3rwpV2v35jnE54x8TxYxVDyw2vXoHglN+aS+biAAphX6Kz+JJnV2ygGFc0
X-Gm-Gg: ASbGncvWlNFDodwL27/KF/CgaOHmYjADfi7DFqpe+stNYA6cyy8XlgyR/CCjn6GxXsq
	B+l6+ZE9OuDW38TCHjhnMdznWJERBXlpl9gqKM25zgTjRkvHWV3imYLxt5mzd3eJtxbBuZWcu3C
	MXrxlxa49RQ46bEzUns+NmNWdlml4sYEzZEaPCHaKGVp+xxAORod8B5LIZvhmoHXFr05lzQZW7B
	UDnsLIRFeTcJtUshoGSkG9Qy6rO3v2R9owyFjpIuMNPRCV8Ud7PSo49mM19IDIBMIVc73cbD+Nv
	kyfwk/YGzLg8uLjvDq1EzRz3RzHQFrtwfzgzzu6NQxoKvF/CPFhgmnUVeWP1drf2MHF6feYfYC5
	XDyyP2PdDs5SgUmFuAHdOrYjBrXM=
X-Received: by 2002:ac8:5a06:0:b0:4b7:7dbf:9a81 with SMTP id d75a77b69052e-4e41c1605aemr23476201cf.1.1759309377430;
        Wed, 01 Oct 2025 02:02:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFU9Szphg/SN7TMvpOPbN0MRBm6lNfueGopwk8fIzSbGuR1BhVcLsJaaOfRkusSv6notyn1SQ==
X-Received: by 2002:ac8:5a06:0:b0:4b7:7dbf:9a81 with SMTP id d75a77b69052e-4e41c1605aemr23475831cf.1.1759309376823;
        Wed, 01 Oct 2025 02:02:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3ae2cd7sm11618651a12.31.2025.10.01.02.02.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 02:02:56 -0700 (PDT)
Message-ID: <c0567a7c-9d21-4fd4-8140-99e72184dc2e@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 11:02:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/11] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Improve HW support in dts
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68dcee42 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8
 a=sfOm8-O8AAAA:8 a=pGLkceISAAAA:8 a=bvKeCVLL_wdwnHjQap0A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=9vIz8raoGPyDa4jBFAYH:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: hxsR4bWCre0botmdZwC4cq8gwL2JvDwo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfXymg31Krufs+5
 U/b004PBaarfUkTquTaUHhXdHitMg30JE7VdojgdN/fJ14BNmlheHEqlhPxW9YMhKWf6B/15lly
 601AJkWYJwLCzyCUKJFXnfpVOegp0/UmXJaQ4iQdUCVveSFTNBsPywEfjbLXbNEh8aabaG5M/4+
 aIur7kl4+OePAITHkIVnA40FoclSPUHa0KdPMGSAGDehBrWvraFeHi3UbAHvhMCIDex+QsoGmbo
 f2ARxBJxmxm4R8eIClrVzgBWQxbhdITf8RwXKxodiEfu/i2n4xf/KRE02Jri7nhwTT/tYeW1bPp
 vcCjgjy5u0z2dBUqgbAKZn9x/lsZbVXrWKiqbcVJePpd6VNIi5IA3oDqaqTyM5YY5bOcTlJT6EK
 ZkNN8QrMl7Kp+uA34BCk0eHOf9ikdw==
X-Proofpoint-ORIG-GUID: hxsR4bWCre0botmdZwC4cq8gwL2JvDwo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

On 9/29/25 7:05 AM, Paul Sajna wrote:
> Rollup of improved hardware support via devicetree for LG G7 ThinQ 
> (judyln) from sdm845-mainline kernel fork
> 
> Notably, this patch-series enables full DRM acceleration and wifi,
> among other small improvements in individual commits
> 
> after this patch-series the main things that remain to be worked
> on include touchscreen, audio, and modem.
> 
> Depends upon panel driver patch-series https://lore.kernel.org/all/20250910-judyln-panel-v1-1-825c74403bbb@postmarketos.org/T/#r9a976ca01e309b6c03100e984a26a0ffc2fe2002
> 
> Co-developed-by: Amir Dahan <system64fumo@protonmail.com>
> Co-developed-by: Christopher Brown <crispybrown@gmail.com>
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Christopher Brown <crispybrown@gmail.com>
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
> Changes in v3:

Please run `b4 trailers -u` before resending to pick up any tags
you received in review

Konrad


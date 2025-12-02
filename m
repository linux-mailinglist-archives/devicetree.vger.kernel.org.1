Return-Path: <devicetree+bounces-243745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D63C9BDB2
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 15:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7AF0D4E384B
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 14:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 706B419A288;
	Tue,  2 Dec 2025 14:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IfaqekpY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S2ihvcwl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD3C23E350
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 14:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764687081; cv=none; b=mq9E7Sv/WAVY4pPP/t2BbwhltKtZqeez38aO3CEicHn72U5gzDYTYqiMpkVO2Qh51Ogk6BMFP6zxQx2pip5zZ78tdr6FVzZoUAATyZjk6iwSF+vyNMtdkQtdZJ2ZFa+X0XTUAVovfBgCAR5SxOk7OmLciSNDHnY1YCiRqUptrsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764687081; c=relaxed/simple;
	bh=0Wu1hlJXMplGjb4V1DfSQwdBERruL3aFYVglXRRNC70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NM1Zn0sMJrxnmoKGsJWrtoJg24cMUoTfYpavipNMV+wBPxthl5MX1gNAiTISSEn17nVOsSq0fV+gS8HZy2e+XUedgNKRYmfYAdPvD2DMphWc24ldkhYPFfRgkmWuzRueszuBEEVoQ7SMh78ofQCSHsJqhOXvQemG0ozJkgsUw8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IfaqekpY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S2ihvcwl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B28NBsX3284680
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 14:51:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mlB3ElUMOiP1Y89wJW3ezSOCwSwzO8U+WlUCd+axo8Y=; b=IfaqekpY3hCJaLqi
	G4VreCwotTgRM3nhfKBOzjNWfF8om7JGyCu3NiunE7krnrqqyfTkF74UH1dLJm+O
	g3NYNE4o9BBxbDIv86JFiuUiQGPV60YtKqUjzRud1LUBpy1+3ey82x5HMdD+1aQv
	c/913yfyvHqA3Dunoy1QOPjLMiJEfOB242wsHpqsTjbV2NMmls8zEmjVM4/AfR8I
	sDKqevoM4+UOXKbtLwKZkgwzougV5UKnMQM+infbJHASMRMtO6P1c0rI2EF410XG
	DwtyV2ZmtHbEAOSliODB3G/l9x9xtMDMrbvQATO6jywdXNwUyBaNY58kPoLjggd4
	U97t0A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asvj915tm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:51:13 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed83a05863so19647831cf.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764687073; x=1765291873; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mlB3ElUMOiP1Y89wJW3ezSOCwSwzO8U+WlUCd+axo8Y=;
        b=S2ihvcwlDuVmV8NAcyzT/TTp7CNpgNNbusup/Hn3mrRCsdDw4KrPzJZ81+ZZ9rvD2m
         LfVk91AWlZpVZla4uwJL9tfVdhZlWRaNkaae+B/X6bNrj6XOAPThoc0SpLT2rcw3xLco
         2EP455kBJis5wBD597ykc5FXNhJy6E9NgCRKXmeDsOaNvXxttBkUQVcVHQa/OhtH/+8e
         2l11XnRKBM/5wJSMkDPXYETOBXAzTvOC2iwg76R0W9Wh4SllsfJF+ccTNdl0DDAbsZ4j
         bPm+SRQAU9dVI5xAgpTUfkntS6+ghwn55Nhvd95GUIZktEOMTV3B1dwD71lUL0vAsGJ6
         1ShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764687073; x=1765291873;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mlB3ElUMOiP1Y89wJW3ezSOCwSwzO8U+WlUCd+axo8Y=;
        b=SZUsXK26uKnhq2GJZKQZIg3BAVK5J7vx0gGssV/t0y7GACa4BsTZFiXPee0gW/MjuU
         08z1CS5UeHTxVTz68TKjmkGq5pb+NhoUPBixpHi2lAEYb0PmqdBdcXPWSMoD+bQNTn5J
         3KpECeSoG8x3ESkW2exy2kr+FFVebevxqsEJrRs6nJJQYX7RvLTU+C6H9cQyfxwsAc6u
         dD6CGOXoDZA2gsu/kTu8cWYTdFWz6HpoeptGrmQbHeO+q4w/ROPFaruxObzAsZuBSt/r
         o2A/RNZUU6rU5TjfmbQK/+DIAVcbVv6iS1q+Ur5C2TpsXTQqX9PyN1U3AySnBJdyRtr5
         lCrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPLQUweYlSf4iv1N9DtCvphAEwJxY0unsV9rBbg+sq6o70FZYouwi5MU2KOnSh/+SARi139cDLm2pp@vger.kernel.org
X-Gm-Message-State: AOJu0YxBEx8G29ewAlMVSti3LgEv2VbQHvRZOzFRbAsuZMM9ayq79BUu
	npF3MZ2rAsSCeFSlqj6iBOnzIaQJV9jUEqMtkNOS3NCrP0fT1vKIcNz8Zd46M/kWnQS0cDmfWb5
	9Ee9jg4dzO2yD5gKq0xqvMNEbz91D7STSrlswYM7I1u9BKmGkHVtl+uxuO1GEKm91
X-Gm-Gg: ASbGncuUBITmRymkuaPCuMNFmS6crI+2b8CH3yJ7bHTGih2iezcOgNH2lKsbJh5EGmL
	xVyge0g5K/+vp3Cz3HBPBrYSA0B0s85+c3kMX1DV0nA8L9WLhhmiAm7R8d+1wIkZoawOk+cgTIG
	wncewU83yhI+rxbT5qH74vVD8XxIAjT/0udGsOWTJ8ErC78vRv9iyCRvcKli5gFSZca3aAOURoV
	3bGmICSiOBzOZJDHMxr0yatTbGzM1ZC/9jx7yP1OzCtKBB7ZYWRAJ03/AjDdI0S51MZ/fnwWHL2
	PU+zdfoaIAZrlW/GESJSmr9A2mNyJIjZSVv21iKc2tWENMiMlEeNfRiJIt7DRmvnylzbDGpWDUc
	lKx+VzwamgghUCdolbAB9Cz8IaC5TnisypAOYdxmJBy6OHlud7b1ESmroDkzg47KWtQ==
X-Received: by 2002:a05:622a:1108:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4ee58850982mr463616871cf.3.1764687072838;
        Tue, 02 Dec 2025 06:51:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFC1AIkd4sZg5NnRZh2dP3Lx7esOqdHbbwq92ke1aK4UNF1Fc3ewf3Fq7Wqsy4C7ZiuLQy5g==
X-Received: by 2002:a05:622a:1108:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4ee58850982mr463616661cf.3.1764687072416;
        Tue, 02 Dec 2025 06:51:12 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a6ea41sm15652189a12.7.2025.12.02.06.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 06:51:11 -0800 (PST)
Message-ID: <6d225a32-1846-446f-9c3e-b90f52bc86d7@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 15:51:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/11] arm64: dts: qcom: sdm845-lg-common: Change ipa
 gsi-loader to 'self'
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
 <20250928-judyln-dts-v3-11-b14cf9e9a928@postmarketos.org>
 <68a07e54-9f0e-4938-803b-64d6f0c31e5e@oss.qualcomm.com>
 <c95cc75a560d5773c298537f6078949d32d22007@postmarketos.org>
 <0d98d501-85cd-4647-8d1f-126242c220a5@oss.qualcomm.com>
 <6c96f1ea3e156db82435909992995b424817bc37@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6c96f1ea3e156db82435909992995b424817bc37@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: voUTsao0qmRS88K_6t4teyl6sX1eLxiz
X-Authority-Analysis: v=2.4 cv=Hq572kTS c=1 sm=1 tr=0 ts=692efce1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=W-NSXFCFqqVfUt0Lr60A:9
 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: voUTsao0qmRS88K_6t4teyl6sX1eLxiz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDExOSBTYWx0ZWRfX2XBe2zWqrk1+
 7hZwUxq+McXxyzluJt9+87B/FP/BIzLUU4fzuOralgU8fwcK0oNJkRBO4tiQvfbsfYzChwJYWCg
 Ym0iV6PMnzQanQmBaYnt+d5eXimzYQqfw8N5nMiA2savVg2+0VvA7wVE9SagFCYa66c8aZxOFJ9
 RZhbF18FkQoYmfyerELGN2kPxFYXf5KomJh8aB0i1Lgaf700jVfYx4VLW5ozxISxVQ0yzg8KQ7J
 cRGJ/v2D1qgXpfFmbLthDRPIpfxiigF+X0asqTWdESbkHqy4CC8zk0S+3ZxeZq6ei0ei2JTW0dy
 fPOI4ed21+dip5wOzTqFjfiwWTT9okKIZ1kB6jCqMoU0gjm6X28/YvzvZ57TkQ6Wdrk0a68x38n
 2xscQ6crzRUBPav5JO0hblFBvyHBkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020119

On 12/2/25 3:52 AM, Paul Sajna wrote:
> December 1, 2025 at 12:54 PM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:
> 
>> IDK if it's super related, but some phones have additional mechanisms
>> for detecting (particulary the secondary) SIM - any chance yours is a
>> dual-SIM and you can try using the other slot?
>>
>> Konrad
>>
> 
> No such luck. 
> 
> I think the device might have a second sim slot shared with the sdcard (if I put it sideways in the sdcard tray, there seems to be a bit of a groove there).
> 
> But the sim is detected by qmicli in the main slot I was using before, ModemManager just can't tell if it's locked or not.
> 
> The SIM is not detected at all in the sideways sdcard slot.

I'm afraid I can't help then. The modem is online and probably expects
some different handling from MM and/or vendor specific magic

Konrad


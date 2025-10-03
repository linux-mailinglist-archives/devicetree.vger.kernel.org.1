Return-Path: <devicetree+bounces-223539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8E0BB703C
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 15:28:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F35D33A7E6B
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 13:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9CEE2F0C58;
	Fri,  3 Oct 2025 13:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k50yKbuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322DA2F067E
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 13:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759498077; cv=none; b=DsENfDDdwD2VA+18p0p8uczTcqXrQIKRE2Cj4ic52z6VoM5gcoYZ2aGbMZQAFMbR5NeegHi6OTVloDYFUySRgtdqQQgPa31X6PGJN5SVUUZAnkReF5LyEMu51PMnEDe9yUA0UN4LoRU5Pe/wM38MSulsUqm/2h6CFW2JfPvIH8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759498077; c=relaxed/simple;
	bh=CPQt6G3cRcdkpJT2t7f4bgnXAnncd4uU++8a5gjFflo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EKwhpuRFNxfxfV2gZ7eCaniE/2bdMrib9sNT8eRwewIzsCj6uyCjW/1kS1Qf+HOtGBpfFsrN283Wlo1mVhSSoc50v37NJXpG+qrPcv6bRWTF6eIPWpVOAa6JeyXT7kFzxTbrNuBv3lGurZjQzjxazXiLVkiA77DJE8p2GhDU+zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k50yKbuQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593CHSJa009667
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 13:27:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	abZcAT0FJVtX6eklnxdubzS8SY/WAiVnDQQ4d4O2Svo=; b=k50yKbuQQ6Mlk6uA
	mURXusV6uH6zC1NcDgVbgW3xALDhecuEhyvJOGdNtjWUGXaCh64xBZaEr4DRu9hd
	vp2a1ZkhhctM+xxud8ufWMGKJcf5136IdMaM+9nj1G7mIFWCs1gAJBiLpI/e6EUD
	cg3/sU9pEo6HmfcSCgpZ7sP+HBPv5b7pHKbHmQxKqcUpHlvp/CnWcAyHQ11mqHaK
	+6KdDE/KZvRUPpH06roJ2HLmTdknje5N2ILFa5FxBeet9oBs8K9IS+VQgCHcnvgv
	m89NGh4567wgawBdn0MJeaBu8+t131msbQade8TUVcZpx+MF3A6v8zjmGMyfRYHS
	HlxgXw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93htjfg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 13:27:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4deb3bf6b2dso6334561cf.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 06:27:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759498074; x=1760102874;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=abZcAT0FJVtX6eklnxdubzS8SY/WAiVnDQQ4d4O2Svo=;
        b=d/mIFDpvFg4s/3TPf0sPXrlAZ9YmVyx5aRJaS+6RiDORtxLHpwBLBuigKNYrKpmzhN
         AQAC5lBij7KkkUvENCfQFAkqKB1ypYWxsVKNfSPoHtYuXp+LcPgcDvwRuVQeSCACj5NR
         mTGatP9USkNdSwDbHEuBG5vBgIZGERjVwQR1JbqsxZE7b2Pq8ACmzy00cRTfq4Rw2QXG
         FwuwVYqafRU1L0Gg5oejRm3430vwysP2UkZDA8PNZUVYBhfcwglPwlEfqQxdVP+C91wB
         cOA3WFkaTcp+l3Bu8pqPyF0J+9An+JWnIsIIFCLl2SFt8B2e5nxvcbOhg7Y6QtvjoER6
         PWBw==
X-Forwarded-Encrypted: i=1; AJvYcCXmjtqtfcAU2mj33JgK+5W4Jdb0aWAbNMmzXQ1eGmPuaTbGwbaW/iuKJJHPSWesnT0AHPiPH5TrsUtL@vger.kernel.org
X-Gm-Message-State: AOJu0YzsFKnjZh4VRRwFQYyuCfBhrJAv9qv9mDe28q6abdYZGfe/7QF/
	H3e6kE40LrZfEbgal9LMskMpGpmLmalY3x4YHUziUv2VEzD1J9shM3JtBhUvwBsfIwAi5QDvJX6
	0PIvGziA5LdleD6ShSRh8E82yVe7xgS2HVCVHje58y6xW8fE/LDTTFuuM/263RnAQ
X-Gm-Gg: ASbGnctVCSQrNnzbNFJBpa1NAAhyk4IsrdvEcRdC8xUXHuUvEAu9e52pccQz3R4ljcZ
	7TYxsGa39WIIvdPdwTBV4Mu9mRtEwyFMLRU5qZRZ3Agj90ypjzbGHlHP5D2HzSYY1qSAV5vVzjV
	7yI1ZLDeU283aGqKyLFqiTX4GcRVsFUOqaZ49OV2NzHf9VNR/OQHwvNLRIbxm7jvt6J806GAwhX
	EmXvbt5h/osxb+X9VrblTzIPsDVJ73tIEhJDdELNG77+qq1AWc6eK9ewDcZ7yVOdVNYPdth6/Jr
	DyUhbUzVtqYFtntHhCwzrY/Ann6t3XqN094Do+glCLGKyzCvEvHb5k/M0XXkkc8sfFojUplccXq
	A8umjns8S+mqVfcpEQWW+/kWIaPM=
X-Received: by 2002:a05:622a:2cf:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4e576a6337fmr26891471cf.7.1759498073335;
        Fri, 03 Oct 2025 06:27:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFB/AZh196wclx2ASlNPW2OGy1r4BomVRsOSsm1WT3mqwyaw999VPI6Bpkg0sVz8dKYmtaE+Q==
X-Received: by 2002:a05:622a:2cf:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4e576a6337fmr26890791cf.7.1759498072381;
        Fri, 03 Oct 2025 06:27:52 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa035sm434817766b.15.2025.10.03.06.27.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 06:27:51 -0700 (PDT)
Message-ID: <ee0adfa3-f042-4d2a-adf0-2c5d84d79cd8@oss.qualcomm.com>
Date: Fri, 3 Oct 2025 15:27:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Add OTG support for primary
 USB controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251002172946.589061-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251002172946.589061-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX01TsrMHhFAvD
 Hkv+4/39sjE9VatmFcxQcSP79NZWD6H1Jt3/Ip9biKzdkNMdf9Eb26d5ijbr+CZ8lym8+dblJWB
 gimc5lF9AAUlF+88QJ5KXkrFRqb0Tkp98UNsKzB5XJOlL2HSgizlM4KYmNIh2+s9AUKNMZTTXuz
 DNdbe7UI4i0BpDMarbH8gduuIfgmD768WeDqFE/q9rF+QQ1oWybDGjC7D7CcYWjlOk6usYzcvXM
 MgP9XAbz/EVl20W/F/SE8MTtQ9w6wIHVyvSduVWvKXvnedm1pIoyZK/jchVZ7axzZDwJC53pvpy
 xBWcxi/xgqBhK1aoCNOEFRV4diiDzF6sWsXHivjDOyXK9JvKtwTWUiTK3cYJq4wypbskHTb/YK+
 0GuGx6Wz++bgOrM/GLfCbtsohmfFlA==
X-Proofpoint-GUID: Sf7Ty5TZDqe-AZsvZv-TC7aL4ipqW-kb
X-Proofpoint-ORIG-GUID: Sf7Ty5TZDqe-AZsvZv-TC7aL4ipqW-kb
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68dfcf5b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=VtSu26V_DIzdLs-5mXgA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041

On 10/2/25 7:29 PM, Krishna Kurapati wrote:
> Enable OTG support for primary USB controller on EVK Platform. Add
> HD3SS3220 Type-C port controller present between Type-C port and SoC
> that provides role switch notifications to controller.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
> Link to driver and binding changes:
> https://lore.kernel.org/all/20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com/
> 
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 122 +++++++++++++++++++++++-
>  1 file changed, 121 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index c7dc9b8f4457..0b6d8d2d19d6 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -37,6 +37,32 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	connector0 {
> +		compatible = "usb-c-connector";
> +		label = "USB0-Type-C";

Are there other, non-type-C ports labeled USB0 onboard?

> +		data-role = "dual";

power-role = "xxx"

[...]

> +	vbus_supply_regulator_0: vbus-supply-regulator-0 {

the suffix suggests there are going to be more - is that the case?

[...]

>  &usb_0 {
> -	dr_mode = "peripheral";
> +	dr_mode = "otg";

otg is default, you can probably drop it

Konrad


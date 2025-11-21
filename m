Return-Path: <devicetree+bounces-241145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C94C7A4E4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F17AB4F2B80
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C7034D92F;
	Fri, 21 Nov 2025 14:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eJ74Ecun";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YgMEa2XK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F22130101A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735928; cv=none; b=XFGCFcjx9vj0wHwqApELZhwCOeE1dkzNIWQ1xVOLK9bPyo9lgc1y3zaH8cu2QJ3a5e9FeYk7g3buCGvykOIskxG4xy6YUT8fbS3iqT0jTegPU4sow66pjDNehLp0/FQuFwkqHDjqSwDM5imnsvpkgP3XqgZJdSw1AS5XbFEXapw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735928; c=relaxed/simple;
	bh=Q+vUQjMeYzPtzZJP5uu3NF6ihcHpmD17ir6QmhMrzNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JW9S8g9LHY9JUP7klYnsLKsolM4xFy+m+UYNRtgA1VfQlh9dJZlykrCeXWGpx8puYvDNV9ImTrNVs4eWRchxlzx68tp+jo30ekSjiBvEfaauVSPPofOd4QFP3uaGbGYCUt1HxmhXnOadbQIvhgJRoLL/Mj6woRspfdn0Ag3Osgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eJ74Ecun; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YgMEa2XK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL9SYYN3541436
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:38:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tkchUU+H1FCm05b5bHfKncoQfaLsK3jCmHmGTr7ETU8=; b=eJ74EcunX8VH2zEf
	7yAFFmpVl6o+v+aD4J0hZtNPnKnDzWhdH+8B7iG3WT8fh6VVjALOYzBvb693H7dp
	Qq37y9uq/j+RfmHSPKohUmios9eiuK39IrmdetOmoF0VXIOsWILI9Rr3eMlk277v
	/UjV+76N3noVru/v17rgFIp+BM50ZsoTQigmOC6ZNf5UHofuRKBK56EmnpxGnkQ4
	ko6w1ALRqhpiL530lKPMzg9kgMfIe2Pr/qLCI99RDenfwfDVO42zY6e9l9lV0nW3
	bx0Ui4Y7PGnrd0kunDCb66ucvp2fk5w7R+Qe5iQ6boMbIHOAnznsugtouVIUUaYY
	+Cf5Fg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajng00w6t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:38:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edace8bc76so6060601cf.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763735924; x=1764340724; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tkchUU+H1FCm05b5bHfKncoQfaLsK3jCmHmGTr7ETU8=;
        b=YgMEa2XK6JD+oS1A1ja098h9xNV5y4UFs7u/+ayxG9u1FfQ3gvnEIzi2T7m4mnZbgn
         bTqKRenWCM4UFpn51CobBAsCbaqb5IdIwqbBt/Ike8oNyB9k66YV4sxnj1lnawW8QNDx
         CFT5xbX9k6wNfvi00XAqePllESQz4eWYByWy8XFe1nn2zuam9rGzxC4aPGJBPP3ZfmNi
         9NTaQV/66kxhnQDuRIn/LMJGkcOx7M/NMwF/BVpVVoILdydGlN2OAyCHmHYE1s8GlC3D
         fTFjem6gC+AeY79x0AbfK+ygIv82nBO+ppeM0pMaDm8/38norXZ4mi/5quLcrdw/FDj6
         hv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763735924; x=1764340724;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tkchUU+H1FCm05b5bHfKncoQfaLsK3jCmHmGTr7ETU8=;
        b=FMZRx2yKEKsS/03PJqrYHUwk4+WCHqgFfa/jH/bZ4bF753Ag0soALMtdR5ig8aYv03
         2gNBXeK9VMmj37GVj1WKF3bkVo3fvif2xncQxzvbdb3uZSVUFdla4PGzX4tShf6Ag8MK
         oaoNczDjl1QXJ3esKhlOFJdeH6h8QWu76G1jeJ62hDP4XeR7GELOLAd/02pzqC5wAdhH
         dPQSV0YHi70puus8z0Eg397xmGLnIL3uVZ5JcmQRmBpxtirAC971GCLZfVRELuK5qwwF
         ZbW5NGhzcpKssNeW+CHHswpvtrpEZTxBkqTr2SzG1S4lHeztx4erB7/F+Oq6qjEk2jFM
         19tw==
X-Forwarded-Encrypted: i=1; AJvYcCWnElxWZo1tPcSJadSOfl+E+yUhqijb5IA+AJsPmZMswqUt3XdZkDk0KZCb1+pHtCgPag6MyJUIOu5I@vger.kernel.org
X-Gm-Message-State: AOJu0YwG0HqcpNCH0u4GgyHmyuFUDyvyklDXrlonM0Pq/8NwaSfzxie9
	Uo3IU1Z5cWF+p6kTOV2MFi47qSnB+ocpEQINfI1ggVtkt/0kjemtdrrf48YDvT05Ve1bsQrrR0r
	anhqR4Xaa27E13vi7Iw8IhMVkYkcy4snvoRb2jEntdF/E/3PEw9djpWTfxWeQ2ng5
X-Gm-Gg: ASbGncsBl7mXFngacAikU1azXOpEE1DUiiEZ5C43iso9pn7bAmwJNDLsmdmI2HU+3Tu
	SPNKnnANQb3sKEiMXmMaU+DcSm0ym2CFn90WD4JxyAH83v6hkvm1e44yEwhghE62miCvUUqkRqE
	qtezTy+08+oPYcujjLTHwvFKO7ddWhn0Xr3CQwxfKeFnBZdqteHPCz/xf1RBUv1rW0Koms0GWBt
	jEFcdkOXrsjX1jegTu1kpkOp9mapxfPBu/CjQTIrxKmOioKzxi1ztwGdO+Lr5NYFtaJeJNpLqs2
	4UXiVyN6AH/mDjJfIp7hu3wgHzgrsxCdsNiMaCKTHXh7ggrRatQZgoPUeL5ssDKBfMIkoLvbhuP
	GH8J/9a/pCPEy4Yrr6UwBbZoDutuZ8Tt0o271lhceMiAniHkU9Kv8H8uwG2hOmLMyXL4=
X-Received: by 2002:ac8:5dd0:0:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee5b74c2b0mr13478471cf.7.1763735924414;
        Fri, 21 Nov 2025 06:38:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSeV7Jn0tQe/Z4psfpslRKULwcfImXtAKrmhfMRiNst/NJ1hEYFu68/0YlmRawsb1kfvNqxg==
X-Received: by 2002:ac8:5dd0:0:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee5b74c2b0mr13478091cf.7.1763735923942;
        Fri, 21 Nov 2025 06:38:43 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536460ee1sm4649559a12.34.2025.11.21.06.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:38:43 -0800 (PST)
Message-ID: <98d599fc-3a9d-4191-b085-c5ed444c095e@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 15:38:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] ARM: dts: qcom: msm8960: expressatt: Add
 Light/Proximity Sensor
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251121-expressatt_nfc_accel_magn_light-v2-0-54ce493cc6cf@gmail.com>
 <20251121-expressatt_nfc_accel_magn_light-v2-2-54ce493cc6cf@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-expressatt_nfc_accel_magn_light-v2-2-54ce493cc6cf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: D5IyTPkM8Eiwt4t68eNV-qTOTFXvvzyL
X-Authority-Analysis: v=2.4 cv=R+UO2NRX c=1 sm=1 tr=0 ts=69207975 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=BgbhUkUBu2I6bmTKvsMA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: D5IyTPkM8Eiwt4t68eNV-qTOTFXvvzyL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwNyBTYWx0ZWRfXxsUULzkl4/N9
 cUryEmrDrP0zxjA3uhCj5hq0RhOVL4lzj+94I9rAas45gX0Ds/+tb9rKBZTpvxnTQndgRKZaywu
 5PM1d44brYX5MLQ4fOYSixz9IwAUHntwWL7l/z6mpnbUwQq6RuUbA6XO13LjOOAs6dTiCKO0giM
 nB2D/rcQOGAspQURdahKhgX34sPPpzsYohOBPgh9osUO1ZTfRbKUjhNzKmB3qJIwXLZUPxCHbYA
 WDHdHjRJQ8Ma41oBpHKK8w28bP17TCCo35iimDkd7bnW4hY68VUr09f8kJAfpNOZh8PEHKI9Gtd
 EmG9AQFQAnbWqMjtZRqCHWnYki8L8VuXrIJFKueT5CHqbzX9WbnXrnHZXPWlRhj/6cxm1bQAlO6
 7mkS7wG2Kmru9vEA/tqB3GlYuGHnfA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210107

On 11/21/25 12:44 PM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Currently the Proximity Sensor doesn't work, but light sensor does.
> Left the proximity sensor as a TODO for later.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  .../dts/qcom/qcom-msm8960-samsung-expressatt.dts   | 35 ++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index 5ee919dce75b..b68da548a985 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -54,6 +54,32 @@ key-volume-down {
>  	};
>  };
>  
> +&gsbi2 {
> +	qcom,mode = <GSBI_PROT_I2C>;
> +
> +	status = "okay";
> +};
> +
> +&gsbi2_i2c {
> +	status = "okay";
> +
> +	light-sensor@39 {
> +		compatible = "amstaos,tmd2772";
> +		reg = <0x39>;
> +		interrupt-parent = <&pm8921_gpio>;
> +		interrupts = <6 IRQ_TYPE_EDGE_FALLING>;

interrupts-extended = <&pm8921_gpio 6 IRQ_TYPE_EDGE_FALLING>;

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-253842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB2BD11F57
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47F42301A189
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98870320A33;
	Mon, 12 Jan 2026 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BTqzfv/U";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UZYtQ+qe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F1230C602
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214393; cv=none; b=cmW5lngl/FQ35ybttHJLe1DDvs5jCpUsKvX6/Ib1zoGli8AQThjOdfum4W2VWugPr5t0OOTEEMb8DFgWTmxgFsypb/fLL+rjj5RDWUFR5k6wiS8oENBwDc9dH8P1SvGB5giDbV4bajX1AeuKRqpB4qexdGcys6zehbal6aBAJbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214393; c=relaxed/simple;
	bh=SPJAGtGEK/wn7mFPBz7KJ/KdS5pMMKTA8tZdkPMoknk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jwKVfL4LlrfUxoNC7UuPvYYZr1dPG/6KBXIzQUeLvAfM7NzCS5zc3SR4xGz6T8+nKgbykASAlEs4YzFcQ10RNQSiwAJM5OM39/9sjsu7PMtRwPiO8SEaeziGsB2Y+v9eMG6WNrwj/iszQlEBMGEw9Yz5F95aA1g4ZfYAnOHA0qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BTqzfv/U; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UZYtQ+qe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CAEXUh1315835
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:39:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/1Pcfs8LIWxYtndG8Wu8PCtxklxzAXaNdXIRBJQNvLg=; b=BTqzfv/UbYP9jl49
	zOBMYQ6xz2oTwLT7bv82WMz3KziI6pDlEqcyb+eL1yeAxngdFQgnKkPQHbr4anEL
	1Ps3ceGp1rms/hjtZELpuIsvw5Z85TRDafvBKACVwimpgJIjgAVCm6e7BJc4VNrE
	Ybml/Kp3PSmp51TUWn+6KrryRsz7S4CA+5PFd2bF/P0qtXElvxwCIYSC2HcIGkGk
	oh+Y+hpqbFsFiGa65QaMR6pDPwm5HmKqw/uZmy2djvX8f0Y9NQQexz2ZZFY1FjhZ
	fpLp0hYq/QDrEm74U0OU7CRyyDYvU4qsNqE5Qk4Vg+5pYHkZzC1vbEfkLVOSG2Ai
	BXD38g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hg24r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:39:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b1be0fdfe1so210955585a.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768214390; x=1768819190; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/1Pcfs8LIWxYtndG8Wu8PCtxklxzAXaNdXIRBJQNvLg=;
        b=UZYtQ+qexm0NmqLGytbl+sl+43eclw5IV1X+a6JbGgIhIlUcl0TeWexTtdaVJPn+fk
         6zKlszcGeRSySSs7xS/CQPwNUF8ua28JJnsraTCK8LGYVh3YJK8I5yu35F/qufRsCnMD
         AYRxSR4khqyD4jvuBesS1QlVtAbuviVz6V9psxmxkHVI+7IKizYxiy2/jnLExBY30leg
         TWtBNbsCaOtIS/L+sF4+5pJ+NddrBlltrHyuqHFhGkNZUHjnVaRPY2EePvLD/pcc4COO
         auuySl6hcGzyeppU1L2m6lktCZyNr+FU8pz/oWgdmKd1DRtjkyLOiamV36tBvFS1UeX3
         gDLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214390; x=1768819190;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/1Pcfs8LIWxYtndG8Wu8PCtxklxzAXaNdXIRBJQNvLg=;
        b=KjHszDl2ECcBJ+fBAIzJXDl8BaLiVVm48Puigs4YN717mEgBxpfQsQ9Tt92wQXq1eU
         DZIV6EbcZtSBVEFgGsQcnJaDryL/DPFhXQkMwgZkgaQbALEBOxINEvs060Yrcj/aZJEM
         6AW9rGvP03sAvNtlH8dtkequg7ua6ELetq7drJVY7sqkPYDN7MnxTyVQW29WxQRhuT99
         T+kCiYuV9VM3+zPxrPeeaTJplTjQrk+xo1YG2noL5OuwpQkdB5pZr/wmSbhwtqM2boz/
         UvusW0hHdKIBn2F5n9Wg4OeIG2xtbMflLJCScLskYg7oLtV7FqoqGyZ+3I7dLSjNCRQO
         TYNA==
X-Forwarded-Encrypted: i=1; AJvYcCUPrLPyRU5g3e/BhfjJMB2HIK1L64z5BHpQ6ma6byJkqM1UqgV7WfjFRqtYJeWGe296Za07AnHDejJk@vger.kernel.org
X-Gm-Message-State: AOJu0YyywDcJWS5L/OTyTHeTChN7SXud5Jq3G+RaEfMUeA3h07Ev6ADo
	z4BgA4Yjo3NtosstmkeFyeDuYTgnKOY+yCPufDXTimYdYmSuTufJcsIJhWxlI3U0OsXZVn+wSA1
	DawiR5HIGymzzeiJqY1KNK+VM2Nz/1kIy+v4zqV7io6bn0242wUv0pxqLLn8k3PNv
X-Gm-Gg: AY/fxX6pBdAhYB5mjsMcy+5g3F5mM/6dLDj+N2N1Bc9X8iBaYPEvekwXq0tL/iKsAeI
	+7iGafMMMO6vkLoPWeClfTBzDjJjDk/xDQKqKbbbCXuQ2hQN8XIWUx6qoUmKAyCptAbhZB3Le1Q
	6ghM3AxJgTYdRSVqccuhxdwnOckbu13JxCILVyCo5kNaJ9QZV1W0V9Y/OHvqSfNO8Lvovdexoz4
	WPof3kFVkckNsnHybtJdTNFH00IhZZoiE3rafnUs6VAVMSalXAnVuIN5AQgmejmWyFUOhx6wthY
	HaW3klTSpvQR1l2qXjl5cWLSj4Cthx0f4UJwGlSA4dMEvdXVsEe/icZkpXcmyqdADxHALFckjeR
	Q14Lb5/X2GmYUQFjiqp9fNXaTYiNd5q3Oy2M89FG0ay3cB3AXJOc3Ejq4yn5fSZkcffE=
X-Received: by 2002:a05:620a:bcd:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8c3893fd8femr1623428885a.9.1768214390254;
        Mon, 12 Jan 2026 02:39:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTzAYtpC2cSPBdhiG8xAL2LeFlMuyEiLPv5FEEGMQs15OwjI8yh40BYj7IqfWlhVdBqPsNxg==
X-Received: by 2002:a05:620a:bcd:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8c3893fd8femr1623427785a.9.1768214389771;
        Mon, 12 Jan 2026 02:39:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5e0sm17150793a12.31.2026.01.12.02.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 02:39:49 -0800 (PST)
Message-ID: <260d91ba-9e99-4f3a-a284-0b93d65050cc@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:39:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: arm: qcom: Add ECS LIVA QC710
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-3-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260111085726.634091-3-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UHg-xyZAazGEbBsW7qHXAgsy4VMK13M1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NCBTYWx0ZWRfX0r6NHIzqE1TO
 PwKNEw1cSdpAEpYdhP6swOZUrHLa1f6S0dPkr72lqXVPa61oe1QDoqDV5PDgsH/kBwPllwBe930
 IO4hIMuZD6P4H7REk3QKoYnH+W/d6hLK1K9jHWFpymLw1Xr8ZCNp5rVypZd4kGRW5hAK8UtL+5A
 1hDGMiZ27T+h11pMurZeqe14sk/CsfxuYH6HDE3cSL0DVa5hjwhdYf84YKhmxUe8OC9MhrSB0qZ
 4pDf+r3g+6hxN0N0kUsKmDvDkNvjlrwj5Y7wZaN2CL1sggUHHzhYEMvwSxcu/mYmtC+Q3yziw5U
 FB0juvqkcMuKeb33cCggER9AGXvwZjjEdD+2xING2mHzGahWEu4N/bK07oCR937zs7ZhVxd6eOR
 K7WNhcutrhV/8bVRinwCJ8mp1e1pWeI2I90IPHqf9lD53G6zTTIrJBshSHLYQ9xtibwWqzBcUp5
 uLnDQuqke6a4ObIU4xg==
X-Proofpoint-ORIG-GUID: UHg-xyZAazGEbBsW7qHXAgsy4VMK13M1
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=6964cf77 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=I98pwoj1LBkpB9kWyQoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120084

On 1/11/26 9:35 AM, Val Packett wrote:
> Document the SC7180 (Snapdragon 7c) based ECS LIVA QC710 mini PC/devkit.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index d48c625d3fc4..54750b11895f 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -385,6 +385,7 @@ properties:
>        - items:
>            - enum:
>                - acer,aspire1
> +              - ecs,liva-qc710

You'll need to patch Documentation/devicetree/bindings/vendor-prefixes.yaml
with this one too

btw only patches 1,4,5 arrived to linux-arm-msm (and my inbox) - please
consider using b4, which will grab all the right Ccs for you

https://b4.docs.kernel.org/

Konrad


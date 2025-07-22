Return-Path: <devicetree+bounces-198710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF72EB0DFE0
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 17:05:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52D8D6C0897
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 15:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C59D2EB5C1;
	Tue, 22 Jul 2025 15:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lzMJhF1r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701BA2D29C7
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753196518; cv=none; b=jVBUH4vF2sYgFSRfPW6fnwLgjsT1zeQAVKl3KaQ+ufUgtembsJVcCnwv2Y8Y8MZW/BPtU2eaR3nllfy+/SVLpm4BhrVeD98HHFrfYdbdGOC9ONk0rUMA2EAK/9QKiJKU6h3xrpHdPmsV1HKCRV26pt7qIexGGthZLhqFu/YW82o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753196518; c=relaxed/simple;
	bh=YmHvIykm13Ip/tOjb7KoHSGXfOvcdQou2fZ6EnWYQTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=APORJkp0TFff9HQMahOyC+cc+oItMKyzsVeHBYLJVW56RsgznlR/Ip1qtlOty1e8RtCQer+ZqvItEAO8lyccKEYdOUVx9vDKRSBveV8/hvHIjST4hKp2UMzLgxkLl5bRcHLR7SnqVCyb7qE/5/D9/Ls50xb80DR44n4hy9YxY1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lzMJhF1r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7Hh1f015402
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:01:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nQea+0bC6PD6eejJkZGOzWEWHSsdYyQtTKTo+7Hs0x8=; b=lzMJhF1rrwyfBKv4
	QY1FUQIGo7zdaPMs0+mvmgS6d50hl6NvrGiG8Xj+h0xnai1fCIZBeHDW+URvCzG5
	213nyitbdgiTo+ItZ6nS0EDKPX2BXtutwA+YowM5xMfh0p4M7FdShhhjs40+Ew7k
	y38edEMHc0tMqSZzLlayxhVpQqc4+eLJpcQv08khiTp+f8tOXoeAU1f7mZCG62ZJ
	bTMVKMh+f96wMDjQXvWCYDfxHLGCxX5F79zJXQvL7EtneKg02OyP1yiM94x9uKPj
	gdUEknpoPV7fHkG8O+gOMNWfiwXcMVpHNgo+CGcjDnXUNpajAcFmd8IUJGa+Ok0T
	PmJg4A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w30yg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:01:56 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7047de9a9b1so1325366d6.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:01:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753196515; x=1753801315;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nQea+0bC6PD6eejJkZGOzWEWHSsdYyQtTKTo+7Hs0x8=;
        b=a68OWo82hHwCDcFVdJSvWxT0KzLatcVpijRf1HZklbJ5RQV4UP6aG8NG9gThnvY/Cq
         VoqoY8ei3jLVm5m6YJ4cGGdifhtW2H9e4HnNPRwoIiUFsAOwQoDPCW9d/+jdtn4pRyZV
         5rW8O0KPR3IdOChD5j9tav6ldV5amgZnApiQE/d+BPfvlIUYq8IYfAub+T+50nh9qeKQ
         aCdiK/nVRt5bIw0PHruW1Afu512amyWlYaw3T8aPzcj8p/eYOo+M7Ljq9YImb4J70jSi
         OoutD2MOzYRgrIEZSiRovTUEtOphB+pC6zf1OZHJqkMZOsowTHjQq3V4p7cyj68iBNr5
         lTmA==
X-Forwarded-Encrypted: i=1; AJvYcCUd7TukTOyO/zld2dLxcWGg6X9IffuZLgxOe0h8t8MHmln4WgzcWmfBHl20Aya4X/M1Y/Kg6n9FnC7A@vger.kernel.org
X-Gm-Message-State: AOJu0YwwRR67Rjig17JbwsqPwOZCfXTevS2oPVrDLkRQmF81F0Ghlsdy
	cmCmyPIE117bA4zGAQgyWIvBEVKKznf3RljGoMnA+jpCr2szdQcgF/V/1Wg1MxIsM3UIzSjGYZ9
	RT4N30m1emHpBPlwqV2lPNJ3aUkpdHOfSn+lZrwTdzUhjkMq1MYPiuxpgc/KfnCuS
X-Gm-Gg: ASbGncttnFlOzY5WkaPPExoBa9rfKs2gExZwJQfGLUSQhm1NqfyJnPEA7YGITHNEDZl
	KGxSp/417yQXIOsPurAtInT+EAzRMB+WKGusT0V5L9tpw14mgaflGHfyHTSnPWXqnq+H8dQvpXj
	zQIqJA8Zmg0yFTwCzfbrgqb+R/mgu1v4nZkhQLOAScKeaCGRwsL2k/9/CyGUgdSRyNU/9CHDM4Y
	Q5jJwciXHiC/NuKA5DS+C9HBewOTBMP0/DB/IbpJLyBNEUc7eBFMrsiwuP3snCXlAguOEA1r3Nu
	cQ4bEfZ3gbvnOCJk/DZuYiWBMqRoJoBcqwI73ZZ2W6PzLUk0ba8bqHQ2ScHmTJTMfrFMvqpeadP
	I9lNAGvyCr5jzWKf7q7eR
X-Received: by 2002:a05:620a:8089:b0:7e3:3419:8ed with SMTP id af79cd13be357-7e342ab82c0mr1516900485a.6.1753196514594;
        Tue, 22 Jul 2025 08:01:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9HTTcR+tQSzuEDJ8+Kt0u51iSbuGAMBmDowZbgYVk1n01G8uxA0VUwMaUyhdWRTPvV72rbA==
X-Received: by 2002:a05:620a:8089:b0:7e3:3419:8ed with SMTP id af79cd13be357-7e342ab82c0mr1516895185a.6.1753196513449;
        Tue, 22 Jul 2025 08:01:53 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca310aasm867940766b.72.2025.07.22.08.01.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 08:01:52 -0700 (PDT)
Message-ID: <88a22bcf-2c31-48e1-8640-867727c02ea2@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 17:01:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] arm64: dts: qcom: Rename sa8775p SoC to "lemans"
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        kernel@oss.qualcomm.com
References: <20250722144926.995064-1-wasim.nazir@oss.qualcomm.com>
 <20250722144926.995064-2-wasim.nazir@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250722144926.995064-2-wasim.nazir@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=687fa7e4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ziRkMoTaCqJTGmMilkgA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDEyNCBTYWx0ZWRfX7uOF4BCkr5Mo
 2iyaBHPXVngnXJ2ZD4cMgPcYEMRk00oAZQJmF3NGhkijNvniIgFZHt6IPpfcqL7dDJHUiXek8B/
 MCKkNn1Su5VAcd7eK9tx4R1pokwTc4ek0WFnqh3FfuwLwxiQyO/TPOrA+2LnLL4fdERiTfaq2Cx
 OTr6HArYXkb+OEcCjUcQlFToQ3zJTEpoi2Iq2JBdsczeh3soUmjwIqRbsJ7oTKRdibWBIQy0THq
 ETpVPpfXNK7VD615hDsBp8NGNN9XIcK4+VqNdGl61LUZ0pSE8oipEtCLsmGzEHWQDt2cd4UKfIg
 8mddzTjki195dtJy87jG9MIm+N6Qd5Bjq7xLIT1kf2fzooniw8gh0A+NK4O9ZIA+9erJ9gUT8R+
 gE7pl/qFZqmXwZ8hO0CYmcwghakmW2Wv6H8E9bOlJFBXP3ZnCvVqzUHxxvWHu+3oABm85tKt
X-Proofpoint-ORIG-GUID: KJ_a76zHApNJJYOo2KsoKG-_K_blXHaG
X-Proofpoint-GUID: KJ_a76zHApNJJYOo2KsoKG-_K_blXHaG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220124

On 7/22/25 4:49 PM, Wasim Nazir wrote:
> SA8775P, QCS9100 and QCS9075 are all variants of the same die,
> collectively referred to as lemans. Most notably, the last of them
> has the SAIL (Safety Island) fused off, but remains identical
> otherwise.
> 
> In an effort to streamline the codebase, rename the SoC DTSI, moving
> away from less meaningful numerical model identifiers.
> 
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


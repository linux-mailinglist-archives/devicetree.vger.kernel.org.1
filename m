Return-Path: <devicetree+bounces-181754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E220FAC8C67
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 12:51:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DCD04E4C11
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 10:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BCBF2248AC;
	Fri, 30 May 2025 10:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hd6mzy//"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB444221578
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748602293; cv=none; b=kX8AVcBakwee+ss72qMZsyJGceQ9uw+46EeQuFSHcYpb9Y5Xunuf3Tyx3dENIX0AZqEAtlaAujjPmrVtKS5buZoQ8QxEdVT5k9sS/kHK55r9M6mGMQfYDDq+7ZuBECx0hKpl3ae/jqTptmpr2QH5a7o8tt1GojYWEltbXCbVlZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748602293; c=relaxed/simple;
	bh=UE1nkwZ0zcjYSP/AylrjxytDKypTft3B0EPtc4t1pwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ddrcTfDbYKrkDMvwKDPepnjdFmJnYAP80lsFlzua/G40peT/ExpK+JXxo4L4PNMxrvk3DZWE9CEmzESMjc32cp0soDTl6x1ewbHuP+7IfqyyNQpNPXkAtIyZC8TDFYFftCBidv++qPdv0xFzszXEug1rgK9az7i00uy3/y6dv6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hd6mzy//; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54U0okTP003582
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:51:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ykz22sxUN2Hw1bYKpmMC5UWd4JotYn0mF64c25jalVk=; b=hd6mzy//zMrYdi3m
	2bJGbpXYxsa0Ab+btr+D3e0OwypGudXa8qVJLdhNU6NI5ypfWMRaRstAVuaPFel1
	Pwdetbzwieg17uDIh6Da1+/YMeiSUtWLopLYzsWqIZLXemeoiAq00AKIwMveO98Q
	VR3NUXec23B24SLjGEKo4y3d85RPhoYRGoAVFnkov05BRxzaO4LIOWIEgBjo2Aw7
	EUxuIY942YqFbDf32QMCyJnnZM5jHvt5zzJb7nKmQ0lB9JElbD9W1gFKbREVa+C4
	ZbY3CbByO3v+2rD1A5o+xhissJVFQ3twBCg5OTgx56CuXOqwBkOpNWRED4kUn0OD
	GeEd7g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549rm5n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:51:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0976a24ceso43400585a.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 03:51:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748602289; x=1749207089;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ykz22sxUN2Hw1bYKpmMC5UWd4JotYn0mF64c25jalVk=;
        b=sw9e/uvesMbIC47EFdR53S9k5GCrf5kOjOLDVFz3TG6fl/nSUiTAblmP5CSlpDPRd3
         wfrppotAK60o71q+M4exlsQv+O43+hPv4LkaDfTuv8a64fT25Zx31dPwsK9Tvm716bOr
         ZpKK6oognuqxed1/u2nfVeCpXYZTjicXAJ4K/l5DlpPXfTZkP08YeR5pvDFmUzwO+okT
         JVMMDDB5o4OBUBwXkwOzJn0BaXEk1h5va5OVaGMUYP9Qm96gfz8WBZ2XcC46wbmnxJSJ
         LW57lHKFYQ4FWGPaxU52NjEmNXPh0wfjZpvrGihDNJnZtXhqtZeOiRSu8QJ8+2HkuZnV
         gqEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXT4o8lqatw0B0dBYiCtVm6LJwyIB01nKCfaAmJ4XrUmbjwnzmQjcBVlFhjJSv2h0wHSDvsjvOe7+M2@vger.kernel.org
X-Gm-Message-State: AOJu0YwJwgeobvIPeNnoMrrSR2SOzKh6RaqDIjs8N0dU1PXtVEfpoYDL
	h92t2xYc5b+4FOtn26AkKADie9nnATeAEEbAgMzisuWDH4iVn+K0G+EElTy4e9zVH32cM1qJbt4
	SVzpzTTrOllIDtOqcXlwB83S3o9KPlItEguY7Eg8I/K1LL3dMgGK6vLJ8tBFUKqa8
X-Gm-Gg: ASbGncvBc78bObEdLsDND7yl2XAMcRGST97hdQQCbfb5PQOPHsB9dflLx/OXyG0LNXz
	1e7g/Wn2tkD5BxQotd3ksoLt0HKxRnseHIkqxbNzAfAGGoCNs2+0ABsY91SoktPbLIufMQHGExA
	6z23SHPB99nsEHXpXwWEVZOOW7lA+lh3iubQ72Qd97EX3ylJYqRQPb9nw33QxY6hP7e+iW339/d
	6U46RBzJfiV+PywQIoGTZr4o5Um213HScRgF19WctY5huSWXD+fNcNhC1/5WPuJA2dC9anAQic4
	EOMNB4A+gPsaHTvMv7tkiqI3Cv85sL8x51w5znj+EhrQuRokci2sIop3xGlrAnE/f62vMXP45gd
	F
X-Received: by 2002:a05:620a:19a9:b0:7c5:687f:d79d with SMTP id af79cd13be357-7d0a3d97b79mr114734785a.8.1748602289509;
        Fri, 30 May 2025 03:51:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHziPYjNP2s6LLQZYshTIYmZqGevpTj1cIMCZjPhU6B9bmfaCGLTz4ZXmXiuXBtFAGhr5eO8g==
X-Received: by 2002:a05:620a:19a9:b0:7c5:687f:d79d with SMTP id af79cd13be357-7d0a3d97b79mr114732885a.8.1748602289173;
        Fri, 30 May 2025 03:51:29 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60566c593f2sm1428259a12.17.2025.05.30.03.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 03:51:28 -0700 (PDT)
Message-ID: <0f855d7e-a85d-4fcb-aa6f-6254b509e259@oss.qualcomm.com>
Date: Fri, 30 May 2025 12:51:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/3] arm64: dts: qcom: qcs615: add venus node to
 devicetree
To: Renjiang Han <quic_renjiang@quicinc.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <20250530-add-venus-for-qcs615-v8-2-c0092ac616d0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250530-add-venus-for-qcs615-v8-2-c0092ac616d0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: chYqFmyJ7eQ2BgufShId67sujFSSoUCt
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=68398db2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Y0e4vqo_zEX2NYFcfF4A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA5MyBTYWx0ZWRfX0y+D4sLMoVSh
 +uTA+qPNrBTQ8u1C1CeoSh/nMUVQEy+rjsw9twOgNRqkymQOw+mgywpaVs2PJN0FkG6d14PHrsk
 h8prGPV+6BIL1tN16/x6TX0ul3OCJfxYsiwyzq4Zw6IdjiwJdyFU+bH7Y6NEuYyoQ68kZzx3aXY
 OeNgq/2QvIWoi2UHFoL24L8QTw80C9vICiXZXwvz3TKXBeeyODZrB7IE8rMiEacNpu2V2lJQKFl
 jDHPE9xE3rp74b7RpUMJzRwFK9aUgvP9DeUwbg2pxa/73StEF9h4T8FA3pTha9t0LsEgcrmE00M
 s6FoNnGalrNJh5LgiVrBbGO3UZCtHGsF5AGSlzZBmPVvY3A5CGlo+V2E1OGZEw2mkKaszdZyolt
 WSClIrkAeH2stmEGwayCPNxFwsAuMy0uqACe8FdpNbVGnZUAdLAQi/6Iyi6GNaMaEy6puVxY
X-Proofpoint-ORIG-GUID: chYqFmyJ7eQ2BgufShId67sujFSSoUCt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=672 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300093

On 5/30/25 6:02 AM, Renjiang Han wrote:
> Add the venus node to the devicetree for the qcs615 platform to enable
> video functionality. The qcs615 platform currently lacks video
> functionality due to the absence of the venus node. Fallback to sc7180 due
> to the same video core.
> 
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


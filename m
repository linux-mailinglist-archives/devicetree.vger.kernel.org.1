Return-Path: <devicetree+bounces-225024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A437BC99DA
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7FD194FB4C3
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DC12EBB8F;
	Thu,  9 Oct 2025 14:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mqg2cHAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B982EAB85
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760021266; cv=none; b=Q1d/wRvWXIHy8vn3asW7pp3QCUUTCqZYtlRxTaezP8nbB9/Wlml/GcMhOD3xlXi0UYhsadJhQU0IyiHEOQU9Sm7pj3pnNhJPSbL9eo9UDlbd/+24d27NJJ/WX5gJP1zcF7tryVX+NdBywk5jolIWbXoP0cP3c4MmpaKOUubQD48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760021266; c=relaxed/simple;
	bh=wCZcf1vJQBWFgMYZhxV0uN6s2NYKhluKHQpo1wlh134=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mqINCM3nUYrdQbWStJi6CYIv6omgHhvKcIjb4j9ELxD1cF2KLFLjlApM6C9qFqu4EoLhMgfOfPWl8f0X6ldtKiTaA4IvgVC4znH+hmjyvAfYWLMoR9IRlyhJKNCNm+0IYgpzp4I9r7fnCFSNBhrqWAlanRKVsbgCb05jyO2msjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mqg2cHAl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996ERFQ022373
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:47:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ebeBjH17Tc33jzXaK2hqQGrPdF0j3wORZwYG8oLycWo=; b=Mqg2cHAl4vRoAEKh
	zY36ql9Ogij0IhkoIEpBO6O7ntKIJVD0uzTD/DcEhQlvb4V8YAfD1T1uto6atE/r
	Lt8QUkwZKCJf/0dp8KxhLnuUdRm0R8u8eF6kflmhprEQ8z5WEIVOCU3EEXtB86oW
	xrUjVRQYkE5Inf825XEhQqTocG+6txLsGFC43vxJEszhbXq1Amoaqt1bI0LdvOWh
	LgnsGTbDjtygnHCv8W5LsasaVqRYAdjM44/ZQOhBVc8fUDWNocTQugngNOdr5/+p
	nYuwMkPA/QL9a2ZDL7/P9FSyEP7wf810+mL2uWE5t36xn4Iu1QVeMawn2nfwKytZ
	C117tg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sk7c5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:47:44 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4deb3bf6b2dso3078821cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:47:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760021263; x=1760626063;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ebeBjH17Tc33jzXaK2hqQGrPdF0j3wORZwYG8oLycWo=;
        b=Wfc0Kmoj+bn2y7HSImZp3Ene4YPmsTK97Zqd9fgCZjks5oeKJ5o1zm6RC6UnmSUQ3S
         8EzwIxR1x1zq/eN7XD89AxM95R7GtcSYRz0nBqtor1+771JxnPG+qKQWsEpvYwiMnlXm
         epXPrQIc458xwOUTRhw4TTtjbTJlIHlKDAD5ta54z0HK7xCG3ichIUnYYPcwRzRk55HL
         ESZZBLIlO/sZQsPtxs6Bnxva3U9nk+UCir9aLD0dUtfyN0J18sr1RLD0LL+ikY7qgtOW
         ux7osNFmyD0PF9DnEAFvC1B/0K9pVkECS74OVnpAb1LD20Ed66u+Pws1eNLPelBW/2de
         sEjg==
X-Forwarded-Encrypted: i=1; AJvYcCW4iQoA5XXzU01k54YyHYSbn0QroudvyWcmzbyiPOGF9pc5vTx7FaSe7s9Xv0qQAISwBut9yrZvDFbJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxP2+ZbApmF2pPAG3NB1P/mj1V7xr9mGz5/UXQ92kR/3kUOT/ex
	L/VPpboadGoYr9YwhbpHgyfkyb5X2k9+/IKWXDHZnekEIWnHQYmV6+5PWU7f7DG+xZGHwlS7N+W
	ycoXxL1C30IRMl0iZhrv79tZQ/0SWHoYwUZLikKOMR1ErwQ6sjUij1EBG6iAK+b0f
X-Gm-Gg: ASbGncuKrdiAlZgDbmiXfbdrNj9wt0EtMPwJ1e3GPrv/+zM18/ILbgRrIHU1MrkkxeN
	E8huRTCzyJBx6g5tfJ7cYN3IU8JSAW/j4BuK4RWVqStNQljSsXkSd2Q/rrngiBu4IvH4tOUFIBR
	hQoEaFguQ9XOEXqEDjSfkfrvQ930A6TMap6YOmclLA5Drxag3e0fmY1tYbyR3l+S/jLggSBYj88
	uEZa6gFatKprADEjxZlHFbz0fZp7FduZihu1flE+Ig+LykBwpnbTToiuRdE3glvW+zmbJxTlO7C
	LnBselK/GGz4WTTlq8QYhawCOeT8QSsqjGCDd+ybelxJTskumu/uQRd4YIwX2qIN2Upwl0N4oyh
	A0TD4k0wuekt5BTH6kxEsd5bHkHs=
X-Received: by 2002:a05:622a:11cc:b0:4dc:cb40:706e with SMTP id d75a77b69052e-4e6ead458c0mr75125561cf.13.1760021263255;
        Thu, 09 Oct 2025 07:47:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHvkCErGnAd+2F+0V519Y/X6ndedkfODnCNUsDw9spRdQiN0VpPtSkMUsOifF4sBmQy2FpHw==
X-Received: by 2002:a05:622a:11cc:b0:4dc:cb40:706e with SMTP id d75a77b69052e-4e6ead458c0mr75125001cf.13.1760021262397;
        Thu, 09 Oct 2025 07:47:42 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4f3c7e057dsm766895066b.88.2025.10.09.07.47.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 07:47:41 -0700 (PDT)
Message-ID: <c16d4e6d-8643-42a6-a7a4-8ca18e6db265@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 16:47:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 CCI pull-up
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Daniel Scally <djrscally@gmail.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Andr=C3=A9_Apitzsch?=
 <git@apitzsch.eu>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Bryan O'Donoghue <bod@kernel.org>
References: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
 <20251009-dw9800-driver-v2-3-3c33ccd1d741@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009-dw9800-driver-v2-3-3c33ccd1d741@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: f2oBzFLkjPbh9X1NEE-cyyYVbTmgOP-n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX+yiPrAFwJ5tu
 zI2ulrkYs2UlFvOkvjsB95QwpLsyUGu20E+maQoIZSzXE3XLI5y3H7ZhK8iWPx5eBhiQBrF18K6
 SYyaGlFf80y0DSso7cx26bngB7/FNjKhRjbZuUeuWELp3U48vbSdduABMnXL1Ku8tb3JW5/kfSR
 FVUZpzx8SIFACIZY5dS3bzH/RH64OGZMo6HVVvzVlmFnsAH6/g4JyIGmNeeKehrTrMesg5UN2LL
 aRJFo0dfTfwfXgaynUq2a0JmAku1761MEEWYNcO/0+HGdI4Wenu9qphS85iRHNf7vbR4O6hmpSZ
 hwa+3x618u822gl8mFgOiqTHtTOVlRcIDBExLcblIugj2RUy9sNN6XosVlxzh+oR+BEKbNOq04A
 n/i5DNKIAY7unjZceMMOWbFzDgts4A==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e7cb10 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: f2oBzFLkjPbh9X1NEE-cyyYVbTmgOP-n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 4:35 PM, Griffin Kroah-Hartman wrote:
> Enable vreg_l6p, which is the voltage source for the pull-up resistor of
> the CCI busses.
> 
> This ensures that I2C communication works as expected.
> 
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


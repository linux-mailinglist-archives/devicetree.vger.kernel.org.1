Return-Path: <devicetree+bounces-222966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F9EBAFD48
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4F9B17935F
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3CA2D9796;
	Wed,  1 Oct 2025 09:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q3Bk/+Rj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F6427E077
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759310052; cv=none; b=VUcI8FNr1J7BVZ+EZ6yDLmGbbgJQgbiV8kKztq5ggPhQp1yk8qUJHZb+VLGWnyVWuClQX6pBY4OtPQOHq56hO1GiQ1wYkG1fBbihOTyh+xynjv+8kEzKcVIS4NiZcXVqPBfzBQy1ONBXnJQWa4KmMKb+bKChAUMU8GYYQMCKKlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759310052; c=relaxed/simple;
	bh=DiKOiuOUrDOlbJnzJU/h1DMix21rOvJ9MIGTIzcCuLw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GFOo/2W/avyF5UeTCqScm+Ebu+nwPuay9VJeK5qt+HL18a3bUNIemIvmd0ppJ65lLdCszCCa9t1YCM0+Cl5T1bp6kQlBxG3SkDTdMJIZguGp2yponTwwhPTWWsNEBpd1lENJ8+NA10iUGGybgtRghb3h+Ic2UIsQtin9yhZdG1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q3Bk/+Rj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ULcAfg027448
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:14:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rn3/KCzj9e9RYjWV5CHIU+LrVXqFk2tQ42l7zJWamMo=; b=Q3Bk/+RjjREsrk/n
	MEw4NpcMDm9AtkNhRFcdtGRhaNPoiW58Y2CsOIXdZwQgBPcElLBOZKWBfetz5lGS
	EFeWgPAVpkNkGheylbMm3NJ37nOgapyxnbVoM4iM3B6YGizuaiH5wiIAP1KEAie1
	f3WvUvy7rJrs16gNLGzhemDPY1GfrdW3bOBn5Ga6ubhlhiFznrMATfA++Vo0ybek
	D8SpCQ8V92Xm0VW4w7gnvx95X3MI/csR+Dos/VpkfGq1zruU3LDp8Gdyc7Kz1Slc
	n8aiQVxKFQKVjhn4q0MHWA/6FmqshUo56vKXlNykmGBfBPFNuwx7/doFYif2JYqe
	tJJvow==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851kyps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:14:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-853f011da26so262646985a.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:14:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759310049; x=1759914849;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rn3/KCzj9e9RYjWV5CHIU+LrVXqFk2tQ42l7zJWamMo=;
        b=ihK/m2X4+S+bZmnIPjU6b/fYRjdDospys9bYvLFabu3GyemyjtubcUyZ6APtEUog8m
         8EznkAvHxAGfICrZXrZ9MEDmk0COD3Q2GTGtI5fF2CR8diR/7uoRwI6dZhYwTu0iOTxm
         LHYTJbBbadnpKM97XBuYSpqhl3H6CK3tlj5EAnFwgnmgSNlKxx530c0eZkWlx6RanhRg
         2FuE1AiI/CU7mAMDkwlfj0lBXvhWWm5MKbLJdJeXbwEHV5IfQfCTCfECUmPSJ8lFwOap
         7l+tCH0z4UCrfwrSRtxoNltPCM8tnBCiejG4QoX0OVgJduPljBzSaW0AvrH/Ks5tXxte
         SGJQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8eXVNtoM9ZdqybJizY8KOtSnJXLJB8WiJqDh8ChAS9JfaDxfDjchOiFF0FyKPejguYUMjaO0KWdzC@vger.kernel.org
X-Gm-Message-State: AOJu0YxT5iHKjNL88Hp/pP/Js70aqg1dHxvALqqIAmmuLsaWv9dCHtyJ
	6K5u5XZl2t/FTsqD9SsNRntqaLlGVunu4yDleBkWJwAXCqPHwMglBzHYF+ELiQCB427AJ9+VsmF
	QiW9g2t5cWPChqQlCBVwSPIb3IJjE8Jxy6ghiZz6xsnDdna9B033ECzB2lEbeJF+p
X-Gm-Gg: ASbGncvUboKwanKVR3//y5J1idkbqWR1HO+AEnedDDEudr8A9eRhu8GGezIcWzzqLou
	I0uXqHSYEsNuGkA5ZWJ9Xfnmm9xJ7bCrmRkOkg9oyJssxRubUV5l+Tj0ipnZTOlW2hGh9zkl275
	HH4DKIjzmFKKOCplmMxivRpyJaFxY4IQNjqeWuHGOeAc+7SjwxpdPoH9tHaP8LfqgybY6pPtrQh
	gZsVB0j8546ugTjrhg2e9+IJP/7JcGW2Xtvw40J31bDmNkZSo9vvTNw4dx60ypgaloqPnvChzXT
	8z4yMFua0nLRtkEKEedyKbM8ufu9L8xhWHlzuv5ypbNv3Lk+F3Io1tAVS8aQwbOLiZEmcHVo+8S
	NoYi+7F3bhoSdLs+FU5S0vW6O5iU=
X-Received: by 2002:a05:620a:4095:b0:827:52b2:42be with SMTP id af79cd13be357-873705f0553mr259062085a.1.1759310048821;
        Wed, 01 Oct 2025 02:14:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGENrGs3rsybFlp3G03YUI5//8oZwz0h6YnC6O0icQirUqBpC1fptftVFehVajvDELL7EbvWA==
X-Received: by 2002:a05:620a:4095:b0:827:52b2:42be with SMTP id af79cd13be357-873705f0553mr259059185a.1.1759310048211;
        Wed, 01 Oct 2025 02:14:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3cedacd973sm725041066b.49.2025.10.01.02.14.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 02:14:07 -0700 (PDT)
Message-ID: <f58493a9-6def-4610-9c3e-d6a877dc23d3@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 11:14:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/11] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Add wifi node
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
 <20250928-judyln-dts-v3-7-b14cf9e9a928@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250928-judyln-dts-v3-7-b14cf9e9a928@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dcf0e2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=IqCYnrxLgLuRO9zwK-sA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX1MeMbxU6HPMz
 o+pynTvOdRcQtZSeT5MFeIoUverFIJL95hoIJQ4nxpBdlS+PplttdkaoCcrg3twjsoGjXCXz9PL
 fKkq/fOw1XehcOtqdLwNIhA2UVHksSbomQcYfMcnFzomKHI3TcOIHOewCQFmaCeDscdJeMFwn0y
 mRBasG0RsGQYUkr+zi5GdHRChgiQbNTw6rAUfIDU1cmyXTLspP9WWoDZOEZBOTr6l/a1pdIUib+
 Pe6YT7xbp39VnpPFXIdWYVU0r+j8/N7KIQVbsvzQl6GY/NhREMzZwdPnG9rW5KXGkPiliZa9r1s
 d89+lzG32KeeCAeeZUvD4LXMZeKFwNfviP9B9tRRdxm4auGBKCoqNqr94Nq1uB+f/qALAgvvCO6
 Dc5CRnW5FUvJANqBY8ljCy41inuHVA==
X-Proofpoint-ORIG-GUID: s4tbz70ambOL5WYTfwQHJ2gcZ3H0B7-C
X-Proofpoint-GUID: s4tbz70ambOL5WYTfwQHJ2gcZ3H0B7-C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032

On 9/29/25 7:05 AM, Paul Sajna wrote:
> Wi-Fi now works with this patch and relevant firmware
> 
> [   21.488274] ath10k_snoc 18800000.wifi: qmi chip_id 0x30214 chip_family 0x4001 board_id 0xff soc_id 0x40030001
> [   21.498477] ath10k_snoc 18800000.wifi: qmi fw_version 0x20060285 fw_build_timestamp 2020-10-12 23:35 fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.2.0.c4-00645-QCAHLSWMTPLZ-1.336037.2
> [   22.973165] ath10k_snoc 18800000.wifi: wcn3990 hw1.0 target 0x00000008 chip_id 0x00000000 sub 0000:0000
> [   22.983265] ath10k_snoc 18800000.wifi: kconfig debug 1 debugfs 1 tracing 0 dfs 0 testmode 0
> [   22.992048] ath10k_snoc 18800000.wifi: firmware ver  api 5 features wowlan,mgmt-tx-by-reference,non-bmi crc32 b3d4b790
> [   23.045368] ath10k_snoc 18800000.wifi: htt-ver 3.83 wmi-op 4 htt-op 3 cal file max-sta 32 raw 0 hwcrypto 1
> [   23.130581] ath10k_snoc 18800000.wifi: invalid MAC address; choosing random

I was only interested in this hunk ^

please trim the timestamps, too

[...]

> +&wifi {
> +	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
> +	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
> +	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
> +	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
> +	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
> +
> +	qcom,snoc-host-cap-skip-quirk;

As the dt-checker points out, there is no such property

If your wi-fi works regardless of that, you probably don't need
to set the one you intended to

Konrad


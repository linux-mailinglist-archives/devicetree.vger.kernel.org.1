Return-Path: <devicetree+bounces-239614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1A8C67524
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 06:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E38384EE441
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18C1D2C3251;
	Tue, 18 Nov 2025 05:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GYLS5vEg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R8l+a9is"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EC32C21CF
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763442676; cv=none; b=HXVdpVlHJyhoFIdeVTv7ZHrvruURfpFtuu4GkhwfXmaFfofyWxY18X5BGyBq9ukxm+Gwg62Jh9Z/n7rtOwDGl6l8jS+mKghWP84s6RiUlu+7G/7BJHHHZOUw4qk/ja/ihhcb4Zq8P+fJXUj7XBrfC7l+FEM6jPHr/1+Ot1cjajA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763442676; c=relaxed/simple;
	bh=6UPi+IM15NSINcqX1pmy+FEWsFavwKpuNJccF8GcTB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BfrdVKY0UeGcOCIdST25pxOtZ0Ahuk0JvhjxdKOftF9IxC6pTZuPPuC+zL0Arr/poS3tpfQBVLHDtlbDSmb3eRdBiOkAGWoISQWw2zMLoYlKAncgsO0meCApa4Ebc9Y9xLjEzkpN10rHijxZM0U+TXZRbxsN0QKVr7Z8jA0Ir9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GYLS5vEg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R8l+a9is; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI52T7b3920983
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:11:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F9+syfQI/UcZhAD1X3K9cuH3RMhFQ0Kd6rLCrfVZTp0=; b=GYLS5vEgj5yW2YZl
	rms4Z5wuPNSJosmJqrKe4vCj5iw+R+2jO5vTXCRzgtRXmu1zjks9OD2uNbLOm/oU
	nO0Tn2dJcfq/aiyfqndEaSVY/SNcuHzPK5pEvcOaoZUYwJ7NhfrbL6Vr01hU7512
	kv9OKQZ5Ls303hKJcWWIMoWQKT7I618juyc+sa4pwbNkxqj+2sXg4jYcqhtjcvB5
	qHakcVlvJXPc25pTXoIcwewDfkQmZ2fHtUWsox52uKImzfFNH6XSI1MuDnZbwoQQ
	2Dx7J2AvcyvPNxf8MIEESfrcVhOeAssjr5h8vTV5SneeJ4RHyXjmsfO/FtdqVGHA
	wiluZQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2ayatk5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:11:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2956a694b47so58152155ad.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 21:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763442672; x=1764047472; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F9+syfQI/UcZhAD1X3K9cuH3RMhFQ0Kd6rLCrfVZTp0=;
        b=R8l+a9iscSZzkxzbgFgF6+fwx5XKzeI4gjG8z7LaONJJkIFqPitk0NZ4I1JAr/+e3U
         b7uim1+6jUM9QfFVbwi71zVR0shT00pFDiFEn+fvmzffCGi2DELvKe9xBuF2vGcRrqjh
         UeYeG95y/bvzb0pl5QRwC9I54QmJs9BbpnZpSfhSCs11WEkmBVfQug3AiNWbRoraxoPx
         Hj/n5hdOXnbTgDy8KIa43VL4+WPbTArjPIv9oN6S0J7d5O0wXcHUHLluMOeonkw4YKoR
         9FIbCeo+p8gQF20kVVYm8eTr7m+2llV3B3FhS8T8nzBJiJvTATJ/t93n78vt2voURh1i
         fcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763442672; x=1764047472;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F9+syfQI/UcZhAD1X3K9cuH3RMhFQ0Kd6rLCrfVZTp0=;
        b=V7PTDe57yo9Phbmdlz+DiqWkkavvAN2Lq6Ime8q4pR2nQu/CwBK82jA7Kw+j0NVw1a
         +7ApsP+wnvqnCs39MyZPIsjk5CBpu581TNSbZ4miPgaUT0WVmHcrtAJdHPT4J1RFXhmv
         vp9Hz8DYBbQxgtvhnPubksk6vRtsjvfVkEyyO+56m9OWhXE8niXsMMswgAKLTbhfJNvl
         F6ixQ0/BIuq38KhFt/Pigne2BneBBMQgrwtwB9SV2SrTWQTMFDKh4lRjY1n7NYDeUAKh
         pjJXad8OxbGOF7IiPZzTm6dEkRls7cARWB6eLcxG/Niob8jQGjBoH0B1j+EbMb0/NlGN
         qH3g==
X-Forwarded-Encrypted: i=1; AJvYcCWZBF6iAGu0NhpCXFtLUpxzwHVR4Tjo+MbzE8hhYFKXNdy6azPpWeTngdfbfApL5ao6f86K8PDhdiZj@vger.kernel.org
X-Gm-Message-State: AOJu0YwVE1oB31TKdgIQyxYVXoBEM56nB3da8tvCx0BUWc3MB0VSmfLF
	QFHEayI5iGrx5nXPlhwigSZYaQSnIWUeSaaGkFLsGo4wi3ahlb8gNpUoBocAsvWTKgSc73eokkD
	q6MkCjmWD1b3ZRg1EYzO1mu1GUTtulSqWSNb08EUlN79R9QlDssjqwXTrxQf5b14E
X-Gm-Gg: ASbGnctjDiX7ZbiA1RtPdXTlBOjcbbHuKezeyHomN8LtcrCrj8JGGkll5yV+DkxHGpH
	t7QcFKQA2+1yKmvRqVg98NmiwsznmzQho7Dl/TgCrkOTIWGq+jfcD58gyd0iw0sN4n2GxULP4yq
	cmT8SqsJC5vQ39HxoH39EwPz24epDn/zOtQm+v93pxkdazmKxGRSXX+wyMk+DUZqMOackf4oOs6
	70OROATr2vnjNx3tB8MdW4U5OnLguCTR6/jguG9KvbjdJAJoygxCK9ehGACq/SsQdDDi0uahnG2
	1Sa7haF1c/X+g+JSYLK3ic+atHTQGPrkJTn6BTnDMAvxpMlNA7RV1S9mGqNBzK+HlSjHS2LMf1W
	KEz4yBey2fYznzzI5cakhUJbdT3hyCxU2
X-Received: by 2002:a17:903:1b10:b0:296:3f23:b93b with SMTP id d9443c01a7336-2986a6b7b8emr169834385ad.2.1763442672157;
        Mon, 17 Nov 2025 21:11:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGeGaIgIJ+eHw7T5M4BNa235/PtBEceB/aKYl4gUPq87dOaaJOulivh2MenzAAvJySYtSZDbQ==
X-Received: by 2002:a17:903:1b10:b0:296:3f23:b93b with SMTP id d9443c01a7336-2986a6b7b8emr169834145ad.2.1763442671676;
        Mon, 17 Nov 2025 21:11:11 -0800 (PST)
Received: from [10.219.57.23] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c249806sm157642235ad.44.2025.11.17.21.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 21:11:11 -0800 (PST)
Message-ID: <8f806e27-6a4e-40f3-ef4e-caec3eac4165@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 10:41:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v7 0/2] Add support for Gunyah Watchdog
Content-Language: en-US
To: hrishabh.rajput@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251114-gunyah_watchdog-v7-0-f5c155b941d5@oss.qualcomm.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <20251114-gunyah_watchdog-v7-0-f5c155b941d5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dL2rWeZb c=1 sm=1 tr=0 ts=691bfff1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Jcbj2T6pCAO5tNNiLYMA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: Zomms4eIPZkKTv197s9xLAKgAhpoG_6b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDAzOCBTYWx0ZWRfX4IjXeekrw61I
 Pp0+ss/LUtSPlPKa7V+QGQJT46eSG/yrkROJcyy4wResoF3PAqV9BmTGbos/C4VSfKT6LbIRQVO
 BcueDgUa68r9aWWtA7UAvxr7vuKhDp4H7FjpXlHXqaE0ETv221/Dcf5TSd+JxID4pKuqXaBcJlB
 TVf4F241fBw0oxhaGrTcqcRABmKfkxsUIKZCsiOw2jF8txDnXvAksffcWBl7rjgQMoDmOf6qyvv
 wwSuNnpgcNlihE7o+d8d5QAUCdMgPYqv6dOJsTcTSFnB205QPa6S+6wkjgOLFOFcS5t4RBvSSws
 xkV8Q5bDBtO9tw48A1Bp3APHa2IUj3alC+V8stitPeuUy4Lh1bUMH7csasaWjzVuV+K9c0vs/nN
 tTFYSMqUUrtVtsO5kzH8UCRtmZScsQ==
X-Proofpoint-ORIG-GUID: Zomms4eIPZkKTv197s9xLAKgAhpoG_6b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180038



On 11/14/2025 1:27 PM, Hrishabh Rajput via B4 Relay wrote:
> Gunyah is a Type-I hypervisor which was introduced in the patch series
> [1]. It is an open source hypervisor. The source repo is available at
> [2].
> 
> The Gunyah Hypervisor doesn't allow its Virtual Machines to directly
> access the MMIO watchdog. It either provides the fully emulated MMIO
> based watchdog interface or the SMC-based watchdog interface depending
> on the hypervisor configuration.
> The SMC-based watchdog follows ARM's SMC Calling Convention (SMCCC)
> version 1.1 and uses Vendor Specific Hypervisor Service Calls space.
> 
> This patch series adds support for the SMC-based watchdog interface
> provided by the Gunyah Hypervisor.
> 
> This series is tested on SM8750 platform.

Tested-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com> # on qcs6490-rb3gen2

thanks,
Shivendra


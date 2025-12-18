Return-Path: <devicetree+bounces-247809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F47CCBCA3
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 523A53026A89
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 12:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AF527B34E;
	Thu, 18 Dec 2025 12:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HlQkp9Mw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gSFfn2v5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CFF32142A
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766061003; cv=none; b=cWvPXm0Sq4mtLtVEVKCYcmsrTabBcK7fmJaBYb1MIm16qL3vNRCubDbvPMMpUXoWZ+LUDYElH278Lp9n9wMAlV3dFvhF6cZzesFMnIXujDAYhxut2nanJwOGHb4TunOU61BZgnhjGhLAwF1p+WDe4uU4jbB4jA2KtjWUTWNTuU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766061003; c=relaxed/simple;
	bh=Z3GYlgaczE1QLRU5rK6i6GanndeMW8eYR6R7LlT8Fg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eKtwRY2LUTMsPhcNRIxexOHpMY9jXi+TBl60aGMKbCZT/L1PldA8h1FIiJwUmUJQDyc98G0Y6H9t0EpeokWvtP3WbhgfgxpiwXZ5sxlJR+pjHRjz6SMzX8sbhZnPlR4MDkcVUPw7HXsRwKwn3EBnxPg7jYdn8VGVCR/3xh7Dfj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HlQkp9Mw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gSFfn2v5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI8kIv1527616
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:30:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1JBSuSadJBaxbqho0TQsSNgCNangw5M6GIUZheKLo+8=; b=HlQkp9Mwv6HrjkGw
	QOMVBG4/cfwtUddvSfQVmmSuZj+0ZTByBXTgnKA8VcSk3ZvU57Ca/8rSoKvdO60A
	7xd9tLIfqUqBkd8RdjElGfMoKZjtNQyWbzJoD/ktjW61AL7ySi2IO0CuYo4hmQQI
	y2gxVNJRdaxgEXYaZSr/y48OeZ48rzVuCn3KrjXjoZpIjtr1ISZnqGiTNPlkf7UP
	faK0muE6Fy82pUSY2WCknQoXPLLiofwjVidV8x5IVgwZsckwlRb0eVoGmges+dsy
	v8th21EKANfBai38DPX9zekjmWAjTfXrRMjL4a/QSNTyZzrz4mv6PZ4nmgTkbRGp
	RDlfXw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb2jyk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:30:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so2949841cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 04:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766061000; x=1766665800; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1JBSuSadJBaxbqho0TQsSNgCNangw5M6GIUZheKLo+8=;
        b=gSFfn2v5LxGRUdHALJSvqCOPQu3zNiw3Nc9UsuKP8LcfdDPglnmAkJAk8gf7POmn0T
         iY8bGlj0Tn/HzRDG+N2S22Mz2eTfEmlyDB319ex6lcH3QfDRkNhM2HJ4CdTkFR/fzsXi
         1gkfu7O/+G6MuJutk+uWgOQ/2kdlM+EAurXXl/Lf2IwkXpLAg3nM+22IvbqmX1Lhc7ME
         FhDXTOSMwKm0OWge1eBCyxuEm+VNYBTKyEljDJSMNmUmH2xULiWv8l5vfJMEzjkeNLKD
         lFqf96q49SbSkInzv2KhBNL5SN/Tm+Hur7wPs7OF2UUtIk8jwPuaL0/2aOM0ti7Ee5RI
         AwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766061000; x=1766665800;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1JBSuSadJBaxbqho0TQsSNgCNangw5M6GIUZheKLo+8=;
        b=Ea7RxlXG/rEqTj3hDyXmN2ZzGyjYHv/bCbnKnGqcC6ScvA6Cnac0JUDvVRTDG3WXLi
         7RYEyfaHZy7Fxz2m7sLos+SKRkn1bBby5D0yG5gyJaULskakx2/9RW4gr/65RXi6R0x8
         TzaEDMpMkbUNDyxHqJrBNsdW22YXGGrRfjwytdI5zQ7NzCjz+uwQLSUHrDgaMyDk14+u
         wVZnB7/1JYk6C5Y/wWdPyWl9Pmmnk1WMU4MdDqRaMr787MQuByfTB8YYxHyO4ZSCg8In
         wMs0EgBbb1Yye3r4GLZrH+V+b3NXsc37gRz/utP7X13hun/cShKKKz+WlyigsV2UmUuP
         2oTA==
X-Forwarded-Encrypted: i=1; AJvYcCW/o9kiEt9WVCeQf/tMdoj4bYLMQaPN0SKM55KjxFYBiC9ZZZLhh+j6yxCJD5Zj7IpKR49mAbAhQodK@vger.kernel.org
X-Gm-Message-State: AOJu0YwKJboXk3fsLc9BeRLGwQT/WiDVlqQmcxscC2EeMP2VTOHCTOTj
	HcsN4iZjkHL3e5VTDpS02w7FqDcEll/ADQUhKcAZEGcfUUkBh320+GuEGHKisc9HNkEUWB+3t2h
	0HcyHJmD2/5mV/pYJfw+AptiLyIfiHs5dEVJaawe26uRFZmEqHRFYmKOWRSuy5VDP
X-Gm-Gg: AY/fxX7eiuhYoa6SyFfCpKorUy+XZOynkokiKM8xIMLuldNcGYBGGHIgawWEVu+Sckq
	TDh1Fr/RBgOStz4AAvkW2MR5Q73bU1gph6CVj8sfjQqO1W7YY/IpRawoIuMUuIxOFZoTA90hj6J
	91bm6hDVEhYU0DWnJJdtBkjG3rQ7m4dFefKjUlqv2uBT1RGhDROODtkTNAG8ZyGIm6KXe2iQQhC
	Ov3WulZONFtVdhDkCGFJctQdwwyIsLfwAaTUswkrXLiEGl0h76qNc6KhB+Ijfe7KlLy0d1fTTIS
	3KPz9k2n3VSm6zbioCJ2IidFYi1nPSF5GkTOsdCVzZmdLyWi2DQo75OchUo2AjYQ1nkTbEdSoT2
	AdqZcwla8BpTLUAiP6UxRP/35VEwBI9qMLikWfYpCBX7YU5peW1txtgJlsX66yflveg==
X-Received: by 2002:ac8:5d07:0:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4f3610a9089mr19063061cf.3.1766061000537;
        Thu, 18 Dec 2025 04:30:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDcXtxXI+nmW4Iy4S8rIekI1G8iOdyV/+bKzZkbm3P2+fhPZyOem3P5hy+luahFwZYOHcZjg==
X-Received: by 2002:ac8:5d07:0:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4f3610a9089mr19062731cf.3.1766061000037;
        Thu, 18 Dec 2025 04:30:00 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8022f93e99sm218890366b.2.2025.12.18.04.29.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 04:29:59 -0800 (PST)
Message-ID: <c47ab448-7091-4c42-842e-12ae88bc8de4@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 13:29:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: msm8939-asus-z00t: add battery
To: Erikas Bitovtas <xerikasxx@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20251208-b4-battery-hall-v3-0-84e2157705a4@gmail.com>
 <20251208-b4-battery-hall-v3-1-84e2157705a4@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251208-b4-battery-hall-v3-1-84e2157705a4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ejReqn9R_GnS973r2CP6Uji9KaVIXeWD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDEwMyBTYWx0ZWRfXxAWp2YyYxZoq
 x//trWr78tYWC8Y4jsIHHMLDx/hMVgFDMRob/ax0s60MdhTT6N18lIhm87dXiiNrNunp5uS5nvW
 pN+Z1RqQ9Venpf09Ln6ELJ4V1tQ1U70gY04GbKnlTdbUToDLKT0azHDcHdDTqSR+c0vn9csWak8
 Yu8BpZulGR7UcEtiV2vJ9eTUNZuVzxhB9AyO1whIwt8WbSccQL/OB/neG8+u8RIPXgTbtZIGzVz
 B58XEkQTT2nQyGA3C7qDLdOMRUmgVfPkAdr3r75uNPg1a2xbQpl7n5FljDXoPl4iNW6iXspAGQj
 14G08dQCjzRVvwp/5uhWdw8BhIK/GMo1ODf276gzw33gQ4qOjrDEzODpyXPg9XZ46euGut7w6g5
 8IfyE//ixkdkRikTae7iDsjIQnIEYg==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=6943f3c9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69Il93vAAAAA:20 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=XMUF6w0cWkiwYonXWGYA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: ejReqn9R_GnS973r2CP6Uji9KaVIXeWD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180103

On 12/8/25 3:59 PM, Erikas Bitovtas wrote:
> This device tracks remaining battery capacity percentage using voltage
> mode BMS. This commit enables the pm8916_bms node and adds a battery
> node to track its capacity. Battery properties were taken from the
> information printed on the battery itself and downstream device tree
> for a battery named "nvt+atl_3000mah" [1]
> 
> [1] https://github.com/Asus-MSM8916/android_kernel_asus_msm8916/blob/10.x/arch/arm/boot/dts/qcom/ASUS_ZE550KL_1936167_3000mAh_3p4COV_VBMS_Final.dtsi
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---

Amazing, thanks

I checked a couple values and don't see any immediate issues

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


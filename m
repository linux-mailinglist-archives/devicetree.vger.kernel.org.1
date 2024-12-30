Return-Path: <devicetree+bounces-134778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 998A09FE8E4
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 17:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB3EA3A1E41
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 16:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91FB41ACDE7;
	Mon, 30 Dec 2024 16:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KK3Sdas/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531A91A2544
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 16:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735574807; cv=none; b=VD+QbuqpiH5DOtyGe9S9fNJN/GcROYEH2R3iUHwcNdUGTV//lVJXdFF0foErBYsQKeZpxawMfo1WTPGX8XXaubeyudjAMjUqEhw0rmZJWBdK2SuyIYNdV73w+cgkNBv+kDLuz5hfwoRXSS1/HflE1bN7jK4Go4UvpXGEVskgh8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735574807; c=relaxed/simple;
	bh=1FqEAIHNzdL2Pt+Yq3U0+Th3OM9VqC8etEFnWVnoaEE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oKUTR6qtpxOAisZZts23sVKDHFyCEPUzv9J4t9zYFzDrjU4CU7Ljee8+CeaksFMzi5OGRxj1TlTc/6jP2Um+yjFqGhcHLVJDjylgSaC9nkh4e3+wvPCSK87JIMm/6AC2eTsycEHYge5GyNidEFk+lI8GK2k/LCQnGBsHpM9cqNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KK3Sdas/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU7G0Uc027238
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 16:06:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XgElpvo8OcSUFCA7YNzM7duH76GnQ300RgK0OBHRX2M=; b=KK3Sdas/p/VgedFs
	izgm+xQX8xVLlFQOpLJat7slDqLhQqytiPu160QyY1tcd/M2Io6/y42qLASd9TnQ
	MvgJ9lSBLdD/fmnI/0n1A20gjEpM+IG+M3YWiIk+LGJrMFMfvvgjELqEjKorILam
	065V57b2xnpc65bvzFYPRKgpMrv5ZQdBgjzYGRt7oCQlK8fzPlJJqj0lAIZQ20Fd
	FI18Sh97hwLdgmjF+9rU0erz2H+Fy9dXne+uR3+qHAPlCs0/um9VI+zYI6ho2HGw
	zCXYYarNx+OSgzcKDFFN09/K3MNcX31yb3XOEL+2D0pisa81fpA0et7ufvt24FtT
	XEww2Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43upyr93b6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 16:06:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b704c982eeso69308685a.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 08:06:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735574803; x=1736179603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XgElpvo8OcSUFCA7YNzM7duH76GnQ300RgK0OBHRX2M=;
        b=WIxeE31W20oMZFlPHf3rpRnXEGBa297vXXrP/dUs7qlU9o8rZ33tpFoHYcQmb+5rDI
         jikXB5wExgAHuoVb4mN5QT1p6sbTStxx6mgRMy+0FZz31Sbcnc/vPxEfa0gfCAoCo0qf
         iH9IubU03EcdjmRbmuekfdYv8jnh7acgV7TaHrf+Zgzg+Z6uy0fl/0juzvA5yniSldck
         oGBV2UE2i/Elq/+jebg7bxkyOAuQ9DaQz9vmZOlbFPbEG0NihL0bVw/+Erp0rUXd3g7h
         4sz2KQ4g+ouji7/ZIxlZ5g6ht/QgYwfeNw1W6O+kV0zgPOtunQKZ7ziER3PYFx84IJu2
         SnHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhBiVW26wyf7MR+1N7mWaIenI1rbdHKcyK7aj7ccx5OeQRpBhM8FiM29LABfnkhJ01LraKJN+3OJjl@vger.kernel.org
X-Gm-Message-State: AOJu0YyXPSrxKMHvdMYyLPkJFl2pzNQ3g94OpChjssW1oeCwz8FBDZH4
	Rds1911VRZWalRgNxcqTJYyO5zmcoGGpjLtKXzCgH4G/CUIVwzbkBb0cIV4v7oW/z2ZU1am29Tz
	IOxoUfBmhVsjMFUQ/vP5zCvGRz4HJkIc6O39rwhMPUw1K3i8/AzzerAIjP+No
X-Gm-Gg: ASbGncsgGmHRqSafNA4Amd7bC1nvjV+wtZO4ftp3mFHNUQkClQKlQo5woKf9wxkWAWI
	OE1+tAA8eT64j9GLyz6EPStzG/cm32G2Ecp3AmCTN/qMu8KEHaNzl95GWO4S6i+K79rrZ5bdgVS
	g9B9EfdbFpEga/PfdtN/Em5dMmQBs0HA83p4scYLnATD2h24TYCafjV0TytcGSKf9BHNWnh0c8B
	mT8ZYpnThKpmzmOUznh4YHTAMW5F+HNyBO96HZjCxUbZWj9HWONScUyIaqccRpZoy7SZ/bt62U9
	HtR8bGuDxbJYw0SHHdDkfAPGbOmJpMiu0ZI=
X-Received: by 2002:a05:620a:191d:b0:7b6:d026:29f with SMTP id af79cd13be357-7b9ba712954mr2330669985a.1.1735574803201;
        Mon, 30 Dec 2024 08:06:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9bycyPmrIZt2cXa/IYa2d3alwG8C6WlLAth6Yoz4ieNDGkAfMo0HQWekj5vkZCqZ1QC9Gqg==
X-Received: by 2002:a05:620a:191d:b0:7b6:d026:29f with SMTP id af79cd13be357-7b9ba712954mr2330666485a.1.1735574802734;
        Mon, 30 Dec 2024 08:06:42 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f858sm1501596766b.21.2024.12.30.08.06.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 08:06:42 -0800 (PST)
Message-ID: <7465404d-da79-4cb1-a3c6-0e88cf024e0f@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 17:06:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: x1e80100: Add CCI definitions
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
 <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-5-06fdd5a7d5bb@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-5-06fdd5a7d5bb@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1eDlWdKpLYmyOYYNFsYDeD4of-4rtNpJ
X-Proofpoint-ORIG-GUID: 1eDlWdKpLYmyOYYNFsYDeD4of-4rtNpJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 mlxlogscore=735 adultscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300139

On 27.12.2024 2:11 PM, Bryan O'Donoghue wrote:
> Add in 2 CCI busses. One bus has two CCI bus master pinouts:
> cci_i2c_scl0 = gpio101
> cci_i2c_sda0 = gpio102
> cci_i2c_scl1 = gpio103
> cci_i2c_sda1 = gpio104
> 
> A second bus has a single CCI bus master pinout:
> cci_i2c_scl2 = gpio105
> cci_i2c_sda2 = gpio106
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


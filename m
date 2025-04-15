Return-Path: <devicetree+bounces-167207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4F0A89A71
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F1A1188E489
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6E01CEAA3;
	Tue, 15 Apr 2025 10:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3Wt/W3w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E537D2750F2
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713467; cv=none; b=Ju2d18gr0sdbHSBBkVlHvIRa8/27RKeqnaqn7D0zgvU5kEb7Tpn6aCAihhh4e7znbzkfUKs1mgy1TQNCWwTtUtpBTsrjQhTPPdE0GBmkyAmYWgkapByDF8LoqL1f34se4OQiUdxuhvyg7TfST24rbm3FpBF+i56HNSQ7PYu50HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713467; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZVZefiKdc/2ResVjJ0uW22NDznekiqF8UUTY47rsFw/icNkHQsrM+HoY1INYpBO6WenceJha9O8rjFtjWpVlntW1MrUYFiSNOu7+U2XUoLFNSNweRAsUsi4HcOftT3pu4jouwP+67SW1Pb2AEBayEfiLSwp3bqW3B+8LJ3tuk04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3Wt/W3w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tDcM025102
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:37:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=j3Wt/W3wYzYkHRh5
	nrDhqE0OWTMgtBaJz0WWwgDqyRRPCMyAZeHrzwjakd7bx1x7uU0t4sLEpZMdixHH
	KYxqjPubcThpSD0g9ut5DoFHCObpn8gHFmgoqa+BARO93MwlioFZDOwOF0qM3Sld
	sd77khtpwbO7FZciN5bEuuNE3Q0Xl2fa56mrfql9ttpUL+OizPq9eGcFTqOnbA+h
	wpIalOM9pFvfGoxNa32l7zF7Y3yXpjXpi58/aVsWMHfalMjiRFqkGEkmDEk4J2hJ
	gJ/XdSMyo8PmQlzi+xOXU+P6mkef1ShJtIjZ2Sa/2RkLQX2WDQ31133bdKYQJm04
	hgt1Fg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wfpxt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:37:44 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e906c7cd2bso11718426d6.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:37:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713464; x=1745318264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=YdHHHsMa8o17P7yOVnlVtsv6oIQ/k80lIZyWew0xK/6fXLazMGasuO/XPmWzuNPKUB
         QJ0uJortjfoT5evHr0kTcVbCxEYYBymvUT7Ah+14Kj3qb98Yg/YqA4sCH0v7MkBtnm2g
         9iEokmy7nlwT5mGMSd/CXmoGkHaey81MHBjNKHS4fS6j3P0S7v5EnJhL8QDXcWg024s4
         M4YpwWZa3uLcPxHVEIgSlzNAkX1Uva/lt+6ORYsZUN1/YwiNVwadvEaEpHTIP+o71qGC
         JAl7CtUG1Fx6OqYnSvmvQWA2YhoQp6LXWLjEvb/rIj2WrvzV1TRLgkWf1Og+EpPKRT3o
         fugw==
X-Forwarded-Encrypted: i=1; AJvYcCXvNDyPlXaWdNaropQlB8eNQ9nxC/oBMWgrbx98QH68LYRwjFAWzJlHi6cxtlAaW5C6LaAky1RXeVU9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8LUFQgHWBFBctso79y7UF9gnc85iOoy9v7DEqvj0ccZZ1+dlK
	4jq9P6AhIy4K0R6LvTavYkPjazj1IO5/h/6dtogInErtOjIoNboH/MXAs+xiO0yhhcPXbH6M824
	vPmDWBigHIFdSdEnTPkLy6nyut/MPGmwORHxYjEdOTD+wAf2yWG6m3I6O+Gtq
X-Gm-Gg: ASbGncvAZdQ5aMdWZpPJyXmvWxnlsMkX0ztay6xLFqdszO8bwZT91uZ3iYQ7Ei2GJLR
	L8kCNLW53d8koeoEvPLRnJVUj37xDp6aa3dRwGGIDTy7DgfDnx4kolLCp87hu+KaE0lJ/e6o6qt
	71+O91kBussGJi6xmIAujP20IZd8rf9NuwusvER3+x5VqSRuY7VYftYtA/yeEPb+ZWWgyQ43oJl
	HUkIW9RmGjmM6O5/VKtTBwf2FaYjX1qdS/PAqeXI8BI7yzB2srTNU+Z3F4an/aDQT6J4i/MaOe5
	XRyMyUE1vRGXtWimVWCP0+ItK7LpQVji5M2afZauxxUvGmzhuIrKDDO0DY9m8+52WzM=
X-Received: by 2002:a05:620a:240c:b0:7c7:a574:c0ac with SMTP id af79cd13be357-7c7af0ed2d7mr888669585a.3.1744713464050;
        Tue, 15 Apr 2025 03:37:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETb1FvwwiGOUs5q7VNpieaFxunkNcu1BA3secMuMUQsb/6SQ1PsqQAyfinlGBFUVWPIDzjTQ==
X-Received: by 2002:a05:620a:240c:b0:7c7:a574:c0ac with SMTP id af79cd13be357-7c7af0ed2d7mr888667385a.3.1744713463705;
        Tue, 15 Apr 2025 03:37:43 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb312bsm1080609066b.15.2025.04.15.03.37.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:37:43 -0700 (PDT)
Message-ID: <ed47fc23-621e-4ffe-baad-7c57da1c305c@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:37:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/20] arm64: dts: qcom: msm8998: use correct size for
 VBIF regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-3-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-3-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fe36f8 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: 0srDM2q8ta6L7re1tApkdPBf1icnETX3
X-Proofpoint-GUID: 0srDM2q8ta6L7re1tApkdPBf1icnETX3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=607 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150074

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


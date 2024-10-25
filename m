Return-Path: <devicetree+bounces-115839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B25E79B0D18
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 20:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FA33284579
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049BE20BB4C;
	Fri, 25 Oct 2024 18:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IRbI2otm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E19818F2F6
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729880562; cv=none; b=oIKCbRjU1jLQfPsT8eh7icmDimk2A+FG35zBuaCYWfBlebIOsYpqHt8qcVC2DbyEBJ8CbZTIS6MQw2npcTTpsHjmS+ah4lqyuYUbdk+y2Gvfkk6fwjnTD5EI5u0smSoGwTu9BqKxotftKxzOlSLLupSKI49Fc+bogb2y/9Bj2iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729880562; c=relaxed/simple;
	bh=VVN0PdcmBPQfjoc1MTt87iX++qvbvC4L0wHPDemjHy8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tH5oUTgiB62SMYrURIS6augbjk1i2LJ+Xj7F8xyDfCSENNH4kUw4ljxFtGz/eSOmOgDvu3V1EN9riuKYAHbpfdsT/cQBoMgbZYdANqfI31cBnk+jAiom+NTbb/sIVJalOtNNn5cJlontKqAbez8TQlqcB9P95+29hPZMhgs7jr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IRbI2otm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PEsWXg011840
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:22:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VVN0PdcmBPQfjoc1MTt87iX++qvbvC4L0wHPDemjHy8=; b=IRbI2otmkiWV9Q9B
	9x8aLfekuffre+yqorP4enPhLFiv83I3ZNfDpWeai6qHKM8pxGbPxb5lONV+gtFY
	+bFGuKSJx+Rx6P6TA77fs919SJV+MfOOypD1Teov+O4tv2NUuBZJr0t+1z+EH5+r
	BexsZhwH38JC8vixAIsqNA6LRdLxuJ+2cETL+VnLiepK4KxT2cmH3kfO567XJEct
	jt9Qi3zJ568g3guSDhBYJ80kkFxTBmZ1SZeeYqw3gklXT7jKPY5A04ZEci2i+0hu
	0Ceb+yRhdOgPdhqxyqIGRUTEf0uDvDCGYU/J3J4Rq5Qr5VtgOg1CIeTuUSfkDceE
	ELF+vg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42g5q82370-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:22:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbd0a3f253so4270816d6.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:22:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729880558; x=1730485358;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VVN0PdcmBPQfjoc1MTt87iX++qvbvC4L0wHPDemjHy8=;
        b=eZ8xTqdKD9X+X5m48VBhHtswHW0sGArmVLv1cEnNkD77QCn4nrX/m7W12aqeuNkMtn
         RfP7NHNZ345HEsHKl6SAV9B1UNquxfCSUF/VKiEqiAPfe0V7x4MFVgs0mlPLwNLVWax3
         kBJg4ZAiL7C/zqzmABvhLtZEtnLpgxhTUddHtwSx6Kn4XSy7ojoHeNoFHjsceXRGwZbm
         8BLnOgYiADXCnANIO/2k58/KvLKPHP64tTf4bicEZpAzbtU5rLMx5UfIad80ri++l4G8
         47F+yLcy4JffVdFmU2WXhfMztc17tDLrzaV3XbYtaUjWd2qrIcaGsLcDC9F+2PNPk77d
         Hclw==
X-Forwarded-Encrypted: i=1; AJvYcCVZRwQx7nPmYXfNUb7DebtopHffZLwvktTRJs13Tm3gHV+0iyj13liu/V8GCtusnYHxH/kehb7TNA3p@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+1w+DuAliYm58ZtYPrwT8+errkFNLZ9GGG39ns15Sk6qbJPkZ
	YE/aWVoKrf6c2XALGoV/dUnB4UZWTFB+WhjEDtn4W5COwmX9YDRF8Tecca3VG8OHviANeiQSOWx
	Oqk7K2ll5MfEn/LtnU/FYU1nz/SaIYu0p2uxWkgYShWlbyZ8LOCpq4sIv06Gbfoz+FGQK
X-Received: by 2002:ad4:5768:0:b0:6c5:1267:a821 with SMTP id 6a1803df08f44-6d18568ee91mr2660126d6.4.1729880558532;
        Fri, 25 Oct 2024 11:22:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErYETrz5z+JTzJDS/w6aa74JBTcFF+3fs+FeslWWgXc2PFwmJ7slZ9PvjLEovXl/4iUj0HKA==
X-Received: by 2002:ad4:5768:0:b0:6c5:1267:a821 with SMTP id 6a1803df08f44-6d18568ee91mr2660006d6.4.1729880558262;
        Fri, 25 Oct 2024 11:22:38 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b3a084ae4sm95214166b.197.2024.10.25.11.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:22:37 -0700 (PDT)
Message-ID: <070ebd3e-f521-4592-ac7f-277c294e73f9@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 20:22:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/11] clk: qcom: rpmh: add support for SAR2130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241025-sar2130p-clocks-v3-0-48f1842fd156@linaro.org>
 <20241025-sar2130p-clocks-v3-7-48f1842fd156@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025-sar2130p-clocks-v3-7-48f1842fd156@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: IlX1a1SHXfmGYjc5ekMXSAR_kgCpB72U
X-Proofpoint-GUID: IlX1a1SHXfmGYjc5ekMXSAR_kgCpB72U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 impostorscore=0 priorityscore=1501 mlxlogscore=714 bulkscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410250140

On 25.10.2024 5:03 PM, Dmitry Baryshkov wrote:
> Define clocks as supported by the RPMh on the SAR2130P platform. It
> seems that on this platform RPMh models only CXO clock.

This commit message is no longer up to date

Konrad


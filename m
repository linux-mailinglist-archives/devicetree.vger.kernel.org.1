Return-Path: <devicetree+bounces-131394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8D99F3055
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:20:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10E891883E1D
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA0CC2046B2;
	Mon, 16 Dec 2024 12:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ljwNsghQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4753F204563
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734351604; cv=none; b=iR53z6aOexaSxW711/XdRy7uC0ja7NWND21v59T5gN5KE6C5pBu+jgGegRwGGeol69WbwVE+tLFiEV4IT1NEfpOBA+6Tw46KDhJiHc0xbkYfNS2gghii80YGbTLlcxTvr+zMlNFtliy2sRrZUcFpaCTPwqS3oLnRtSzDpDrYGnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734351604; c=relaxed/simple;
	bh=ybgRkqth+vwtYw+ouWiPcZbJPYXXDnMbtY440TFFZKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ma2NcGSWBtCIUFsxtIzWG4s4S4oeDKEkOk17uEH1DHjR4AjJQm3ehO//ty1Se1xERl9RkdE/H176jjLdCBd5Vqgx6TqL4ovTpTeyIB3TJxpdcIbCJEiP04XE2j8nuEFjUTwtPPK26PsFGhkKTVn4P+N52RqTQHToXR3e6eePmUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ljwNsghQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BG7Sdp4025421
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:20:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VOsyJZCKFlaXhdMetjiPjn7ZCm+QcoQaD1OHyhj1lNg=; b=ljwNsghQHT1/dn9K
	UdHd2TXkOk8OLqslle2mW6hDI6SuRkEjJiBVqGUBMPtFRs0M1YKjFaFbcifMCvlZ
	r0Y3Sn6O6B+GsEAxW7Iiqttk8NcEeP4oRGzXIetRwkWubTVevNug668xejMbd9L7
	0Cw9dgc8+NJv1suU3L8JZ4mVQxJowFU18cIhRcQoU7bYBcCYwy5pCzXZYXc/5jzE
	jpE7mHHYXByDFgunE8CNzn5W7vIvG+hAPakuOa1z+bVAvh5sJqd42fsnHBirgHQK
	89p72pO4ag+U9fBJD6vfaY3PvaKivKz4sJY+28xaIQdlOV0K1by0Q6oLcYc7iaDT
	gLdmKw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jfus0spb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:20:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a39f07f8so4077431cf.3
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 04:20:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734351601; x=1734956401;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VOsyJZCKFlaXhdMetjiPjn7ZCm+QcoQaD1OHyhj1lNg=;
        b=NIudE+PNILwhxgFqcxEcFCTBg7elijc4g8lsLtPsKvK4T/WOw2iHJugPwL2++okAzk
         ViqgZX/kDnvTxIOVnEXZsc6aM0h0B9dZaK5IW0tu9QfMh2dNdX62Omk0EVVYuUkIWgXC
         MVsmF+fuTbjBw/BYdQ20KT8mx3JnlBya258sQaoliFPpkk+oPpj7LJeNa1wGRcc7ApVW
         2qlSAbMgym/XkQFkfVcGw6InzabVIgsPd63qeh2nJwDDWQB+eW3HlswCIAa5hAeDFIBY
         oXG0Vpro0B2cA6l0EAy72tODFhOL9PUD+Jkq8g2ZvOYz9P4+NbVv/9PDXkn1d7VjBzeO
         ENeA==
X-Forwarded-Encrypted: i=1; AJvYcCXU2jT4mTcvaP1yc4gvuP7kNw+jqPYEGILtfIJ4a/j2AiI5AN8qgxpVWPiIm0FrI5cF/dEG/7EDXXTV@vger.kernel.org
X-Gm-Message-State: AOJu0YyXyiGXSSkaomtQfzBys15VdgB5868LjLZPBr2mddwSn8cs7r5U
	DP3WbbBn8MIZ/ALMaDK5GmFkzOa2AUISXvDpkfJJ7s15Rt5ppsRxOX0XilKaP4yp8/FEPRtFaTS
	tA2UrpVNo8FErnr2Sn6T46ePzbBpKKsOOyy5dbn6zQ7DHajrTyoe//4HgX8Wy
X-Gm-Gg: ASbGncvKpJIjRO3CfSjMaB/JaiNES9cN3I0ldG90SUcaswGXra9O5MFDb1ydBElrzF4
	QdPmW0I8ixnaXhx2P828aq5VHXgwU8r1zHQmOxj8eP7Siqyvurj3t8MKkDLE4NLaZJd3C9zm0fB
	6e9C9JdAljyIiFepLegsN9SXnXDAwRe5HZeG0mZFSikdhqf01g/48TO9t4I/xHsTMdngD5dqpRl
	QsHuP8nEVwQ/zJKO9auzeO9yQ2f/k3NNUiGlclPHNPXetPzwEAYwYPZq1L0nCm8/PSjHvCZnlNr
	hNbkn+mp+Qge4M5O/3Km0s90vpEK/vLZclE=
X-Received: by 2002:ac8:5d0f:0:b0:461:3cd2:390 with SMTP id d75a77b69052e-467a58137a1mr86824161cf.12.1734351601274;
        Mon, 16 Dec 2024 04:20:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF9pG1Ysvkr5Hyq/nig+qT8t4gtr5EQRe9497XJuqjF5LANAYeaCtwgGtk6X8FjF5ldW00HDw==
X-Received: by 2002:ac8:5d0f:0:b0:461:3cd2:390 with SMTP id d75a77b69052e-467a58137a1mr86823711cf.12.1734351600845;
        Mon, 16 Dec 2024 04:20:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d652ae11f8sm3285148a12.41.2024.12.16.04.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 04:20:00 -0800 (PST)
Message-ID: <3a67bc1f-dba9-4ab3-9c01-f889dd24359b@oss.qualcomm.com>
Date: Mon, 16 Dec 2024 13:19:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/8] Add MSM8917/PM8937/Redmi 5A
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-pm@vger.kernel.org, iommu@lists.linux.dev,
        Dang Huynh <danct12@riseup.net>, Krzysztof Kozlowski <krzk@kernel.org>,
        =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241215-msm8917-v9-0-bacaa26f3eef@mainlining.org>
 <CACRpkdZ-ZEiGMUPObHU=kw=OUADrRGtxgMc-QC3EaBevp-Shng@mail.gmail.com>
 <vfwisdkjg3czwesi6yqaznvxcz2z5ksqezhsh6ytrc2g2ypszy@wqkr5cgr26vq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <vfwisdkjg3czwesi6yqaznvxcz2z5ksqezhsh6ytrc2g2ypszy@wqkr5cgr26vq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: zG7IifES7NaozLXP3PRh5F3byy6dbERz
X-Proofpoint-GUID: zG7IifES7NaozLXP3PRh5F3byy6dbERz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 phishscore=0 mlxlogscore=865 bulkscore=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412160103

On 16.12.2024 12:28 PM, Dmitry Baryshkov wrote:
> On Mon, Dec 16, 2024 at 11:33:30AM +0100, Linus Walleij wrote:
>> On Sun, Dec 15, 2024 at 12:15 PM Barnabás Czémán
>> <barnabas.czeman@mainlining.org> wrote:
>>
>>> This patch series add support for MSM8917 soc with PM8937 and
>>> Xiaomi Redmi 5A (riva).
>>>
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>> (...)
>>>       dt-bindings: pinctrl: qcom: Add MSM8917 pinctrl
>> (...)
>>>       pinctrl: qcom: Add MSM8917 tlmm pinctrl driver
>>
>> Is it possible for me to apply these two patches in isolation?
> 
> I think so. They have no external dependencies.

Green light!

Konrad


Return-Path: <devicetree+bounces-134744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E6D9FE68B
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:33:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BC6B161759
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919B51A7ADD;
	Mon, 30 Dec 2024 13:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G+bYM/6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FD9198E91
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735565632; cv=none; b=jtOl6ossBtEGCKMAjLPvMiBslXRgI9LNy5bKk3C/DetyAgsKmzbrOP/hqhlpxQw/eYU72ktnLWS05JN2j0pvXAfjgmkMPwlGjErxNtIsqMP5+vuRAFwT58jkaeDInOtsAOHwPq6tBc3d30Hje9gLJ3ZtjS/ZZ1P+rL8ijVZzVhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735565632; c=relaxed/simple;
	bh=HGb6bwX20d0y0kEwKOwOzl/emWna6kiI8/3r6L/10iE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DwB0V8sgafHSpEtld+cf8A1ParblSf/uNgoIpnsibfgb90f53DgsaUgnlLkeEgoONqZ22EXjpX83CpFisSheE5P0G5hDH/Dw0uVokaKmIfgAAOIQ3g/E7Awu7qIWpxaSrA9riIIDwcNoik1+P1+4nChJbo7LjoYoAR+WkNms4zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G+bYM/6D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU1Wur0027988
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:33:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EbOPV4gqNqmGQXQo27/FmMyL71tlrIDPYuT+OGI2Sig=; b=G+bYM/6DdengpT8b
	5CBEFyjPWxkUzj/RlRVIY3xfSr9Td6RndRDg+gfILES/6qtsU5G58ukFgbN1l3Lh
	/0g+g+/Wp68kplJRlqcqRoBhzZm46eFK/ZOhCseBAMKTqBYJeUFEfNpBRutXUbaR
	hyEnqDftZf5ZGsJq8RIpuU75brqWJmWzM3lH6wxikM17J760nvcUbbItX06vqdUQ
	1eu2wLHFT+xW+DHOAlbSR5/01vdOIiDWx6x3CdbEC2Bto2u2gqiuIPTXuAfEoZP1
	SQxOQnf1X6ipD3NMIesmRWx5vXdV5l/UtqAV4RjHvkRzVQJyuoeU0UodmFHK8KW0
	UJ7D9g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43uhxvs9mr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:33:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467bb3eeb04so24080111cf.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 05:33:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735565628; x=1736170428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EbOPV4gqNqmGQXQo27/FmMyL71tlrIDPYuT+OGI2Sig=;
        b=L/J4ZdB/xBbSo54OQDnl1Myp5KwY+JLPgCn+Huy+QLxQh3TdGKlkjDlk1wqlo4Y4V/
         ouJ3C7cwmgqhUmOZc0DAN0VGNrKQAbUE6iCuJqe8cZYRG2xYO//ualh74Mdsz1XECpUy
         oZTXla9XNy6Gf6LXUq+8qC/FazXWjXZVLg4MgQyeRJzM5r15YAQd4/wqOozRsseVp7yz
         AoiEAWuGWCHBjmON6IQ4HOlZaziC0iiORxE4Xo022iH25zrfFxw9P281T3rQWtLEXsbZ
         s6kTQpBCMUT/y/y1EDoRJ37UnBJcXlhhHgqwI/1iVSM/3gATsMEZTLaddxnBtPUO96Wr
         do3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVP29mMqPv4yIcCS0CNyjEb1LUTdSWFnoSuwwSKJeWdVySL5XhuKsNj7FD7qEqgdN0+HEtlIuRwuzoZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5vms5YyBuITWpjqPt+5KZqhwm/rhj2Xc/Eb+s5oWwa7jc34ae
	7nw3BgzZpr6nWWFa0oudN7b7iOtK9Jox9P98M2QbAxAY2aCUHVglFlv/ztIqPX7YCx8s4v5/FjS
	cHRkzat/VbjIpjAUyDbgFU9J4GtOxSfk/PxCCVb3Ft9SkmtOd3cD/wfzl+Xg5
X-Gm-Gg: ASbGncveGjvA85IZtf0F+EcXRDRB8/3cgpOtGdbDSc5+N9Z2PuwHCaH1u4ogD5WevOr
	GIltnDPj5te7vpE/jBAEfC8b6mFcPE/0huNUEUZHCwhjHbz7b/OPmnshSvP+A3McdrWSMx0i7Ds
	5CpDBtbWbUIbddhUUXlfwohiMrjXWGlkVZ3EsDOPOorNalSG9wSJVQcZW9n8z0kE3u5zBTDQy7u
	JarrfkQX2uUI5wLW7tdh9+nNHkZBsBONtWrGKtXZq9KsB88WUX9pusUUZuirPRafQyBG2fsyYtC
	5y22Q4gSGKVNA6NzZZ/lKRE5x3Zxl+Yzqok=
X-Received: by 2002:ac8:5d07:0:b0:467:6eee:1138 with SMTP id d75a77b69052e-46a4a8cdd91mr216166331cf.6.1735565628544;
        Mon, 30 Dec 2024 05:33:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPKjPl0dgBxEjH5BKFomyDlmgGJotQE46CTwVku3D1K7pHx64/HPSVoHIJLOrxaV6ZMe8PzQ==
X-Received: by 2002:ac8:5d07:0:b0:467:6eee:1138 with SMTP id d75a77b69052e-46a4a8cdd91mr216166171cf.6.1735565628178;
        Mon, 30 Dec 2024 05:33:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06c7a8sm1485864566b.182.2024.12.30.05.33.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 05:33:47 -0800 (PST)
Message-ID: <2ec46ef4-16d8-4421-a086-7a9177d5ea6d@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 14:33:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/19] Disable USB U1/U2 entry for QC targets
To: Prashanth K <quic_prashk@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
References: <20241218102707.76272-1-quic_prashk@quicinc.com>
 <whfe57qqbe2chb75igiidzmruhgwpc6ueeghnf552wsa3yrru6@m4tuyfnsoqvo>
 <756d26dc-da89-4478-acf9-136f662874d1@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <756d26dc-da89-4478-acf9-136f662874d1@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zqgiYMCYSP2RKFPGzh4eicX_OQimPG5K
X-Proofpoint-GUID: zqgiYMCYSP2RKFPGzh4eicX_OQimPG5K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=648 phishscore=0 clxscore=1015 bulkscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412300117

On 26.12.2024 5:55 AM, Prashanth K wrote:
> 
> 
> On 26-12-24 10:13 am, Bjorn Andersson wrote:
>> On Wed, Dec 18, 2024 at 03:56:48PM +0530, Prashanth K wrote:
>>> Enabling U1 and U2 power-saving states can lead to stability and
>>> performance issues, particularly for latency-sensitive or high-
>>> throughput applications. These low-power link states are intended
>>> to reduce power consumption by allowing the device to enter partial
>>> low-power modes during idle periods. However, they can sometimes
>>> result in unexpected behavior. Over the years, some of the issues
>>> seen are as follows:
> 
> [...]
> 
>>> Krishna Kurapati (8):
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SM8350
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SM8450
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SM8150
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SM6125
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SM8250
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SM6350
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SC7280
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SA8775P
>>
>> Thank you for submitting this, changes looks good and this is very
>> welcome corrections!
>>
>> But patch subject is not okay. The prefix should match other changes in
>> these files, and no "for XYZ" suffix.
>>
>> As such, these should all look like:
>>
>> "arm64: dts: qcom: <soc>: Disable USB U1/U2 entry"
>>
>>>
>>> Prashanth K (11):
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SDM630
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SDM845
>>>   arm64: dts: qcom: Disable USB U1/U2 entry for SDX75
>>>   ARM: dts: qcom: Disable USB U1/U2 entry for SDX65
>>>   ARM: dts: qcom: Disable USB U1/U2 entry for SDX55
>>
>> I merge Arm and Arm64 patches through different trees, so I would
>> appreciate if you send these two as a separate series (also v4).
>>
> 
> Sure, will update the subject for all patches, and split it into 2
> series (v4 for for both arm and arm64). I hope its fine to keep the
> Reviewed-by tag from Konrad on next version.

Yes, you can usually feel free to keep tags, unless there's major
changes

Konrad


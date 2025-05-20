Return-Path: <devicetree+bounces-178934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C99ABE106
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 18:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12B7318897F0
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B071226D4C3;
	Tue, 20 May 2025 16:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IrPPePlG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA6C2586EB
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747759601; cv=none; b=kgqGVDDekb5rzXJERUuj/1LRspdpesiFJidUDFr/vL/ZReHBz+imlxobmlW2+GRmqoW3TPa7zj8/AnKHdDsmAI7Q/CpcVRBeh3R1QLRjJ/KebaN91RCeXny82Gxd0WVlUNuwIm8WBEOXUGbYiciYqELUMTi3tkvQmr1+ega5sgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747759601; c=relaxed/simple;
	bh=JYuWzUoX7MLCjcuPF1+Weykm/cVeDwxvXI5zbGYVFj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h/aK0o5F1xbPDcAutnWLfqkKNhEn3FCJpcHNtTshJ1o9txzuhoePxJYHhVrdn2xx0jauiA0nWYrgFusG4QmXRsgb1xmGYDANkHeftSO9y45Q//OIg2bLBeu/9YMFpHO0IfHpBvHlAnEXO2xJ9SXyQjytliybq1aQOCRkLtAq9S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IrPPePlG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGiE4I019101
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:46:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h4Ct4wiEefckYsBkgTzgW3m3pXmORx80XleoaYKGlXo=; b=IrPPePlGJ4m7MPEj
	3nC8++uzCgO09nBQDjul26xpFTxt1rA8OFY9yietJ1/aIYsTQ4+MuV302IEP/38J
	F/c+PD1IV85OF911zVUW4o0VqHS110P++m4MFUAl5qYQ4O4n30PbjXRjF4xZZucf
	lReqqMoABJJeTwgJbkmrE+1ZyrPQiIQBYBD0cEJZgDdoYeZo6oDSewe6niG0dsnD
	YtaRU5ml565O6eMwoJoIWNhQUHHft2yNGvVe6ArLeQyqSCB+1BjJin5H6MJcR2T/
	9hg1VRZL6A5I72TqXUgtIjIhjR3z2tM5gglm/s7uPv9q956VrnQXcUwWmkEMAmnR
	F7a49Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh5809e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:46:37 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8c0e8a5e3so8525206d6.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:46:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747759596; x=1748364396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h4Ct4wiEefckYsBkgTzgW3m3pXmORx80XleoaYKGlXo=;
        b=jd2ofnPANqB/Cn8GDGhwdrBbzkVx4Ry3mtuJMIC08RclTSuZeYy4fmvLaxMfgJezt7
         5TMwFl6DG7pR46TPYudSGZpA950FK2Hr4NVubs6IV7/prv60FJv3jnpepPrAACKWZGxu
         g3Oi2zTrOgdrV3LNPqOMM/Etr/LX00xU1la61Yd27HZFyC0srzZsMuBOMg5SL6eo5YH/
         8ORSKP08rdInfDpxWoKYbFJtBBPpvbTqO7ZxaPlVwo7qDT00KIjRBflhCW4wwAULEL0V
         d7hydV/dZ/HmIr8IzhUXU/cihfwewL9k5UYavZCbNgzDqYzgIB9oxL6i7U1/TaCDD8UC
         C4FA==
X-Forwarded-Encrypted: i=1; AJvYcCWUS/ZZP1z3bIw0ZqdYEL+sKpqiB4ir7krcHoug/+WPcjLeQ7TZpYmUGKrUg4pnhNNCE8BVQhzdTuHt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9K2hk/zOP8dogz8K2aHxHkJB5ZYzkH+Fnekz0iTXOFXPv7ait
	DJ3e7Q1gHkeGsjrLJvQIq4a2ih6iv50t5NjYoD9CNGG87SvB3Q1YdZ48EGdtnc9ACOHARUJdS95
	kkQmEWES7H+TWhZ269gmLcB49+nGcTyYUChsSOGHjkYKezHqOrYw6Y9ZyVJhITaIk
X-Gm-Gg: ASbGncvzC92XSOw2SNwZDmt3PjqIMqBfinNieqegThhOOpXDaKPnXSXvEfjPmkX5cip
	f97uamBw/eSABTXDv4sPBPHv64U/06Xij4NEhj4EGB7Tn/gbzTDC+PDHGAGWbSu9SWZpZuIWk70
	nxtlfEaty99VhZ2MJOXa/S31njfdhESNSIcmesE6f+KjxKvi1HxfwaM/DXR6oX1QYYYeIdcvQCX
	C29dIgBK1M/YjNX51I9GNxgct01tBdMISoaPpVDcbJsvShZ6N1wP8fekw6NwlVPEx7L6oTrHlTt
	JJvQCnuijOuyPMDWQcmk5NwPotxL9FiQxrAfFZx0WR1h3tDnqxNig1qZnSp8pYYl9Q==
X-Received: by 2002:a05:6214:48d:b0:6f8:af9c:b825 with SMTP id 6a1803df08f44-6f8b0881b2bmr102628186d6.3.1747759596082;
        Tue, 20 May 2025 09:46:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxPXvNsYKjc25TVoJ90cf+E0IoL3/lG1Ga9evmEF3ga3G2iAP22svfPux9pmo+NWaDvNkwbg==
X-Received: by 2002:a05:6214:48d:b0:6f8:af9c:b825 with SMTP id 6a1803df08f44-6f8b0881b2bmr102627996d6.3.1747759595677;
        Tue, 20 May 2025 09:46:35 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm763377166b.69.2025.05.20.09.46.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 09:46:35 -0700 (PDT)
Message-ID: <f4bd3282-e209-43bc-9889-2a44a41a6194@oss.qualcomm.com>
Date: Tue, 20 May 2025 18:46:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/7] arm64: dts: qcom: qcs6490-rb3gen2: Add sound card
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250520062618.2765109-1-quic_pkumpatl@quicinc.com>
 <20250520062618.2765109-6-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250520062618.2765109-6-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzOSBTYWx0ZWRfX83m3pLTH/EYe
 XvSc88NXzJYhb9mKKJrDSj4sFdY/+QgUn7y3RP26mrONd5FawDf+scAAk9zzgAey5nXZtFw81l4
 YXpgTMaTsfCha0KT3oYSdUPLiCmp0hZoNROzcNZFw+3LVW4bELe9L/pFnzT3TyNmRHWLeAy0xyI
 eJc75crpRCQV2+LEhs0Jeqe8qz/0M/ajo/HbFWLKps3+KKsVQ0SohZPtF/FQxwCEq0S66bVWKFa
 prbBxd81d4ZQPX4angNcejMpOfanvnBD3ShZE+6o1TZaUrjBg6GkIGQQsIGPsLw5pnlMf/xIGLW
 wl/K0LLSEq2bnGZbqqsIa+G7yZWO8UYIPNzTja2Oe8kYO3RW3RkJEbV1tlg8bhPjwSm9ff2PJWB
 pVNuJ129uYCVUAoYpU/zhHi2cXv/5nC5XJ1Zq8Ox7wS3eM6anFmVSRJ3OoSSG32nMYO1rVTv
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682cb1ed cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ftiIbRw9aD-W0CiJHUEA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: p0U2aA3CxcZRE7S4X9c4PRhYDAlLCe-K
X-Proofpoint-ORIG-GUID: p0U2aA3CxcZRE7S4X9c4PRhYDAlLCe-K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=815 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200139

On 5/20/25 8:26 AM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add the sound card node with tested playback over WSA8835 speakers
> and digital on-board mics.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


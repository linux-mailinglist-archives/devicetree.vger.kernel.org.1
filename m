Return-Path: <devicetree+bounces-180844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01239AC4FDA
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4589416D2DF
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C719E27467A;
	Tue, 27 May 2025 13:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a6Fnt4ew"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA4A1957FC
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748352803; cv=none; b=obExEYiBVyN3nsTlD+3bxWuKcsBmTXMNvnYta4XFkiS2QuPkcHYF7+h/+sUuE0lqtYe/gENdzBEWlqXLodLFW6HjK65H+tY0P4HuhUqXnA3Osm49JmJGIciZ3LxVRu9zu3HGBFjjrF9RSY2V4QTAUm5pCQ24MYlEl33CcIvlbWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748352803; c=relaxed/simple;
	bh=wR7Njg6dgwD8Ok8E4irPjOJteY0XUc6ZQZzhYXAYtZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DlQQMk2tEoLxkLXtBiEw8iGlks4K0TGX2rRxt4AmGe2XeGwrytcGUDY/+ejwIQFkx4+dpVBECyBPM8EYjFdkeFWODurSwu5GEHWXJHDThRCKocSm8KgSxzQKk0z4iF65tiWiz8cReqCABWlgoP8TdaMViNbJvSeab3LFyODaS3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a6Fnt4ew; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R9YJpi001576
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:33:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sf3ZDOW7jLeRaHKCxewndBSZWU52iW5rDGhJ3dY4AS4=; b=a6Fnt4ewlwant/Y5
	TrzK1myff8Ttll60bfCP5g5o2EC4TnGrqLVSBwC2HLHcyJHTQXEaY9trkukWkV0L
	YDZfaNQz0tQPd42OKZ9OJJYFnT2PnRThYtMaWzv+wvOAaOSAMimLEGsnaeKuBDNt
	9pJ97U8/JR2Wry29pN5nDQ2EFY1XAKavo3GfzXZEK+F4c1pR0CtFPuEwqFi3OA61
	wMKuzAoShKtYlUmG+CRgNdd0FRYPEZt63wfN39FP/Eohw5k4FcbRtvVkG1Et78L2
	HbiCBtFTxaErE9+geZDLVrtANhuW+akmvp/g7nIx8YqPXTaNkb0sYYlFZMVSiP+J
	C71qZg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavkrpy0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:33:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5841ae28eso95566885a.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:33:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748352799; x=1748957599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sf3ZDOW7jLeRaHKCxewndBSZWU52iW5rDGhJ3dY4AS4=;
        b=EEZuwxlWHnc4QcOwOxX22G8etvocLNsdoXv0dJnNrSSY7DCP2hsBpl+bpVWNI90gYl
         WR5WCAIBvSd2KLLFd+HjCDY5L6RcD2juhn7FRzK4oHGwTjeOqQXhj1TA9xwn7ImjF0At
         X+CBQ+28NoP75G3rtpgCqGZ4WEslo3Ae6H0mbnBQ0SDqnik47Mhpn3pvt0cL4FRpnMbZ
         3h5d1p4emPr+XHdvNrVJy+ogZQVEqfRQgYfePWIxbdw1NpPZAQVLwLsXjy7uIT7Ri4LP
         5dWEra46o0o5Wmg+yyc4FjIKrW2Eq8V/Un9lDTF1JMDmFtR0S3Jd/emyrHl/1+9jp0GM
         CsuA==
X-Forwarded-Encrypted: i=1; AJvYcCW8FBhYUCagt2esUvHMn1EVCdxdgPERRx8VOUGI9crLX8oiPbEg3rJsBlMgZvH+mfzUhR+3zGtZGtle@vger.kernel.org
X-Gm-Message-State: AOJu0YygXJgjDCFCi5xCuf1jfELSbD7dpLkiFbnVBv02z2QWKc4n+iOO
	fUCOAhiI7VxAxVlmk/op+zCtl+wwS7YzUj/9TIIIsWvTm3ArE+x3qc6xobVPWszp4VDsdU3roF/
	PmRb3dYi5/O2vuFuIbCRTJOCm4ZImQ0theCg4ZFN8YC/J0KCZKW+3oEtgSvdSqFI5Tv9F/hHF
X-Gm-Gg: ASbGncspsdukryuxz64BPw9qFYS9GUjBRL3F1xthLuux8JQeEdvbwbeLBNELr+9B08f
	bdd4Rc6aXD4sPaMiwlWJCQcp6YmlF6oCuBFitwsndVJZRaj2geZWUxCdNSN0+PGlmhCP96L39hV
	L+i5HK/y0Xu2nbdy8ZeJK7YvuY6ez+t/6btnMrIKeJ8V7i2foEcKWbbdNMwe/KtZxykvx3c3iJd
	UPUPtmbrig2JcRbhrbiSnkGIXj7pjs3QWj8X/EjtinGykPwev0HcpPxptuk/iLyyHPOCLFeoF9L
	XBlLu/dESwDuvj4n2FcZl656tx6aVg9uvSkQ0VOotuIeR0CzBYL1R/OZ2u3COXducw==
X-Received: by 2002:a05:620a:1a85:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7ceecb968afmr707844085a.9.1748352799518;
        Tue, 27 May 2025 06:33:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxHp9Kq6xACUrOLZeAPK3xKbLCPdgK3Jt6UEMD1d7N5UrCW5O84Ipwm5LgeRSnuCUJQpgxIQ==
X-Received: by 2002:a05:620a:1a85:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7ceecb968afmr707841985a.9.1748352799038;
        Tue, 27 May 2025 06:33:19 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-602f33182d8sm4940505a12.7.2025.05.27.06.33.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 06:33:18 -0700 (PDT)
Message-ID: <fe4d2887-59bf-45fe-acce-604185aa4081@oss.qualcomm.com>
Date: Tue, 27 May 2025 15:33:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm8750-qrd: Add sound (speakers,
 headset codec, dmics)
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250526-sm8750-audio-part-2-v3-0-74429c686bb1@linaro.org>
 <20250526-sm8750-audio-part-2-v3-3-74429c686bb1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250526-sm8750-audio-part-2-v3-3-74429c686bb1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ppky0TyGOEsZq7noT3QSmPILWBBqOQLC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDExMCBTYWx0ZWRfX80ukCmlsJrfD
 r3kf9kLCbzMB+r6qrBagujkN4th/AvuhnhRj/fLE7Dr0SYu2PPAL5V7yqJx2iBg7LUDA5+VnMZm
 /7IOpU8t56LBruX3gbgWQXFSjG7cFLSfp6ydatsZvNQn1NhjgvLOR0WtzijV7WzLY3fatO9m337
 TNl3lC1A4UVy2wUjgFEbqzMHV8DbjRADOC46EvVyHa2AR59caBoXPKoRxNCWh77mI/9H52obI5n
 jCeP1pdjgl1cGpblPvqgqdqhj4yJnhenno3Nbt/IWztORqp0vW+F3Rm92XwSVEwK0UaNnB49PJR
 p4W9x47nI5jObRpQsguhaN+dwJ1MacDu42+3PeZSNtWDMuwZm1HnQPMA2v5qgG+9KmuT+jDeIgk
 NM3od3gmwIM61q4qPTt7Z5LNEdstjG44WUD90eTWye4OtPQcRqn/13n6whekNTn0iZPCpgUq
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=6835bf21 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=er6kI1bek27KySCzKVEA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ppky0TyGOEsZq7noT3QSmPILWBBqOQLC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=885 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270110

On 5/26/25 1:46 PM, Krzysztof Kozlowski wrote:
> Add device nodes for most of the sound support - WSA884x smart speakers,
> WCD9395 audio codec (headset) and sound card - which allows sound
> playback via speakers and recording via AMIC microphones.  Changes bring
> necessary foundation for headset playback/recording via USB, but that
> part is not yet ready.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


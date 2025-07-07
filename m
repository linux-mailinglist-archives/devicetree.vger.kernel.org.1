Return-Path: <devicetree+bounces-193655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F91CAFB29D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 13:51:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CF661AA1B18
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C56F3299A96;
	Mon,  7 Jul 2025 11:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pBUe/VYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F77029A30F
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 11:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751889084; cv=none; b=fT35I54JlCODKzxveowFtQ34rrHkAa54ezXHtR9ZU6PXhGdnbDUcX3c4wNVRfzFKs4u5QZI8QdUg0236ktTjIKP7Zj1Mq1+lHxxKP5TUgD1CQIWmVqZ3NQ0CD631YMbwxEvU/npGcVNlLxmAv5rsPVEWtK2DMJRi4/EqQDGV6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751889084; c=relaxed/simple;
	bh=HromPgHLGAp6n+vy0foly0fzoT2gC2OfwCflgvtSLU4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wnss0qB1P07Jn3mtLf7avP9oNdOE38EDxytjF4nhQfTXix6s9c7GV3zbwLctH0wlSq7/iSrmuYumTiBl1r9sr7yVJ2RNTnkx8746PGWRWCMK6qSoWdnJqJtDosF6VIEG5YHyFJqzWxK3YK7IQsRtorz1k4kN+55SuyzAFvhd1cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pBUe/VYl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5679Pdd8012489
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 11:51:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6cGMm3qKa0EUKUclROM1+8JzWt9ygh731G2RROfD7BA=; b=pBUe/VYl+wPZoFc4
	/Tl9/YU/Unt8P9CAx7w9UG5AdKPJOkP9wMOIKU2iS2KQViheY3FXvy5D83slwRdN
	NxFpk2SaAOAeQgT4gij5AgvFuk9WD19QM32Pv3XY7c7HsEbbuLP9udcw6s5+0sg3
	2llMUm3BRxA9KUDUqYzFGsgMmTPW2eXgAHJYisrUGA9sTMR3bcR4rgaWnN4ecuYL
	vGCHGfQJ9mZHlqXgjlRwES6CJZQBi3iS8zNFGdlLUYHpGi0Ri4bAc9h/M+4opYPg
	do5BAMLT39MkbDtm62OK26nY0gdrM9xVUq1fyV95QaAFSdMx+pzaV1oPrjq7wFt9
	53IvpQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qcasn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 11:51:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d094e04aa4so56007785a.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 04:51:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751889081; x=1752493881;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6cGMm3qKa0EUKUclROM1+8JzWt9ygh731G2RROfD7BA=;
        b=amHDg05UJb/lsOmZ1Tc3hUi8P/727+i7jO4iAa//ImZuqGaliq/KNxhiSOf8/4cbdO
         oddFhXJS8jKG0lQnFkYxsHeZmPqaC0jbqGFcVRbvv90e/z7G0aPklRhUUQguHOMQCWcE
         bKlMye2hquhYLNczoLmW7FqFEGDMs4Rggie71YmPNHU84xo4LHww23gw9Ysz+YlgyaTy
         L9McZ46rj/TwhsDJEoeiV9Ggt9sVSaF29gPJ1V+trDz1vIFMFrQmj86nUgfZmhEu1jec
         WKGm2W6sqWFiqAYXdVdXK/MovQXN5boJ3z4mQ+iS3cgyq6NnPORxCnM2Z9hJVw9P7bW1
         x1pQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLhMlOJSI179MtsOfVzx/q5rSYceb2uTKwn1tLZ7N3Z4aPyZpTJZV/+2veb37j4by7VvIDlk4zzp6W@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1dhBTr/Am/FUD5PdYBfNCXgKpGDza/0Tw6I8gvRE/XhKbZ70z
	gS+qkxUBAOuWUovB8G9qfZIUdcEyKLcMyhBNiYrULUyeF71b8NtM5ollI0KAItAld0OzCuzOxri
	Fhd/ChcSsPEwUd0JbesvHORaKQBtdD2CAb8zwt1KcNQifvVzlEeVjSfyV+FS7F0/E
X-Gm-Gg: ASbGnctio8k1Sdpca23cHy0XgwK6V17oZwkJr5KbJDcPR9s+t40UpqJ7wIcZP0o2bqS
	+eMCkaeL0Q7VTHicdSIPb8oauIc7v1WfSh+IKB8JCUzE1XAt73YrUBmklA2fh4S6WExRoJqXLo2
	T3kbGfiGEJEGLkCWkDhCX9Ddgm5+ByVNEFDTlIygDEZUa5wHSU/pIxEr4gfNtApkyAOtdR2FDBo
	speFjEpvlmgiEy/rdxU1ai4fu0yEP0GH7bv2xZHz/iQRfyX4EfLuF8W50SUpTINqZr1eLzzdALn
	wUiuIt9018qeAWyP6r6oJ5DPt8BKMurFF00CQYULtfCJe6g5B6GArTFEGECH1kCQ6jUFxzFrat2
	5Shs=
X-Received: by 2002:a05:620a:24c9:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7d5ddb72bc2mr535683585a.4.1751889081163;
        Mon, 07 Jul 2025 04:51:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhXFkyLduPc2k4sQvzjIKdtwOsGoaF8niEUdcy13uce9KkeWVA7oKiNmElpE7Y/t9cWYfpdQ==
X-Received: by 2002:a05:620a:24c9:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7d5ddb72bc2mr535681285a.4.1751889080711;
        Mon, 07 Jul 2025 04:51:20 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b02a2esm690064266b.119.2025.07.07.04.51.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 04:51:20 -0700 (PDT)
Message-ID: <129650aa-9845-44aa-b7d6-5143642f1f7e@oss.qualcomm.com>
Date: Mon, 7 Jul 2025 13:51:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1-crd: add USB DisplayPort audio
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20250624122933.54776-2-krzysztof.kozlowski@linaro.org>
 <fvyx662cayttlyrniyjifu7vi5sflmptzs323wm4a7pey7ethz@o2xq2j4ifwx4>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fvyx662cayttlyrniyjifu7vi5sflmptzs323wm4a7pey7ethz@o2xq2j4ifwx4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA2OSBTYWx0ZWRfX2xct3y+JdIiR
 hyh2JUwmU21CCnZKR+u2sFbhbN8L3ETnGFhql216hNiNm4nQXwDQkluFZyrad1hwe+r7q7/yRl4
 AHR3copM0837+++5rwUxcshEmzbuEhBAWWTDFaaLKQkYpHENUolhG7m5Zxq+OKj9DsQAxvmHZI0
 ejxjQgZJVZc9fjnCq/76fgw8dQUZhCIf4snD7p1OoTs9yjNalOIHTljFQSyjZrxLO34K4dHTk0g
 nEmAhEee89Nc9gsy/Ab+nHTYgA4rEIOnw0evPHNTw1yP8aHZ5xqC603pgkK52ZUTEHf6icfpUrd
 GlqbmTqtIacSg48vSTdRDkIEaZ4v3KIkIizJotzDHgCCJsaNJ2DI5v8vJ0sZaSKOO+RDZJ9s9Un
 qr8C2opsmqdB0NVIQuuNtRkYVRE2vj3VbJfEuKEu6LluJSqZUwyneOZwdA01XYyobSPC3Fhe
X-Proofpoint-GUID: 7fyQ9uelSiEE16WMX2Vq2BtSvNB_qu4r
X-Proofpoint-ORIG-GUID: 7fyQ9uelSiEE16WMX2Vq2BtSvNB_qu4r
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686bb4ba cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=NHrBlrzgGPaEoZByAxIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=759 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507070069

On 7/5/25 2:46 PM, Dmitry Baryshkov wrote:
> On Tue, Jun 24, 2025 at 02:29:34PM +0200, Krzysztof Kozlowski wrote:
>> Add support for playing audio over USB DisplayPort (the two left USB-C
>> ports on the CRD device).
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>
>> Changes since v1:
>> 1. Rebase (x1-crd.dtsi appeared)
>> 2. Re-order cpu/codec
>> 3. Add blank line before status for mdss_dp
>> 4. Tags
>> ---
>>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 36 ++++++++++++++++++++++++++++
>>  1 file changed, 36 insertions(+)
> 
> Just for my understanding:
> - Is the corresponding topology file updated? Will this work with the
>   current topology from linux-firmware release?
> - Do audio drivers handle playback if DP gets disconnected or
>   reconnected?

As we talked offline, this also could be refreshed to include the third
USB port if someone has the machine on-hand to test it..

Konrad


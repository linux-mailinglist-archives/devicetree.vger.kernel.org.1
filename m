Return-Path: <devicetree+bounces-244626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE3ECA72BB
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 983C83015619
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA3F3191A8;
	Fri,  5 Dec 2025 10:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T58MDTRx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qy9DDZN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B955278E63
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 10:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764930761; cv=none; b=q2UesBwNS3vZR+YdHMJLmPoYD72DTfjT57Xs69TL/mSkBT2MeNXQ01z6x+4W7H45pIdC+QwYi0gOmHc6LQmJsljVzQaWwqjWMR9Y6H3XZHkodEs8k8VFd4qanILLDFJEn4qY+XelnTOUyeX3u70kaPpHffWims8/jXRoEAJ8fmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764930761; c=relaxed/simple;
	bh=zqEa1Phm2YFivtYudYmDMsH0UzPdMx3PFBOBUcA7u6o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=saS2hlZbQAdxlA8bxkvwscM3DnB66rIlptf0wjbjXD8TZ3FZ48V2KVQ6tSe2r5IL/+VUn3bw24qmQ0IsEHdY4SrYSCGKcC9g7tL06on4u/1HjwKUQIvrRV96QbqS4Q7Dsrb6/xREl8IYyZpgefzDpQwAKsX31JMiEUuaCgQMyHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T58MDTRx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qy9DDZN1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58bsba2896536
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 10:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Md0HLaKA7v+7E4ybe8neyg7zFOaTJSlN0VpctE2sIUs=; b=T58MDTRx6XtNVEpS
	j9e4DaHhO34PEIHwPFMQc/cE1gU7Mb8atYdefQb8hJ9vPlK2vJ4m2hZWkAUfwgQC
	0q97VMjTN93N2HtkYnyS9W9eW5hH+wXFjwkToqLlvym59wM32yAy+jZnZcuxdeyi
	rbdsgXf6eJrC7GYkIv1CpHtQf81tvCA8sSphOT+MXFwB/HvN+AK3sAm7lQSbxbpq
	gmdAutYO2D7SxaxyU41YcPvfKctr7wzlxrbHl+a3RjR4aF1mbyIqDE/l/Gde3NDY
	xeVd3vkv17a+tKLnx4P/MhlSnu6SjSOUwT2bvuGj2tKESy3T37R7ffIoHFtsNMtd
	qMFIyw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj1n7x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 10:32:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed83a05863so5454451cf.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 02:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764930754; x=1765535554; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Md0HLaKA7v+7E4ybe8neyg7zFOaTJSlN0VpctE2sIUs=;
        b=Qy9DDZN1uRoJCkfJB/3RLGQA7ZiLnlRwdFE7g/KMZeuNdHliiqvMZxd0vDQvjewITa
         rXs7Ymt9h2IfvjGT+G+tdvAc6Xwpcy+cOYGs6seFrkUQFuSkEDvjqvojlfBR0IYdZqjU
         MxSyzBn8i+AV7cVtVDqgql50s7coQfGSXcCJKgQvAa1oXYKpY6PURURdaqBDY1ndOq4F
         EiRCJfYrNrV0mbIrAaacT39aem7fZ5nKRKe75S2M5pWEreZgiqC73aYQhwqsFX1ruDH+
         BR/mioj3/E1Wb2tnUkv095aEui39bUTjx9L/DIcPNivWrjx1UAeztvigC+i9X1ljvhDE
         EXyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764930754; x=1765535554;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Md0HLaKA7v+7E4ybe8neyg7zFOaTJSlN0VpctE2sIUs=;
        b=OTi3NZXXT75G5UuYY0HjuO/YnAqAMJtKfvzXWYn5yKP7hgZqc/nZ4co5Oj3DkShWCu
         56cv5OrmCSDMhv5o3chcELt2UC/AQz2Z34RFOre7b9nV+C77W8PaCAya6WZF9T1HVc0L
         3lvS0IyIRrj/T4WImY4HQxBMVp8let/bEqHl+fbhQKP94LMevMu+wKbMF/4hiy7sf41D
         QtJKBFXqPfsPMMA8u/V7/Z9nY1umlSUxSBdKLAlWehU05UIhly2Z1RU+pFI6YrjJdvBH
         WTJk5XVL/BXMeYHEMSbxBhYgUWCJf4GvfWmjY3zUNYpUD3O5FFI3KDMgTa2c5RqhNrs6
         cE8A==
X-Forwarded-Encrypted: i=1; AJvYcCWCaYDr+CCGKUCq4iuPA6Mr6pkSYN38QhZMM5msiPCktI4CNzOktftrTVYkHyZBTVSH+7Y+QHry7xn5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz416VmjjyqTOr3cGfO24KYT6gYWxh8V1gpgpV1YIsagsxfIyta
	zP2ZX0+zWYKEO1Z0guDFoOI4Msb8IPDZb6287I1XPXVhShHTSFHW4565Ok6xgTMQ8anb8irGNko
	wHvJxMHMSNh3Ev52QZ/EJeB0iFugwvVtLko5w4gCcJdLKPoIs/rsqMkQ7wUykxtse
X-Gm-Gg: ASbGncsHejs3LqWR7sSIiG1HOlNFZkQ05cqXfIfBB6dHHUDWWhQ9Tqm6umzDlPtYuO1
	XfipXMG+EMFOesOD1MgjrfKFxEBOPHCGtpu4dgLG3Emry7/9VQg/+ofPsxa60ybojrhOxtK98KD
	qmqZq5zde03ftHhUnzmtA8pfrkPjW9hwkoXfn2Qq0pzUTab+Ap6zTi9K7+AUfsp+abRqPYhHO8v
	XVWNTBGrDNzqLugNnF+rz4RvljQdxjWPtwWYmAvd5kZ7qR+I+GLbCIXt8jBpVlbHLS7sJyoSCWA
	mQ4iP+N9iP6bl7BNZDDiEnd+d5hT5oZ0kPdfLa51hiv/2vmrwaehXUoENEIdNjlJrFM/ojdjkBy
	AAqm/dAJh7NuQiyMPDRgR3jyflwFeRkSEmsUA3xVdCUXVAo51aaQmQNcA0xBR8Nc8Mw==
X-Received: by 2002:ac8:5f91:0:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f01b14c0e8mr85907001cf.5.1764930754338;
        Fri, 05 Dec 2025 02:32:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxNbLfXF6Hv33bMHtXMT8E0wn88Sbiojkg1+G1AysByZB4Mfk/jeHRzS4+KmLPaRHLnUeNsg==
X-Received: by 2002:ac8:5f91:0:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f01b14c0e8mr85906871cf.5.1764930753918;
        Fri, 05 Dec 2025 02:32:33 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b368de06sm3491412a12.22.2025.12.05.02.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:32:32 -0800 (PST)
Message-ID: <8ab2b4ea-6148-41e7-b700-559d34817a44@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 11:32:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/12] arm64: dts: qcom: sdm845-lg-common: Add camera
 flash
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
 <20251125-judyln-dts-v4-9-a5a60500b267@postmarketos.org>
 <62ce91326c0e1d5aef1ad5ecad9b99695f983347@postmarketos.org>
 <863db415-51e0-4c54-85bf-ac6a168758e0@oss.qualcomm.com>
 <9cdccbb5a3fb10a2d7de1e1d17d36018f40b18a1@postmarketos.org>
 <d8a3a30a-d627-4085-bab0-b73a2eeaa12b@oss.qualcomm.com>
 <2b03a898bf57cc87b78e3a90b210ed3d3f832efb@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2b03a898bf57cc87b78e3a90b210ed3d3f832efb@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=6932b4c3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=57xSM-M1QwdSUQZNnfcA:9
 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: s8ZQl3seRUBf91lIllVvN_ujo9DTTom0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA3NyBTYWx0ZWRfXyN8lan+GZIM8
 ktYJ6knoCGCTW+a6xZPmsDo+R2H6so/ubrtzV7u5wAYMK0pCHiCwMe1kIQbhsyx6+8AwVdU7FGZ
 nhBlQewLt9aRK3thrrB1NMDT1/WAX9pkvu4hW6KyNRCaFj7Cl+M80MWCyUzJwqWV0U1llaTUi64
 ooXgUf/F0KlhW1iTKCiFA6jTwnTU6VueW6wpBhnrkoAJUUwuvT7gAiDKvNEwPyn6pSc9vPcl18H
 gxCV845iJLmjGRLBEn1erw8OxIXYvp2/8tJ9g4XpECecOkE66YUgL7D+o+GOZz8zRJ/nTEgw/eS
 YtqnmoUnhPpZ+5T0S4+o5wpOskM1R514WhK8TXPhLZj1SORDsN1/2sr2Z/PtJqluu5vZ240NJBe
 bM2h5SobR0CWFEcanW8PomGiHXkYoQ==
X-Proofpoint-GUID: s8ZQl3seRUBf91lIllVvN_ujo9DTTom0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_03,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050077

On 12/4/25 7:37 PM, Paul Sajna wrote:
> December 4, 2025 at 9:17 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:
> 
>> led-sources is parsed into a bitmap and written into REG_MODULE_EN,
>> this doesn't translate into anything that's userspace-visible
>>
>> That would instead be the case if you defined a pair of LEDs under
>> the device node (which is valid if there's two separate ones, such
>> as for some phones with a back and front LED flash)
>>
>> Konrad
>>
> 
> so it should be led-sources = <1 2> or something? Under a single node?

Eh of course what I said is wrong, it does indeed parse it, but in the
end it's a !!mask (if any enabled, enable the module)

but for your purposes, try "led-sources = <0>, <1>;" under a single node
that you have right now - the count also matters and it may just resolve
the presumably-overcurrent issue

Konrad


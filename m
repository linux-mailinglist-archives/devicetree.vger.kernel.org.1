Return-Path: <devicetree+bounces-241120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A1FC7A18A
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4A5264F54DF
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0C234DCDB;
	Fri, 21 Nov 2025 14:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PG2Jcnt2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yjn3NbsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFD434D901
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763733891; cv=none; b=rr+wi4I4OQnizUCpuyN69Okq6jejaCC0A9DgLCmHYbdN6btGd6WhFJrSiUzGfPDnB2skkjB31p5D/c2id5Yd7w7s3eVXO4nRWvD4Bu2JItN06TkCNQv2Um9ZjjE4A6gwVcAcyWb8WXJFCzVahrp9F3NYaZxrXv+cYYYa5bTIBSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763733891; c=relaxed/simple;
	bh=b1n4XA4q/KqpuYmnAOUEofeqlH64gZhHPubQOI/0Elg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kKxLUF51G3+8V3pSh6VroqfYQt0ev8pokHH5COoz2GrTV3522tGKKnl3aoIh2fKQzMbs1XjwESCuB2oflX42fX31VxktknhbGvxAW+tkAF99VOPJHmZeeoVb1vXmk9zvkVBsXylW4yQ4KVjHkyHzHiGfSznlIs7cY6N+9IgqEWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PG2Jcnt2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yjn3NbsQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALC51Bh2831702
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:04:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q2vS7u/JIbX7qlMBiy/pib9mbwHRZ6mTK+QLsUGd4KA=; b=PG2Jcnt2u8iTs6bP
	mZr0EiwyMoyFnoLOhUoTV/+IzfH2pUYw3hNRP16PlJF8H+k01/Ocnv9t8cGmvY9p
	J/lJ1piK7o65Q51sMCelEevDtZQ2sdHOoN6mAthP8paLIOmpgaciWqJ+KOoR5+yD
	rI3WCp35mi1TgJ4gX8Qpnq10luxwNUQcIYT4RYP+1URhDEclC4dAOJlRUP8hF05I
	2GD/cKozc4jZWZWOqzG55CWCjTF4nL5tV3mXJ7+d5iaUhdJQHGBTDR7PV50jJo7u
	ZFQp5tV04+y+v4yp5PAI+7eNLX9RH4OIHcAm9lHaA9LhJ4RMv+hItyoKMsoFp+4l
	V3S+Yw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhyq1m6v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:04:48 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5596aadc213so46159e0c.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763733887; x=1764338687; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q2vS7u/JIbX7qlMBiy/pib9mbwHRZ6mTK+QLsUGd4KA=;
        b=Yjn3NbsQHGHwy86/Hbmkzx2X6NWaFPqegXZ0JGLoZHVScF7Jiap2NrGr94Sma8yFSW
         TQDwkz9eJ0gvOxJ07v6uk4ID7ARHqzX08DpN/fzZ1kTpjIdsZ7qdWSUrqFuqpWr0Y6xu
         vR1tqNSFFSfrG0M4zCbhRbgUkC7mRlbNFSp1RI8TM91Ao1MzGzWUftEDswspxYhOrdwt
         s9aBDcJ63FVI7sLdk/olYj3lV8Gah8EDCkC99Gys7nCkrgL4Ys8TSieH8lvwqOFImNeR
         WUXyn/u5tqnECx8h2Jvd/qK+t+/6rW864cL6UXy/EbkeI+Om0JR1Lna7Q1sK0sD7dueU
         b2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763733887; x=1764338687;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q2vS7u/JIbX7qlMBiy/pib9mbwHRZ6mTK+QLsUGd4KA=;
        b=uPWnMXyrJX0PwsDU2c5FEUlh2pJlEFVyEFWmuNEmdFRvPRCISIf3CYuD2PoA/92t1a
         o6CHCr13LoBc+LZnVLBEcodVgBZiae0QWX/ZzEjP1PjOfKDhTwADMeFrlAV5/33fuKaH
         z+1AcD28HZMO2+haDujmI1na+OEkmKIHvL78ZEX5TACksR7aHkQOJmwxgNvJsG0PiEos
         Llq2XGqQlj8BbYrr0x74JqoGbQ4tXlATkcrOUr0u//ClTGOy5ki0TWUOWhdFzpe68h3Z
         WE5aiqSJIB7G8v+W3WZ+aZ7LDsfWyfVaGptNKOsnQMSVyumXorr1ER5vE2R/E6hvFMxZ
         IhBw==
X-Forwarded-Encrypted: i=1; AJvYcCUuuF9z0xIHUQ1fzbbFofKt+MTCbxlOxafDCObUEYYXvir40+zNzkaR+m5I5sutEYs763QgJkrX3ioQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw/0i9kM/xUzU0XtV5wwS23H14NOuIuqeHnf3oeEeTsQGmA2A1
	04oWwhnBzAv3AnwVPP2gPNTAHg6vQuxLosK9LA5y8nTB+M6Z4D7dIgRkVrEvRqdJDdsJEqcBOGA
	sfaFhZRSgok0fZSUJdOv5sAVuuBi0sRDcHOJc/icm8cjwjadb4Z5zPtLDC/BD/BmKRBfeYBLw
X-Gm-Gg: ASbGncuM8AE2PkpdMbUZbXdEWoeuXpPD4RKNeeaWOUhmX+cUOkgXm9Ayfg7pN9KiHYt
	Q689WDOk2Nqjrr+Gm6NOu+v0NPvVkrEp9Za7mE1yxsClx2yU+6tyFY6VhIvkHcqttUFW3y52N7n
	QkDEeNhZpvdQnicm3hV1y0IakAbDc6SeILoRZIWlVt1UmFTrm/V8cCclVba2bogxDEQeQEVKQR8
	ImfJwHPadgf/3jJi2w6hROCMrjE5TEdbkPcOGIEFUIc8YNd+Y5BHNpYRmB9+IdNvjHDgyj76HXl
	yJEG92KzVIuf7/hBRLmLqTZSi16LFSXLc+9ED7JUQ+lQw+NwL4qcAaTrkBznFWi2IS05cJv+OHL
	7fb9Laj6HhMbg5QVtpd9my0fYCXtvgp+R4noGn8QPpZwaYZx8EWAOoHTybRer2S06Oqc=
X-Received: by 2002:a05:6102:4b88:b0:5de:93bb:c553 with SMTP id ada2fe7eead31-5e1de3cc795mr358839137.6.1763733886751;
        Fri, 21 Nov 2025 06:04:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEI/tRwgX6vGWnRBfJHVtMU3u7QzjM5Hujztw5aFw4JnxlX/tG92uN0c9gIGQKoerIaW0+tFw==
X-Received: by 2002:a05:6102:4b88:b0:5de:93bb:c553 with SMTP id ada2fe7eead31-5e1de3cc795mr358675137.6.1763733885046;
        Fri, 21 Nov 2025 06:04:45 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fcfd9fsm477643766b.40.2025.11.21.06.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:04:43 -0800 (PST)
Message-ID: <d7525543-8fe8-48ca-8b35-a0d087578948@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 15:04:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: msm8939-asus-z00t: add hall
 sensor
To: Erikas Bitovtas <xerikasxx@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20251121-battery-hall-v2-0-d29e0828f214@gmail.com>
 <20251121-battery-hall-v2-2-d29e0828f214@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-battery-hall-v2-2-d29e0828f214@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 54qT-_FEjovchUumtj09qUbeYgzvfph3
X-Proofpoint-ORIG-GUID: 54qT-_FEjovchUumtj09qUbeYgzvfph3
X-Authority-Analysis: v=2.4 cv=N94k1m9B c=1 sm=1 tr=0 ts=69207180 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=sfumBXNNT5QrXeo5tVwA:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwMiBTYWx0ZWRfX416Sk//XK6pA
 ZRwPIGp/g9b3CcaclplFUQWU0DduRAsr2zTq3hMjciyLb3Fx62ZKydlJfGuTCJF9hcWqxHf5uEN
 qq/lwDQKASmwf/nruiP4UHxAoEMS/s1juDNDWXf/owdAg7iLxqKEJkvty3goEWInyLRoKbjYawG
 +CWv+7R3DXYlyBnwultpi5h/xWECMhasBWziIsFXklrC8nZpl0e+YdjnPA7cuLs0MOjPYz6Sy76
 Q5WH3O1djqTLCqBIa+gtTfrNsznnC80RCo0q9Tt7mX0Fgeyvqnt2cHJk732LYjGBLk56iZcwlx0
 MXWLQCS2hCgZGvdV2Uxgu9mr5TEb8vhV/ZBzwhProV+YF8UkoYkEpSsJALzrlWXLH8qkhep+ac2
 E9ZbcsMuDfbkKnLhxbwNi5kzIQz+Ag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210102

On 11/21/25 12:10 AM, Erikas Bitovtas wrote:
> This device uses ANPEC APX9131 hall sensor. It is a basic GPIO hall
> sensor for which a generic "gpio-keys" device tree node configuration
> suffices.
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


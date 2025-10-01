Return-Path: <devicetree+bounces-222965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B667BAFD6D
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:21:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4EC23C5B1B
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041742D97BD;
	Wed,  1 Oct 2025 09:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CAegxa6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B1E2D94B6
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309874; cv=none; b=dwaLPcoaBpnGmZ5jMmw5dKLyfLr+0lLLRxc34IxercMKtdCPpOyUhbROxCk7nCwg+mj0S5Y1rbSoNBbB0DHE7PsYtdC7X309UJxKGLA8DWvaw/GGPCuH3ZGLOGSDUwPcqPjWXdaWVFxyXOYfVYLSXdKEUmvSSVUGGvdX8gSEiHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309874; c=relaxed/simple;
	bh=e/WEVryWETqOkgzO3C+jeJYAOW+tg3knY1j/j0lK9Ls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uvUFWg6ju5apAL4blCJyWOPItZK6fxy80QRvCVCjHkAmRypEpUyIxRaMwEoMWcrFWKxcQvp53D6h7+J0xoQbo7EpdVVAPlaFS8Se8ayE9I/yqroJI4LWnXnisgFcTCBELkF41g1e0bGICxtfcK5ng8bCIga1mZ/VEOW/HqvuU68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CAegxa6q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UMI78c032518
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:11:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e/WEVryWETqOkgzO3C+jeJYAOW+tg3knY1j/j0lK9Ls=; b=CAegxa6qKqqGDQ0r
	Ilfb7tNf9QzTIO8VmKfcoZglS9o8aJ9EzKim6VP+rjNZP2iYuIOjSFGEOV7lHQAR
	W4r42MC0nNcWyRCDXR8XkKCf96Y1OdFSnBIKBucPipY2pQmOERBr0luDeFdjAN4q
	2/h5qjmYy+Qrhj+sUlngYtPjsOKLt4SanvwhE2LIJr5KDta/OhY+lE4PPt6qaYUM
	IkZhzdYCV5PhaYVpr5fGgtoqgEWWZqzCRBc4kqI3lPD24Tj4RCnZtDnvIs5mVtpL
	lyK9uI30jGDj4rx6QzxUGKblhSXh/1AoF+ajYgTKW8W/gtFaGDpIVG5LJJaHZo3t
	7ZCLBA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr7etb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:11:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85bb4e88394so4314285a.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:11:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309871; x=1759914671;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e/WEVryWETqOkgzO3C+jeJYAOW+tg3knY1j/j0lK9Ls=;
        b=ENDKDAJXDMPkTvGbC0PH1Xw74uWuPS7Q1PD/yp0Rwn0VLc3aHs4Y5mbl5Ca60981RU
         l3VodqUl5cEGF/7vXvZ/21tMYNS7h1wld7oXC5k7ed/bgNY9NREwQGt+qmkZk+wICIpB
         bIy0XVSdWfcj2oaZUN70jIN+ksEXyqd5vDCHgpm074sHuBZ68jMJmh3gXbGYIfKhWmvd
         73ybBgakHwJv/ttx7WtYjKtjlA6jYlgz+K/C74AgCUvU/0yeMJKTcaa2XpcDUzSTsfJH
         +Wrrsslb+xmoZceQEKK82/okab/t6Dt05Ya67bUKoGtKSHT94HvXgqb2uvun5mnbKaVV
         L6Yg==
X-Forwarded-Encrypted: i=1; AJvYcCU2iY7blGnHU9aY9m8k7ZTo7u0LDKoLMu9Oc34eK2tU6VjTe0y2ICrzKYx9hhYeOHv6u7Vhmm3D1Qci@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbkecy+9IxM6igx64n9EKVCYMN1imi7YfQCJGm8S8U7QKSXWq9
	aJW59huh9evZWFW05utg1UvIP7r7jUjPZmyQqjf+G2gldUXaFch+pQH/9kz9hIwSUKpa3ibPikT
	7aIDLvC4kl9J3BLYHrsWRrThahPkcB2i8R7rhu7qfpzZBt7dHd4awkfS0DaDGv2Nd
X-Gm-Gg: ASbGncv1FriltAgZSSSRL/0XsJmzGP6OZRTRmtbXbwVvu10vT5httzaKVXKVe8o39ct
	EE5Zpi05kR3R5wWA7eMRtS2OzeEk9C8yXMCsg7ZyM29zu+MHslzAiylx7J9Y/VuJjTKLlhz59NG
	N8q+QROLTRGk7G8KAZ/U5DNvFG30jiLdVVsD+jGYcaZnO/X/cdSPMDvJfg9nM0p8Tb09byYBSKD
	+H2vzddVqmoQHX4mSGWFMoKfoEZwSouwNxIGB9mi3MgSxaFQzvIBg7bGFhBJ5YIpdi0/2tpTsbB
	sot7dy/WaEa5oUJlj8Bm/4wRcWUpmuih3+Pbpl9Lf3GGiCxjQO+ViMaiRsDeTXXE8KuzYh80pYD
	nhRvs56KXGFOBenxEhmuTIL/qw/w=
X-Received: by 2002:a05:620a:4556:b0:864:a09a:e860 with SMTP id af79cd13be357-87375480bdamr242431285a.10.1759309871049;
        Wed, 01 Oct 2025 02:11:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUmzUAc+cjv9+y3E3KgF6l5ePibQGjbOfi9JLtWe811uw6jRYJrLcGhg95ESiVfppfFFkd2A==
X-Received: by 2002:a05:620a:4556:b0:864:a09a:e860 with SMTP id af79cd13be357-87375480bdamr242428985a.10.1759309870577;
        Wed, 01 Oct 2025 02:11:10 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3544fcde4asm1337283166b.76.2025.10.01.02.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 02:11:09 -0700 (PDT)
Message-ID: <68a07e54-9f0e-4938-803b-64d6f0c31e5e@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 11:11:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/11] arm64: dts: qcom: sdm845-lg-common: Change ipa
 gsi-loader to 'self'
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
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-11-b14cf9e9a928@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250928-judyln-dts-v3-11-b14cf9e9a928@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfXzKIUCqeS0vON
 vQqUVVOjyOenHOLF99kpQn6oUY4J9for53cIQGtocU2Sq/6zRYCwZ4fmiZX6j6VX7WRxWkjVQrW
 oUj297efurhe/hfkpPg/hXYkxaDhg8wPVVU4dm0aOFzMGjg3E6kbLo9lt7WyCPzEHRuwaUyvc4J
 HO28qdywsW8dp6ZX4x4VhsNT4rmOJhJFXkwzUqMv8ryWu1f7FrMNNo4gNi99wNNo8zj5LLlAUaN
 43p91uP5fmuJBqduFwPBF67uaSLlqnnwI09+HvrF18/nKpN7cuULtYsIdzGiRoE+hZShcrMokyo
 VaRQdIuKLaGCY9VZsBIIBpuHmJ9WgGSSY9+9B5FUAPDSL1JI7qJkXbUiDnOnsSJfWClCz9N6PLK
 BMmqv/O6K45+l7p+dIDXSfY9Y4FKgQ==
X-Proofpoint-ORIG-GUID: H2S4H1OAwIvKPZJjPS_r1rQVraVRhcru
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68dcf02f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=j6DUTAs5CoFpl0bgMQ4A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: H2S4H1OAwIvKPZJjPS_r1rQVraVRhcru
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082

On 9/29/25 7:05 AM, Paul Sajna wrote:
> This lets modem get a bit closer to working

What prevents it from working? Does it crash? Has rmtfs started?
Does `rmtfs -vP` print any warnings?

Konrad


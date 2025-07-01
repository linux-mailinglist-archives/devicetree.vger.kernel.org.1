Return-Path: <devicetree+bounces-191511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 008D6AEF80F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 14:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2B0F3AC034
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E98273D64;
	Tue,  1 Jul 2025 12:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="adflSpn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D07E26F476
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 12:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751372041; cv=none; b=WGm0mdQze1CYjFZCAee4VpDN5DKPj46PHlUpTHRxz49nlG6cMVU0qwknKyCxZUQges8vvnwo+kkpHZa9nP1c0EX9lWMTH0YSMxIJXyNaIbe0uOdaIgAupYro9gxq1wVE8GQsaSBNpjlUncsSzMVB+9PFNuGbdjIFgGVYMBqsAKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751372041; c=relaxed/simple;
	bh=fc+V5d2QW7CN+ykMr7bx8/ln9xdc8qfTLHTkKZZLnLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TI7/lhrXD7d4E1YGx6H/AxgxOLR08pmU/lHGBCijuCKYOExrQ9j4YooRA8X4YWaDD/ZxCnGanLr5QUvUBHiYxuL3vupJH0DD4JSlI0r8estmlDLp6bqXiQle06FF51/yzL4wwcNUoiKc+0pq4Wf7Kj7wB9T5b90h15ELdkggIrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=adflSpn2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 561ABuZZ018548
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 12:13:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AVAZKe6MVUqSmIfEve8DecFvZqjhdtqfXn8WNkgPtPk=; b=adflSpn2QBv+mRfF
	T9Kgjq27zZYwTvH/mIPtYnRLk/yvkQTMVRDKF2PY8vdNEyyyX7RTL9IJ7F2cNoRr
	Sk93tMuVJbXBkIMEwt0/P2dUTtf6b+5Al8i/icQeg8lViSVA82M4RglDrKYC+fEl
	CH5YsKnadCLo87N92Rp7repskwDFJwzFZECbR1XZajtCX/mbtxX+VxZIW5wvApBJ
	zrk4YH6V9w31PfHRpN2MTMLYrELYjtxsW+Lk++TbKIkD4zCwSG7cIFP7JOHHBKyG
	uUcrkfUgdTIEXAB2VAAWWeDq2sODEHc8TyGxkdLZVucUfOTqpgVCfP5pXng/EGwD
	aj6qXA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fxgvqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 12:13:57 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb5f7413beso20446856d6.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 05:13:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751372037; x=1751976837;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AVAZKe6MVUqSmIfEve8DecFvZqjhdtqfXn8WNkgPtPk=;
        b=HXl4lsskHcmphwZHaQ8n8o6lgxXK6wsH3/GkkxUUv4tWKTefGWCRZso9usiT4KtWk4
         gEEmbsH9g9gYvppHuahl6Sxmdh8ZMxrPswK5MmzfAn83ZddbemOjRHakdHapwO/fSq2g
         p7SIu4I5EEkSpD4B+UToI/WofjvcMSVhiduiMqVv+3q9JVy+0P29WC0OzVgzsYKR3W2O
         TThGsve8nwk+bGboO1kl7zkMotTSPXFaAyYNd3dmwdDR22bPC3SU+PSPDmWTSiK+BVjc
         uNi0/a96FSChHbEzB64lghngZz3AJZwL4ButT30wSFLtNtzEqNZSDqlSxc8ydC33/khx
         ptiA==
X-Forwarded-Encrypted: i=1; AJvYcCVKtPNhcAe78Pgu++ciPuE7i7cDaFL6Zru1KWw7WEEj/QQQfuCgJFBishLBZIudgzypZF/FGc1XIIXK@vger.kernel.org
X-Gm-Message-State: AOJu0YyFV739h48OqxJvy3IkwIber0w4e1N/v/NkQ8rMljKNUNj/qHbS
	2Xn8ZLSvlizso1fNbcks+SXuwRAlFY39j7AqLRzphzgW/C8R/cACwBUQ3MBG5hmmkirhvkMd7pO
	t9jtV2OhsF9NANGF9FL7L21zn6aoUYK3AZ5YEzjpFjaBB/3+ZKbWUxmSb3vN5B017
X-Gm-Gg: ASbGnctltuAm0rvfBU4P//ZBf+ARIvy2M1mdywTkRuuQeAOF1QUZQWPjvOCUVbRzixQ
	M8Oy8MADMuOvczh3VwPXy+LKtaARLzwmQsOqII8lNsj5LFFDmlIcJVQjohqRPuumHXuvSFMWucK
	ttY8nqpCZg2ATGjTlIAxLkgW0S6nKB2hjRCU2MD573rmFXnyJoE7YXlUxlDgm3syPCkK94c3cTw
	6+BvxwcOuQ/rzc0xP8yYbuN68RDUJAj3yaOHJcZ6n47zb4OPP2ay0IgG/k4BBnl+4qSL4F53NRq
	xTUnzHgTqe+gwhRIDzcJRrRUUzjznzhgvGjOwGz/4tLi/vkI4QfS8w3cpK6Bae39aW4uS7euoLA
	LOq6itkM8
X-Received: by 2002:a05:620a:43a1:b0:7d3:cad2:ea27 with SMTP id af79cd13be357-7d468a93f78mr96973685a.13.1751372037057;
        Tue, 01 Jul 2025 05:13:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDi3p+4z356QnL9luRZ4ca2//1Ovbgx/iA7XNkUbzWU0a4/W2qizB5Q3TbSGueW9e6IvS/8g==
X-Received: by 2002:a05:620a:43a1:b0:7d3:cad2:ea27 with SMTP id af79cd13be357-7d468a93f78mr96971185a.13.1751372036558;
        Tue, 01 Jul 2025 05:13:56 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6b407sm859796766b.117.2025.07.01.05.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 05:13:56 -0700 (PDT)
Message-ID: <bc805145-b63a-4528-9c59-973fbe4961d9@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 14:13:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] remoteproc: qcom: pas: Add SM7635 remoteproc
 support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
 <20250627-sm7635-remoteprocs-v2-3-0fa518f8bf6d@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627-sm7635-remoteprocs-v2-3-0fa518f8bf6d@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA3NiBTYWx0ZWRfX+AV6CV10PwlK
 pkGOAChlAr+w+qLwk153+SJHja/yE+GLtKqQ0mtekzAMKHxrwvXllWyMCjjfsO+XSSA45NJQL5+
 fuYXJuw/D4X5keUYcD9QesVf2o0LUdSZKh7+oi/i19sM0gyqvGLYE7ZwyZPv0k7aE/NJHkF4T71
 XENW5Qd3wMrTv0eP1+Xfu2ObMlJTwiDGfSR7bUT07mfg372gX0cOuqYMwnufuK7di7+5e1wv3fq
 ufQPCkjtbwMZbBrVmYeqI47jQiw1bzbhI8Gx37FxkKQIhD93pBK03m3xlLc1uJrAR9o9t3Q8/dD
 TOlIkgX5E0mI2ojxz1puTvhefCsp2sueFm8p1zHwW9+eJZNHZRDImk7vF57gpAr2AjzVWTPBB+R
 5xXnJeGTxYa5g1M+WTOM22+wRQ1gXK/RtJOy7NoNo2vTTZkW+vk/Fbi1Irg3h/uyZqHWxvxj
X-Proofpoint-GUID: gsrjTIE2HaIths6FpeGkaetmeRTgdgiR
X-Proofpoint-ORIG-GUID: gsrjTIE2HaIths6FpeGkaetmeRTgdgiR
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=6863d105 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=S-B96e1FEKnLoGXqiSkA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=858 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010076



On 27-Jun-25 08:55, Luca Weiss wrote:
> Add the different remoteprocs found on SM7635: ADSP, CDSP, MPSS and
> WPSS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

With the agreed rename:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


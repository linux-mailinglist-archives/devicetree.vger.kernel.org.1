Return-Path: <devicetree+bounces-236648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 131FCC46296
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEA0E3B7ABC
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19960308F3A;
	Mon, 10 Nov 2025 11:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EPINLj1j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FubAiSLU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659B03081B7
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762773057; cv=none; b=GWkPoCykX1F6aStxsrqcaZc5dSSj44aTwvmd6SgiBmROfdFbUL/1QfbOvFpcJ8OJGlUJBf7AuAxLXFQQMSZmNhYDgaZnmmMpa/yDU0suR+ywC2wPdnnRJeXNTXYDZ5BKurEPWg0zcXP9gCzmbLbZZfwOOdTd7qCctIBkIUzWsbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762773057; c=relaxed/simple;
	bh=yO77kwBGZo7GfxU02vl61rDFI9SWDoQ8KYXb0fdAB+c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TQtHp3RkVTI1QIaYWKkHhKtgCZ8osAHXEphc3KkLihThFeCJnOg7KXPjRAh4rtvezLLniTW8GBziLiGv3wyXX9Mkhe2XzFLq2qOKWn6pNPgK5ysa2Du1TJF0Rw2SJC5mT62gtPNnxqDb2JIS1VyHY6BZu5N11afi2GnxAx+9zUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EPINLj1j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FubAiSLU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA9Ch7q3146440
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:10:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ybEh9EFc/k/OEFrYVPKW0AEC0K4ZVsg0OtLxn2/42jg=; b=EPINLj1j6GgstPbx
	EjcOg6UjpKrFUYhA8RYbB6DrKy12ikq8bgeLM3PTbAfswMaq4+O/Ca44BVa7rEsX
	QU8uxAE0NAyZ9RKHifJj6S3gze3r5/BhE6PFpLi+Np/nE7SubUI0B4mCk7YVziyG
	ywhFO8n911i4X5pqXKnNbJyjSuzLf5JDRWvZfZnXHYySaTRILme/MwWeM51Ja1uw
	pSZNWM+kuo5UpOR8wLplKTPpEr1Ut1JNHvjFAuNaRU1OlkJBRyD54L/RcRNeJTfx
	nMsZ/wFMnzgBb3MSFzUTvx9TzoK6jWQlMc2BroZfL3CcIHnWGcuMTCjbLTRZRKIa
	Rcnpiw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abd7hrc5f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:10:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b184fa3ffbso124564185a.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762773054; x=1763377854; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ybEh9EFc/k/OEFrYVPKW0AEC0K4ZVsg0OtLxn2/42jg=;
        b=FubAiSLUwB2NCc6DTzTmHSvEfFQiTX/VumqkzruDI0v7v88rnt2BvGzfUCwa/8QkP7
         nc2QOfaEThIuiOaxlPk9Zv9FL1J4T1Ypqitv5UDIjsq8EXeevTiOFK3j9wMAMc24xQEz
         JL70MqPCHNNB7yRO+ZpPGnoWTs1iik66FI79uYi4ZS8e7Jt9zZp8e5Ey7xkIelrofo8A
         FBDVAct0W5gZKXbY79QNWuZJEgYP08kPkGcOPUHUdSozpE+6PM2gs9iqdBt5XoI4rja7
         OD0O6wUxNKeSHt9WhRdbBmhJ5EeW5uwqdCG0/YsEiPXZuQZ6tOTJDBrJ5qarWtv7ZYv7
         uyLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762773054; x=1763377854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ybEh9EFc/k/OEFrYVPKW0AEC0K4ZVsg0OtLxn2/42jg=;
        b=vPP/UuY71m4fvAp74d64zpBY278j2UoMnX6EjVTVcRMcYZBZncOA4rW3LjpugPJdn3
         q4zZ/v73bDtIdUVxU+9m4cor8eKOfE6yhy9AHjs5kKdZPQFc63gAq7asduVmfVNmCMll
         WfTWR/TqjT8KxUbXnty3tnluCtta2+Oe3zDmV91Lmm7Tz5K5v31vkA1pnmPNbc17c3cm
         8s2gbH9AFxMk4m96uhSWLA98wFODwB+uZI+pQ+8xwhtw4GMXbJ0ldZqwy4aI/ocJRBzD
         Jsk0zTy1748YBfUUQwZuXoULB5fsmivsNR7C9LWFuiWls+1nOjgJNT8Me4HVpWfxj1lX
         c2xg==
X-Forwarded-Encrypted: i=1; AJvYcCWoLUnv5FsO9xBR0ieYFTFnydl3KHbS2qyCRWLOS4oMGbwtISKOl58S7UX6VzZXPoFgd+v5MmPdY6d5@vger.kernel.org
X-Gm-Message-State: AOJu0YzQQe8CAir8nSsoE5MUXLXHuAKqimnaGzerxd8IFvgvpnaXaw1v
	RUyS8nTjkyBB8QgUPCv20/iK+O3fe2Iuw337Fdwo6JGCYpKJfgHrfCKGY39Sj57idc23o/rdhLc
	GtsJnejQyM+UImi02IXxui/zDxfSbn52CCNSjnzFd+5+HeL1NgV5DFmj6xlJguLiQ
X-Gm-Gg: ASbGnctugocaG19+5AZktyzRs/cyKoa7fGAZPXVO2RuYyGWExyrBa1KqrUKiAli4enR
	lcNXesvwwkILzH/k3sOTpNIiNelFJsZQntzkldyl3e6vzFrtKyPLoAFNRnVVYFH8o2ANBEpJj1/
	Jxs1kh5XpIsEYVBvKDPaoIlVfboVu4vfFQ5+fTNO7rMKmu3WTioqzHX81EURtwE7FmpyWrinrvx
	vhvmbcw2CGRAF3gIheS4hgg91JcsLxGcSJOwNmLhDHTPfDDZkI6eFYVw4yksAhHacqwIUrO+fm8
	JrbnXsTE5LtQYp+yShKMFB4ZYy3XJXpYOaxR9Sf3/3UgYYNEllaJMNeysTcclpxEBn6gIVgfzPb
	OokTdiKKR9s+5emCwu5Jql5uk8qu2Y3VVOW9sv7VIDAUC4mHUoLHjw3ap
X-Received: by 2002:a05:622a:24a:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4eda4f9a9bbmr68189971cf.9.1762773053485;
        Mon, 10 Nov 2025 03:10:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQu4fNZk2qrYjwhHpbxn0AAwOS/Kjp/AlwHX5/cKYvrUDHHZLvsGb09MZi5m64KKoPHWj67g==
X-Received: by 2002:a05:622a:24a:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4eda4f9a9bbmr68189481cf.9.1762773052978;
        Mon, 10 Nov 2025 03:10:52 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6417b28a73esm3989933a12.35.2025.11.10.03.10.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 03:10:52 -0800 (PST)
Message-ID: <fbd241d2-d383-4476-8e2e-0f9dd9dae484@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 12:10:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] arm64: dts: qcom: qrb2210-rb1: Fix UART3 wakeup
 IRQ storm
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jirislaby@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-serial@vger.kernel.org, alexey.klimov@linaro.org,
        krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com
References: <20251110101043.2108414-1-praveen.talari@oss.qualcomm.com>
 <20251110101043.2108414-2-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110101043.2108414-2-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: YVSSWxrBMU6gUSXcOH6AGH5n_Ck9a2K6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA5NyBTYWx0ZWRfX2Uyffz02qNQL
 8GJabWkME/bfv4kFfzzNLbPUbiFi0Io/Q9rZSq5i1jn7rPJy7w45Vb2weha7OH8wniOoEAFILG2
 2uZJj9jjQ75VHaxzxWoskonMwXflaTZYqESlU6BeYbvp/sNc3yu9/wq5NZiVIHKWQZE7zcSXEQZ
 EVl1JzByzlE1sVBWcADa50rtZCQLpfITooickD/9WFJnd0T/oTQdA084Slc9sOPHNEI8Rq8Gs3O
 ZDQImkGcLOynxHeRuzQt1/GeJi+s/WC4tJXiy2PvkEd+vxLQoqwcY+ZmjjyZinN6/iENxxXz0P7
 3cs2rcY9PxxmGdDvd8jMLZiMGeeArSxiBkEYRqIsflTfLpXH7A+9BBt6PoJW/dQXXEcXWAJ7ft5
 YyzlXFnTJ3XGMfw2aun2PBhDhz15HA==
X-Proofpoint-ORIG-GUID: YVSSWxrBMU6gUSXcOH6AGH5n_Ck9a2K6
X-Authority-Analysis: v=2.4 cv=Yt4ChoYX c=1 sm=1 tr=0 ts=6911c83e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jiGHEdQAExhvJ1pZOisA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511100097

On 11/10/25 11:10 AM, Praveen Talari wrote:
> For BT use cases, pins are configured with pull-up state in sleep state
> to avoid noise. If IRQ type is configured as level high and the GPIO line
> is also in a high state, it causes continuous interrupt assertions leading
> to an IRQ storm when wakeup irq enables at system suspend/runtime suspend.
> 
> Switching to edge-triggered interrupt (IRQ_TYPE_EDGE_FALLING) resolves
> this by only triggering on state transitions (high-to-low) rather than
> maintaining sensitivity to the static level state, effectively preventing
> the continuous interrupt condition and eliminating the wakeup IRQ storm.
> 
> Fixes: 9380e0a1d449 ("arm64: dts: qcom: qrb2210-rb1: add Bluetooth support")
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


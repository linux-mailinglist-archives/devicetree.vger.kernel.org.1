Return-Path: <devicetree+bounces-223862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB682BBE634
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 16:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 850193B172B
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 14:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E03280CC8;
	Mon,  6 Oct 2025 14:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h1Ky1CZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1843734BA3B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 14:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759762002; cv=none; b=J03d/gyxGSz3Bc3WGhqsBpc3TubuN5BowfEItxb4C3CVqSoUnX+SP3BzW1jsNYr2GvZ50CnujgV3JkDMcuJ4jhZQ+bGyOqgYNfxZN9GEr+GauZu1RrrTGC/aGRj70UWZXqc+0IgFEMmKUD6CB9RuSb3g4Jcc+NXKPLd4OKJ+qyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759762002; c=relaxed/simple;
	bh=0SjfYUn+LCJtD0uklCJCg4enUtxBtyoQ8WI40LJdw0I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YxkvoYi0hSE8/hn2xSokVN14st6awHLwH/SPVkDuOjRMiBa+HwNEcHi6mWqA0zWQbWVrpoYy93BNS5IWHmS32PjGW/zSW7yL5XVZBuc1dHrJKSjT9fXSb6d9goCfK++DGsWiqxCD5PMPtqTq7MDf9sgkmyKpX9rXc/Xy+UZ6XK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h1Ky1CZZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5960cQkh028258
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 14:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6k8/Nl9l0oEKhW7IAR62snQP4zksIlUAzpUwmdh3B9c=; b=h1Ky1CZZGQ8Jocws
	SjigahduATYPCpJIoCBvDjaQmdcLVgTgm6/Ui9U2rMHSnK0lPHeVUyevBA7a0zcz
	I25Lf5WTGac3yWJMQXqjqjSO83/OS7osr6ug1Jtv2wH1rYD2ugmM+F42feaz3ydc
	i0bQP6fkJtE6s3c+rsfu0dGAPMuBPBYOzr6pSi9J7uiY9dTizhjT3Ugc4CTP9Lgk
	wy7WDlY+L4BJWz0j+YC9TA55VuY/NgJJNXyqSxJueVGWsrtRmVriSCXcDycNJj+r
	w+ECqNRTd6BpsJO+5duhzKVpwQNrBP7S5pF9koopr0JhtT2VasgtsXqT8wJXSsQB
	jcg81w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ju5xc54f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 14:46:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e6d173e2a2so3231801cf.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 07:46:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759761999; x=1760366799;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6k8/Nl9l0oEKhW7IAR62snQP4zksIlUAzpUwmdh3B9c=;
        b=eXsyPw86L4kTNy7b+zTA1X/EC0wP3noMoXlV5l7WJKMvubcRXxfB76ln2vwvMjMbRd
         2IRuiTr5Y1NFt4QqcNet7nGo7sIkP7I0hmT59Qb+2Xk7TTO6hPyVlxaI1E1JTUPST1GK
         9NTreOygVV+buET1GHDy6gr0PR6sZDc+DE9ILDNBqLQNhZxcxLnUNOPDZdX4kfAiwKRY
         wb0TcwPR4l/uJaVZoZK5qP646In9phbrOPw8RJLuWkVXCsdidQcy+J9/LKTOpHI1PwiZ
         ugMuZz6hgzz6eJgm2eAxQq/kIhjTJQAmdz7BqhPKHVBkqPeHSXb0uznnQx3j8go7q+LU
         vEdw==
X-Forwarded-Encrypted: i=1; AJvYcCXm4d+H4jxBhxc8s4wFEs23KWVpp7z6Jt8C4KBZ4sGasFnI9kxpoYj7Ochbxlg/75Uwb9yFJ79YP7oo@vger.kernel.org
X-Gm-Message-State: AOJu0YwLOCwwqLmXQ3rI2BRpAQ2uS86ZKslgu0WGtc3ePx8jC+MfplNH
	2IV1WnJ+WTLA0yX6mUO96VmUn2a90UMA3pWGJ3V+A2mKe4xpnuAWKdwLW7gRv2Gb8/qS5GWjkZ0
	s6or1k25tOCdriP13Pbru4PjLlOT4dWOUwG2imPi6b0l8M7vca7/vCwSnKoEx3/fb
X-Gm-Gg: ASbGncugB7kguG/ptsl/Jy+lkgjolBkZGLFwN2Dp8zO0vi9Vp+uRRWsUOwQNzw/UXx3
	iV955wuldRJM+u8r6QewS8zB4wdTlBI3Qh7KJItAjCkmEU6RhxcEZ0aiqHWLe21bpcAuoUG/QXe
	ZpXlAaKzTM3y9c77wlv6cVxGVuuvM3G2PRy/+qKoJHLf5x62PgFfbDwoWJHrfgMkYiFkEqIOZAm
	2PU84LUfqHB5dho5p4rX3GkNCbkAb9GI9XjSA6aDqNRyEKaJW9U5mhEZB+mE/uU23CL4Ad+VqT/
	GqCCsGozdWzPGtowSJPRhYEEyq4qfSfDyjK5iuR2tLsKCpoVZ/R3zbSWzFh/FzcnK+6qtLSh+Ir
	Pwky8nhOkm9V8fiA3Ze0hAxm2uYo=
X-Received: by 2002:ac8:5fce:0:b0:4b5:e606:dc13 with SMTP id d75a77b69052e-4e576ae6a6bmr104989721cf.10.1759761999030;
        Mon, 06 Oct 2025 07:46:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGV4qtXsuroQqkzlZTq/F/Z7vHu5HpR6meIRrGUsREceJXJahZyUefmBMArcJ8DeNfcQay4eA==
X-Received: by 2002:ac8:5fce:0:b0:4b5:e606:dc13 with SMTP id d75a77b69052e-4e576ae6a6bmr104989291cf.10.1759761998335;
        Mon, 06 Oct 2025 07:46:38 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a4bdsm1164471066b.49.2025.10.06.07.46.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 07:46:37 -0700 (PDT)
Message-ID: <d1a5fe84-69bd-4e94-a92e-640f35c8d013@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 16:46:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-longcheer-l8910: Add
 touchscreen
To: Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
References: <20250919-msm8916-l8910-touchscreen-v1-1-c46e56ec0a3b@gerhold.net>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250919-msm8916-l8910-touchscreen-v1-1-c46e56ec0a3b@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FooIPmrq c=1 sm=1 tr=0 ts=68e3d64f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=j8Cu_9a8AAAA:8
 a=EUspDBNiAAAA:8 a=JOwjkeT_cYTZ497o5dcA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=A2jcf3dkIZPIRbEE90CI:22
X-Proofpoint-ORIG-GUID: pZeztF5yTt257_IcKuRckIEpv8UHwcoG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMiBTYWx0ZWRfX5Px6gC9yoiEY
 HTTEumzNFQg1hovqFosypQ0MGkWDGThYpGaGmwH066f5EIC0EgKr1j69ojTKczBraLlKtzLaXuk
 iJ74rY5fHtH30+lKzlnfExkc2RF6sfPTB98Bdj6IJyVF7bfd8x7WQLHMqK7z1UWOf/NsAZE0N71
 QFl0uoMHcxdCD1rzJVoRt1Se18w/qZcbjSUDMFbCLRaRVVq9OGzWIVpVmKd98HOV5eUPBRzkPAJ
 VXk/eSgbTp6i4M/02fGzLrJdVp1F5nS+f9E4sy9EPxqAjZHJrGBE5aHvImPqgOeCc1TfViw6p8i
 HHaCNDjaaeCbpERn8Wy0koyCUMkDUJwzjNqn+37uqKkG6SR/ND8yzGfBTh9KnFKB0ddsx1AWLvI
 ouoQxbhJ5W8+alWHwVWvYwuqS8hkKQ==
X-Proofpoint-GUID: pZeztF5yTt257_IcKuRckIEpv8UHwcoG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040022

On 9/19/25 4:49 PM, Stephan Gerhold wrote:
> From: Jonathan Albrieux <jonathan.albrieux@gmail.com>
> 
> The BQ Aquaris X5 (Longcheer L8910) has a Himax HX852x-ES touchscreen,
> which can now be described with the bindings recently added to linux-next.
> Add it to the device tree to allow using the touchscreen.
> 
> Signed-off-by: Jonathan Albrieux <jonathan.albrieux@gmail.com>
> Co-developed-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-184887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A11AD580F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 16:09:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 800C51671FA
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 14:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4456028B517;
	Wed, 11 Jun 2025 14:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S/radQfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4EE2882C5
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749650944; cv=none; b=mom6Rt5RIzdfyKbIBufMEmbk0pv92Mbw3pISQMuVRJkm7TGvkeApX1mWmL4kUDxQ6UfdKcl8dVub0aKTHB3lI9t4zjpla1ZfARFpXJZLH+q/PcAzYny8Jw4H/6tWqpLk3ZvxqhbV+toilTnR/6ESsF2qc+5oGztci0KQ6R4GBpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749650944; c=relaxed/simple;
	bh=8umeUY4xnAvrUdO79d9nFVuoRb0TW5UYKKfEdyqbmqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NPiTWRYAtndBKgcD8SLS1xP62KIBQWqEJ3Tn/UiDzPref1/094tEzh6MIEhRRhuxN5gGndtnFp3JcBAxseDgCFNuDaJNipegPN8Lf6JY+2s5sbDthfx+U/XLfoltKS21yxuiwSZalX89+wYxEvKF3MGEz8+v1+jJX1XWXHtq+gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S/radQfO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DNSS019848
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:09:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AmeztB2LHDf8SBdCFz8cnXw9fFkHuSmFpu3b1oz+irc=; b=S/radQfOA1lnYWMC
	umTVhVPTtpR/WYV3I7GbshcAF6+vvSO/5+HvxkoJ6UpnlyLpaVqlUvNfehxsTloP
	JIOqMpoYSMPCLi2CTRONkZUsbYp0bus0xN5WnDAO67wBlKDFkk7+a6iEgRsn0gqh
	ZEq684Z0zlMjyQpBjnLQn7foY+N1p1WovErPDYuiOmTqi4Lg2oMJbLgF4ogbgxYL
	Md7urulqHWZOixgJUq3EafRt03r5JK2KByQaCWl9oXWuByi+EZSCAe/kXYxAIu9/
	Hd4bklruTlMnevr4A2rlhuoVrMLRDnG7ymFHdKyG0OJkJoPRvBP3h6ZrtGFhSvDW
	FshRSQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474eqcn65q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 14:09:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d097083cc3so15296585a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:09:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749650940; x=1750255740;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AmeztB2LHDf8SBdCFz8cnXw9fFkHuSmFpu3b1oz+irc=;
        b=ZgpStacahItACGHDdPNAx0XeoPUa8e08Wkb/QLSh+OEsgSUHIkYcqZwTYVEE9Cblpv
         MFTH/bKVaAq3J7PoFhnS8Q1hxbeZThVrsngcFrC82rTTU3MXvCMCurnWVGghQUlkjpsS
         tbCzNikXVHYE27IDC2zWHrRChIcHsDqkkpI0kZ5JGreOCkcPOAIBWByGRuziqFLP8odb
         pQfZpYR7/YnRlf++4XkFYU60UWEbk9evpiYx8w2xPFmJOIGRs/jqXxNIFfZwTVUHkzT0
         HiOJ+F34QXuTz2/kzJN68xWPZfYlerng0rO+LHROeUHXgl/OgAL++uHAsP8J6ZePR6w4
         nICw==
X-Gm-Message-State: AOJu0YytTeSyU5aBhFqT9ted5TAp4C+xScakpeQ0HaqJ1c/gT5tyOgOy
	NOGSCmNvhNc+IcdEix2VGJ+JrYixK8cCj1ez8dTPCJBhoc/EeebsVRKhr7KH2aJ0CT3xxXqsci1
	Fp8S1j6O776SkRbSewklVCIXZJ3lsUhVZZzXY0VdAOZXIYJYwDLyTgD0zhUzXheg9
X-Gm-Gg: ASbGncssxUL0RlWMnHJQlvQ5kCOChV+oNJ5CIneP5jAMLPpbDF8FEm2FNoDJTks7Qhk
	AxpU7k46EG5CnteXRtpPeMozeTDpIxL+ocYe7GSKFoT5rZfIYmIp80NMJp4w9uU8auvs2RHFUqR
	20HcQ8+drGObeTCWdiaClqVHdSU5nnJEbn0/LnGJfXDM40sLLqkFOtFwVA1N1fWJxY+5FrrknJY
	pnF4TowCsa35UOn/Uxy2LLudHjwTOKUlK0qd9O3X4zti/Y5acyTeZqRaZHo+zhXRbEbjw0LahPA
	9L8/QqUKNV0m4KKYChdrXYlWchrVPMe0vZWv/6gC5of04nLadhaZQVjHsnqzyHLWxMhgiNCYijr
	xT+E=
X-Received: by 2002:a05:620a:2a04:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7d3a87bfb10mr197099785a.2.1749650940504;
        Wed, 11 Jun 2025 07:09:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9WowvqmmYPKWaY8pD6n8uaOQ+TKS/kPAXsLiaAzSif3KtKbjRfbYePG427VC/sE9AJip0tQ==
X-Received: by 2002:a05:620a:2a04:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7d3a87bfb10mr197097685a.2.1749650940051;
        Wed, 11 Jun 2025 07:09:00 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc76feesm892015366b.147.2025.06.11.07.08.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 07:08:59 -0700 (PDT)
Message-ID: <74b017c2-7144-4446-969c-8502fb2cb74b@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 16:08:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs615: Enable TSENS support for
 QCS615 SoC
To: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        daniel.lezcano@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <cover.1744955863.git.gkohli@qti.qualcomm.com>
 <1758b5c2d839d40a9cb1dd17c734f36c279ac81c.1744955863.git.gkohli@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1758b5c2d839d40a9cb1dd17c734f36c279ac81c.1744955863.git.gkohli@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDExOCBTYWx0ZWRfX19FSlKVd/9H7
 MUl6FkYfzGjQNMd97TcUYfPgVYVWVqv2UIk98ijvQW4X4dQkEw8uA07jqH7yMNAoiL3gI6yUNSF
 SIeQ1AY6VccgPRuwdaa94Nz30VoTjuJ837WwJS2pQ4e5zHJSFP3jLywsX20iYhiC/blWTijtjkD
 lwMDZlRhBUEKbWbklOvEdS1d7bMGiVoV1T9w3vdgcram1077X/XDZ/ahYnXIvhsRUrQBopfbpio
 DxCrZTwUbR+sHSklLC8OUdPGV3x+5Ad/h109F2/Ocy7zIh66fgU1PtWSxIpC3/yw3xHY2PlqLIR
 +pByFibwN2z1Veimvey+L8DopQ08Idn69YKRSbRqR72qaNpjLFrQOjjB/yXXxlIn2yxk0R9n8QX
 Rk2T9LAeu1oAh/dlBTT0yqXVqvGKmbta+fQkRMktaOTSIDpVxuYI8R4OIYkGSozOwO/3nQXL
X-Authority-Analysis: v=2.4 cv=Q7TS452a c=1 sm=1 tr=0 ts=68498dfd cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EH_knqGQgeMXXTF48UIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 0S6T-25l-Usgd0dQCphwwFinC4ivb9_B
X-Proofpoint-ORIG-GUID: 0S6T-25l-Usgd0dQCphwwFinC4ivb9_B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 spamscore=0 mlxlogscore=844
 bulkscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110118

On 6/11/25 8:37 AM, Gaurav Kohli wrote:
> Add TSENS and thermal devicetree node for QCS615 SoC.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> ---

[...]

> +	thermal-zones {
> +		aoss-thermal {
> +			thermal-sensors = <&tsens0 0>;
> +
> +			trips {
> +				trip-point0 {
> +					temperature = <110000>;
> +					hysteresis = <5000>;
> +					type = "passive";

All of the passive trip points you added that aren't bound to any
cooling devices should be critical instead (otherwise they're not
doing anything)

otherwise, looks good

Konrad


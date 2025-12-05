Return-Path: <devicetree+bounces-244632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E76CA74B4
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 12:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E6753072E00
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 11:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42FE332571C;
	Fri,  5 Dec 2025 11:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKRlriKn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bnCz+7ef"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC1525A2A4
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 11:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764932586; cv=none; b=GclGxcGG2IcwvQ0AEiyTCP0Q0VadobdzDgzVXv5/MjWnEOQkFyI4UxBXqxKunoa+WRZZkOYrC3kGivIus+g8l284PxOKxFPH0pRk847fc88Cbu2pJszaX9Y4YzBatEiejmEW0QczDDyZC5mN4TSnaX9ukwLrOdx7rWKmYEJ3EFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764932586; c=relaxed/simple;
	bh=7sm6Qzl4OK+Zsy2SYL09otIkmjweIWC1ipsA6O+5Uis=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s+hKguME8m6S+6OzQ8A6mZ2VqeBA6Hltn/ufWBpmOcsuw43ngm4q0V4+qxi7YmL410zvzudl0HnlvcHS97QuNJWn4f+otipzMohFyVwDVp9HRQDBEKEBan5wbThLMcWuVJI6hP18r2Qj/f4I7QZhNxTz1jzvKfNswqOxVVEZ8TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKRlriKn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bnCz+7ef; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B588dUt2406895
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 11:03:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8ou1J8OmhSXxOLkY0gJ0i3TxA/9j3AaJQmvgc+HaMXA=; b=WKRlriKnpmyptXOl
	wjY4DZagU1TvaJefdLOEKa3iZgpykfuATiQpV1y6m7N9cs5qgw0KGF+4jatMAldg
	/xVwSX2qoUDTSP4EYaRzKkxEmDANUDkWktFzvhDe8nG7i5VDI7f7XPco3msN+7HS
	1kfdtG5g3cN8gDst2EXk9ZDNJvyl6fQhg5AV7GKDRgrYqvLvGYJUU43DLdDrH2RH
	dcRPurZpKvuu9nXO+1a87Yf4/Jlfya+Q9Eox+n14+ypGhATgI2P9UkAsEleUGA2W
	AS1YGuRx3/oxxLB31PAeQnTX+nsHi4hSRg7aSx96xq75e1CXh1V8sXgMdYFKEAwu
	NDpiMw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auhtya0e1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 11:03:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88820c4d03aso5335836d6.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 03:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764932583; x=1765537383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ou1J8OmhSXxOLkY0gJ0i3TxA/9j3AaJQmvgc+HaMXA=;
        b=bnCz+7efna/bdiBpz60tlRqUjyrR+pBM49YeKz3UYiBUMihkhUVtarihgH0FsztpHg
         EWN4zeT3OpV4rtNVxx4YkbKj5aNKkKgKPcE6zy99k9yMSJ62iujX1+EO0sgWZ9Z00aMx
         Tg2mWOKf0XqL3TzKhirPZmrm58I2NHl4MWsXJQUyJHsNgRP1ONn6Ohupjg1YAkC93pZw
         BJBaXjVuyKRTjrkicOq9z0meFpuF5eaZq0rckjnd+M5/QyhPsaNC/1LifpPbjD8wos8K
         9Y+yFKQViHtr1ttEEu7HSQTpsNU6YtIq7WTu+qS8LI0v5SxnrHflq0eCrpqNezuuv3q1
         MuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764932583; x=1765537383;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ou1J8OmhSXxOLkY0gJ0i3TxA/9j3AaJQmvgc+HaMXA=;
        b=Nwa6YL+N4dhPSRuh4dmuzYdIWE52nAq3xLC4XmuNP57lFNfG75gRrNauVwGnlC9kxL
         tarWDyfIur9IgkWZz6KAidG+D8afBPLkCbFQU4iX5JHceX8DcTtX4NdYiTs2F5MjDeNO
         UXK8wDP9YKXi3wgOj2Lwu1Jj1rCbS+HV62TaCDbCnYhcipKcwx1T5KFa7EvctinEjVwG
         6UHyfBQEwM+tRkhhbdF4ORsMyaHjlGCj3wVR/1bokcD0SO9UMmsfqoKm/b1uXnVlk1oi
         sY4TEzkbi0B09JtuTdwjWnuhnDcK3vK2hExu6UelMyxZ2GI9U8iuE6BWVVeDGR4ozeKw
         LFnA==
X-Forwarded-Encrypted: i=1; AJvYcCUgWnqNw4WPul0JJu507tTrzC9i/AwsidjniP3pi7PbmH7mx5OaulfAlqOlrkuf8xBohiHUx3+ZLhtN@vger.kernel.org
X-Gm-Message-State: AOJu0YwihZuyqaf8i/9vbSx2bhW8Oq8+Y+or+RhfFqf6CvqSSrlTbmI7
	g0GPWPHVWP2VXRSrUMD4WjZYq0agY2RFRgJyGfPdCyYrH1WreCjKlrV92+4ggGvkIibX5HLvIV6
	wV7glDcnXh/DgVlRXYQUyPMDo0JoeYUOgdEKgcg6c4YER+21SKWbCgryBr3gpjIGB
X-Gm-Gg: ASbGnctMxNCF//3PEENhKnSr7fWh34lUCYn7yYUnprFeXq2xB/RN56INrwNXoSh6YWz
	UrNHFjAuwp5LctlABOcs+3xFPtLcuggYoHTGtpUd5jpO+knqLhspCHUj377agnRZ3nGjuxH/vi4
	Bw50dxl7QXcCU9YaTAQ0g2Vw9ip6waTgxjv71tsE42ZukghMHG8C/BzrAuuHtrJNRqlY0fG0OM5
	9TahtPxqxgdU32qQuxBjIPaB5cXmNst5OxOaQzos+4lrixQ0c74DR87RB8UdOzJ2xVTI11QtEZp
	iYTvgkG7QQMvR4+0sc8lZlvOD0+gVripqt7LfZG2k85DoAmVowLkTP4cob3zzfvOu5rjFWGEzR4
	ZXRoOOXCvMTOPxJ6wHn/XGWAPrCf9eFmQiIzrHynkLd1xP17tJZELNjH6qVLmKb52sA==
X-Received: by 2002:a05:620a:4102:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8b5f950602bmr938551485a.8.1764932582444;
        Fri, 05 Dec 2025 03:03:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXACovmnj7h+3fz+cfp5hKQZd4PH+ptjhYG+CwoTgpXwak7aPDC+heIVa7ZHZWtdZc0MzByw==
X-Received: by 2002:a05:620a:4102:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8b5f950602bmr938546085a.8.1764932581959;
        Fri, 05 Dec 2025 03:03:01 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412e2d8sm3547240a12.34.2025.12.05.03.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 03:03:01 -0800 (PST)
Message-ID: <a83341e7-6dd0-4d58-8416-63e2c797a491@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 12:02:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: Add dts for Medion SPRCHRGD 14
 S1
To: Georg Gottleuber <ggo@tuxedocomputers.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ettore Chimenti <ettore.chimenti@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
        stephan.gerhold@linaro.org, wse@tuxedocomputers.com, cs@tuxedo.de
References: <20251204155212.230058-1-ggo@tuxedocomputers.com>
 <20251204155212.230058-6-ggo@tuxedocomputers.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204155212.230058-6-ggo@tuxedocomputers.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA4MSBTYWx0ZWRfX1fuF8c1Qy8Jy
 6P+gVotLRVJlGi76EbF84FQ5rBUcAy0rZAayDPn7M8cZZmcuGaUKeQY9vhRc4RauoDwS5UcLKsn
 93SWs9jGQgDvxJx3oAGhe8PAwceZ0929LdtmtUac7V7shMmJltYFAAYBapN9nnOhyGfdvMpKvuR
 qF4Not8+9Tj/K6OGfqqLxve+Rx6BhmWVM4aQp6rRj7KLtUJNU17K1Ml0sN/K562uTO/Tb8Mxab5
 PLOGF+3d+6l8g6h6IC0CcKWIpOtbqomyp/vrq7ihKcMXvSYro/A0uBdLY9oh6Yz/eUveyrFUo9o
 KyUDzS+ypZO2Py4Z2cXdhHAq2OBlApn/4hvX239qozo/B87cy8L3eHqggw1kQCEPWX1oaFf14Kx
 Zb3Qp8aoHrIH0o5kLsTs5eyBnyGCZA==
X-Proofpoint-ORIG-GUID: vvt9KtGYQuxp9Kd-6Ph5P2XgLV0SqvW8
X-Authority-Analysis: v=2.4 cv=DplbOW/+ c=1 sm=1 tr=0 ts=6932bbe7 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mVys4owkHv7G2Y6XTNkA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: vvt9KtGYQuxp9Kd-6Ph5P2XgLV0SqvW8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050081

On 12/4/25 4:52 PM, Georg Gottleuber wrote:
> Initial support for the Medion SPRCHRGD 14 S1, which is based on the
> Qualcomm Snapdragon X Elite SoC (X1E78100).
> 
> Working:
> * Touchpad
> * Keyboard
> * eDP
> * NVMe
> * USB Type-C port
> * USB-C DP altmode
> * HDMI-A port
> * WiFi
> * Bluetooth
> * GPU
> * Video decoding
> * USB Type-A
> * Audio, speakers, microphones
>         - 4x speakers.
>         - 2x dmic
>         - headset
> * Camera
> * Fingerprint reader

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


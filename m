Return-Path: <devicetree+bounces-242774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FE2C8E8C3
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:45:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6CB244E974C
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA78C28751D;
	Thu, 27 Nov 2025 13:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kkGUGSGG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I37/4jB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E87724DCE2
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764251011; cv=none; b=dAFlvnmJzlgR8RGV617j2Iwij7NA9AByg5hBGxgLms5R/iZzNhIkM04Up/WL/HLxqMcJtoku6Zv0dM9pKYj+n2MRGBQ3KpvGvYbSctCfVdoJFIRrBve96m98H6XpiNFSChVYNpFqkrz/lOxyGhRsM8V3fM++2+TxWvqn46C8kj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764251011; c=relaxed/simple;
	bh=XC3PcKyN6lE+xY7TGg6f8KwAd2G6p4h/XFdpBuFhxX4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OHk0jcfNoK38hrjehoWg8M1SkeJ9/nyk34skZQSZ5MfqZDtdQBgIr9tuGqTlB4CzqGGelGAaHJAF4iuhgt64ieaU0YNvI36tbivIoJEtnoK9JMItGywiaCuA/LSx5AMt8HkzNzpz84QkawvdXujBt2JEGQ0r+Q7SGOLbHMdgvh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kkGUGSGG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I37/4jB/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR9bMWx785511
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EN5LMTtLX0rr8Dqvylr0yX611kKTGrG6FHULOeZJCrk=; b=kkGUGSGGLIRHpDM7
	LJgCYiGcJt006p1I3/DKMYTNgQH5eJ6pHlt5bpdr/fdYqapap5gPSQiGXg5o+k40
	7eCZ5P+3VjKmamEkg8tqqS2RYYg1oC2zmlZlbEr84MNEu460bB9o20qhq3/3DkQO
	BOpepZy+9bVEoRHH9Us2ZoEX12goFqY1qR7BiRL8cmd8q89818REKlb89e7L/L7M
	2/nm+cLP4R85bJH68/kmHYbl8eaS5BN2i8SvqxqkXsRCsm9XMZTMMlDf7rKzUdJx
	rLk/5Gj8GRKIfVav6yhwUyX6U2TYK6BllOfYNM2MemOwhhUDXRTKkPwTQOJsYTB5
	Rm3BiQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apm61rm7f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:43:29 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edace8bc76so1289581cf.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764251009; x=1764855809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EN5LMTtLX0rr8Dqvylr0yX611kKTGrG6FHULOeZJCrk=;
        b=I37/4jB/jThIkoWjZQc+iZ7M6zq0pK2Ye+aQvUk4e7ORJIBP9ZDxrj5H/kJsBDlHZX
         q5Sob4yDcBDsgJm+REpo+4tDv/ZpOMqfe3Vw+F4br1n/lCiTe4xB8RtcFUm4b3egch2w
         ewMYJXeofKWYEBGa0BqUwrQudYAWk9yS7aayKyBDClWLUY5dZYDQB1SBVQCNxMEsz2tY
         dfTa5v2rDqiGWS4pQkeqlswWgd2M5vZCth4aFEz/PxKeYmRAp3kgP1QxLUttExOkmoEY
         n2jYXjJhzDBe/LLTKcJDT4uRqyPA6IbXWz5WBd8CAHRUt6DVzgWZ4/fJ++ZA5YYfU7E0
         FAfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764251009; x=1764855809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EN5LMTtLX0rr8Dqvylr0yX611kKTGrG6FHULOeZJCrk=;
        b=bHXHt9Q4ijXXdTlyFNGcwJeGIABBfVu7azJl9u78wg89KhvIxfwBhojTFEUDNayx0W
         ZLMMmIhyF5ulgw2Qcil1TnVJFDLoAC2p0Ou0BUj57au/BpO+C7ii0CGk8zVuY8JfT0Gx
         J6NotXb7G+CGAccTctDhvH7kJX0JvY49+YzFIkBhAZxz4mXygw9dbnEZ4aWg4UDDW7We
         0SjsHCgXFvRE60MwED4uI4RCJdHx4aup/grqc3dJlqB/qVtIbXIvAeTKuUZR2YIFtB/c
         AEJkkvvT96bBfraOuGPxKPffGIrCPq4EHA2lijLxnuV0nJfrg1vARyoYLy1az56sg5Dm
         u/Wg==
X-Forwarded-Encrypted: i=1; AJvYcCUzEnTPOl2soIskEBN6hS5eQs454HWcXCRL7vx1YSf7c/UWYIge9k5QxnZTIFYs2IUNfvSqNf7Rf9++@vger.kernel.org
X-Gm-Message-State: AOJu0YyJkr6auUOUOtSEc0TIKpJH9PhIGOs5je/Pe273lkwsbcVZtqfP
	TD2AVKQp/SkjXc9OD7iXZtzvydUT9I4brqlwKth0W0KuGWvE/BrIEjWvHrxQWyvRaxu+SdJ3Mjf
	XuxSzWKH4jpNhTBb0gNcnxZUlh9+reVUuU9cdvl0DUQzvznB5bttXnYp8aWvy7TiA
X-Gm-Gg: ASbGncv7hcPQj54eddx2KzjGntpJXCa/mBP2kgYBoR5cZdGl6WgpC6UCkkpkysyvtMe
	EMgk5+gZyqHW26DPUlzw+bg1HDQ+01Jd0qXERQWqdcJeMgOcI3FL2lbV6kF4KRonsIx3JBvrO7z
	e6uTJERMckSl3LTl1lsg0lv0LO/khiB/qVGCOhfts0fraeDz168U/4Olsy8F26IIiAW/+6mBY9s
	CdqHga7c1mZz/cCt8JWfDg+0wcLE7bj8g6LUZGQJ6oBSFLSpUYH4kvaeJb7YaryOenorciYbfUd
	X0Fyf64MPfDJQuqq6NPC2XLAkab5ETnCyiwIx0OL8JYt0fq2owTGX2RbdQNudc8pj29UztO7Azp
	pW+nigjrDY6CF/iv85D+QGov9V4kh1A8sQrlm14VsX6e1Ao/kV3YRAvtnRK4rNniGFYU=
X-Received: by 2002:a05:622a:1803:b0:4ee:1815:18cc with SMTP id d75a77b69052e-4ee5b4068a3mr227427591cf.0.1764251008655;
        Thu, 27 Nov 2025 05:43:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHq/jUkcBGrGYZq0In5AtZVzbzI+9SdutRA1QIGeDHezVh4kKBWEs2AnuRgQ6E27j0Czio4og==
X-Received: by 2002:a05:622a:1803:b0:4ee:1815:18cc with SMTP id d75a77b69052e-4ee5b4068a3mr227427391cf.0.1764251008194;
        Thu, 27 Nov 2025 05:43:28 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751062709sm1595947a12.35.2025.11.27.05.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 05:43:27 -0800 (PST)
Message-ID: <0ba15c78-2a12-4fc8-9620-11aa2b6c8d28@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 14:43:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8450: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <20251126012043.3764567-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251126012043.3764567-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -kb-oQFdhY6ZXIwnxpvwR2Q2V5SGeQdf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDEwMSBTYWx0ZWRfXwOy0dDmzIWBV
 ZXgnteHAw3OodjASvJL9D8wXXHnH9Qu0/O2HYwZwTO1SEyy5s1GO1G3z6n5rg6ieO/mGXwtXlR8
 rIewAzFtZ0Ko8jv8hmo0e+ODHHIwcsT3/KQ6sFGl5aMYnLRe9I6mv6n1NsTF6JJf2twI5ZwhJ2h
 wmXqvhD/CNpXJUihHQDw5P27sSRbZUQid9aBMWUSZEh+6veJmFG/uhgunqbAahk9TlDYICHB6ju
 0tLlgpO5iy8PprH0qHTuDEoMb3VZcw57uYnsNn0hCmugALxZ+/PdXPFiksC4UHf7W3V0Z4tdaVN
 IvYVPJr5zDmJOxm79t69BsQrh1VXmIhSIv41cRrXBocGs4e0scMS89lCC83NIsOGkV7j921QNik
 qgOO+u0nhgsvA3hBYO0QF7rS7ISc8Q==
X-Proofpoint-ORIG-GUID: -kb-oQFdhY6ZXIwnxpvwR2Q2V5SGeQdf
X-Authority-Analysis: v=2.4 cv=IciKmGqa c=1 sm=1 tr=0 ts=69285581 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cAEWcgKeei3UT0ZJEeAA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511270101

On 11/26/25 2:20 AM, Vladimir Zapolskiy wrote:
> The reported problem of some non-working UHS-I speed modes on SM8450
> originates in commit 0a631a36f724 ("arm64: dts: qcom: Add device tree
> for Sony Xperia 1 IV"), and then it was spread to all SM8450 powered
> platforms by commit 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable
> SDHCI SDR104/SDR50 on all boards").
> 
> The tests show that the rootcause of the problem was related to an
> overclocking of SD cards, and it's fixed later on by commit a27ac3806b0a
> ("clk: qcom: gcc-sm8450: Use floor ops for SDCC RCGs").
> 
> Since then both SDR50 and SDR104 speed modes are working fine on SM8450,
> tested on SM8450-HDK:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


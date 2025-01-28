Return-Path: <devicetree+bounces-141383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3D4A20958
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E1B33A6486
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87E51A00ED;
	Tue, 28 Jan 2025 11:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A8zQu5Tt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D1819F103
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738062823; cv=none; b=RIzoQ6+Ciz398bHYZMJRs+OikXrgTC+Yye4UfC9yDwp1ri0t+4yYtgV+C2jsoou5rqx2a+CgQKVMfv/0zRWkV06Zxzr1PSdm+TJugR5vTsjrgNWb37SOkAYKdJBv8rrddz/sDDzEJ4rzBO+sJqkJ0gnDItFalih6uqoWpX+vLaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738062823; c=relaxed/simple;
	bh=VhMH2nygLaTG7mc/nW//k6R9Kfgy0BdrogZyfC03hPM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e/Vt+rYEocdh932U+5FTgXfmQqN5Uq4kZ63UsVu6/0QkC84J1No1oeEowCbu0YDVUxsKkv27wOWSBNEw4nHocNcdUXf80S2n53sN3SPta6CRHv7F9RQvZCnn4A8Fe46Tl+dC9y0iXI/xlpbPAlixbr2B562radSmLSQnrfV0g1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A8zQu5Tt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SAVZWK027049
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:13:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DF4cChWUCVUfCwvnacvCOrX60QCJzf28MqWHnByY88E=; b=A8zQu5TtMCn6TfmQ
	wnVhTiTE+5JkVeV/UPhTR7IvX7/hYP2auLIeYUe6akEr9f1oLEwsoMvAN6Y9TI3g
	6O+/LxfrMH8gfUb17BraQR1rYSdPxFDc+/jfRjoGzmkAFTbNGz7lpbU0o70OV/an
	pWrK6JbXQF2xjNACP5G3DcWDY4cAI63BvMVFof0dmFSkhU7ulXHpJNXgoPoYaVn9
	uusgP3fdIwXqtIwhZdCPxKCTphopWr6fa4tpmIqAvktaA9V6/jSoD73iDf9DT9OG
	DfPTuBLCSVM0iEOycarLHphnuJyvwvDObd2WTgqTQdaBT4W67PNI6LPDKVoQZBo1
	MV+7yA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ekb899g6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:13:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6f134dac1so140657885a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 03:13:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738062819; x=1738667619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DF4cChWUCVUfCwvnacvCOrX60QCJzf28MqWHnByY88E=;
        b=mn+qRXSwtiIcK8OqeogWJqMw03yeVWfz5/HOMW9TIlSpO2FpCjT8rfTrtl+5gMpYAI
         oMr3zMgz9aZGyP2+cJdleUw4C0B0hoQ/lNshhbEpTXToTBTpB28xKk8QbwG16s/kSk+E
         sm5qE5YyhXAaGIBfnwpMY7WpV7Q2/+H+QvhTOBjawm87SEj6Yr5fA4iKv5DA25mKB1hh
         4Eeok8s1dVYgOSz2r8sl98t03yz7gx0GDXVLwMtKMVWPFCng6KCrrRgonS8BFSxQiYmf
         NWTyM7n2PqE2mIdaoIs5UxMOPOrOA7fxN3Dz8zqBr8nh2V+sUgV9lyYzsl4KaSgW8ePb
         ySCg==
X-Forwarded-Encrypted: i=1; AJvYcCXJVCKSu/TLu6+/UmSQXb/N6aSeZiGmE9hDh2FITgWU8D6jeQiCvBD3lymr8i6kqLaDNcn3EKTNcSp1@vger.kernel.org
X-Gm-Message-State: AOJu0YwQLWcXZbq9kohJZKA1jdlBQmJ0eIKrgsvE5ozZBMNzPRVwDPKP
	WNmLig6ws1GZMdvldzusVyKldHNJMbLzd+IEbj357LYrOSLQrREp55FqrM4o3Z/s4C4mUE8pwt9
	r577PkGFHiR3ZwW2sNoggLHK/miGZOo+dYScifvqQEZKhbzo43Lra8HdrHvZq
X-Gm-Gg: ASbGnctXtOhGT2trIRLa0Y8OSOeo/zxuJbejkCCI84Kjh9qHArxMnTPhexH+hhnHmSY
	lSYP4eVK8tlZei3N8536snOXZpcHyflEHtHPZZcPixeOpobKDUHmOOZtHKZ/ay0JbN+nyc1ZAtu
	2wCKhpdnu/HmZnGSuxrq/gTfqRrVDi/OHIOc4M45aug6cqj6ED3P10duvGPT48On4cQhX9DRO9E
	6yWj7d63af4LXRaGONX950/Xf4qTNef/HkeAgm3VxFitg/946qXbSG9K0WZOFSRAVb3Gu+ipi2U
	/cSH/hc6/4xpVXzRUAjIMB4gLRCtk6nGdTrhQlcYBlPpFuDvuDTFVUEltvY=
X-Received: by 2002:a05:620a:43a4:b0:7b6:dc4e:44a5 with SMTP id af79cd13be357-7be8b2eb172mr1598262085a.5.1738062819170;
        Tue, 28 Jan 2025 03:13:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJ1h7uf+LMhsXH4VhM6mHS1CLjA6Tpc20KWyM0RAcBNkCaIf1DJHDqGaYa5IelQE34WvcvZA==
X-Received: by 2002:a05:620a:43a4:b0:7b6:dc4e:44a5 with SMTP id af79cd13be357-7be8b2eb172mr1598259585a.5.1738062818767;
        Tue, 28 Jan 2025 03:13:38 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc1863af41sm7222946a12.44.2025.01.28.03.13.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 03:13:37 -0800 (PST)
Message-ID: <f3dd3500-d07c-4231-a0df-cb4812ee0bca@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 12:13:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/13] ARM: dts: qcom: Introduce dtsi for LTE-capable
 MSM8926
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250127-msm8226-modem-v3-0-67e968787eef@lucaweiss.eu>
 <20250127-msm8226-modem-v3-11-67e968787eef@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250127-msm8226-modem-v3-11-67e968787eef@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Tyoh_5NFPByFzJIF9Z-1elscDT2dEn2N
X-Proofpoint-ORIG-GUID: Tyoh_5NFPByFzJIF9Z-1elscDT2dEn2N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501280086

On 27.01.2025 11:45 PM, Luca Weiss wrote:
> MSM8926, while being 'just' an LTE-capable variant of MSM8226, the dts
> needs to slightly change since the modem doesn't use the ext-bhs-reg and
> needs mss-supply, therefore it gets a new compatible.
> 
> Since we already have two -common.dtsi files which are used on both
> APQ8026/MSM8226 and MSM8926 devices, change the setup a bit by removing
> the SoC include from those and requiring the device dts to pick the
> correct one.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


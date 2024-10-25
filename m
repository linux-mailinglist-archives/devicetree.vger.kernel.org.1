Return-Path: <devicetree+bounces-115851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEA19B0D9C
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 20:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BE141C229E3
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6853120BB32;
	Fri, 25 Oct 2024 18:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kx8P3c1w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E4F1B982E
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729881791; cv=none; b=dhENM4GmyMtkCIcfXARGFPIz99s7gHDu2hGXR/z99lbaeZQF+GESZD2tWI7Vk9DrF861gNhmOs9xgIiuAnxfQuAxhHcsvoP/Y+LIMhRavzMABRd+Km7NgmT+85/4oMgu52I5YwDThWWjiG3sxUF11YXxbuMMXaxmFSnKDOoRIRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729881791; c=relaxed/simple;
	bh=sXpVGo1H7dGGXwCO8hvCponjq9q0Fo312durYrLhaJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dX+gYIHwM0KfRKiNWGyIMBfp2sgQCrc1Cw0ArmC94kdS9xCBbHEapUgXxfXW0P43NBYO+mxF6430ZIYfet58Hj3bClEu2gtUSglBOWD2fx/NyJ28dKv8eGBY31FibejGUTetZCYw5gckp4EcfcCiMjpg6/cYodCXJywJuItd8B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kx8P3c1w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PBjVGB009516
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:43:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CftwoMsXWNDvdSWjKSB8oIIniikESu+F6kHXU+lmiTE=; b=kx8P3c1wxhhCFCeU
	0VCAPF+87wcNkF5nuNJT7QZ4sBx8FPeCU4Y2W/BkjzWdC6NtwzngCeBriCRqc1CF
	Uz4zB6lflWm0y2NpNLkRkC3aAhlzSg2lpbro/z5lGQhImCnzn3HhSYe/w0h6a9dt
	G4Hv6mwy6I2FYMK+jfzcYB9gGQ0xh85N57QV08bknX7p+En9ilFX9zBQRx3yyuF8
	NucwgyMUOFvmAVGaJ7P4+uWz1tnxqntxYVADZr7FRMntJDaYx3dKvVy6ZRMlSoq+
	qPWa9iW66tJ9UcAdmA8HPFXtDnkcPWdHOundEgF90m8l9AAQPVkF3X5kbynngTCK
	SQThgQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em43j3ru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:43:08 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-20ca43be4d4so2892315ad.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729881766; x=1730486566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CftwoMsXWNDvdSWjKSB8oIIniikESu+F6kHXU+lmiTE=;
        b=uWSw2iuXkgYYldo73WqAUxXNBlTMcBxHANW/7j/9ab0lGvfYPPuzFtuKmvjMlVMhaa
         8TeoRD/2XwXwSiISRsqXqUkMI0S2UqNBD6gMafDAokeaXshfdj8c9ydUs54xEpjmY8N8
         9RGquI2b/FFSaHOcddmZaHFNu5VihQIVRhYl/dQaZcmj54vXMg17BEFb7WHt68H96n9x
         MFqkenzfSH4G9hRZXp6EM0yVl+Km8p77MmuUm+8sI96XhYpCoA7TUTVj2ohrrhvnUJHs
         LHWycW/6WEguKdju4LP3hceGgc/qs88tBQKURPsujid5PuTT/6+C4kCDdCOcXTLOz/+J
         D7zg==
X-Forwarded-Encrypted: i=1; AJvYcCUjY4lYZA67ZWjTXjEjYjYmpIIwVw8J9GRyo456zGmor4AQjx5YIJMiZHZyo1OaNopuqhPTxSyQ1K6l@vger.kernel.org
X-Gm-Message-State: AOJu0YwkVQvs4CqmIJU6AAKC2Uh9Sa5hJ0CLBanhjW85Z3bs0skhQx/E
	QaF9mVwrmRdWTSRKc5bygUETuSk5sp7tizzpNoSoAF7kLJ5bNJOS0X82F9ncslejgHbK16DzKc8
	yWqu6QVxdriEJYr1/mo12b9SWFfs6/X2832AbPUcTThWMFQG5fElRgqb4ozu4
X-Received: by 2002:a17:903:244b:b0:20c:a97d:cc6d with SMTP id d9443c01a7336-210c6d2da27mr402825ad.14.1729881766643;
        Fri, 25 Oct 2024 11:42:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWkKLr4ZwAHpej1ExoPooP2vHAOpOPuW/UAfIFlsj7x1W8eddwvRzMSNmaPvr3Dqx1X2lzAw==
X-Received: by 2002:a17:903:244b:b0:20c:a97d:cc6d with SMTP id d9443c01a7336-210c6d2da27mr402635ad.14.1729881766328;
        Fri, 25 Oct 2024 11:42:46 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b3a08a70fsm96210266b.224.2024.10.25.11.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:42:45 -0700 (PDT)
Message-ID: <9e0f200b-53dd-4dbf-8b0d-1a2f576d3e3f@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 20:42:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: sa8775p: Add support for clock
 controllers
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_imrashai@quicinc.com,
        quic_jkona@quicinc.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ajit Pandey <quic_ajipan@quicinc.com>
References: <20241025-sa8775p-mm-v4-resend-patches-v6-0-329a2cac09ae@quicinc.com>
 <20241025-sa8775p-mm-v4-resend-patches-v6-2-329a2cac09ae@quicinc.com>
 <e810ab3d-a225-4c85-a755-3aa18c311cc5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e810ab3d-a225-4c85-a755-3aa18c311cc5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VrTryY2DbJkZtkVuxYGn_mestR8pXmnS
X-Proofpoint-ORIG-GUID: VrTryY2DbJkZtkVuxYGn_mestR8pXmnS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=648 spamscore=0 malwarescore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250143

On 25.10.2024 8:42 PM, Konrad Dybcio wrote:
> On 25.10.2024 10:52 AM, Taniya Das wrote:
>> Add support for video, camera, display0 and display1 clock controllers
>> on SA8775P. The dispcc1 will be enabled based on board requirements.

Actually, why would that be? CCF should park it gracefully with
unused cleanup

Konrad

>>
>> Reviewed-by: Jagadeesh Kona <quic_jkona@quicinc.com>
>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


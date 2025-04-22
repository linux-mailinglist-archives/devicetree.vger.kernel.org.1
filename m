Return-Path: <devicetree+bounces-169642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1582BA97B68
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4492917917F
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36EAF21C9E1;
	Tue, 22 Apr 2025 23:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZC8qoxc7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7B121ADCC
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745366134; cv=none; b=pXE5eO+eeV1ZHTE4oXSiWWSvJG+HgpMQBHpl9hVd+XUh2i1yL5OKy7ygNUcR8S4O+arncmCr3JEFH5DEEtqObLFyi/GMrvCjMBAPCtJHbHc8NruXfxD9Mw72IL3Ie9pPq6NjCiUp6a0i23R/cBzaUDGC8YT4rsrBpuyF/qzJ58U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745366134; c=relaxed/simple;
	bh=1uXwF1nWfvBIYeAK4gSOok5hMVJKS76PKakAup+bCLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G+DHZZzMueIpT3lPN8h+sQSoFtGeXVmO9z7fGR0h/BSj7z6+aJgQswBQQ1Ohgccfzd2NGTb+UCsvIdRSwMa84KUIjeJVDmtqYHtZX4J2/S4APFEaH4hTcld3/3plRPOg7zvVho8HbGLm/o3WjfFW9gCwYLQKNNcqsmOApXl7/08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZC8qoxc7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53MKpG9w026348
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:55:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4SibCIoJLPofORnNhgtOkaJm+Ip5k/Pjt+gz3fvgMRA=; b=ZC8qoxc7CQdP2CNZ
	gjEvDtH4JxQAupCMm8zmFo0A9OnDxqQcN9EQhmxlNjq18u8eyl+1FLs9JVM2tTnW
	1Ed5xjXSFE11Hee/kETgt/S+iE+HKbjv7y4C0AF8fnPf0cHPaNxBhDiVOMUZZXOR
	YdN6sJAm5Ar3H2hNPXztuj6BCd52JFYdZXZP4pS/+mTG9cNtuyrVHVUCum7f5Fgm
	4qLouDg3BhBDzZycpLRgEIxHv/b7lpHAAR1gjJdhTEwzujwyP1JIDLJ8+C9KXAil
	/RnX/8LAIKXK+zVr4nXBEbw6XmQrd3w+IiaOcb8fAhiR9dhaX+oc1vyCt4UZy0VG
	JuU/cg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh00afh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:55:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476695e930bso10114021cf.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745366130; x=1745970930;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4SibCIoJLPofORnNhgtOkaJm+Ip5k/Pjt+gz3fvgMRA=;
        b=q0qHHWB4/2zbJOqjGPanpNXTw+ho0bAKtr1rhdaCBXimuCEGwJrC7fypCpryXOoA0v
         e8kdVQP2UH2JUlAfzBiwR3uc9MR7Qv8XrbaeCob0hzYfOS9ytnjm34Lrlx9SaS2FOPRg
         O/GYRJ2eHqXCB6q/d3qPZCpxQcko3X0ZrvMBdtA0DVI2JzLrde8pen6nSwOA96QbEBsl
         Op9bXlqQE+P+ZUNnSvzy6h0K9thk9ZfJRG9VgSLd31oQB7Q0Z4WhAO1HqpbS0YKH3f4I
         PT2aYxnrUuWVdscgxg5SogzTOBaGIBJ0qe+cj8W3IgW+CH0amGv6Aep6LQK2KG4hhbXu
         uOhg==
X-Forwarded-Encrypted: i=1; AJvYcCVCViQ0AZS56KvzEfUwHReo5jKM95+N4e92UlX9khsVbPO4qKsqJMvecDVO2uc9njixHzEyz1xldHSI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0lxPSJyWpxrvS2rsjPtTXQMFk+n5XN/EHGeeGJyTfztB9yMNt
	OiNVbszJsElZcxvjM3H+4H5ukkj7UV0rCp4m048SHhx96PHN3x1Rg0P+OBTebCrz4rfTqIX/yfV
	iRG1DXwe4ayikxCdXxiNKnqiWWKGS7zit/2/f3A/tkH0nBSsm/kzO4U5qutbr
X-Gm-Gg: ASbGnctpe/FTzn5anNTdjkyqkPqSnc7CkFGZk0ikFiijn9mPZgG0HAUrXakEVv63Hf2
	lV1yrpCa9S7UpKazWunZWbM/D3EdPXNYQs9K/1/cMxj+K3/gdC8i1vwu0xMlfASz4xf4OM3dS9n
	NVyUwAPlTIIZo4fq96VqdcMxmrPZFPN7QezsraVe5ncgEV15Fqmco1a7vRM4g72jWZP08dFtaeB
	gxMQ5AAPx0VsjO3chMkbtprPW8rCEmlshAcygmbk4EJ4mpAMtdciMeFwv7/LeArW1gII05UBolm
	CMNQ6f4hOS7xjnxL2+ETGVh9fjYkJ01+RFBctgaKli/9xfhUIqAFX1EZsKzw5vtjIrw=
X-Received: by 2002:ac8:7dc5:0:b0:471:ea1a:d9e with SMTP id d75a77b69052e-47d1d9cd5cfmr5273001cf.12.1745366130609;
        Tue, 22 Apr 2025 16:55:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGR8WOuTeaBqmC8HY7gKGm3GRXoWCrCxlpeSTPYTgdFKgYeceHJhp2S7nDIq6tfwkx7ivcQ5Q==
X-Received: by 2002:ac8:7dc5:0:b0:471:ea1a:d9e with SMTP id d75a77b69052e-47d1d9cd5cfmr5272961cf.12.1745366130332;
        Tue, 22 Apr 2025 16:55:30 -0700 (PDT)
Received: from [192.168.65.141] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6258342fbsm6701884a12.49.2025.04.22.16.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 16:55:29 -0700 (PDT)
Message-ID: <8c0c0740-3f75-47dd-8f11-c03fbf8b1583@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 01:55:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Add support for Sony Xperia Z Ultra (togari)
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Kevin Widjaja <kevin.widjaja21@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250419-togari-v1-0-45840c677364@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250419-togari-v1-0-45840c677364@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIyMDE3OSBTYWx0ZWRfX8cbEROdxn590 wm1znQ3YwdfnGIZyL829wIlpRDuaAOdo/Cpks03zdQDeyYnkDRGmmwqAXBxYtiVqDe6xR2vy0jy 8wZd07jpeXH/vcJ5IUFo2js6kiQk+L+LYgHvmNFnOf5O2mTeX5P8AjKgAZ2y32inkLA/uBE2w9N
 lklDe9hwXfvXTXYYbDye2r0VbI6AxXtFxgZC6+s8kAuxYQzRLWeoPsCbbCqTETvX3D3Wl7TbGP1 xTYlQnspd7LfBFcUmETytVgbRff8TQNt9AdnHXGROWVAPez9VGAeQWtUWiZnyjN4e86IzEOp3V6 SvLB6MxwAxc3XB3ByOGxTlHdKqh/WZjrNt1XTZ00vkwvX5hod4PbMHz+IR4VNrt1Yt/Sxh0koeG
 4VD/euxqFeCnWKm+dndLinurFr4W+w61vRYDec0FzSLudHDDXaV4/aeeVfaF664nKzQmk+eC
X-Proofpoint-GUID: 05oqPet7TTo5xIwgEKK8hC_hAnDCHXWr
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=68082c73 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=dlmhaOwlAAAA:8 a=Kb3nHg1V0brCK_6dO4AA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: 05oqPet7TTo5xIwgEKK8hC_hAnDCHXWr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-22_11,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=984 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504220179

On 4/19/25 11:00 AM, Luca Weiss wrote:
> Do some tweaks to the common file for the devices in the 'rhine' family
> of Sony devices, and add a dts for togari.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

I don't really know for sure, but maybe this driver could be suitable
for its touchscreen

drivers/input/touchscreen/atmel_mxt_ts.c

Konrad


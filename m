Return-Path: <devicetree+bounces-134769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E749FE76F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 16:06:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 462251628A8
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48B021AA792;
	Mon, 30 Dec 2024 15:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nnyF1cUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C891AAA23
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735571189; cv=none; b=DqLDa77i4wNY776qvwzIOQZHL4h9cZoBhJ9Wcf/Qpc81Ru57qM/oKeSyb5pFYGKu+yMqS/4jtR8V7egDkE4gJtAsWEN/h+LONUTy4PO5qvOyL3PJ/0BUldza5MuIFC5Te0hTHnyv52npKyWhb5XXMv1h/CkMP0K1V1nqZ3cDuGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735571189; c=relaxed/simple;
	bh=nN1W85zwDq/ShkqSI0U4OdnKxr9P9jD8Z+riWcYYDVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IjvoaeqeLIg8OPTnJbf7NB3kVkwTvCFBhtEGS+iLPLDS1XL/hSLNdTZzVvqwLV26GH6h7YIIn8nXMCO/jUd4t2+gADWGnhSVg1tPz0yE+XP3MyWcIF9t0+F/TUNZLQCCPQgMegFXZgD4FU6ETuIhWOXmix4lapKcxbF98AgtGSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nnyF1cUI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BUBxoTh024406
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:06:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uysLAB4kIbOi62HACEt8X95euE254gr1EcZr73msbi8=; b=nnyF1cUI+dAMaILh
	iGdy87BuisoCaiWsOVB6I87ZJMCXqSt4UyzDdytbqB+8XafSQg1WyhnJtb0MZreh
	ac3NnBCZm9LOW1iNk/70VM3Ma2kkC17quuh4BDfKOyWQQ5xfQohBa7RzCJhWcRgm
	/W2DRpML3l57OVUwmMSIhI2Bfl5M58F8di17FmoOTAUOD/TfmA9RMHacyupmsTzz
	3zxKc8CAVS7GN8NYrxbocZtR82v7+CVdwNh417DSLmsmyy3DwyXxRTeiMPvnbi1o
	8Bx1uZn5a7/jLdUX3C/ZwjQrNPTLOq9xQL8LAC8ofdLoVKwLqXXM7uRy3dTvKErm
	yQRXyQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43uu4srce2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:06:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6e5c3a933so130260785a.3
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 07:06:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735571180; x=1736175980;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uysLAB4kIbOi62HACEt8X95euE254gr1EcZr73msbi8=;
        b=I03epvYFfBzqIj5BNfrclHwPtWXgWDYj1+wh5w6HdjojDP1f8lQwm+KI0OI3kPwk3M
         kBeETGY/VO/elLwgnf0kbtzXPLWoItF+vUynTrtE8DzIu/1FGWnBrWhOf3NYRHzXqVNS
         BGzHtk+An9iP1OmAUgPFjf5FLAdQSvFJGAA1PWC4VniiAOnS1esV1dzQv32x+2OQNldM
         AxQM2wk6HDs+hCYhLAAtppWGe9AntHfUkPmgMjv59SC2rLipT0jld//fTaZGAZuX31b9
         1fk2+zI8Xa3c567fQaqRPvf9b3RXbnVa6dP1Nrxh2MwAb32FcSYCxUco3IvnDUmMr6mg
         O5PA==
X-Forwarded-Encrypted: i=1; AJvYcCXiiGnR181PJ+Z6FF8HHhsfx5v8KAWy7janVMZ+ODwCIESSAZvQmGguulV1WewvzGd4Wjy37WLGD7vQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwU4+7wqp0n883x1Q7qJpI7ygPPBd+SaMS+6jTg3FWG2QvM7aYs
	YP9Agnapg8GDk1KsjRwr1NSOSTQ7fnLbDT0AEXntwuPHJbI2InfxNIpwqPXClrV7DISinnOtsT5
	wUoyovT+/PNXkSyYYnnm+XO5PYKa85omY1cjyuk0DTkdIFQrm0nghcEoqSQAc
X-Gm-Gg: ASbGncuPNunmvmlaI7y+S+5Z99ftZcpW87iBpgiP/7pYQauyxyLSrRZCDXHVTyuoJ1m
	Y2ZLK0gqbz2EYb2oBOui7QvizqOQe6gggrnFDFp4NPuU4l7ObXyncTuVe+9yrmY6jB1q53hrAdn
	PfU9xFG4dUB2+BhptM0tYkf/w/cCOj5vyWhpu2Ql0RbkiFf906cPpztiWKvfWvfZomj/zv28cfz
	pmeQGTQShWnKvdPeg5/KvCarnRgNZEBwSQU4hdAi1d59G3wX+/bmHZ5S7YBJjrBMGXzT7ymsk6c
	Kgo/Y1BdIwg2dXCMxJJLVfDIPeDaZey1SyA=
X-Received: by 2002:a05:620a:8806:b0:7a9:bd93:ac0e with SMTP id af79cd13be357-7b9ba757033mr2202889785a.8.1735571179822;
        Mon, 30 Dec 2024 07:06:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQa8kYJJdyOArVpHbym2A4jB7jAdPnezroVmJ0WtNlVtB3JleiUGwiEV/ej6VnyJpOsZf1Yg==
X-Received: by 2002:a05:620a:8806:b0:7a9:bd93:ac0e with SMTP id af79cd13be357-7b9ba757033mr2202887585a.8.1735571179405;
        Mon, 30 Dec 2024 07:06:19 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80678c8dbsm14771746a12.40.2024.12.30.07.06.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 07:06:18 -0800 (PST)
Message-ID: <ec69f87d-1161-420d-bca9-d3314a3a1a23@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 16:06:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: ipq5332-rdp441: Enable PCIe phys
 and controllers
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241226102432.3193366-1-quic_varada@quicinc.com>
 <20241226102432.3193366-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241226102432.3193366-6-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: e-Y4Gd6RTvwS697Sjx8inHxcDsQSPIyI
X-Proofpoint-GUID: e-Y4Gd6RTvwS697Sjx8inHxcDsQSPIyI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 adultscore=0 phishscore=0 malwarescore=0 mlxscore=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=630 impostorscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412300131

On 26.12.2024 11:24 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 441.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


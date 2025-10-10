Return-Path: <devicetree+bounces-225458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37134BCE3F1
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 20:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DD8B400545
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 18:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4415E2FDC49;
	Fri, 10 Oct 2025 18:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WRLRSjuw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E762FF154
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760120950; cv=none; b=I2Ljbey0n+wVtjs/XWDyMlfQaaErixrEFVxdxTQW1OsTvOz0nHLY6y5gpJEzMjprihYL7ijqWdVcmNHITSZHTtVOyXpA8eguSDO49v5I+UH1AzEnFffjTdDGDDFQT1QZX5JC4RFedgkQ7/luc20Hx7Q48tC5m+LL6TDU3NIqnRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760120950; c=relaxed/simple;
	bh=DDGFgNcpRXXs5drDknCOk7ZT+jZa1tJMMOq5dszvroo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IAD1cPOP/8PZditvXK8RYq5J0LVQKOjGb9xruB6W2rQDOSxAgYo35FkmLCfoBED10+9XK5v8qPGUSc0KzsXesZxuwdjl2uSZPc0uE53g3Aq17QwFEaCk+rjcjdwMD81GiR5Lwb8hgDWGydhfHe88OGJNc7stZ3qaijPxkpV+cI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WRLRSjuw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59AF4lET006189
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:28:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dMas5ueTnfbR6ogwJDvGtBET5Zhd3Y1zcYOGGYAo7eA=; b=WRLRSjuwy/30kckx
	lUlmPjjISE+Oc+T53aXKK8yjijNhLGKAdhrajBwPqIcZrrPhzM7aMXm5F4p6DdDc
	UDl29/ajikFx0MESr89fC1/HeWYCv6fi7RSKTI1kUuag4TVql0CwY7D3X3dPjuP4
	WYAYUitFYyFVHg3Ru4uEiSwlDHYXogiyyohbO/eQdJYWFaueDnAkF2NiRpcV0QZf
	qke9TQsrjZOm9dguouFN5ZE63ATbNl+HH0yYBepSwzKuES+rDWsucSlVUEp6xsoz
	/x6VJeRizTjasHjaOK7fHHF/G1j9xbCC+IKAW7LqT6qPrFsS8dWYUSyLzEg0Ixwu
	lVv9yg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sqc3p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:28:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-860fe46b4easo111874385a.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 11:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760120937; x=1760725737;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dMas5ueTnfbR6ogwJDvGtBET5Zhd3Y1zcYOGGYAo7eA=;
        b=tephCTBrAMDn61/T0yqHnJMke2g/ezad0RBMhggJ+za+yu9qesmclp88pvmIrS6Mrx
         6bqRluvCGKj4SAwTWEdYWsBA7q3HKN8viCjLUkeSupbr8XzrFGcMEt/q+sf74X0OHLkP
         ajRFTNAHPiq0Zp1PvuTt+Fdl4x+76wtsWuv9Au/6UpG7bAKvbmWUABaOBQCQDzNR1CiH
         cpmhvOndyQkS+dbpKWfvJ/v7eIi5wrDHYmg/I+NN7X/AZSc586raVjoWIGdy5wyxXiPx
         9DDabSy69f4psqJsF9EZx6oq8i8OSmM0zsszJX4kg58AU9puRN+U6SOqnacOnFDWZMf4
         +Ong==
X-Forwarded-Encrypted: i=1; AJvYcCViXD+5BPCc6UOfegW6uI1oB1w/0dhmFrqYyePKe/eQ8RimSgsEpebzgLvQJm2WWnm1MqPBPPfO4Qh9@vger.kernel.org
X-Gm-Message-State: AOJu0YxdOknfRTUqjiz/RfNIu885UhLhHbCxYXGumPhEvwpYRyWs/b87
	cWwHwc3td0OqS0J8o+tQWJ0pvyz+mcNAprCtnYiR/bpc7xTuD/9uFV4kLyf9APwVR4OU+0btzt5
	XywcDEB7QK67MsCwRazPnk9fZHrmNLIESFgAa9IiDX9Qd/F+sL4u/ayfp2LteZbYpbPKQD7wm
X-Gm-Gg: ASbGncut40KtPyFUuAiTRIRQFU4Bz8JLFAgn4bghoEQEldEhUSQmzJ8sTDo5pCn3zSX
	tYMf0A0f6IbuHpEeImxPZlOMW6YLGe6Wjfy84d7ysPLXY30t1rnrEGZL0urklrIQDas5jozHjup
	YKk2TXviN+JuawZD+MutjHpGJs9vmXhphoFy/17fQjvV+tAXKNH2pEqg+9wRPXYvNPeooyfqzDQ
	1kXgKUc8MkI19zCw9d7A3NIZkRPl29i3hXBqsainzP4CpGbGjYfp0eZDlZCixd0E60acCObnKIa
	z0zW8nnKylUsQjLz3q48g+aN6/729XSIpbms6S+7b//0OPq2Ld1x9gVDE2UQe+QJNoeOEzkPBQk
	MpLPj6cdNDagm6YZmSKsFfQ==
X-Received: by 2002:a05:620a:4609:b0:86a:3188:bb40 with SMTP id af79cd13be357-88353e1de97mr1201123885a.8.1760120937390;
        Fri, 10 Oct 2025 11:28:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHH4ijfK86so2oQgbaGVcntvQ4Ssr8eaS2Emg+YzBaOfN0x1ZloTX9mbEdoCPNs8davYPPQ1A==
X-Received: by 2002:a05:620a:4609:b0:86a:3188:bb40 with SMTP id af79cd13be357-88353e1de97mr1201119785a.8.1760120936880;
        Fri, 10 Oct 2025 11:28:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c133f58sm2911251a12.30.2025.10.10.11.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 11:28:56 -0700 (PDT)
Message-ID: <896b58cd-9a13-4b7e-bf62-e062728d3e53@oss.qualcomm.com>
Date: Fri, 10 Oct 2025 20:28:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: PCI: qcom: Enforce check for PHY, PERST#
 and WAKE# properties
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251010-pci-binding-v1-0-947c004b5699@oss.qualcomm.com>
 <20251010-pci-binding-v1-2-947c004b5699@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251010-pci-binding-v1-2-947c004b5699@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ErZjXzvF30aALXPD2Rj8uLSEDREWVndA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9VtE/YsZvpVk
 zdWTog86j68zmi6qm7PghUinvKsalAIpkChbzj1gJdcFWhsWkMb8aicTudCMsUgGiU1t70ZIbSy
 H/wm7evQQZwzsJv2rSRrPBoa0yTChCUt/OTtKkquJJUGiJWOSk9eKm6baTamGN56RjiUD3hDAOn
 r2MInIwBV9hQ/jqIzp1fh3QcN2rjKewHwnGLVXc6EXAOYWjNf7SuQAs3AFeP9GpZrdZnzOY5uWa
 RqTJ3q/5iGREBgIS7sxXaRnU2EeXR5rVKtTjUX4ifTHKSTFZCTcMsi29/a8BcZ28A7aLIrvPpux
 WqFA+OWYoD9knPMxEDw8icFIIQb+w/DHVZ8lBoP9P2bBs0ljHkRUKqAxaaT7Kk+1BJ9zZpAMrj3
 Nn/DoszrJKg8Sg14cnw3l8golaivTw==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e9506a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=pqiSj10MyONZ7g7U9k0A:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: ErZjXzvF30aALXPD2Rj8uLSEDREWVndA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/10/25 8:25 PM, Manivannan Sadhasivam wrote:
> Currently, the binding supports specifying the PHY, PERST#, WAKE#
> properties in two ways:
> 
> 1. Controller node (deprecated)
> 	- phys
> 	- perst-gpios
> 	- wake-gpios
> 
> 2. Root Port node
> 	- phys
> 	- reset-gpios
> 	- wake-gpios
> 
> But there is no check to make sure that the both variants are not mixed.
> For instance, if the Controller node specifies 'phys', 'reset-gpios',
> 'wake-gpios' or if the Root Port node specifies 'phys', 'perst-gpios',
> 'wake-gpios', then the driver will fail as reported. Hence, enforce the
> check in the binding to catch these issues.
> 
> It is also possible that DTs could have 'phys' property in Controller node
> and 'reset-gpios/wake-gpios' properties in the Root Port node. It will also
> be a problem, but it is not possible to catch these cross-node issues in
> the binding.
> 
> Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Closes: https://lore.kernel.org/linux-pci/8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> ---

I would also like to add

Reported-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Since he originally made me aware of this issue

Konrad


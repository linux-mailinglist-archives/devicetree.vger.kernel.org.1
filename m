Return-Path: <devicetree+bounces-157265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F617A5F866
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65F4A19C4B0C
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 14:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F3E26A0F1;
	Thu, 13 Mar 2025 14:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ju7BUlzC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D000D26A0DA
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741876243; cv=none; b=mstRgA1M3HjJ4hxLzR0K4HuIsnjadCNVHAi1JzjBn5a40oYJ58zjSpTvAv4WRSbXbodql1DMFNoQaxS/UIcnQ/yADOH+0nr1D+GVfSbSLpQ2ydM2Br23bfx+o3fIIVsp8MliGZmJsfNYPSxZSqIE9up5ABfe2upvQtg9eGZ4Luk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741876243; c=relaxed/simple;
	bh=kzt33hJsTa85KuEVyT53fPaWcVDArcEY6RG1XvTBeAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dtixm2nvP8AhP2Ug2Rfx7lKosvWm/yd1I7M6ap5HOJhNJoViux4kcb1Gm+x77q3Rsbb8UT2NezTXBF6csZfO2rphkStD/SuirsRq8ST8FaFnnSlOk0KRBSJzVDukh4HQayJMonnbUdNXXUzpyTFVrep15+DrVxc7v6HZUEsdBzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ju7BUlzC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52D7C85B019732
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:30:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JHUDmC4PTSFYAcWgaACKX1N5/pWQOKndXgV5ZuGvDLc=; b=ju7BUlzCln+YLfMy
	kdWXxUplQuGwkchYliq91VG/zEC2L20ojpqBGdIC36R6pUF3od3KUsdXY5vyKDSj
	QtDeTHqzqpAh7/qyWGnMbPnUyg9iYvIL9KVT5njNA4IVHul4nuR0vGEHDrMYnIIM
	WdoqiHIIjl/Yrv1iYl5CWZAlF//x1PmnAC2WX8n6ZHHvE6qQ2/meMkZ7rjeW83Gh
	mybOs+DSAlmlOjbMVxoloQoGO5V7OJgAmTMzD25rVCkyIzvlXur9Jdw8qX73mDY9
	64i6WXRPuuNeeprpab06KNhC4TWIeYh74ebIhTRLYoXhLz1D7KsHMxcZbDfRESNG
	TccUjg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45bts0h77g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:30:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f3c21043so3130136d6.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 07:30:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741876240; x=1742481040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JHUDmC4PTSFYAcWgaACKX1N5/pWQOKndXgV5ZuGvDLc=;
        b=fEaCg8s+RX6+62S8/BH8cZzYTu1beT54WhlfP8guI8LrsDuqnsR5E3MTOWnS4bu6sh
         kvESHn0/OIu1t03MGCoGipVv9+Nmr6Znh315yeVwp6UvMgFwBeVZ8AFOORKZsRm6uR6I
         xOrnJDuqGVMLFoIvNsamfqOzjDVY/2Y7mZvSGA5Gerd8Hj68mFBcwjXBPROm/4ieazrs
         A9klrjAftac6+0NSkQdUnHu51HZFGHNhi6+J3LhpJ2VJRedEZhK4XmOFz0RPa263pNr5
         /KWXDxqsJ/odljtQickQ3kJ0ootKbzoiMo4NtUgHzIZ86UrppikQOXxbK+0xWtLmMIZ3
         3/qQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+YF4ZyqvZTgJQSsDFf02umQTEZ+RuTmJdp4vvEUzC7OEhP8+sjup7bSfzRY0ppJZYA6TU0IvnBt2E@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+u+yMdi+3NZcrJjtxEUq8ZKO7UTPU5h4M/skNXJaY1aTu7bYU
	2GvJL+0sBu6WfYPv86EYRwcI929enmmYUpzB4yXEy7WCP7ImFAE5Zzs+gZXgwjaCcoNT2X3a/G6
	4l6bNyzA6LEIh4hcYijpQykH9B8jd2TdptwZ4T+2NI0sWoVBqj7qkWY3W3tov
X-Gm-Gg: ASbGncvfcg1IitR4YyXDTAiuoRg57HL7tV4mESU9LKOKaVF/eY8ZeQ9bZlhMAw8PlMf
	q3bgWXI+rs13hhyB52TKTkxvaXeXXfbFDL/8k7fh7Mi1az75TJk1w+b8i6EU8h8xwRE4xDk4V3M
	EmAHRd0dKdHT+OnWhNjEirV/LOia0vi0w7a2Rw++CJaRkGuRvwKLYQwirFrjU3V2A3r3gINi1up
	DP+wfVRYIna8k3f8iexp+mOM2kmOryLfTpA9cUIdJw52IYntbbCR9ol32q8Vp6Z93MpVB4Vw+Nv
	pc1vf5bkLEmIkxdwyWZbaX5XYTVkfek+nce8OR1F5Fw77QBup4hZR2L0qsdNfUUors3NTA==
X-Received: by 2002:a05:620a:40d1:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7c56fee175emr285586085a.3.1741876239696;
        Thu, 13 Mar 2025 07:30:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGew7PamKyiAcrPgUIZlCIP2W0SkL4/r8o51tM8nCHDl5YMpcw4o7WNySRMHlagbq/nm3aG7w==
X-Received: by 2002:a05:620a:40d1:b0:7c5:6fee:1634 with SMTP id af79cd13be357-7c56fee175emr285583085a.3.1741876239273;
        Thu, 13 Mar 2025 07:30:39 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149cf25csm85386166b.113.2025.03.13.07.30.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 07:30:38 -0700 (PDT)
Message-ID: <07957f72-ce7e-41f7-8ea8-5839a33f04a3@oss.qualcomm.com>
Date: Thu, 13 Mar 2025 15:30:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] Enable QPIC BAM and QPIC NAND support for SDX75
To: Kaushal Kumar <quic_kaushalk@quicinc.com>, vkoul@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, andersson@kernel.org,
        konradybcio@kernel.org, agross@kernel.org
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org
References: <20250313130918.4238-1-quic_kaushalk@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250313130918.4238-1-quic_kaushalk@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CJumTpTHVwqwVr4reBrWPuN8jDmXB5yO
X-Authority-Analysis: v=2.4 cv=DNSP4zNb c=1 sm=1 tr=0 ts=67d2ec10 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=puiEX6dKtv1lSrn3j0sA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: CJumTpTHVwqwVr4reBrWPuN8jDmXB5yO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-13_06,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 malwarescore=0 mlxlogscore=715
 priorityscore=1501 mlxscore=0 spamscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503130113

On 3/13/25 2:09 PM, Kaushal Kumar wrote:
> Hello,
> 
> This series adds and enables devicetree nodes for QPIC BAM
> and QPIC NAND for Qualcomm SDX75 platform.
> 
> This patch series depends on the below patches:
> https://lore.kernel.org/linux-spi/20250310120906.1577292-5-quic_mdalam@quicinc.com/T/
> 
> Kaushal Kumar (6):
>   dt-bindings: mtd: qcom,nandc: Document the SDX75 NAND
>   dt-bindings: dma: qcom,bam: Document dma-coherent property
>   ARM: dts: qcom: sdx75: Add QPIC BAM support
>   ARM: dts: qcom: sdx75: Add QPIC NAND support
>   ARM: dts: qcom: sdx75-idp: Enable QPIC BAM support
>   ARM: dts: qcom: sdx75-idp: Enable QPIC NAND support

subjects: sdx75 is arm64 and the prefix in that dir is:

arm64: dts: qcom: <soc/board>: foo

Konrad


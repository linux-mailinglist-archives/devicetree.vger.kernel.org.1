Return-Path: <devicetree+bounces-216333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 418ADB54612
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EA091C26D9E
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1FB26E70E;
	Fri, 12 Sep 2025 08:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jetTKFEE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176F91853
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757667371; cv=none; b=NgJjrlMMOOsmBMORFFzgRcOqQn3DcDQNP+pusVFGC1Sd/bpRAH7dOrVS68k3eHeoiiGh8Btc5j/6P5nTZl0l11vAqeb3xIGhRM58kQlDkH+fsYoMxQsqWdVXsOetrCsdjz24YpU5QbEDC2IKTHMfQAUtqs/r6VHFTcYCc39uS8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757667371; c=relaxed/simple;
	bh=Hw+jWTOnPa5ZB05R1aBQnEOz4XeAn49O3zb5xmvLtoo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UsG/ckEXPiff/hGsbikYZq0bwu5xg5ieAw2jN+2duF/On7P2yzTy7aUzs8/EqJi8np3ImDiEF44SUmXlbq0F3FW5jF9FQAse6o/GzOUr3OURyKuaEPY2oui+Zv0LZA1Fn4IMd6K8Oj3CBV4Z5Oow1GMeTq3UJm+cBAqWK77vziA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jetTKFEE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C69kI3002423
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:56:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mLpUpRSzu5WwkQPIakVTd9F3SFHqAib21JyOWgJz3GI=; b=jetTKFEED/iGK08x
	OLCF6Rzc9gEuXc4ylMAmmBtykxKYpjnWjlh/lnkWDCfoS2rF7ohT1pcDdp3D+ER6
	z3N+48f8srtAfXlTAcASHvBH4HTpJ9BcuS2NvbKpC/NVkiS4xHIXxyFKBbxSitut
	FoSkI0XDOiUhrUf5LPy80pb38a7koPIWMFvEwrqgzfEuJYqyMctzsgUUV15ez/NS
	jM/JdilFD0vuqOvcCUPdMDQP+OuIAn5QQtr9vUt7ZrJ0hJxJ9MwoN3kSjMxdxIqw
	fNMr4xw+zluF3R35fNtjjCfQ7fqCglbMbPiMUm78G98+j2uwnBOTibGyvR1MexKV
	3DFXjA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8tybc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:56:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b604c02383so7922501cf.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:56:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757667368; x=1758272168;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mLpUpRSzu5WwkQPIakVTd9F3SFHqAib21JyOWgJz3GI=;
        b=r6816tRJRjarw+G7w17jerrRB/vDpbaE+TcajBCBKm0eHgPq6ZBI9myX67oiHPSF5p
         lBr7QtpDfFEzyUA0EHmB7gZcCB3e8UcR4iquLGF7qL95WbkJS/oJYfVhQ919KM3APGPe
         ps58u+McE8pgIM77d63f7j5kbNyigJin45+8tsclTY5z1B35WjXR/cDPlqaj9EKHEim7
         xCk00vp5VvGu+KOpOufoC+ICiMi0v1kuK/w+v2YiaODu7c5tPgQu/hz9nlL5SGdzoEJc
         WWe2BNU6/gjwTOKJy4rDF/8zo1qeLpeC+OZY76Sy/5hns8fbzG61NnS0QC/3z3W46GJC
         8sDw==
X-Forwarded-Encrypted: i=1; AJvYcCUVV0ZrI/POGeSj85qGx8ULrimK7819oR1bMYni0P5dp9rrPUE9ePMNwmEoeURVJxa6FRKpMBEbip8l@vger.kernel.org
X-Gm-Message-State: AOJu0YwtFJRT5feVoSY/Ttzeb6IPcDl8rvsfCx2R9+TaqqRnBsh/Yb6y
	olby2yCk9ZC8hCnCh0RdmhJUloQ0HvFbtZuIFyBoz/zSEXRZtvtATCLs2xDmB6L/zODQ2Mfxh2L
	uxr52lDbMqJCoU8edjrFotkQmEZnfTjz/0EuMgVlM2aqi6VBrlPUjGl0CPwAFfqNawj6fs2sN
X-Gm-Gg: ASbGncs8TxKOgG57lURU+j+PGuvv+zS6GmaQOmC3eT0xhEhM0YqnygQmG/7HdGcZmuM
	uxCkrQHinATJODQxSTvc85jjgp9WjLEg60yxZ/uFhzBSRex1M+J8SjmDikiG8UGxsK1veVvnPVW
	n2hAWdAPS+YXznFeywMudJeiG+eOLj2Cz9vCblfnF+3IqajbtEloco0kkL1tTk4kyQ54rI9jecd
	LWnOvUhbwVQx8Sj+Il41qwmebyMf3pw9qhCBoLF/BLeLeh5wPVFxdteFvp7vTLvF+jrpemp/sXK
	B3I4ZQAtfr1KGM1CDz5iTuyIZdOMLw8Zhvfd56qpYRxt2IABbjLPNgJ+I3yV5tva5JQ20CJxwwL
	irr4UW2RPGgjM6BRt/xfgZw==
X-Received: by 2002:a05:6214:224c:b0:70d:da58:446a with SMTP id 6a1803df08f44-767ba2773f5mr18025506d6.2.1757667367960;
        Fri, 12 Sep 2025 01:56:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmyfereoE1eQ0kPbehRY6j+qV0N12MtpHVBAp6lLccgcRMNmVw9DpRMAkIZbmd5hcu6cTwQw==
X-Received: by 2002:a05:6214:224c:b0:70d:da58:446a with SMTP id 6a1803df08f44-767ba2773f5mr18025376d6.2.1757667367299;
        Fri, 12 Sep 2025 01:56:07 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62eed9aec1asm54813a12.3.2025.09.12.01.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 01:56:06 -0700 (PDT)
Message-ID: <56b5bacc-7214-41aa-b969-4f622afcd9f9@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 10:56:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
To: Xilin Wu <sophon@radxa.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250912-radxa-dragon-q6a-v1-0-8ccdbf9cd19b@radxa.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250912-radxa-dragon-q6a-v1-0-8ccdbf9cd19b@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX4374jYkWZlgv
 qyOj7K0cuFJyjXd4oOUvF3+CZr90pP+szlOLr2+/Lh75WK2XBRViJYSb90vqJ2zhmuHkQIvfYFm
 Q5Oh8urPnP6l17KVU5afgYRV9QckpjRT43yZXQDspVdQcZIH4fGTxVAJnSmWhJrvEN5jIT8wj85
 Vz2uMs00rb+w8Kp8OK4h7eQZ49da2NJiXy4C63ClxAuGS3yFMspAAiDIQyfyNeIp7UkKGoOl1BC
 ASTPnjd4ZR56jyU7Ie9fxNNgMFlPpaMULoR9i5aw8hpZvQUglyaP8NytdHlKCpOO9FEraDjis1a
 6Qd6ExnMWkWVcQHI4zVHy6Z1uY7PfgJ9tE4NNi3Dew4M+R8MPILdzZ0gWhOhfMb1iz3sHS1PmM1
 o18sV1iu
X-Proofpoint-ORIG-GUID: 8Zn9OKADhCto4hHR6pU5q9mdn_HqsosF
X-Proofpoint-GUID: 8Zn9OKADhCto4hHR6pU5q9mdn_HqsosF
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c3e029 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=ksxQWNrZAAAA:8 a=-GE0gMS6kJAlqz36ZuEA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On 9/12/25 10:03 AM, Xilin Wu wrote:
> Radxa Dragon Q6A (https://docs.radxa.com/en/dragon/q6a) is a single board
> computer, based on the Qualcomm QCS6490 platform.
> 
> The board ships with a modified version of the Qualcomm Linux boot
> firmware, which is stored on the onboard SPI NOR flash. This allows
> booting standard EFI-based bootloaders from SD/eMMC/USB/UFS/NVMe. It
> supports replaceable UFS 3.1/eMMC modules for easy user upgrades.
> 
> The board schematic is available at [1].
> 
> Features enabled and working:
> 
> - USB-A 3.0 port (depends on [2])
> - Three USB-A 2.0 ports
> - RTL8111K Ethernet connected to PCIe0
> - UFS 3.1 module (depends on [3])
> - eMMC module
> - SD card
> - M.2 M-Key 2230 PCIe 3.0 x2
> - HDMI 2.0 port including audio (depends on [2])
> - Configurable I2C/SPI/UART from 40-Pin GPIO (depends on [4])
> - Headphone jack
> - Onboard thermal sensors
> - QSPI controller for updating boot firmware
> - ADSP remoteproc (Type-C and charging features disabled in firmware)
> - CDSP remoteproc (for AI applications using QNN)
> - Venus video encode and decode accelerator

You have a number of features that depend on several other series, and
as Krzysztof pointed out this is difficult to merge/review.. Could you
please create a "linux-next/master-ready" version of this series and
separate the changes for which the dependencies are unmet, putting them
at the end? This way we can take at least some of your diff.

If you still want review on them, you can also send them as [PATCH DNM]
or so

Konrad


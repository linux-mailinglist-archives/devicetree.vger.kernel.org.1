Return-Path: <devicetree+bounces-170558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29035A9B50C
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 19:13:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC5DE9201C3
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 17:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A29B28BAB6;
	Thu, 24 Apr 2025 17:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AA9O/wDP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDEC28BAA0
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 17:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745514791; cv=none; b=COO4jGiZ24fqC3wtb+3l14eQr8AZlLeqQacizv8bpv+x4tswxTA/J1jUKfy7I8/MuPfz60gzg9OIwZyNzZoRsxWLnk7g1YF1hi2XH6aSgtgYWTt4LIb3UvXoc1KH0plLvyR+RPdOHcr1iCXJmRXTTL8thGLHJSxJLArMouW6yEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745514791; c=relaxed/simple;
	bh=JQE3mBdHEHFMQzAYutq8p3AN1+1LsUeaQd7+qm3qC5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aOIM2OtGCzUWkyU5h8JH8It0Lv/lOiXujW0KGP+ZcB36PhkN2r35goNPuNKGAmir2yZIMy+E2MTF/V2V28Ux/GUioLU8wcOw0T1SW+O6C9TVZLadSXGpED7vxA7rSaQCibz5BQaxhcht1eqXH1gOaQeBkGgRyC5h6E+50WQToHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AA9O/wDP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OC3HFJ004059
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 17:13:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQE3mBdHEHFMQzAYutq8p3AN1+1LsUeaQd7+qm3qC5g=; b=AA9O/wDPa+nYPvVI
	R4eEslFYfvLM1An7w3T8bZ2pTX0nBASwy5MwVVj/ZIIKaap1xf9/E/v72dJuPRTR
	Sp9cJAALFzkQOOkV5rK+7fibzQU6Y8qid9x22TpViRoVywQHtGWu8lhfBkZ8xTl0
	1ya2vrJ2FnWNnATs4a3fwLtbXL0GBCedyd4Ot6orEGPQzIa510z8ktjSywE1imU2
	NObbwy9H/BQT41Y6TvVdPX3kM8ATat3sSEFEdj1TqBb0OUmixgnEsAyCDqwLvP88
	zRq3wBSX26DpJkxJAGdaxxqTlWQeeOI0lgyFGa0qKu/NiIvxqH6bL7o/Vu89YopT
	pS35bw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy6c4f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 17:13:09 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-736c0306242so1411327b3a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:13:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745514788; x=1746119588;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQE3mBdHEHFMQzAYutq8p3AN1+1LsUeaQd7+qm3qC5g=;
        b=iL7WMgUIDl2O8JdKtFUe96TC3fCsPUxdSdsPv9gydn0KniUfrrTjLcZOp010/JXfnt
         HXS4YLWv8LYbJ5p8wwPe2UJGG0jiCnwmf+LCyfsVJqXp0UQeTolmJYQRtlYo6T3eywjs
         GIgZ+Bbo4OPebmSeZtnQ7v0xVSBnso1G4iRYMAHv6VS/2sHrd0Te4sepbGQBpXzQxJ1S
         bnwxO2tofqI0oUDiaTdDA3+q0i/Urlh7rtegSU0q7SqQbVI5hmudzO1+05e4nRJ2fVcS
         zCiQsLf+Bt+FUj3rx91mdMct8AnYXz/ZGsju9e0+LJyg1A6LYSkmo4EOqfnwtw/z6xzl
         kEYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKRFQu1x8wY9YXO1uJqgn7n+jfekspkkRvu3/51iTBzKnOSV+vKW0GZsUlI5hKcptorV70423KoBTf@vger.kernel.org
X-Gm-Message-State: AOJu0YzDOoJycGjvM0FgxG+csBucIIw/aBxuS0O9PFNq7OKyQG5N1Llt
	GMzg3FFNrKRE6nJlBUTENe18rfi0w8bdRkWsdKTHEHJJmIW2eIOjQ6ixTAM+YYMOu9U669nhHun
	0A8S9FUoMSYa3v1S/5Fr6D5TE2K85341InjtSw8tPul3M+yCxrTCwAUH9rnwF
X-Gm-Gg: ASbGncv/hmnHPbE9IoICPWVYbcyzMsPiRdaZ4clyygqc4ge1zxKoNNx9HW/Fzsdq/kF
	9Imjndv9x2VhDlY+WzYZqHZp6gwql4ZLW2sOO6VMBSY957LzA38U96SZbnp/rDsAkvsUs2OYQva
	YtREsoDz/ukZjrRQQxYUuvVMWSHogB51uEeZbLqvpi3EJY+pOxE9iTajD0XqD6dHKlgrCOpmeLS
	XZhirj7CYTnfMqFOzorS5l7xLClBfMBMezXYUSkgJZPiVoRUYwUvLIh3aputSciy2RPC5H3pV78
	3vaYMFGW0qRU8XoXiAg2Zja2oSaAcjRpQ6T0BR1ZN7QRtnT6S/QwBBib7+zmQVQ2LOA=
X-Received: by 2002:a05:6a21:6814:b0:204:4573:d856 with SMTP id adf61e73a8af0-2045658d414mr151667637.4.1745514787718;
        Thu, 24 Apr 2025 10:13:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBh6UbSZ7iBiPgDos14/2qpkdyV9G45BXz0sSqA0pmze/jGYg7FVG3UwSnpX6n3qo0KD+Oxg==
X-Received: by 2002:a05:6a21:6814:b0:204:4573:d856 with SMTP id adf61e73a8af0-2045658d414mr151627637.4.1745514787332;
        Thu, 24 Apr 2025 10:13:07 -0700 (PDT)
Received: from [10.71.109.146] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b15fadec8c0sm1502146a12.68.2025.04.24.10.13.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 10:13:06 -0700 (PDT)
Message-ID: <575d63e7-f390-46ef-8687-30112849b442@oss.qualcomm.com>
Date: Thu, 24 Apr 2025 10:13:05 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/10] arm64: defconfig: Add M31 eUSB2 PHY config
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-10-25c79ed01d02@oss.qualcomm.com>
 <2d01bcd6-80e1-4c15-ab23-b5ea5b90f2b1@kernel.org>
Content-Language: en-US
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
In-Reply-To: <2d01bcd6-80e1-4c15-ab23-b5ea5b90f2b1@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDExOCBTYWx0ZWRfX38jx9fVh4a5F 74cOyiJn6q0kZXTDMLAiOlb25NJTkELy+22x1eFgGQdksXUnWtI5HbF2xHRiNxGifuvKTL51jLY NF1ZtXku2iceD4coQC1Oojq+RxeMkTPEDNyy3VJdbfEu2Fz1B5K8ZdYr0nVFUq4+A0BIjI8tari
 b14CDBdUbdGDi24f6cVMRQPaXy/YZpoasRjoeWGXKWdVKs2fA7S3ByBf1YFjY3Fk0iWE2W8Ywf5 GlJXkbNQqVdXGx1dfawQurQZlY/5CsdXg7Al1cVq4YEb1z13qTwAKDY1gF2vGSMlwIK8dkPJU8T qQieB2cyBLgRJ3DXUi8gSGfgRGtiw6KeSTzaTvpf5Cfta2hfopt6fWfaOEQUmUzuzyTr+CiZGpp
 3CSPesvkRLInJzfsXJxTc69tGofPzSLtUGHLpe4le0ySyK/I9BA7FBbuHV8Sd8B0rEn4t8yB
X-Proofpoint-GUID: wm0gMifWKYwoU-_bpxR4T7wPyHw9aD-z
X-Proofpoint-ORIG-GUID: wm0gMifWKYwoU-_bpxR4T7wPyHw9aD-z
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680a7125 cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=SMseXh0oWhwDNy9TrckA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_07,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=747 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240118



On 4/24/2025 6:16 AM, Krzysztof Kozlowski wrote:
> On 22/04/2025 00:00, Melody Olvera wrote:
>> The SM8750 SoCs use an eUSB2 PHY driver different from the
> Qualcomm SM8750
>
> That's a defconfig for all vendors.

And...? Apologies, I understand what is actionable about this comment.
Please be clear what you want done about this.

>
>> already existing M31 USB driver because it requires a connection
>> to an eUSB2 repeater. Thus, for USB to probe and work properly on
>> SM8750, enable the additional driver.
> Commit msg should mention which board uses it.

Sure thing.

Thanks,
Melody


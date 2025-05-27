Return-Path: <devicetree+bounces-180747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A38AC4C59
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:41:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96A973A4269
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:41:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E942A255E26;
	Tue, 27 May 2025 10:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AXpRh3/4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705E6142E67
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748342480; cv=none; b=qxXWr+ddqPGY1HKVBZNDsZz21WhLNngQpVuTHafE4+4fyrrB2qnSoj/nTRvmKSpBSKxmiCcudBpdRjwHDPIpl/0m+/i8sobOGzFhEghVYMhjXL3+sLrH2iNcaLDpMv7nMncI37fRx9o/UI1MBwrZ0tylB742BZYxx3ZbhMMoPDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748342480; c=relaxed/simple;
	bh=KnXhIRyJ/2uqiCfiU+IePoK2w+gLCO+RzIIb2h23UaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ojr5FBHuLEAdYfBSE1udCTDPcHg0Be8qBzfTH+LcRx1I69gTGLAzjYtJeLFBBmD5QfhHaBF0jpUdyQ5JmqZf18P4ZyMygBFZb0Nvh8noQOLp5Y4EYxqEPRTCQfEZamKUYye9C81ZFwZAZV8OgHuVWjyj7+kLf41rKy11xwWlGQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AXpRh3/4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R4P3Jo001212
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:41:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbMfH1NRfto0PmBDvRua48GNHdAcU7IFtOBh4J0uTQU=; b=AXpRh3/4HbZS2A9T
	a5HCKQ8rwcxHtjz5OqC2Ym/+l7bsC2HoSv7FWivR6URK86PVbu3B81T7eCC87TNx
	Y0O2igJGr7TTW/iTsMEL8ZZ2S+ikC2iMnWlP969SbfBIT76hbFDLoBTyo3I5xild
	X41Sc1D9cFw78tgaVfH4bQzYk+/mOyGTIHRNgctvT1gLbai/JOekKtec77MfLEbv
	0GLbkrLGrqp45tdvqmF4MbdUOm4ItxG8155P9XwlLZS5dlXTlf5ukeDCmsX9W9Yr
	hdImQIj66wXHgy+mcaFNA1J7qHLfljRgCzPx6q51ggV9RIcdO59bMV6jBff77O9N
	2P7VrA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fq6prf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:41:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5530c2e01so33711885a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 03:41:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748342477; x=1748947277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IbMfH1NRfto0PmBDvRua48GNHdAcU7IFtOBh4J0uTQU=;
        b=c3OBfypaxwy40SMMqj8Ahg/y6IA3moJPRdtS6vcTqgGGqUUBZAEAG2Xg5esXPf2aL7
         G7lE6VEltHjVhoGvQnvshaVKirS2doQDTBH1EM5MrDbgetqhGEZJjYdA8KU3cMBAI6c0
         egCSyI9JZyHlqwICRycGl+TgEktF+uH+66MK0WM2vF60MC+pBEn+Kfcm5p3XyRozmEY3
         oyXXkKkI8AS3DKBEh0RIgjypwSdoHx5vmAChjye9VRKoqJGSOhX4qB6AAY9um5rArycd
         2wDnXce7j3yRVgrtzZFI11L/dkaxo+lNfo2IwrzZV+VZLmZqds7IjksEFEviKfVJacNl
         tkRw==
X-Forwarded-Encrypted: i=1; AJvYcCVbTJRWorkf9JOKc9Yg4R89G/GV1mZpmryQ4//x9Qgbp3JixUV01oXJOaijoxKJrLqvyPFujGNibseV@vger.kernel.org
X-Gm-Message-State: AOJu0Yztc7+irM2n7vZe4hDPkCHUA4WLd/LOWhgDaIJCzSG6/392AJvo
	Ya5kF1lBbhePVZQJ0TBNuMNO/PaW9CR8nopdAlB0gs9d18yMdQUo5hRxm8VfvyRETbYhGGuygHW
	1wschHYdYB42bX/j0O+wcB7Vc4r0v4hUi0mZoaLkvdRTZHiDlV9CBSW/B+0in1UGu
X-Gm-Gg: ASbGncvrED0106SSWwPJODbWKSnGIw8eSMX1fHRhCJQxXqdYSANRBXAlhJibXo0So/8
	TJftHYrmfhq7b7j5R+fy15EaZLVFZJ/kGG9VILdasG17k23Za6dzh6bMpHr/twhHC/itiAVkrae
	EYMLLk5MkVBrbIADv5hb/KdE2I7+vuhmplUObBLlZQcJWs2tU44Dn1opxlWQrNFstyNiQ/6ljik
	udE2n1e3mTOEmKHczalydRRWXyyTbSKRwQnph59Vd5Ys7EQaiX+TzAA0/e7Bp10+1ODuKu2pMdb
	yaz+4dtGJvpZSurtrewZvL6NEnf6AcuDls8cQwHDIUW+RbtOTCqqNucDegqGqN+vAw==
X-Received: by 2002:ad4:5c65:0:b0:6fa:b954:2c35 with SMTP id 6a1803df08f44-6fab9542d12mr1902666d6.10.1748342477275;
        Tue, 27 May 2025 03:41:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUyu7qIzk1cV+C4eIOT70R61sE1Mb2oEqRCMc7Lanra/6DIQ72qJaNM4f6++9e/iPl8v+geA==
X-Received: by 2002:ad4:5c65:0:b0:6fa:b954:2c35 with SMTP id 6a1803df08f44-6fab9542d12mr1902496d6.10.1748342476910;
        Tue, 27 May 2025 03:41:16 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04af1esm1813993666b.20.2025.05.27.03.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:41:16 -0700 (PDT)
Message-ID: <1fef810c-47fe-4f6d-95bc-0d72dbd63bf0@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:41:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: disable the CTI device of the
 camera block
To: Jie Gan <quic_jiegan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250527015224.7343-1-jie.gan@oss.qualcomm.com>
 <5fbb515a-c3d0-4bbe-a689-41e730ecd952@oss.qualcomm.com>
 <9a156925-cf7b-4d2e-88a8-fdfed5528553@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9a156925-cf7b-4d2e-88a8-fdfed5528553@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: K4QVcyJ5KY49TtgD7R9_a6A7lK96VtWi
X-Proofpoint-ORIG-GUID: K4QVcyJ5KY49TtgD7R9_a6A7lK96VtWi
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=683596ce cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=P-IC7800AAAA:8 a=shqGv10mcsBHR8c22w8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA4NyBTYWx0ZWRfX3SrhFEw9H3zH
 4YxTtdDfoy1Ma1C+BduEZIcTavfGlaila2Y3SJEzHaj3+MaaqOUt3dEaJxQlRZcoPYK1t7JyOQ7
 FDii02DJw6FBdGtfKm+0lxCyPcv+U1Y7s5oY8zKLu89kmdgYOpWcQjP1LwtfXfoa9Kq4znMMmjk
 v6+ERkzSw0m/e2x5+t86fL5K1vVN2NSdRHY8yd5f0wcieCISh7+jTiQ01ANO9DjKODp/0NW9jkP
 YTR0y/tO2xHcVxscQ2RPlwIfEgwbiCJ1+XgNNvge+jSUweGKuWQV7oaBrqKuY1RlhOn4pqA4STZ
 kfefs9CzHwo12xhmbgXXsJXs8I2XqTl+74REmePl1F0Xewp6kfZ+FDq1EGxY2PQK2Y9AocN2zg6
 TRUZ17xYBp/Y730tfnB8MdtLuHdUU2o/Jxt5q1f/PPMUBnOaiO91exDXTjYNF6kijtHSx5cY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=723
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270087

On 5/27/25 12:32 PM, Jie Gan wrote:
> 
> 
> On 5/27/2025 6:23 PM, Konrad Dybcio wrote:
>> On 5/27/25 3:52 AM, Jie Gan wrote:
>>> Disable the CTI device of the camera block to prevent potential NoC errors
>>> during AMBA bus device matching.
>>>
>>> The clocks for the Qualcomm Debug Subsystem (QDSS) are managed by aoss_qmp
>>> through a mailbox. However, the camera block resides outside the AP domain,
>>> meaning its QDSS clock cannot be controlled via aoss_qmp.
>>
>> Which clock drives it then?
> 
> It's qcom,aoss-qmp.
> 
> clk_prepare->qmp_qdss_clk_prepare
> https://elixir.bootlin.com/linux/v6.15-rc7/source/drivers/soc/qcom/qcom_aoss.c#L280

I'm confused about this part:

> However, the camera block resides outside the AP domain,
> meaning its QDSS clock cannot be controlled via aoss_qmp.

Do we need to poke the QMP of another DRV?

Konrad


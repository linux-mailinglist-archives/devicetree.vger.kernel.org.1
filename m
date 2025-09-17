Return-Path: <devicetree+bounces-218391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3A7B7F4DD
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:30:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10EBC1886D9E
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13BA1C5D72;
	Wed, 17 Sep 2025 13:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ocnB/XGM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD694086A
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758115461; cv=none; b=nvDQ+6PYQWSMVd078IAQhh+5+CrgYZ+vO89hck/fj3bX4Hk0xM46nhzmcd/CvSKgM9W1HR+0Z17JWIIPtGAAI9CCGGBkRjGqKLN0KdCd8I55zDLdszoMUUrlfKboR6P3VFHLGcoD0sbotkXRGe+QYleLA+TM4m262t9ro0I9QqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758115461; c=relaxed/simple;
	bh=bj/BACpeROC8lw+J8b2bN0fD1ySfsfKEilZbae/Zl6k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ODnOGd24v3sjq7DPa2EiDSMXTpFnwObN8swhlABBJWbC49an2n/YexGJS66UgL6xR+22a4cjo3GdLt0daOOb5/SfbW11AUadxLcyRCoe/4Dplp05+NE8QLdHQOejclDSt+gSG8FT6cT1M1HERikGAtTaJOK648l2AtACw0d3kN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ocnB/XGM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XZrp029495
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:24:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8UaA1Alzuj9hbbX3YKQBafNDVZKoSiqpKwrruMOzYFw=; b=ocnB/XGMcqYtd6v4
	SHW/deuOFOng8MN75MJQ8/2RF0AVc8szwffmXa12YbPbzNIT+MnmMrhaIMy4E8NW
	wWhHCj52MPk8Nmry53zCm1d7h6RmW/opFLD6FooNBR9KZoSpJqahm3UXLH1iZB6t
	GP/1ZeJAlk6L6FOJchtp/wtdWkdx8J0w6V1coYhpzS75fEUatTiGG3HOaGPOZI7U
	QsaiNlj+FEdV40SLgNL3aahd7Do9BQ8geTYyqo9bfzU8rjyJAlhBe2DW1j0Z5grd
	kDS6ScAVytN+TForR7734VirlvncgBChsDQI4J+rWMAl2oePBA0D8tt9UMU3Qy+9
	J8tKmA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy0tg9b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:24:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70dca587837so19363106d6.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:24:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758115458; x=1758720258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8UaA1Alzuj9hbbX3YKQBafNDVZKoSiqpKwrruMOzYFw=;
        b=tNsKk7PCboxBN03P5vRg9aETuM+iXKD8r45iQpdLT1aPdpnGNUjMPkhIeR3dELLmxm
         WoNVEA0QZErLq5rnB76f8lCTsIYQsa6bVziyXfgS/LPW5Oo7CbVM4q6QRaHs2Osy3p4m
         cFrIbnkqCZZNHXucu6RvKFsHW9RGkTWKnk/bwjvD8qwgCe2r9QWneJYMki/yJCLibYhG
         5Nj7Tmeoaw2YkVoH2TJfV6LXVueaTLlN9aZGqH0oUt15DUGx/l4voPJixurDpXlzSsi/
         o68+0LO20MqcthEFWfV4khu2obNX4pss1ufc/nuAPSXgATdLBlNvHfSXzoflwqX/XS6s
         Ru8g==
X-Forwarded-Encrypted: i=1; AJvYcCVEdsK/+P9/CsJ0Z54hF8Nu0HfpRybED+Qzga+F5jynby8BwBeBeuK2LrrBb1VV3FuAiWgOGoZVf66C@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh9IIvA70Ys9maM79nnb1nmt7X1T3TogXC36eh0aGkv5Yba6sY
	TiseI8JC6xw9BF5tK7lpHb8oFNsmNWi/amVmCFJj+rt+wr9GFa98d3gr5PgOwpkN5icEUWaZTwx
	8Si8xDB2doBBbJXigKr4uDkTFwgyavm/2GExU0jH67EMOhmzWWMWulk0T6az/I9zD
X-Gm-Gg: ASbGncv9/JmqxVE+PdDlZG8uigiZ/yM40AxvPmR6O2noEfqbh61F4c3lnQy/FRYxJ4c
	G0/ab77/cZqzITDHYpShfiGZMv4nJlIPvY4lIDhlLtDaDt3O8mNm/1vcPmJyR9769etEI6So9ey
	LVfvDLDEo8EjC/9hgKmJDfd1RO25NCMmxqmQwSzrjYZ2GYOorwTXc6cDdMjTbPdzts2sUrxQrJw
	MY7MV80f6E8LQHk4hMN+nXka0wkXcs7oFDJP02AuBMdV6s2kBzDVokemUiKZCVpZlpn12oP7+e3
	2eEWQk+GPrbPMWM06l0xq1gM6rrhvOcgsE8lAZuS4Y9DI84jB2+RUU9Z0WvMqw0GfZeZ8JpX3ul
	e50g6L501vgFKvG27lDQwOw==
X-Received: by 2002:a05:6214:1c0f:b0:776:6653:c4cc with SMTP id 6a1803df08f44-78ece74a22dmr13485146d6.3.1758115457782;
        Wed, 17 Sep 2025 06:24:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6mmSdxwVDKEVLfwNysJ/iADklZpu3mgw2fSh+qUBhavczlYOkfMoJa/ppr1K2MifbYqtsyQ==
X-Received: by 2002:a05:6214:1c0f:b0:776:6653:c4cc with SMTP id 6a1803df08f44-78ece74a22dmr13484606d6.3.1758115456985;
        Wed, 17 Sep 2025 06:24:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f0c7a5546sm9223456a12.43.2025.09.17.06.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:24:16 -0700 (PDT)
Message-ID: <3b26f3e5-1342-420e-8668-10376aecb127@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:24:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans: Flatten usb controller nodes
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250917123827.671966-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250917123827.671966-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uVXMf1wP1plieDP_6CvePy6bqbRrbDpT
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68cab683 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=J2N_nXOhfcilw9lcM9MA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: uVXMf1wP1plieDP_6CvePy6bqbRrbDpT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX7LKyOCYpdMGr
 mnTAWQyPHM1WPyPnjRnFs9NIaW3A4GKD6du9CDW1TgQqTZHgPCrrqIMonN1Kf4c+1EVAklmbdv9
 iVYflGtSwZ/dJPObooj5uwOB+Xg15FOp+KT7Zm4aKf1MMNGKTO9HOaxzSX8UmFWYFPH4yxUQMIz
 +CfUGa+pTKVWQLPrDcFJkt3z+F9lVgdAbWmegc1mlAe/VSs3UgVyc7UQjpYqS6Bi9yR1zWSJXvx
 56DqvQTdlzVZbyaOu2fSSYEGCcSFGXH7SnCYDYA8Hai67lZjXbqbRDws6isyuYjYEeqLrcRfFYH
 1BYcPHgFJvLn7RcP0kxYYS0lMyODZcyKeoq5i1tAExxNKxh/wdCAzcmINOsXtVQ/vDWoB4EO/xr
 jqPs1YrD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 2:38 PM, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings and
> flattened driver approach. Enumeration of ADB has been tested on EVK
> Platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


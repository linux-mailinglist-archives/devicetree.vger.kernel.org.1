Return-Path: <devicetree+bounces-181034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC38DAC60D8
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 06:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A74C917EC6D
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 04:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E1B71F09BF;
	Wed, 28 May 2025 04:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hKj+9jHe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D517D1E5B88
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748407835; cv=none; b=aYD0N28TNKTkKyjVn/1XR4o6rKMXZxToTE1M7k8pKRPlsKcNawrvx0u5x+2RDG/C7h5Y89V/sQb6SFtJ47tlZmTcxuD8J3Hx563M0KF1p5E7fULaF7/nInYDnotTfh5GOa5MZbU65zkGsu/NS/wx0P3hTdo7guRY5vyixiFZVKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748407835; c=relaxed/simple;
	bh=SZWThzxP/87c9R8Huv4SM4sfI7oqi1K0BFXylxM1JU4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GC4napa0GRKIOCqZUXF53zei4ywChKUGQl3cwhv1LYuAnohE7zMZLcxa+J5uT1h8WLd3TvrvfT8IDcUjTAJftIYxQ78DDgtuZAUNxZ6tZYiR/oH0wkOSTbcbaJQtrhd70N0CvVx95+eN9cTJXahNNSTuraFKaEDxTJoX6/Vggm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hKj+9jHe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RN9D2N012264
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:50:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C371pGRBLlC9/Ts/1/jUakLqagSQGyt7TnsvkA6tdNk=; b=hKj+9jHeGOhW/Gks
	yXFQh9JQ/nI3lxr41HFcgwujHhEbY4VHaT5BN50hK4Paak/TjehifWN25MryCa5X
	EDWNK6aA5kIdiAAVQWoy+BgHq4m0LlGnUbLUfG7ypazFT19F0gdqeesUoFgQa3A1
	qmBCOqZIRPmIVBaTly8I/j0bS8T+S9IRLSeYNEq8H94llSluD0Xy9f/EO2uSQgMs
	+shH65aJyhTgowiW6MTPzOQ+QWzO8QlcHoq6Z0MDSCQi9TMcqVHw2VxvSqzjXJpC
	JCaJcXAZap1X3E0zDr4OfmziJfCOBOSCFC/HZpewM4EbU5IrgH58Uol2R3IqFZh2
	+KmVMw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w691bhvb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:50:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2346818ddceso42268685ad.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:50:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748407831; x=1749012631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C371pGRBLlC9/Ts/1/jUakLqagSQGyt7TnsvkA6tdNk=;
        b=q2sW55vHyfcpHOMecPsLLoLAw1DybN4QF3F0whgcnXnFJL34atIiAl2s2TZX3GLwEk
         tYW8EjSPS7zVlF9v8dBWSFaTOkzkYUu5TOLOAOsfO+mili/pnTPSZtBzG7OLoz6Vfjvm
         gt27RudVEwBvLfJBpQzKMatzWbHmqvdOAa7+qJ1qlaru0YNJ5UklA8gbTujldmpKoJtg
         +Alkfy3xvCPX4M7jsua2e6sJmkfm/vILkFwYmL/8IiKgn4qf1yYp2VfahmF63o+SvUIv
         E+83RLxwuyKq/L7K/7LqEK179t3S/I3AFomZPY1mtMkb8rmZlXGRe2ApKqH/3VluwZ8S
         CMJA==
X-Forwarded-Encrypted: i=1; AJvYcCWxLaLxLKCW3kHpXkcYU7JEdp8sdsDic+guNPgFhKmqHOGlw1Mqf1k7GsPgxDoPd6DfP3S2WRhDgzQU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6+4Q3p/TYKL1ezCdZA3ftNhR0CxHAvVhwDcMjLmiMDLAg1Tw7
	9QI3EPuvymyGGBYhbbOGiV1qgTZgYa9ehZ4FyHpK6KbwPCE5BuBbgbaTpG/TCMaNgELsP1DL4FS
	iggsR3A3hCSFwJ7Y1KGzreYtH8ztKuxIFq8zkLYwQfXiXyWC9F8sAEWq2FTA1Cfxt
X-Gm-Gg: ASbGncuQibFudwnDnCij3mE+BoqM4EmH9rZcWII4PRbr8mXTdCfjfY5mKMNJ5X14a3g
	XCJV6tYhsIfreHOWJAys1BMdaa7N0JTDVibYBRiWuNWbmRHClPhMDfX+dWUs3j+aZojZjz5N2xA
	Qgjkvu5OIx+/H/iJYfI5fU80+GyHFWuJ+Y2pKJSO4H7HFP19hUtPCWq2hh0Pgjksk3DXHVeaYRE
	h7s+LM17dleupU6Pmi3F9i5d5MZ4fzWybwc6y/q+noz+vLHKkQcWyZOkWOcstmgVb2q8KzL70vZ
	QqKIxCzVkcAiFIppLYZMnjW15aYWmHgIrhQNR/hy6g==
X-Received: by 2002:a17:902:f54e:b0:234:8ac5:3f31 with SMTP id d9443c01a7336-2348ac53fd2mr99050925ad.23.1748407831010;
        Tue, 27 May 2025 21:50:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHN9b4dZ+vQIgVSTiIeC0tbTS9PKLkg/kjNaPF3ZRn8W94d6lAt9Br08fffh0W92jG9c6SL4A==
X-Received: by 2002:a17:902:f54e:b0:234:8ac5:3f31 with SMTP id d9443c01a7336-2348ac53fd2mr99050685ad.23.1748407830642;
        Tue, 27 May 2025 21:50:30 -0700 (PDT)
Received: from [10.92.214.105] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-234d2fd229dsm3131465ad.34.2025.05.27.21.50.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 21:50:30 -0700 (PDT)
Message-ID: <e840e6b6-f2c1-9e85-bfb3-fba1471dad32@oss.qualcomm.com>
Date: Wed, 28 May 2025 10:20:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] schemas: PCI: Add standard PCIe WAKE# signal
To: robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, helgaas@kernel.org, krzk@kernel.org,
        manivannan.sadhasivam@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        conor+dt@kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org,
        quic_vbadigan@quicinc.com, andersson@kernel.org, sherry.sun@nxp.com
References: <20250515090517.3506772-1-krishna.chundru@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250515090517.3506772-1-krishna.chundru@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=68369617 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=8Attb8s4RaY3mnNPeTUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: FidJPdQsIN-D5h2koBtPQND5zwoZz_up
X-Proofpoint-ORIG-GUID: FidJPdQsIN-D5h2koBtPQND5zwoZz_up
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA0MCBTYWx0ZWRfX03A2Cbom7lGH
 gKZobNiealPSxBM1C4c92HQdIwEq5XLlNKTUe9XIXqRP27DGTAFj4YYzHf+HH1N37EzSUPpfu9/
 gkU2jtjxvaEMvy0FypKq4PZ/zG9FMJ8AtITEaa3x6cyEz7rPJp8/JkyhbQn7xOD/5AlznNTlbwj
 E8SCGP+xXyEpf4+eqAO0zm/iRA4HKi/smv0UV4IuEtRkcnPiAXurx7xG3jhzIM5X0Ej2aiGcsBu
 7ZpE+D0kV6LCAng/vLisRfF4r8UxzWHf5Exg51+USBjlLdSfY319LBItyoJnZchkFS7UmvJBYSi
 QmZxwvO9rL/xzzvmRpeKPkbTAsL831zig4klWb9RG+6whYKsxB1Lj1de3BuUB1rTgN6aQDhNlAK
 EXce1dmDIV/iCZ72DaWUyTkgc/hWkz+Qd867WNCxCcYzCI25BF7kj84KBZNoRRU60Iw3IYnh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_02,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=795 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280040


On 5/15/2025 2:35 PM, Krishna Chaitanya Chundru wrote:
> As per PCIe spec 6, sec 5.3.3.2 document PCI standard WAKE# signal,
> which is used to re-establish power and reference clocks to the
> components within its domain.
> 
Hi Rob,

can you check this patch once.

- Krishna Chaitanya.
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>   dtschema/schemas/pci/pci-bus-common.yaml | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/dtschema/schemas/pci/pci-bus-common.yaml b/dtschema/schemas/pci/pci-bus-common.yaml
> index ca97a00..a39fafc 100644
> --- a/dtschema/schemas/pci/pci-bus-common.yaml
> +++ b/dtschema/schemas/pci/pci-bus-common.yaml
> @@ -142,6 +142,10 @@ properties:
>       description: GPIO controlled connection to PERST# signal
>       maxItems: 1
>   
> +  wake-gpios:
> +    description: GPIO controlled connection to WAKE# signal
> +    maxItems: 1
> +
>     slot-power-limit-milliwatt:
>       description:
>         If present, specifies slot power limit in milliwatts.


Return-Path: <devicetree+bounces-203516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BF0B21AC1
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 04:26:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9DE21904923
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 02:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B804D2DECB1;
	Tue, 12 Aug 2025 02:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z4ztfkZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4B22D876B
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754965588; cv=none; b=e5N+Ox87GdwhyxRrrh361Lzoy58DcL4oIiMDeV9dmcD8zKh2Aq0056QAAG52hMpB95z3K6Uw5ZqUcvdCDxd6aW950kh7qvdE6tK1Tdj3hh/eAh4JaYxOBadlAXIrTO0TXghll8MS2SVo8e1pDBFZfqsUmUzrHeMQaZHidz2UKlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754965588; c=relaxed/simple;
	bh=freSFYAyQhQP65BjSPgNAU1SLsQMJO6+8Abgq9wkJWs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PdPiBmlUZZsmhbWEkKqos7j+HqkRt2PPLLzwoC7EPF7eR70M5fct65+HoYa1YWHDuyYWdrgiegTVbKCCp+lomFqHl/n1XWSBDOiX7LhPxsji2IERdaXLIs1SANEhZZFnom/FBfYjeRnb16t7cOcrNAEp6ZVNLw5kvxfiHL7H7Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z4ztfkZA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BK2gfI005519
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:26:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v6NZdONIBjUtWUi4FSVYPVlblg2FpLBgu7iKrRrbobY=; b=Z4ztfkZA0KfnIxOP
	5f02Q+PlHG83WBln1hPZdOBZcfOPrmti5fIQirMyYHoeFVCTXVroawGotLsn8tbP
	vq07WSytrZ0OhanIs9y45pf21J/AL7L8yynd7g16+I/V32COlA9F6XVeJIzBzGld
	NyKrsWchDjM2tm3S+r34VWgeE5bU2M1+G68mCotoSbu0E7ph1gx86LKe+VCeD5mR
	/s+9/RXw8uatqNaqL5vcRPCwz30qH2D08oLMYPL8OFuMYqf5VKCQa9rfYXVxGs8g
	OtrrZ1eI72BCgKITuw/J3zZcAoIWRa2vsU9GNBPtaJ+T6dG4jGphowuzPJX+BFYG
	VvH8+w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq6jakc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:26:26 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2403e4c82ddso42437395ad.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 19:26:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754965585; x=1755570385;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v6NZdONIBjUtWUi4FSVYPVlblg2FpLBgu7iKrRrbobY=;
        b=VFxhHoGIjyP49k79KOsl0HqT6t3/duvxW2T4sKZoIFulWOc17tJJTj3TU+DQCtkQyC
         ovJgNITzQ0snB4CyPrhFhX6C5bzxrcs3Vy5IwO6p7pIziCtJabdrYahVMs1QzleXVXtE
         qMVLbLqxkG5vCQiUkfqo1FoSJZjOb9tvk0vArbvs/YGDQALQ5nq8CByEww8wGi7pVwKQ
         If7smN17M7CqXaIwaPqXCN4CwhUyXKj6lUM7q4RPzGB2eQbxSSYrVSga6AjwiLS/VT+n
         PGv8jwXem73O57G5z6DUl4YhyDZChG/ZWyx4bGnCFR43SHzkeAJIOj7WVy0d02y1A+wz
         CV/A==
X-Forwarded-Encrypted: i=1; AJvYcCWUhlM9/w10QMPo4ra0k4XLp/qm2JzbScHDZU+nnzHjzQUHU8xxrXakQ9EOun7lPBMcpOap7KShZ/vw@vger.kernel.org
X-Gm-Message-State: AOJu0YwvNor3J6bZVq39N1+ygt7+Rna5GJNzoPJ49fKl2mqaxbxE+tSK
	7ISVs9HfPosACfXufLL6iv/1H1fkAu7G+KA4SHSwneu7qtZPxOnUxcHQvoCBUxamV0J8R1+G3ij
	XoIgotB5fn+q+TXDYBTiHKlJzubO6I4fgvJG9Jvu2r2sw3bruDLyeHZtY/xUwpM9h
X-Gm-Gg: ASbGncvu7xrERMGgbjSSSZrKWLDIxaCx4vgxCs3awhvNGGGqEK+iqQzEPVcnZSZGkca
	9tRtFotOQJ4Wj69HGYYAJBuPlSwAOFX8gXEMbRY43U6Mftpk51kx7eqnDawKmGchktkfvxaW9Ji
	hQU4m1jtNon9stDGhb/7N6JDIKGn6MDaag0HRHB4E4rIHXLj6nRlVY8T1oIL1v1VaVQ69HEPJNQ
	/RXrPO+ctLjTqe0xod8lBhSdeujyNysQOR6Qrx/8svgIswKQRvKF3atbTAPj1lJ0Lghct/ZwvzH
	zeekIkE2aPP12hBKOpxR4DmqGuhDxvfPxEigqJkpbFuFgsX5AiPM5sdPJbMXzRywaxZt5/sbYb2
	q8bdxi6viZlXlKFNsmZRpZxdgeIc=
X-Received: by 2002:a17:903:2f4d:b0:240:5549:708e with SMTP id d9443c01a7336-242fc38a7f6mr26832125ad.46.1754965585517;
        Mon, 11 Aug 2025 19:26:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElziGa4LESU7UIAUuAFSLtbgMN9kJ0x1ajc/uQvKZUBNmNNZOq+BaTzJnzKqAKLhkZVEnJ2g==
X-Received: by 2002:a17:903:2f4d:b0:240:5549:708e with SMTP id d9443c01a7336-242fc38a7f6mr26831935ad.46.1754965585083;
        Mon, 11 Aug 2025 19:26:25 -0700 (PDT)
Received: from [10.133.33.53] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8977896sm285070595ad.79.2025.08.11.19.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 19:26:24 -0700 (PDT)
Message-ID: <60f56455-69cc-4b95-b967-ebeae2d766a0@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 10:26:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Initial support for Qualcomm Hamoa IOT EVK board
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfX8hwODrLe9DKR
 a50ongjDzPi09PTkoFw9u0tlRC6WVJTvmOSBJtsnmWGvT59OXc/p5rHP/G0nczKNrQ1x6etsB/O
 i08/g4BtR1FfEdu9BLrcJ295qihRlNq8StOS4dQtm3pbc2RIblbZWnac+DoZfgXA9FJpbylVYKd
 Yj1KIRN9H3SizK21Tt6wBl9akQe9xsyxXrVNBHk8CzMav1hF8eREjgK0JcbcEoe617MsIcZ0HFT
 WlwvO8WsasT3h6UC+NogfVi6m+4pxa9Lpjyo6yxzsn8lPUdHFke31UxGVpPKWZB+4exTpz/9sst
 +dT6denHUesAzuDKpLrYvG9PKsVL9FolQ0speIrLuPJdkI8J6gbhGAwi5oWCtcTDBylaigNvpfo
 pL7Pj7dJ
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689aa652 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=zFMGl55XLE5SN6d51FUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: sitdsnoudS8xZRPPUDfG6wo-FgMOtzVm
X-Proofpoint-ORIG-GUID: sitdsnoudS8xZRPPUDfG6wo-FgMOtzVm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075



On 2025-08-04 09:37, Yijie Yang wrote:
> Introduce the device tree, DT bindings, and driver modifications required
> to bring up the HAMOA-IOT-EVK evaluation board—based on the X1E80100 SoC—to
> a UART shell.
> This patch set focuses on two key hardware components: the HAMOA-IOT-SOM
> and the HAMOA-IOT-EVK carrier board.
> The HAMOA-IOT-SOM is a compact System on Module that integrates the SoC,
> GPIOs, and PMICs. It is designed to be modular and can be paired with
> various carrier boards to support different use cases.
> The HAMOA-IOT-EVK is one such carrier board, designed for IoT scenarios.
> It provides essential peripherals such as UART, on-board PMICs, and
> USB-related components.
> Together, these components form a flexible and scalable platform, and this
> patch set enables their initial bring-up through proper device tree
> configuration and driver support.
> 
[...]

Hi Maintainers,

I’d like to check whether I should rebase my patch set onto the latest 
kernel base and submit a new version, or if it’s better to leave the 
current version as-is and wait for further review.

Please let me know what you prefer.

-- 
Best Regards,
Yijie



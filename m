Return-Path: <devicetree+bounces-233011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 874F4C1E383
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 04:39:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0BEA934D46C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 03:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDCC92C11C2;
	Thu, 30 Oct 2025 03:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mwRl5gtH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QM3+iLIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C2421ABAC
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761795552; cv=none; b=IuYtzr0CcB9aKKRclpzGLOXvvg5zcyHkhg5oiDX0hCxD4FLwQGkyy9b6KumUefKkhQVWOQFCkU/w6E29D6wctnuXv5hp+1mJJWgrAMAgKDv1aWJCTadEIdUCGiQmk6yblUNTbHJGxRLXfzbiAjFN89L5m3FNOnSx22oNYdCXwfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761795552; c=relaxed/simple;
	bh=w4b7bMYZQ1lDA5SR2sOhvAp6iXdLS4+/1bLZLHD6SDU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qo/nbLOfzz18itUxMpl2Lmxfiz8JvgHQ3LPTNDLr3htkhcIOomukYWrgVNKaB+eqRdomWTLoNKIIEPcpya5RvUNg16G+DcEGpL8mhPkaWWzBDiWLoqUn+JXdo7i37FnLbeCnRYzwT2IclGxtPsvOtWHttZeabXDztKP3tPuS8ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mwRl5gtH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QM3+iLIc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U2NSVY4135571
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:39:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PhYPs7vpcUnJsvDso3Np9kelujWCWr8tqGZf4I83GIE=; b=mwRl5gtHBK+PfKXe
	oxxbsWD0u+UUtaO0ETxqmp20A/rNxi9lJzuLRPLgHmSSCAm24Gmiv3WBKCHCSH1F
	FFdkHgpKoa5xCqt8HnSqIw/cYw3soYbFUHgZQIC5KhH+xwd1hWoAIx1H0EbNcBM6
	KrUP8o1QIR1NVE0MmnQlE0eVud0TC5GRPLLnIKj8KtyWDfYCRu/daUQWefdm9o4d
	kA880vQVjEWl4aVNRTEgKkRxniUNFCEK5qWjbyBQaNNUbq8T5n8GpYZdgclTScf+
	c9CRh4u32hF4AlkdnMhlg4N1ISkv/o8addhlR1AlRDeuzWlROzVkFGX2oEQ+N+hW
	kRyzeQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ff9u78e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:39:10 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-28eb14e3cafso9894885ad.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 20:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761795550; x=1762400350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PhYPs7vpcUnJsvDso3Np9kelujWCWr8tqGZf4I83GIE=;
        b=QM3+iLIcEVwLzKYVbQ1q0tQqXD9GuNotd2y5yO50SvY06WO8pw+LUIuPgtHFeYnK33
         bu4RRd9z4tbiMh8Wou4jJlMKO4TRAW58ccmc8AMJBlLu0oGIJM7khWzSSks8WwM4rJfD
         AbzOAN5aA7PI782+goROBwFKvUiq+C5orWFRMVXcC5AMsvL0mm1BgcDVGLG5pTNVlA4V
         jE4AB8iX3VP/qUVBEXLhzKkIlifWmaNJWGoxeThwPhRjcsarRMIULKC020vx8haycpMB
         Bd/47GomkQqfcAph3HXe6rBV8deNlO58btN2TCtSIltUUZBaNqI6b7BYmXFTM7RNU2AE
         15WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761795550; x=1762400350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PhYPs7vpcUnJsvDso3Np9kelujWCWr8tqGZf4I83GIE=;
        b=RyhtT41O4wEeVEqzT0t9UIsRCUUQXtHk/G58N8U3D/fv9YzK2VEC+50BYMoJKAySdH
         yDIxXCB0RXrWlFfYL9VGgqPvbFilLRnb6md1q7Q01Y3q47RWwh6M1AHWxEfP2pv9v7Be
         Oke2xun0PJ9aaf3xXDL7cN/YZ6vNq7/CnwWEozfxNbfJLCp/448hZkK9qfIebBoNa6DM
         2lGOObbMCgOqdDfVJWtiu3oEME5RCXDLWREBCqR0YvLmN0cpBhd2R1x/pxwMzeFNdGuU
         tqwI3l9sjpleo4DjL9a2wHKIB+leJUpE37kTZ0ozlIl8MOSdQjW3KKJicfDow+hlO69k
         /Q4Q==
X-Forwarded-Encrypted: i=1; AJvYcCU778h0lkWOrsEIn9LnQI+O16dGINffSKXtTyCb27wGKZADGNvqiHdHQs2u052JJBmHnkTf8/s3RsQh@vger.kernel.org
X-Gm-Message-State: AOJu0YwztnDaMwaEt13/7c+22UQ6HRxYZf6v5SM8OD3RtmkhXX6TxQBH
	3ESI38xkceQdKWUkisudG0kky9e3Vs7e1SUPPhhkIQaSNQeHE7rAFixamIGPxcUgzSdZkDbg8R/
	XfPAF6/aQs3Nvg9mvcbFStwk7j2NJ4dOSeM+YslXtd3b8g/oxhcXqNlt6tJLAzCMZ
X-Gm-Gg: ASbGncs0CqAPkRtzbuqqDMlpYcLQ964RqLXzebPBl8uRdW1PwPZnBpjQj2ffeTOy/rk
	mDMyYVYAqohl1d+gidnALU/8hfrm88NqNOo/ALapAA66QxP/5uhw/3OTBdWiLssMXb0AGnX+Pty
	vW/qgxrV0bzBmUBwHyUc9Vj/Zm7WYS2T9rybOBrWA2euFt5+o82MFOt/4gAFAHPAfgWaFjzh2DG
	Zr879HQwt8N9LhXe2jvPoEBxwqfmxM6zHHiRFf+piQu0Ufh6PeJrVZ5FEFaLcp5x/MNMn5ZpyA6
	KXt4WN1fnO5U95hqkFGptyGZ59lV//uQE0Xzj3CxYSpzcfNeEJIgQ113wwN6wMpe+Q2bYrCQKYb
	DhwpGmD9klvpFXWP/xumaNhlrG8BDxK4=
X-Received: by 2002:a17:903:240f:b0:274:777b:ca6d with SMTP id d9443c01a7336-294deeeb76fmr69476045ad.43.1761795549858;
        Wed, 29 Oct 2025 20:39:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDuq6Cy861gKvQjGL7vn7LoqYvAFnjvADCSK6KoaTP0/m4xLO7nEAtd1CcKZenG2kW18zBAA==
X-Received: by 2002:a17:903:240f:b0:274:777b:ca6d with SMTP id d9443c01a7336-294deeeb76fmr69475615ad.43.1761795549359;
        Wed, 29 Oct 2025 20:39:09 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e50dd9sm167674895ad.111.2025.10.29.20.38.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 20:39:09 -0700 (PDT)
Message-ID: <06a9de6c-c9a7-4c5d-9be3-5c9c9b4a56cf@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 09:08:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 7/8] arm64: defconfig: Enable TC9563 PWRCTL driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
 <20251029-qps615_v4_1-v7-7-68426de5844a@oss.qualcomm.com>
 <jjbiamlcof6gttme3crotwyzsxtrguohaib73gcsaabpan5fqe@s5uroqqargti>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <jjbiamlcof6gttme3crotwyzsxtrguohaib73gcsaabpan5fqe@s5uroqqargti>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: B4Mjw7wLBTg4-H-nGAKtfbTUkhDcVfUD
X-Proofpoint-GUID: B4Mjw7wLBTg4-H-nGAKtfbTUkhDcVfUD
X-Authority-Analysis: v=2.4 cv=Cf4FJbrl c=1 sm=1 tr=0 ts=6902ddde cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=eF76SeNzXSV_S8XMPHAA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDAyNyBTYWx0ZWRfX1RuvH91+4X4P
 gi6X31EJA8k2pjzRN9x63S3MT8eOaJyTIASvPZ7Rh0wBTMjUUXcdOSdszElvT4vxN29DZtOmNRC
 sGt7Td2PFBiFp044usNq4vVsTmIW/YqRxia43JBikPVWOUFgWmu9WDx6mNhxweVuSisQvyi4d2h
 9dqfcDq1TQPJXgzeZ5U+S8qSgpi8nbBn8OgO5pcDXWIdnxYrIiP1AHj0T3g2BXPepmqzlQ7Dzon
 bAQy9tFyt/+JQKnAMQTvpHDMqna0j+jGDNcMGq2Cna0s1GqHm+1K5lYg6CPQ2c3SywyfqCZ/Wz2
 ADBWbIDGvxFSTHDfsdaJBup/Tz8BlWq8a9BBTy78uVGWddMLh/F4cZaGl/Ph1IbSi2rptbLqEzT
 MCqeoRneFQEfojQz3r5HSQDYqbTf7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300027


On 10/30/2025 5:34 AM, Dmitry Baryshkov wrote:
> On Wed, Oct 29, 2025 at 05:00:00PM +0530, Krishna Chaitanya Chundru wrote:
>> Enable TC9563 PCIe switch pwrctl driver by default. This is needed
>> to power the PCIe switch which is present in Qualcomm RB3gen2 platform.
>> Without this the switch will not powered up and we can't use the
>> endpoints connected to the switch.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   arch/arm64/configs/defconfig | 1 +
>>   1 file changed, 1 insertion(+)
>>
> There is some broken logic in your commit order. How comes defconfig
> changes come before the driver which actually defines that Kconfig
> entry?
>
> Please reorder your patches _logically_:
> - DT bindings
> - driver changes
> - DTS changes
> - defconfig changes

Ack.

- Krishna Chaitanya.

>


Return-Path: <devicetree+bounces-220625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BD6B98807
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 940182E36CA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 07:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C2512701B8;
	Wed, 24 Sep 2025 07:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DstiAYUX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CFB26FA4B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758698572; cv=none; b=luskY6PJvTyoY8R6tPwFypQvELIAsA3lw4s/n1gfua0Aptg3JX4t8cHa1tS7M4u/A3hvk4OJASFbIy1Rg/qS7rFHEG9Gr/jDPQJ9jaukd8/cHLSYblUAsmurBJwaKhop7MQAUUHQMVVkjKA3a3zplUEbvH4aBNWbeOXuq7xyS+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758698572; c=relaxed/simple;
	bh=s5wukc8WZZ54O4OO+xy9C2hqGJfv6hhog5dDVRtqM9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PXMyqfo4klwjcHHLoQ0PJPytrKVXIt//gg16x49iuLb2DENnOJZ/V6iyRjd44E7gmVSgmjyhfjaPb39klA5OAj9UykqFEFkxL0DzYjIDPOuznx5d6O+WdegcSpOYYKZFFkahf39SWSgyeXbDMf4kz0YFZY7USFQ0N5DZZVGYKz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DstiAYUX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O4iKfh023756
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:22:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jkzla9yPfs+xt2uBZdioDrNai0dbYaoeRm+eR3334YM=; b=DstiAYUX4LGXQ9ym
	al+FNc7GS9eTBZ17eGB1jyIxxvi5FJGHWhrawca9qhzTlOYtAxJTV/9lx+JLfXnM
	SYfPaTlEvQxrYkv7XD3B5UY5eV1+/4yqfd7X/eJGvovKdIe/k6GTmt9CUEQyHdnE
	G+WuoC8guI/xwSW0koZbT+a2y88V+gQ2MWWvOhsGIdC8WIKgZhapQS1kG0a8ikXx
	LIXNux8Q+rILaWtHf8IHTMifvz6sGj96giM0ZQH9Jc7YmcF8u7ewtqfTlg7XMBrf
	srE7CQxjeIS4YqyC+lHIT7cL3INT/rxYdGrGh6tjW9DiKkitPogDymrK/slma2nN
	fssRsA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0ae2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:22:49 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ec69d22b2so6435003a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 00:22:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758698568; x=1759303368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jkzla9yPfs+xt2uBZdioDrNai0dbYaoeRm+eR3334YM=;
        b=HW/Tdel/+6pT9apiEYQENzAa2iIWMC3WWNWv/7S31jjtcFbOO+hKB72BzFNykQUtVT
         UesAQWFo/V/spAC1lMQbsjImwgfz/oWr4NH2bBLfb57kxSIdpEzh6L7yT90L3kP62y1w
         nWlHdSwIEX8Mr2gxB2E9UkcEbAy4pBwKKCCZWKs9pn31IKpq+FEbQzkUI6hv4MGZq6gq
         waVatYmfanYt+Tx1iTf9gzjRyPX/6luWeXAZwj6krETgB+uA/ID4bz1uxXtTHwaHfASi
         nIYj4DecP9DF0SxXS42oR39wsxa1XePpTPcu11XWIsS7UfRhaUo8UTlzyqCVggQ28WqT
         Z12Q==
X-Forwarded-Encrypted: i=1; AJvYcCXv75Eeh40EQlCqPPdVjX+JIiM4USrFtR9Z4pX0BKnQ3Xgci3sy9X6UhUHGb4wNSi234fuHWq8U86fK@vger.kernel.org
X-Gm-Message-State: AOJu0YxFkC1i+ryFzYBi+Sau12mUxwBg+MaXLkgFI2jiDl6mVB1jwfdY
	hiT5l80DYgKtT7165zH7NICsKluT/mUisbHcnHz0AjlmkHZflsZBQE8HcYbp2q2DYlXE3JmOOAZ
	7xFlZ5JOG/a9hw9ASbFD+ZO6BfuhGrOcpi3LMsXh9KXmfji3XPJfVaJ7ZOKW8wQM3
X-Gm-Gg: ASbGnctpihgJAyepAKwPFQCvz6ZmQ3lEfDCCTfpEGZUS220ifY50NObN4gQahxQAqqL
	yyXaawwR4le7au9Y8CgOsQEKK3fukBBh2x9jObWJZKBZ0NaHGhKWq1/aTPTo4sGnfX+AwxyVRzR
	40U2hnwdSggZU+oLnDcxdSf6aLMbulB6lNWonC84dDD+nbFjoYth3JsHJkoy9eUzxRkD0ruEy6F
	DSYQe+knI1Qg4bNJtQ3ebzNJj7D/at3gheDwFn/89HxS1p0E3hI1+tMJiOkzj4v1Xy+zGrAyjiJ
	Mi19HrNUVIV53lN4J0pQRSpN4Rhmb/As8ehpVDTiQcqnqcNQTs05B9eIPt1z1G/AbMO+VkX/gsQ
	=
X-Received: by 2002:a17:90b:5103:b0:32b:6145:fa63 with SMTP id 98e67ed59e1d1-332a92d32cdmr5768288a91.4.1758698567978;
        Wed, 24 Sep 2025 00:22:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHH0+pP82pDEIE+FvE4uDjG/rW9TenUB12/4rmERSL5RIhaLFJBaQpN6XvDtOvUl0ui8dZnFA==
X-Received: by 2002:a17:90b:5103:b0:32b:6145:fa63 with SMTP id 98e67ed59e1d1-332a92d32cdmr5768264a91.4.1758698567496;
        Wed, 24 Sep 2025 00:22:47 -0700 (PDT)
Received: from [10.217.219.207] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341bd8fa0asm1377128a91.3.2025.09.24.00.22.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 00:22:47 -0700 (PDT)
Message-ID: <ce1e5c0a-46e9-432b-b2ac-44abba85c7f0@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 12:52:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: lemans-evk: Add firmware-name to
 QUPv3 nodes
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20250924035409.3976652-1-viken.dadhaniya@oss.qualcomm.com>
Content-Language: en-US
From: Mukesh Savaliya <mukesh.savaliya@oss.qualcomm.com>
In-Reply-To: <20250924035409.3976652-1-viken.dadhaniya@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d39c49 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=B4HikTB3W-0rk1GVoTwA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 4xfn9RL4fBycGiqw9rZkM9VsRDKKhcig
X-Proofpoint-ORIG-GUID: 4xfn9RL4fBycGiqw9rZkM9VsRDKKhcig
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX6EqLmP+ZIXAA
 YBSS3+BDkECrUOp1/KwAfX/aXdQzLpBa5+8y9Bh9nE/fA91JSygCLPMl3OeuYqmopOT8p7GAUxk
 EQ9gbko8cRGooPPd0l+Equ3Y2SwFeBGAWaCuLDS2BjtH3Vbz3a1WRsJUTzd0OSHZkKRBGOQBJoL
 NqDS4cyvutQod4bLGEZ3dhQu1WtaYbczdhvJlVI94LZAbvSvMP46BzXf0beSgYr2DxoBYinUzG5
 iJ9napUzV+JEtrJaL/2P/UPfMmzyyh33l4tu16zZL148wYNlaEKU70RiXEXWPww+qpkJsHE6Vyb
 Y4sV5OYb3/IeQoYpXy4HnWy9yaBhzzuXbffXroRG7aJbeFh4rtlfkDbxjYvtW50K07y5AzePdHQ
 aXACJNNR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138



On 9/24/2025 9:24 AM, Viken Dadhaniya wrote:
> Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
> of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
> ensures secure SE assignment and access control, it limits flexibility for
> developers who need to enable various protocols on different SEs.
> 
> Add the firmware-name property to QUPv3 nodes in the device tree to enable
> firmware loading from the Linux environment. Handle SE assignments and
> access control permissions directly within Linux, removing the dependency
> on TrustZone.
> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/lemans-evk.dts | 3 +++
>   1 file changed, 3 insertions(+)

Acked-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>



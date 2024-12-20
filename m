Return-Path: <devicetree+bounces-133191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E259F9AE8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 21:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4D01188694C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 20:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80D12236E8;
	Fri, 20 Dec 2024 20:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oGWLRAl5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A34157A48
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 20:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734725009; cv=none; b=oD01/aDtnVvRNWcII03J/4P1CiVqHkejwwZTDRz6IzPrUs1W+iVw2EYK6ZiSWhx7Gl6mg3hfD3dUWeXTh6WVBNb6aBZuIfz2xAdnVS1/CC99wPJfMvubKcPToAgZYUMwvks+Fgpdgto19STXbB+n2bggZgG2pDKzk281h2agZVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734725009; c=relaxed/simple;
	bh=Zs4JlprWkRWYL9R6G/5v6VnIua89C6vTZlubdjcHDVk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fKGpoCrS7gPRQ9jrpZw5UAbE0d168QvOvvNDk3ocNXcUFgWdkgF/FdaztK0lriARuQqarb/QJoTF1zYonFkLxhURgKyuQ6aNQr9rdkxXt+9D1Dv6fP3sBnFGJtftI9c+NMbvj9aUJpBzmtonEhkjekNmzXCKX8dw8R/BPi/lvNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oGWLRAl5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKD3kFd019313
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 20:03:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjz4Sq36hjRrUju32Ul73yf+4eJ4TQw8j+POxAHkw6U=; b=oGWLRAl5+IHXStqi
	BuIYkO6QcmyJtbmJirgCxxb4AGmWJTSYFDq4KQx/ItAD00CgQbz0qv5OQbBdbwJ/
	YACVnW+5UhSxvf11eDzIq8Mo5sa0hvThJ1LQ5ZfenD8ynbmMSUWcUgM/kE7247nj
	/fn/em1aSY4IQTVzFxpNUraO/a21l10ZW9VVEz9vuupoKaszp43miFHvUtrDLA2c
	zYC6YIXLanddOZZ15+VzhAKwEJzUAMcG0JW7iSExoK/MEFb4e3djHpK4/ul7PZvZ
	je+OMzU3WdU4r6sIOVELA9HKSZ4r19PE+46qWH9Zi997E4mqH4IYWf6TKSRRBKG6
	cRa1og==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n94th4c3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 20:03:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a0d7fb9fso5711981cf.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:03:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734725005; x=1735329805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjz4Sq36hjRrUju32Ul73yf+4eJ4TQw8j+POxAHkw6U=;
        b=i/XMLRN5QzV9f4OMnnYACKOxBnZgI1HbWxgJkDCt7Q6DbAzPuN59B8oGFvYKj0gmVj
         5WC6sDglZeoM+HlZLOev81KxXTppkQ0eFWtUVDQkHuzf4MdQ6+h7t4N3PBAgjimMlEES
         QX2xJy23o2t0AJ8BysekL1pnUZwaw04gLezJ9VxxBT9xC3DICwLAhFfH8ZhL7BVLS4dM
         pMIuNN9sQTOvWl/lj0Q7H0lQG4Vf9eCIoprMoeD1DDmnBq5RCYIepW3FblxBCZKWzXKI
         xaEcGjKU8qgrVWUi1DC/yyuSEmpQtaWI7m5uC7kg/BK5dB2J2m8l2Ci7NMAcfwGupaMq
         zNsA==
X-Forwarded-Encrypted: i=1; AJvYcCWnP/i1Jt02tVKhBPrAnRIKJPJrtq0q/KHXah1hOVq4wi3ZEB76YoZsHBtoPQL57SomhT2mYtqgs5G5@vger.kernel.org
X-Gm-Message-State: AOJu0YwH5LhF+pvZFDWB8vPC+oOsk7UXv+Ia2V5PoMbMwQvHO74rkZhh
	+LPYr2KiY4hMXrifdhOa0O5A4pXeJUNZzJ2nNK/uQ3Cd85zy+yWPTV39sfmoFrZzcq1Zw5ZC9Lg
	1IzpGDdi7XP8tofL2wSJxP7/yxs4lJKGb0HFNl+DAcqHuZJde/qfBcHfA3C9M
X-Gm-Gg: ASbGncuB0ISYjvv/NSqSBosNtz3swyokO9/kZf+jQAj7fpJrIBbtXhM7IrJiRYijhBw
	rVZ6HIajwmNpyCfF5Lk6Z25uqMfandpIlZzXSfjaFewJOytg36moXdFahPI2WphxKZTZ+opojm7
	/CTMZUYDWnstqfM534tyHyl0Tlw+9n3YOxopbnmFsHzv8qtjKP7SYJ+/5f/nY00XQnSl9CESwov
	rfGpfyjVJ6wBHzl3/f7McSW/0j7cJrr0W/kWgR9XznLPMMCI23xph9J2fQnT9sfENOoJ4xpc+Of
	tOG5yN8ZwqK5+n5y0VPkJmKoShII+ah1IaY=
X-Received: by 2002:a05:620a:2496:b0:7b6:e61b:3e60 with SMTP id af79cd13be357-7b9ba742c0cmr237021785a.7.1734725005279;
        Fri, 20 Dec 2024 12:03:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGOU1M+QO2EF012zHKw00KoR9fn6Wc1NfhNg0vW4QRfK/giOH6H62ekNUf3K/h976xQT1AJw==
X-Received: by 2002:a05:620a:2496:b0:7b6:e61b:3e60 with SMTP id af79cd13be357-7b9ba742c0cmr237019085a.7.1734725004858;
        Fri, 20 Dec 2024 12:03:24 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830b2dsm206705966b.8.2024.12.20.12.03.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 12:03:24 -0800 (PST)
Message-ID: <9cbdca90-e76c-4ebb-a236-a0edbd94a629@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 21:03:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 1/5] dt-bindings: net: wireless: Describe ath12k
 PCI module with WSI
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241105180444.770951-1-quic_rajkbhag@quicinc.com>
 <20241105180444.770951-2-quic_rajkbhag@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241105180444.770951-2-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2QvD7AeJ4EPMfBvDnL7pwDtgAeTexm4a
X-Proofpoint-ORIG-GUID: 2QvD7AeJ4EPMfBvDnL7pwDtgAeTexm4a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 mlxlogscore=999 phishscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412200161

On 5.11.2024 7:04 PM, Raj Kumar Bhagat wrote:
> The QCN9274 WiFi device supports WSI (WLAN Serial Interface). WSI is used
> to exchange specific control information across radios using a doorbell
> mechanism. This WSI connection is essential for exchanging control
> information among these devices. The WSI interface in the QCN9274 includes
> TX and RX ports, which are used to connect multiple WSI-supported devices
> together, forming a WSI group.
> 
> Describe QCN9274 PCI wifi device with WSI interface.
> 
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
> ---

I think this description is missing the key points:

* what is that control information (power, data, radio stuff?)
* what happens when the OS is unaware of all of this (i.e. what happens when
  we don't send any configuration)
* is this configurable, or does this describe a physical wiring topology
  (what/who decides which of the group configurations detailed below take
   effect)

And the ultimate question:
* can the devices not just talk among themselves and negotiate that?

Though AFAICU PCIe P2P communication is a shaky topic, so perhaps the answer
to the last question is 'no'

Konrad


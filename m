Return-Path: <devicetree+bounces-151921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECACA47812
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 241EA3B102A
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 08:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86202225A40;
	Thu, 27 Feb 2025 08:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GIG68AQO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73B542065
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740645679; cv=none; b=FEwTwgms9H4WXhYjzD8YR8JhKX/A0B5Qf32rUTE3LJH897kv1IhkYymK9uhVNCPc1KYXhPgNMiWZadCCdg4KazznfHO2s2EmPlIHg13Iyndfi7XTUz638Rt0ThslhdaKld1yxAyqwlgiwVtF1fCU2bvYrHff6rTtLteTBG/1QTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740645679; c=relaxed/simple;
	bh=89rC7kZbkcASQamwLRvrFvIU6AhSGfA4ExjQECq5WRE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QhizUW0baLab5NCN7Z6vDHyoYgXrCct84yrmrG1Mg3dDIm4AMUuOthYS8/i99NThij2/2gYNQ/PJKSy+XzXZ1K31/z+7nzPqdIzqSDV7DrwqJKGhFVfdlWR31I9qei0J2zrnRbxU3/g54vDn92zkZcwOH+brU7EEaJA//GGpBFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GIG68AQO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QM18PO012250
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:41:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JOqNjJBAIhxG3FL4vnYhg40wLqyc2fHfkuSLoPNN8hs=; b=GIG68AQOcY+g3pQm
	5cyrNADXaEfweCFH3qppKTOkieS9Vlr6yXVGzAUN2c6+W1w8nLAGtxf++TozaQIN
	zw0QF6fqplpUx5Us1LF3J+4ZO65/BxHZEaUi+X9D4T3Voxql87s1llM6wTvLK997
	lgCYwjvWe/Uj3GxVI2FwwfarS+2W9nsJRM/euYpVqxPa0hn3EuV1fC37SXjzzWLL
	pU34mAPRu1hRzoSpeP4OzEd7sxXSkAiEGUphLwg11ZKZlExiKObUNjlff+FIU7JA
	0FUAMrlDvQ9SS+lPOrMKOQTAzeJI1//KVUQpm3cgbKP/U+ceYzBPgKpCZy4p2WyS
	70zt2w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prk4xey-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:41:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e662a02f30so1381346d6.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 00:41:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740645676; x=1741250476;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JOqNjJBAIhxG3FL4vnYhg40wLqyc2fHfkuSLoPNN8hs=;
        b=jrKy5A2X8UGU9pL1AJAVjMWLnsFwXBH3Ak2UpmBoIc9dB9z0bYogxhkoBhrElvnnXY
         e/wLwluGg1iF0+MDEsXeUPRb8xKHP5e4UnyvnJzkt5PpC6koda0wSrZ/QQFlpe5nCG0E
         0hEAkm5YVsRikQODCiAYXiShrpCcR0VSrq1bWI9OW08EmuCFdh/c+qSDUMZDQN/1WW7y
         SbfakbuikdvO655a70gwN2trqHnSiBHWdiVI0Ngixde7/ABUDxUJd7WK+CertZ8TtD+0
         wvqGnEQh/6NPhc8ckjQNxzuaZ6M24SCuzZ1noBl32nA6rWobYrF+9hVDCKJlx8Y788zk
         vWCg==
X-Forwarded-Encrypted: i=1; AJvYcCWy1hcWmuRTBT1Y/9AgN+/ZSCUv3cndXWMbvFHb1cZWyolwbGM1qdVpk8DThUazNTnlqG+Yhw/gSFYT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+yPmjFbldDsF5pfRFKblNGpAj6wm6L+7I4MK1YrmPm/F7rQsz
	x6QE9xZ5QEfxNPJjT6QuBLNCLmhG9wWdCWqHKDD0tvvzl/VRYu1wn+p43btSQJbRUPwABBxytib
	aj+lajg34ONtXUDcnUMQGelAzN3xF6vNcERI7neEbtQSMuyi9fXTXlQ8x2oGYAhJg93eu
X-Gm-Gg: ASbGncsBxsFq/3KKtVXXOM/064XaL9IuqzDEG8p6sI/kFbSu2wVMs2TcbjUFUB06+R0
	Ey6ifxKHiR9FEq66p3qlJWGFHpmwB6bTxI8AbmxPAltMKvI0rKkdbfxkhSqLBbr9FFu525bSENQ
	3AARzOlJQ7zfR0UokyqwPbp2FvYu9Cy51YZxxsRZQCFlEfHZ885CSRHxvmcQqQuquqzJgQgNYMZ
	iHQK91spiUukuVhxOQRnQW7RMR5u3BZSV3Nltd6kmA7sWT+kGP76YmdtmIoLzRWirf3gwKxsvlb
	5SQN4eOcyyyXeDvX8yNKXfa+j0hy8/e0wQeQ8J0TtGTBzSrEGYBciNSccz8gu/MIFAi4KFU=
X-Received: by 2002:a05:6214:d69:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6e6ae98a192mr113618136d6.7.1740645675827;
        Thu, 27 Feb 2025 00:41:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxMysL475oAxX/iyIwsIBUj0mWgpzxJ4dLkME/PMjx+F7J/+BL0dq6r8TsPU4dwGG03mAHGA==
X-Received: by 2002:a05:6214:d69:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6e6ae98a192mr113618026d6.7.1740645675490;
        Thu, 27 Feb 2025 00:41:15 -0800 (PST)
Received: from [192.168.65.103] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c6ee4c9sm85831766b.97.2025.02.27.00.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 00:41:15 -0800 (PST)
Message-ID: <40a2b943-c681-4f91-ae40-9002440f8708@oss.qualcomm.com>
Date: Thu, 27 Feb 2025 09:41:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 external DP support
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, laurentiu.tudor1@dell.com,
        abel.vesa@linaro.org
References: <20250226231436.16138-1-alex.vinarskis@gmail.com>
 <20250226231436.16138-2-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250226231436.16138-2-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zeDgLx0GzD5wk6CZ-bELlRq9Hl7y7vtu
X-Proofpoint-ORIG-GUID: zeDgLx0GzD5wk6CZ-bELlRq9Hl7y7vtu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 phishscore=0 spamscore=0 mlxscore=0 mlxlogscore=980 malwarescore=0
 adultscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502270065

On 27.02.2025 12:12 AM, Aleksandrs Vinarskis wrote:
> Particular laptops comes with two USB Type-C ports, both supporting DP
> alt mode. Enable output on both of them. Explicitly list supported
> frequencies including HBR3/8.1Gbps for all external DisplayPort(s).
> 
> Due to support missing in the USB/DisplayPort combo PHY driver,
> the external DisplayPort is limited to 2 lanes.
> 
> Derived from:
> arm64: dts: qcom: x1e80100-t14s: Add external DP support
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


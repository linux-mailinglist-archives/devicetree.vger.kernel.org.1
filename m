Return-Path: <devicetree+bounces-175099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA85AAFD09
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DDAB1C23F84
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E21C526FA6C;
	Thu,  8 May 2025 14:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="djN4lqYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7902D26F443
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746714600; cv=none; b=QxdSgT8jIuLbsvFImN3OLZH24CQ+YTM/rJebStbWWswspv7G33HRr3AIb0Km8MQiYGmRyLOFE5fsE1iHKx1vX3AY5QY1gAC3bknznflzK3IPuKMQwRE5cTHdqMhJ9aV/fWric8Ga+59WaU0IUrMWsSj2BgMr0klvTV4qmf9CeE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746714600; c=relaxed/simple;
	bh=pifsycc66KzqpKaUgTJMqgSi5C71iSmELI/zL5LoQMU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lBECN/BJBd/c1Kqg8cS72Pe5kLNcZmpLzRxN4J7peIvNhZjoz0WaXfa9CQWWO9Y45BoTMTXOXYP/Q6mFufAEE6TcW7Rxo9ulssSlhQv147V+FVLDpJwqsPIAcbPtYV3tVsMkAN33oLD647TOfv0btTqtPRi15XG9/HpvjvNNo8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=djN4lqYb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5489cD8W012603
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i/cgkTnxyg5jfdY6+Lyq4L5THEEwjAJtINqyd81Steg=; b=djN4lqYb4H0wJPQb
	K4O5bAJWtsSJsQCa4f6s4FobiXgYyW5Hg+NLhQwSa1OaNpB9wJemiy+SiP+tUhpY
	WKQp2BkM8Xv1WuUZwd/e11HMvOdT9VFL1AorrRfl7W9TxDDxvM8T2TobbhGEv+qk
	dA7fIi5jp1xOo+v3eNpYndMyrRNA5285CnsYMJfKIKQCXQ+eGpkH9PnH/wCiSX62
	iUvhPOPRwZDtvgEuUBqXLOvOTVrgS+6sLvi1ajrdsvnIAsjEF+iJbUfM4noUE3wP
	DF/VY/7/VTlVFaX6NAVT33pyl37kG+c2uCStfuY7E7FSQIV0kpzWH5guSmeUY4mT
	gUHmlw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gt52rsm6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:29:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f541067fa4so2225736d6.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:29:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746714597; x=1747319397;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i/cgkTnxyg5jfdY6+Lyq4L5THEEwjAJtINqyd81Steg=;
        b=ceRidwD79MjZEMcOS/nQWlFFDCN22iCEFZdQf+qJnbhI+Lf+jfLSx5HfJS5T6VYxFo
         JtUjwAQ2+9cXhM+T53EJEUwkFQiXNspTUdJJv+mdJ7wYhw1xAA6QigSlfF/Q7Yx33h7u
         2ttzexrKGo3f0Kxmxj4944uinzJN6QVPkRZ2II86GVza/v1bQjCvQ9GM1v4ZwOt91Q9N
         q4MpO+twAnA6kitDN0TZiA4WPJnCCVmcDxIkHn4FavmlIKP/pHIP1FxM1vH1uwrWLH91
         CYmaT7Viv8WgYdAEY7o8b8kKeAAMdN+uKkE72dxDsyMMbKLFHyPAS1GMwttTT5kbZJ2y
         Jn5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXhkmX72igQVLrvRDFO3bzFwX+lA0kX6nz1cbNFrXesUahcUOPbmqlNEy4aJU8LVYgOz03+dODWbdpu@vger.kernel.org
X-Gm-Message-State: AOJu0YzK+NbQoycRqNw+fJlnDa1/WqpADX95rmdZZO1wjMYHil4vroSJ
	8ywfnhVwTe9yjojkR9R1+mwJzYSXY2RrIAXZo+w3iybMTGeGthcLssmx7wkmGnHnekWOsAzUdKn
	Af7p3EckFumUmTPS8jrc/xHckmW0WzxDrBp3Pw+j/Enr4VDd4Gng7Iebp5bsh
X-Gm-Gg: ASbGncs7kggWY4C+HislF1zp/pBZSkuAi2D32zTtuMGIXYNdUbTsu3HT5oCC4TFum2y
	KsMd+zr1fbgRvGZ1lXxCnCgPUrI7Gbn+w1XCi+erqrojL6wal1N13KhyhDOzGEEx+HJxGv539Qt
	BZUDKwVIV4j2QG4JKIdjCTtbzb4v81g3F5kfHWsvAReb7kV/OK+AcUP5Gv7z/RVokTX1ri/JGlk
	+Ll2SYHpMe6M379v5Ihgqt5zj58B9+hZRcjjrZvyxofE+puUYpfKV6+Bo4ypyWBcv13LVmhvdfX
	ZJ5IEkXQxYjrDw8T87rGXdZ81GF4Mx0NDEveWefkuZFL9IK33KzENhqahQstUDEZ/RM=
X-Received: by 2002:a05:620a:390a:b0:7c3:c406:ec10 with SMTP id af79cd13be357-7caf741a8f3mr434991885a.14.1746714596769;
        Thu, 08 May 2025 07:29:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfaVl8OObnjHQhd/SJGAsLqOH3DFL4CG4ytZ/Pzo30OjRSwoRvlTataNc/c/g5GA7RSzbphQ==
X-Received: by 2002:a05:620a:390a:b0:7c3:c406:ec10 with SMTP id af79cd13be357-7caf741a8f3mr434989785a.14.1746714596360;
        Thu, 08 May 2025 07:29:56 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fa7781cffdsm11366152a12.46.2025.05.08.07.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:29:55 -0700 (PDT)
Message-ID: <7123afc3-ab67-43f7-b346-bdc336481992@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:29:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: qcom: msm8226-motorola-falcon: add clocks,
 power-domain to simpleFB
To: Stanislav Jakubek <stano.jakubek@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <cover.1746711762.git.stano.jakubek@gmail.com>
 <cdb6915bf40c055c77a0beb2f49c20458adf7481.1746711762.git.stano.jakubek@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cdb6915bf40c055c77a0beb2f49c20458adf7481.1746711762.git.stano.jakubek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyNCBTYWx0ZWRfXwaJwLfRWSd50
 vG1x6SOGIf8tNwu1zSztN82qV181Hp6JO7Lxndn8qzRgTph/sxadLD7AN2HlvX+YWD/4nZtcrll
 5EV2HgTe/8jNs/QsZpJzwSY3ON5EEtyFzIH4UgaqLuPqljga3CZC0xiOA3D0MdtcEfnbs9y+5fr
 iFNwangmjUfwxbhm/fmV3apHfTQDnCQZ7pEMDLVVu9gg8oJrZG+TF4Uno4LtyhrVL+e0217ep+k
 bDMWLVR/3fY5p6UDW/pvTZFzuv9QLheVx4hsv9J2Sr2z0TRoZDDIgWJYZChB74YqUh7rkdy8WqN
 J3PviwCk0h99YN126GIIa6flzN0vgC/2mP7Ss6Ucfy1keyCSzH6eHbaYp398vaeRFfWz2lu9xY1
 3Nu6hJJvBaKpeNPqwfJ291SajAuEhRK/oxvk2nl9Me8VFt9l4L1B93o1Ecm26fLQJxguN0tC
X-Authority-Analysis: v=2.4 cv=LKFmQIW9 c=1 sm=1 tr=0 ts=681cbfe6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=uq1pj42CD5qt1GRQKNoA:9 a=QEXdDO2ut3YA:10 a=8aNmnrDM0H8A:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: zVMSGjeqG00T2qlTDbMpkwkJilhtVSDe
X-Proofpoint-GUID: zVMSGjeqG00T2qlTDbMpkwkJilhtVSDe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=637 clxscore=1015 lowpriorityscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080124

On 5/8/25 4:11 PM, Stanislav Jakubek wrote:
> Makes the display work without clk_ignore_unused and pd_ignore_unused.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


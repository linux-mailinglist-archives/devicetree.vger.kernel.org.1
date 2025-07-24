Return-Path: <devicetree+bounces-199204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A3EB0FE43
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 02:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A7121793B3
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 00:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F60347D5;
	Thu, 24 Jul 2025 00:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cU3dguX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED536C2E0
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753318116; cv=none; b=J9gS48rCHKPHsxDgTOqC0tFWsAu/3uj9EE1IS67jp1neO+PIqg7N+c+UwIyt+u+1Hp/uiYhL+lhrtGrpvP0QRP4Jbao3N5rwmvMkiqk4qTWSAZB8vFlZsyozXgRJKrrgL6tDVyIvw5nbBi6VxjlCJlmzkFmYun/Ww7sJXxweqII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753318116; c=relaxed/simple;
	bh=5Y4+1OYJZAeHUPLBYQx8kSVooxsv7DlVmjvdbv3x1uU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uoQYvrMK1KjK8RyL5zNPB9J/TVoTZaMJ5YspFON/jdBjnYkQTDboLDWzmA1JHlnfT55RUweekxUX+tPUFNWfh+ZYX9FD0xklf3LOHRc1OyarVKIZs6W03T4QN7GAU2Z9bBdWFSiXoO06gLyboQuCqbcQ+kz4xqx4ZqvH17o5FwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cU3dguX1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56NMXP4L001536
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 00:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iv9yjSoPymrEhpWFY2OCTVKnjOfTrTpo4a9m/IVzyY0=; b=cU3dguX11UZN5kLs
	bWHz3I1Ole9ar5grt/PZITtZqkyNZMKLSKB8/Ktf01mfoonsq8ctGXLwt+xiI8aR
	ZRX+hdJxrbgU/sRfw7BWwEGwAe3vsqIUOhVLLP5OXjzx5D6xN/b2gpfx+iWP9r7F
	15rTgqEYBQnyfgbef1BjBB28px+z3pMxut1rC9X8fybYVhZ5v8DRHfVrMoMxrDEX
	Bm0k8yrz6W6P524TT/Oe4OxVtJ1z0ocn0O+17+au23QRNr03SIETwAjvKtaq+Bm8
	T5kSM8/mvIvnsizDcSZLeJHoTfqezxf2mQ27xPkYV1CSv2UbSwybLhL90oVcNBmn
	i0fD8g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482b1udh0q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 00:48:34 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2369dd58602so3989065ad.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 17:48:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753318113; x=1753922913;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iv9yjSoPymrEhpWFY2OCTVKnjOfTrTpo4a9m/IVzyY0=;
        b=UK2zesbCz2tFWS0ASp7cKsPJgT1N3qVL5CCCMTK9RdkyGUIJ+RtaIpd8pqilkEL5ib
         CF/GrwGnFSddK+YfNuhhlfpP+JI7O+yExvxRGKl53lmNn7hdCNJ5Gt8ly7gHngtwFGtF
         xlOYIHxaekQhQHmqWNjBRTLMtO8o/8ca/SYH+saX/Q9W/0lTglr9yVQfZIy7OpUXM42l
         E8jFLBgm7G1FDdHftQq3uIaEWZfVBBltKp50YPoXwbwF4jcd4K4LU6m3+Irp9SsAGe8+
         4aZ/nBMEDv0H+5TFQgUUodk1OkZLhyhvPQof0V0Hfp/DYftEaZpL7+AP6VlEvO1aJTGP
         MuPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHNvHx13Hx7blgE9kGekYDT1ewOa+hN93Ot86FEdqr8rsIepFZy3/3SNL/lgleUjErPHT4p5lHxkwL@vger.kernel.org
X-Gm-Message-State: AOJu0YxCfgIyzuZQzt6aF2GFzOSx3di94b1S/k7zq8BbZEf2cVpiz2tX
	Z6jFOtT+WzeTzDXiKhTtDUUXzNd+3KtbMnwFKpkKQUYas8fAvFYBxj4w5lZ1aaAEd9A6iFUntgJ
	4arOnCGRxsU4Q/2fKQZCA+gZZrIb/EohWKuXxA8g24JF+eEVjo1/Y+uarYRHtM+Sj
X-Gm-Gg: ASbGncv24w3YzoApr7wXzZbbwcmisY23j2yhHKUCV3QqEicVeMACKSTOmSB/0sNLPNb
	acrhdKwCDJudqF0rcTPZ5vZkBBmdC9UCb7h5+i+GWwpz0JkatZ5asiQnt1mfngK34ro+u+26K9h
	t3jwUZE3XT+od9XOrS9Cy/1JwJ1vkwucMteOBZN17cKW2Z3AjZ6xXCDP9xcSPVFRU8usrpLTsEt
	UM2n3Ov4MXzyiRx6nlhoWWhNXLlItmzmxw7NZjMhRE6jqFDpEUAK2ftWrEwrlvlhkRAdBr1axSr
	PV9PoEt+KYgv9iB4fiQJ0Xz58YFTODziv5AoA24blTO5EVMYylWB42Ai6TfKhXtfsx0bM2W0YDf
	lodGFFxzFH89BOnHBSCoxrwFRse8=
X-Received: by 2002:a17:902:e80f:b0:236:748f:541a with SMTP id d9443c01a7336-23f9808e0a0mr65325955ad.0.1753318112926;
        Wed, 23 Jul 2025 17:48:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtgVjVnQZl9R1khr6bvXoxGlsAxZOVo2vw1YbZ3PlcB22TMJrQHHVvMIcFioMt5XbHmkOknw==
X-Received: by 2002:a17:902:e80f:b0:236:748f:541a with SMTP id d9443c01a7336-23f9808e0a0mr65325605ad.0.1753318112460;
        Wed, 23 Jul 2025 17:48:32 -0700 (PDT)
Received: from [10.133.33.58] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e66270ee5sm17485a91.11.2025.07.23.17.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 17:48:32 -0700 (PDT)
Message-ID: <83173ae4-4e5a-4bc9-b02b-6cef26489148@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 08:48:27 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
 <0f9eebfe-21f8-48b8-9b49-a35126aa6dd1@kernel.org>
 <67ca3b6f-3cd3-430e-886a-0443f6d630dc@oss.qualcomm.com>
 <miiod6ft7iavg64q4f3uwcnztamgvt46gcguean5atsqi5d5us@xrwlzznsgx2z>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <miiod6ft7iavg64q4f3uwcnztamgvt46gcguean5atsqi5d5us@xrwlzznsgx2z>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LdY86ifi c=1 sm=1 tr=0 ts=688182e2 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=6jahUQGBau2IMRXzWEoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDAwNCBTYWx0ZWRfXznNjrBIie/3e
 O+8hPEekqfb6cY24koTgw1L0Camx/dYntUDF3TZfZoE18QujSZF/fpxmva2pQvomo7SqYikzfmr
 3n5++CWTXUGtgcCZaqtYsClRbg+qJ2cKiZPdcNh7mmV4UzMFbZza/FTMDkk1O7ud4MS4tC/tw6T
 6K1Qkap+XjPHKZ+NAQSh2gFGlnKj2QuPgYKAR9gUirZzIGZNZvo1XnVfMPJdhvj+JXkmIjGWC20
 pSjIXMADSl4vFVQ4vmNPo6mINbxlE76ODvKjszkkwUAC9LspFQg64RAgy1/bQjEFnmUlWopq6Nt
 HT/4LGvVmoPi81UciIpjd9D33xzz6e6kOcAJzk6oJ27ymmYLegvl4LqPQ2hpAo7ZzzW2BWyGRe+
 iE45iyYBlNIZOO/chtVbbPw8ieLa2QN+x5tgqAcJ314j9M8TVVhbJBzTvHINHiazvUUTcl/6
X-Proofpoint-ORIG-GUID: hK0YykcQAMDVrDpOPxgJTqVTjsg-2p0b
X-Proofpoint-GUID: hK0YykcQAMDVrDpOPxgJTqVTjsg-2p0b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_03,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240004



On 2025-07-23 19:26, Dmitry Baryshkov wrote:
> On Wed, Jul 23, 2025 at 02:44:14PM +0800, Yijie Yang wrote:
>>
>>
>> On 2025-07-23 14:28, Krzysztof Kozlowski wrote:
>>> On 16/07/2025 11:08, Yijie Yang wrote:
>>>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>>>> on Chip (SoC) — specifically the x1e80100 — along with essential
>>>> components optimized for IoT applications. It is designed to be mounted on
>>>> carrier boards, enabling the development of complete embedded systems.
>>>>
>>>> This change enables and overlays the following components:
>>>> - Regulators on the SOM
>>>> - Reserved memory regions
>>>> - PCIe6a and its PHY
>>>> - PCIe4 and its PHY
>>>> - USB0 through USB6 and their PHYs
>>>> - ADSP, CDSP
>>>> - WLAN, Bluetooth (M.2 interface)
>>>>
>>>> Written with contributions from Yingying Tang (added PCIe4 and its PHY to
>>>> enable WLAN).
>>>>
>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>> ---
>>>
>>> As pointed out by "arm64: dts: qcom: hamoa-iot-evk: Enable display
>>> support" this is incomplete. Adding new SoM or board is one commit. Not
>>> two. Don't split board DTS, which is already prepared/ready, into
>>> multiple fake commits. This is not a release early approach. This is
>>> opposite!
>>
>> The inclusion of display support was not intended in the initial patch, and
>> it was not ready at the time this series was submitted. Since the display
>> patch set was not submitted by me, its timing could not be controlled. If
>> preferred, the display-related changes can be merged into this patch in the
>> next revision to maintain consistency.
> 
> This is neither merged nor accepted. Please squash display (and any
> other possible forthcoming changes) into this patchset before reposting

Sure, I will.

> 

-- 
Best Regards,
Yijie



Return-Path: <devicetree+bounces-221321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D64C4B9E7B8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BE393A75A5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD99259C92;
	Thu, 25 Sep 2025 09:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O9OToqBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778C9212B0A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793619; cv=none; b=r1WNpXp0Qnox+ZCO44x56ZpOLXywCihz/q80/x6aa/ar1ysXs863e3YNaeqX9LNYY/1BNAvlJBTvZlZK2I++LXZLKjjBprAu26O8LryJR1qNOnWogjwn5Xxl7OkHCB2pov3hWtP5QcfIezBniKaZs0O2wlg4Tr8bHHD7BskKxdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793619; c=relaxed/simple;
	bh=vKCOhHuy6TQ6kFtJSKKwqi86Q88qrb8jlKLi6GehGjs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V1WqmwdpbCnwwxf0ACVQjwFdLCSfuMYYxsgropeepMvAsNeoFnobqBvzbuz5af1UxUMMWP8g+nGFppb6Qy0u0/UQZzGt2ndHXKx2dRsuo/k8JZeQBRUP3yWqUGQU8gzaasPxIEk4gxkJ0laCLidD2RSGvOIYClS3rQIOkEq/+8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O9OToqBr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9RsIn019910
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:46:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JmHxfa71BrXt3BKcwJJc0tD11WKweUFsuFqsRUHNN94=; b=O9OToqBrXkQELy/9
	ImYchcD/a51+Yx2YVyZpMDQpHTqrGDPzCXTjVQOfrMffRCsKft5mF7q7YStgiit1
	3kPzalTid1tltptkaLZG0iRSnKnRK/k7NehCJ2KH3OTaZajPGOTHDk5kcAwpy0kG
	qT6aaNs5QglqOeU2q1haAoj8h7N4A6sK4hbB0+uNwnEKiIzAAcTWuzLkw4mcdyTX
	aQ4a+569R5ZGSZHSCNETPDH5P5GoefMpmaLzNcEk3OQOuSY1YlSJ4VjIhIzSamWn
	Mhwb6nROuFuMJqing0oqXjl7/ytmuSYW+V7ku+zuXoaU3s5KLK++vOhOFR72Zno3
	OrLUHA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe0uvr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:46:57 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7c51f566163so2252396d6.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:46:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758793616; x=1759398416;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JmHxfa71BrXt3BKcwJJc0tD11WKweUFsuFqsRUHNN94=;
        b=UEInyOe2VEYl5q0ZKPXha5hIBfuneZW1qmVsiGgKSByDXdYpaXnXRSD2GhLOpMyAkX
         n+5t9W31WGv+DPiwN4Ju/KyYOeUMfmXd2aJ1vUF72MCTVdQdJrsdi4tHxLaVl59uhvo2
         ibl5m8cCueTfyjVMNdLbwH9Qd9gvpHpSnalaovuY9V+MidPcdMNuBD6NUKQsHQKxOLJq
         fHscPGh5ivfLww81GI/2h5AawRXmxr5lerg8n6KfBdFrfsCZZLnUITGyKIY7N78L4NeR
         ljQw4FIsmIAeG+ui3frW9mCg4dIw4PnqpGHypYM9PuXpr3QrJyExbd4cLqifxK4nJC46
         YvWw==
X-Forwarded-Encrypted: i=1; AJvYcCWMYdQDSTrAy2s000LC+K1IhC7vGnHPFWT7sHZzd+JG9RNnEMgNeNGc51i3jwSFLVsej866/mALBXYU@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn/xeUl9p0PRN2QuAmf4A1kTuJjQB6UAVDtjAL9olugcLcsonk
	S3BhurfOLAWeLZgAQkpCEwLErCGdng/XIGp2zsseFjBHArbLMc2juxhR/1sdVea6abqUuDtx5Cb
	iKo0tmSuB4O0GfgJm6XeLE0aJC0eizhy8c1ZmqCPXTHRn9BlDJfdULWCXjfIvwuL3
X-Gm-Gg: ASbGncvdWOWddZGwfo7RTBLa9H5I/SlFo8YTJwtpicudFbgXwAfkIw1cMp2yyutIIc8
	v45UrLyLEnCBbMsXnNVu+yi/uR7x/lRUv0TnHWC7unv+mt89cgn/OieZ0Pzqop2zt464h/aLrcO
	VPFLX5Csg55hjxGpV1y1vDnBXzbKc81/Yk5yegp+icz97XT3n1ByUVSsCDA91FmSTpw2xlGQQkU
	Rhs61ujXF/45uMwkXMHRDanGJldCQBcsObBBI1kItfun2lbssilUteZzIax3dSRzywwNL3zqtpX
	hiuoOjf7a00p4clBS772pVExk1v0T8HeqcMbBggUwb6gwj4D3S0hJbGsXRCyWnKToSfbCP7mkcW
	pFL8jv0yN7rXeLJ79Sv4kyw==
X-Received: by 2002:a05:6214:501d:b0:78f:baa:5712 with SMTP id 6a1803df08f44-7fc321f13dfmr26645826d6.1.1758793615905;
        Thu, 25 Sep 2025 02:46:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEs3+VT2cJTyfYqoNxfO7ts00JlQscp5eBOdWL6WQlDnJsf/ApueNr/534dZ9xDeLw6b4HkNg==
X-Received: by 2002:a05:6214:501d:b0:78f:baa:5712 with SMTP id 6a1803df08f44-7fc321f13dfmr26645606d6.1.1758793615306;
        Thu, 25 Sep 2025 02:46:55 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3ae2cd7sm950965a12.31.2025.09.25.02.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:46:54 -0700 (PDT)
Message-ID: <f7b46afd-eeaf-4647-a721-0bf092ab8e09@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:46:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
To: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
 <sn5a3dqnd4xz3tgtw4vbmjr4pdow4qlo3jjryp5c2sx3wzke4j@fnbexj3kch6d>
 <00594112-36ac-47f9-bf26-2270b7cc3266@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <00594112-36ac-47f9-bf26-2270b7cc3266@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CQOcTXPH4xX2AngCbnaXf_UfmqBSJLKI
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d50f91 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=uCnE5zM3HIJJKuD88EYA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: CQOcTXPH4xX2AngCbnaXf_UfmqBSJLKI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX6bZTtxH8+6Vc
 U43408ifvPOpB6eChjdU+ReE2/TgYaA6cHzbOLkjUK+maI1P7TlxJtefRRFFCGIg4v4vvEk3jVK
 Q4gs3KUx9SXDt95ifaWk0mBFHjy7sArw0/DM3wlCLI3ni1wuKTlCP+VMu6iA2l6ZdpWDVjHFoXe
 sW8TBnjEq2TRHeoZjFhAwodTnxQf9dKXgDYPwjla/KMehheIV5OqhhfKiM1L5hEqlLKoVrdgFwe
 OJnbwdUdyAYxaGLJiXF9WWFh8gR6e1upPpa2Wx+E+D6FbhL6akOFoM2ZP6L1n7zWVimQdKWx3Ty
 Y2DKjuaGP9OQu1qWSTJZdpVqAG+V49m7ny8EM/M/yqg0iZF0B2vxgooc3SBCBXswZjZ+bHQYPmL
 s4DuZnzb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On 9/25/25 9:49 AM, Aiqun(Maria) Yu wrote:
> On 9/25/2025 11:20 AM, Dmitry Baryshkov wrote:
>> On Wed, Sep 24, 2025 at 05:17:23PM -0700, Jingyi Wang wrote:
>>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>>
>>> Add the base USB devicetree definitions for Kaanapali platform. The overall
>>> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
>>> (rev. v8) and M31 eUSB2 PHY.
>>>
>>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
>>>  1 file changed, 155 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>>> index ae1721cfbffc..08ab267bf9a7 100644
>>> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>>> @@ -12,6 +12,7 @@
>>>  #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>>>  #include <dt-bindings/power/qcom-rpmpd.h>
>>>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>>> @@ -958,6 +959,160 @@ opp-202000000 {
>>>  			};
>>>  		};
>>>  
>>> +		usb_1_hsphy: phy@88e3000 {
>>
>> No update for GCC clocks?
>>
> 
> could you help to have more detailed comments here pls?
> For this driver phy-qcom-m31-eusb2, only ref clk is needed per my
> current information.

The QMPPHY acts as a clock provider, which we're expected to plug
it back into GCC (and DISP_CC), see e.g. sm8650.dtsi

Konrad


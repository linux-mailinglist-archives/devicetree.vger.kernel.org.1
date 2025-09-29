Return-Path: <devicetree+bounces-222340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 400D2BA831A
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:53:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C9D2189C3BA
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223FD2D0636;
	Mon, 29 Sep 2025 06:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SqBSAIPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753502C032E
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759128672; cv=none; b=hlgyYadEvszs3MIefZ0rWtTKa8eC51DpnuaXDiSOGKjye/kIdJQ3C+rueCpZqZ3wrsZxog8jW2VIEv/+xE5JBAUj1GpajGbYfifYE5El5CdwSWEOKF/xQufi1hwSHmAlN9j8kRt6Cch2OADQlrzJwBF0cYAU1zSTNoIHvo+i7gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759128672; c=relaxed/simple;
	bh=Qs6Xu2skLRe1j3hqfR4jb/bGbkPW2iNTslRy5lTMWsc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DLb9kaCXksQa4XjVh0PnwU/v2KiD4qnNB3xe+UN9qAnUzw9uXX83LpCp+Uez6gYYzF1e90Dqo37jA95exDEoh4a5uIiDKWEhVZC2fcCQYkxFwJxLvtH6LhuWwmol3HHMwkzWYrbcqHl7eWryPfKhWZcW6Fr8VbTHqK9hL+Ekj0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SqBSAIPi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNDqXp019481
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:51:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1g51hOpNYcbi+fYrTKGLSDcwoetQbIsCELfJGZDrqFU=; b=SqBSAIPiwNbuvuHp
	CbwQYSdS/AY8z53FTL4wf8vEEJ3LwS3LMacqeby5qnN4Bso8ylRZNZHU4Y0kxR1r
	PFjEpjSB5rOXpdlrdXlEI68DO1iTPFV4dit3y7C5zuEbOO3uB+QEqKRdDTTgjuLh
	lfT/ppNZQJy0rTU/u12DfXSnLiVEcuCXPBUAxOOv+BE5mwCOJTWE7QrmwJ26Brh2
	+fMo/6DcOgiGt1jOX0iJnPpTdZWyPTMJ5Yqa8PxLGIbGcgdFnBQ1vi2u4zb7ziIm
	WTjDlwfNt2T92d5eoclIWaPmwa5hTs6ZRB8u3HpF7zSKMevjgfxfL48jCMkS8RdV
	UrgYwg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a5v5b3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:51:09 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ed9dbba55so1192456a91.2
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:51:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759128668; x=1759733468;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1g51hOpNYcbi+fYrTKGLSDcwoetQbIsCELfJGZDrqFU=;
        b=kIlChkjCkxHOVtFc+OdR7pWVCzyquyDDDJuZelCIBVchLunhAm+a5yFI2traR5i+x2
         vtBYAnnPRrAqFzWoPaE4BdUOIs+P7h869nTsEQBgExTtG7SqIRj8KhxG2Iur7/zRqho2
         l08BPiHTGiw9UK0y+CKQ29PJ0LjFXOsVcrR9fIgH5ydmrkagsqDHtCXjgl63m3sMaDrq
         SBgzOCWD16oh9cRKzyV9GhmWaolQD56jGrehCqprL1g29XuMDyyH/ghqM0cjGtsYRfn5
         eqnMwTRb/7+JYtlk6vxzo890FWXx+4zmWWAI05zPv35pGyo1ZfeVK0RUkl7NXGcX6all
         CUpw==
X-Forwarded-Encrypted: i=1; AJvYcCWL1yR/8wcfYDsyO+xyTgLKMC9RWMYwR5JK6lwKrjjei3wMKr4tffZIKgdAkVL4fXJBY4MnQ7OxEqEs@vger.kernel.org
X-Gm-Message-State: AOJu0YyGYs6njzI+uo54LRsVQFSa/sZxeuntfQZq1l52+UMdkn3HOFbd
	n6SfFjqutZIJFbKR3h/yVbyxf6fo8Aeqc0NRi5/6dWPOT37V2D0wu4PrlcdxsOlg/GdZelU9JFw
	7yAhNoBhKluq/RUSr+Wlshkbh1lBwp2/+6Mvv0XBUSSgJ5Wo9ADi/SBIP9/6T/gBs
X-Gm-Gg: ASbGncuJ20IhyXTDlLJ1jdE7JSKjRoplCaiZzkPwISMepb38O0R9H0fPa3tK38f46/E
	P7wJJ0BUJe3hIo1SLOkZDe6BGpg/YcWdxXIfyF721Udim1hoUmYgnKMV9e9bexMUUr/63VmHfgj
	K4r0u3KUKzRhx8ZiL8Zgh4uWcky+LlMMR7DRB1I/LvI88cYUPJDs6sSz72Sci1m+AU2ngxlqCXi
	4MbkQB/CFMEUMPSBHtKoANWTtEywnbPkuX4e+prOWByF4uK2985qrnWGR52Uvq8N38Mt9D+YqGi
	jZ2ukOUrclaVMcCP1+9R+3iDjNqdVAIVLdyJFvEx2rEVbmi5iY54LyNGzqCm4TCj6pKVHsh+tTg
	1chzIPDN9sbKo/J5hmmL0JSytl1zrMyE=
X-Received: by 2002:a17:90b:3810:b0:332:50a7:af86 with SMTP id 98e67ed59e1d1-3342a230e4fmr9581398a91.1.1759128667841;
        Sun, 28 Sep 2025 23:51:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqfrcDffEGa89Kr6nZD7JGX9u2ah7a4jDj9bw27/AGY3Zd737uosmm3FQftDtufXIByKAO7A==
X-Received: by 2002:a17:90b:3810:b0:332:50a7:af86 with SMTP id 98e67ed59e1d1-3342a230e4fmr9581372a91.1.1759128667293;
        Sun, 28 Sep 2025 23:51:07 -0700 (PDT)
Received: from [10.133.33.226] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-334352935d3sm5945332a91.3.2025.09.28.23.51.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 23:51:06 -0700 (PDT)
Message-ID: <8429ae83-e027-4ea5-8cbd-a65f3a5a8cb6@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 14:51:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/20] arm64: dts: qcom: Add PMH0104 pmic dtsi
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash
 <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-10-3fdbc4b9e1b1@oss.qualcomm.com>
 <CAJKOXPetzYdOvYkzeWmm9pVM1MwJhng4JLn2jsoAuey4jtfrqQ@mail.gmail.com>
 <7dfd14ed-18d2-423e-abbc-33ef8bdc0a75@oss.qualcomm.com>
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <7dfd14ed-18d2-423e-abbc-33ef8bdc0a75@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68da2c5d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=SANCmw4WSCOK-ABOScoA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: jWXmlvF5rTIwcOFQaUNrHu4rgsyKnDDg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX20FuOtPsZ18Z
 stAPIFIKDyrE4IYn4Byxq73Jjg0oUt/srBUK1ok16xUEnmK8/Bvu3FWyz6q22vdLBuYnkkFP6YA
 yGJVmnp4y7TL/Z5+nQuD0AlyNdL/sDXSg2ME4XykBQ2/LAw3nuOFhBrTjcKYdcMGev0xX5pLvnQ
 HvHlP+j/jOxpFjxL/gG05G4fOVNWwM6mjB70JV8i6w2izqcCuWcRzAQ5BYG9ijl+2btZxPh+ruT
 wwKgc8TTLX3PIeYwoPLptt5+5zqcpj8YFAcmTZHv4i0neZ1wIiX2EDRoSwy+xuLgj7o3AhvFq6R
 hmeWYutXwaqzxeasZnvnkVEsow4a3Gcv/1GN9pCl+BwDYdpR/tj4NyQMC/nAAzi3lBLrwSroIvP
 x3SnwWCGV1313A864J4ONIBMU1XCbA==
X-Proofpoint-ORIG-GUID: jWXmlvF5rTIwcOFQaUNrHu4rgsyKnDDg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

On 9/25/2025 8:21 PM, Konrad Dybcio wrote:
> On 9/25/25 9:59 AM, Krzysztof Kozlowski wrote:
>> On Thu, 25 Sept 2025 at 09:17, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>>
>>> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>>>
>>> Add base DTS file for PMH0104 inclduing temp-alarm and GPIO nodes.
>>>
>>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/pmh0104.dtsi | 33 +++++++++++++++++++++++++++++++++
>>>  1 file changed, 33 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/pmh0104.dtsi b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>>> new file mode 100644
>>> index 000000000000..f5393fdebe95
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>>> @@ -0,0 +1,33 @@
>>> +// SPDX-License-Identifier: BSD-3-Clause
>>> +/*
>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>> + */
>>> +
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/spmi/spmi.h>
>>> +
>>> +&spmi_bus1 {
>>> +       pmh0104_j_e1: pmic@PMH0104_J_E1_SID {
>>
>>
>> This might be fine for Kaanapali, but it's wrong for Glymur.
>>
>> We discussed it already and I'm surprised you come with completely
>> different solution, not talking with the community, not aligning to
>> solve it properly.
> 
> I think I omitted said discussion.. if it was in public, could you share
> a reference here, and if not, would you happen to have it saved somewhere
> that you could forward to me?
> 
> Konrad
>>
>> Judging by other patches sent now, I recommend to drop it.
>>
>> And instead just join the talks... Otherwise how am I suppose to look

Could you include the talks with us?
I've discussed with Jishnu, Kamal and Rajendra before the patches send here.
The conclusion is Kaanapali should be post as it is here.
Feel free to have me in this followed discussion.

>> at this? Everything I said should be repeated?
>>
>> Best regards,
>> Krzysztof
>>
-- 
Thx and BRs,
Aiqun(Maria) Yu


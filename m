Return-Path: <devicetree+bounces-202053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7B1B1BE90
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 04:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96A89167AA2
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 02:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503EF1422DD;
	Wed,  6 Aug 2025 02:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MOplgINl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A9E38DDB
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 02:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754445802; cv=none; b=UyoKbwhkG9Klo8L4tL4YJcwbYHk6fiDQn2Hv992dcw3NyOWXAJAf1h+as7rzs6OesX2s2MO5uJZQM0gNWx6USp6d7G0eplsfMVCySXgH3ImcCUToK3uyqfEshm5suRVI7XdM9uJ0RmYkt2bnTO3ZJFRIBwtj1Ukdcy4mZ5vWsRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754445802; c=relaxed/simple;
	bh=yQ0X5Sh2IRFr6+WChcckko5DuqGHABmbY7j2aD3oLhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CcetuMx6DwGPf+uhyA5wEjVD6mAARpdwC3KcdeaYbivtuje+c3nLJRwfvRl7kqOM9Lo429vaO4WKOwotBt7qt3D5KihUkhwOSPjZKmaUm4ZimDiIcQdIRLI0uHcR/f+dv5PlzK1RPu74tdKUiOyoCHiBbfBuHbxbAHZzucNrk5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MOplgINl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5761estB012623
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 02:03:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pa6eon19WOoAfQ7dFcaevq1RhDE8WqrMwPaomjOaHfE=; b=MOplgINlR29H83KC
	016aSkAkanGrhhijQXj6ThKqAZVKR5SxiiyM2AFT2rDMJTMF0tXbkIkYYRan1hYU
	ailacuvphKKO5w+TVFa7poLXFJ1EU/cOl3XxxSt5sM8Xz0aAMOU3j4FlF5Z6nyTD
	V2cEL82GUfQSku7WbGp5A4ZLnPMCU5fH8ajosMYtlw40gdx3/erFner+A8Nj+ZOj
	vGSUXignxHF30OkyRJ+XVUDK/hI03wm+SEnUUQym4uIkp5aHWAsS1+aznqa2oh9G
	6+ro+LUyabusj7uzbMcoxvdz62YbatkIkzqVCTueJZud5FNu52luo/tib6KoiVFV
	TBMYiQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvys29s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 02:03:19 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b42249503c4so370837a12.0
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 19:03:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754445798; x=1755050598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pa6eon19WOoAfQ7dFcaevq1RhDE8WqrMwPaomjOaHfE=;
        b=vthOGHk3wdZt5tM6cUoVNWym9xiB4/i5pBF7q46GsDITFdG/Paw5rnhf9v1zwrxAIp
         Rp5jsapkB4kWjWkuT3hdxNP8L1Ao1EevCPjZshwUqorpmjfnjkE9sjHNgvziaMzbR92b
         32R7uGWWa6E70FXXc0mKcSl8znVw4tg0TiPrtzrmhxtYgaF14nYCVzWzCulsCRmT9UgN
         YDu5Q6u1aaCStsQthPIOjAUfnQAMP+mA0nykVhSIwtu0+VWi+TR4nNnKydwfxipJcnM8
         u9DZpiyuLzeVSVfx4NgPQNgnDThWvbHROU2vpy7PCGEbF0IjChqhO/JHbDOypnlgF1DL
         BhGA==
X-Forwarded-Encrypted: i=1; AJvYcCWOCJbEPnHpiJUR5+9mjqKiBuWsglN0OPuKbD+oZrnwMiNz902KYaxygmVyN89COZL4m+lorZPMTfny@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7cd5hzBkWG7D3XR6o1yYew56V/SfPXYwig/teFlsoWNt9GxQF
	FBP00Q+LZhXg8dEGe5vtByjobPwfNSuhEHxUL3E4la/G+PJy4NYkvCsT6NKTANbYKQm7dePKN2x
	ZOn7zaV/Eptt/JgrhZVrVS3B5jT/FAhx0PZpoN4pIlHg56TgMdAyJU/Mfhn50vni6
X-Gm-Gg: ASbGncvmCUd3aRhwquUc0qmmgawdSnoRL5IjhTCLOzaGyh78yqOapx2AQ4EIHck6EZc
	hdYrJE2LwBUim0AZ/OSNzFLdQX7ECHSIss9d+nkMGoYMylzq5kCW1aq4XbQisbjPWk0BaBoJM6X
	rZjkG8QW7rIV4cYU9jJxVCG5oKHXb+dZlIOConiqOUJXJ4uqZrdnKgQUwZqisuHBiWxtvaVCtyd
	nLJ5z/rzU2aCV47ToXNYmcRmtm/T6ZqywdxIJ2eRKxb87pVkL1yBAmaUBMRFMGoSIwOgaF4fzgQ
	9zdRZQDC2hLZs9oOzKNkVndt6rvCexPrYXJ+FG7j6xyqOB99LPvvfmdIwQjsuBc9jJhvLW2pRhQ
	IKp9Am1miqWGMKYTTg0WjyMLr4KryXLU=
X-Received: by 2002:a17:903:4b50:b0:240:1ed3:fc28 with SMTP id d9443c01a7336-2429f957616mr15542715ad.12.1754445798473;
        Tue, 05 Aug 2025 19:03:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHL2wny7m01oo9UXpqJQf/8c7aXFeRWf4P3nmdOkRL20z1AyuApVrl5radxSkk4RNf5Mx+owA==
X-Received: by 2002:a17:903:4b50:b0:240:1ed3:fc28 with SMTP id d9443c01a7336-2429f957616mr15542315ad.12.1754445798000;
        Tue, 05 Aug 2025 19:03:18 -0700 (PDT)
Received: from [10.249.10.160] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8975acbsm146214855ad.85.2025.08.05.19.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 19:03:17 -0700 (PDT)
Message-ID: <972e0ef6-9068-438e-b02b-f48a2fe22e2a@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 10:03:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] arm64: dts: qcom: Add display support for QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Li Liu <quic_lliu6@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
 <20250718-add-display-support-for-qcs615-platform-v5-1-8579788ea195@oss.qualcomm.com>
 <e2dbef3b-89b4-41cb-b94f-9b432de36802@kernel.org>
Content-Language: en-US
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
In-Reply-To: <e2dbef3b-89b4-41cb-b94f-9b432de36802@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kB-sp78a8RIA9kRCqDON4j3W6r4JePxJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX4Bd10NAv02WX
 MzDwC0izOHvoGSZot0bsPRGw5Uq8Sdw1cI6D7llan8TaIbc9j8Dxtri7NDDmLqOz/2o/2wsMEug
 Rp7QeQPdcjf90zMdNybswOSUKmWszfIMz4GzPvUKDz8pxAtD9CekoOX/y7Gdw2EoqsOuC23T1jU
 eUaxrUre/usjI125rP+eSAebCWhL062hEAdSjelKMECk793L9t1CwCfRa/9CEk9O93YA0i7Wsav
 evze+jKlkrVPhRcxow4qvgHtL/SB/CT0tPzHOToRpC3iOCJwZM2Xr0j5z48d6vntY8Br4Rea1mh
 rOMLiRIqYC8vkTNSVpQ2r4GL3OmYO7rw0sVu3XcR/2Q6EKMBkBwQoItmFx6KTH77QcIpdvuBXM+
 tfAQC2OG
X-Proofpoint-ORIG-GUID: kB-sp78a8RIA9kRCqDON4j3W6r4JePxJ
X-Authority-Analysis: v=2.4 cv=NsLRc9dJ c=1 sm=1 tr=0 ts=6892b7e7 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=BaePNsoVr1Wy0kwGYTwA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009



On 7/29/2025 8:36 PM, Krzysztof Kozlowski wrote:
> On 18/07/2025 14:56, Fange Zhang wrote:
>> From: Li Liu <quic_lliu6@quicinc.com>
>>
>> Add display MDSS and DSI configuration for QCS615 platform.
>> QCS615 has a DP port, and DP support will be added in a later patch.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615.dtsi | 181 ++++++++++++++++++++++++++++++++++-
>>   1 file changed, 180 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>> index 142338069a74cc6c263e17d84efa22ccd0c26813..24299430b195026e896c365d80a0036713f00d35 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>> @@ -10,6 +10,7 @@
>>   #include <dt-bindings/clock/qcom,qcs615-videocc.h>
>>   #include <dt-bindings/clock/qcom,rpmh.h>
>>   #include <dt-bindings/dma/qcom-gpi.h>
>> +#include <dt-bindings/gpio/gpio.h>
> 
> Don't add completely redundant/unused headers.
> 
> Drop

Got it, will remove it in next patch>
> 
> Best regards,
> Krzysztof



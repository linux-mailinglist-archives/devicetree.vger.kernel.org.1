Return-Path: <devicetree+bounces-200413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF746B14A07
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:23:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91E247AF132
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 08:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A94280CCE;
	Tue, 29 Jul 2025 08:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="beRGaaBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB84B27FD40
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753777405; cv=none; b=iRzLQz6RotRqRAaIMN3YjRPWFCUpEPS7hPr26oQuVGAh3WIFJhanSSodOoshv7VEAqtJwTH9QcQUqFE47QIcNjfuQIC7yMcdtXxqLqhluCbXWzfAFA0ZHGwwqom1o1X84vuff21r3UwRzD2fkCbc1oKmGB/UTP2cHPL1ebxk1uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753777405; c=relaxed/simple;
	bh=2wXN7cq02T3bH10Sqn0i6sPundJHGnzfwCRzUt0HFh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JgFjBs2IPhagel+swndJ5WZMOZzY+l/DkTBDo/BqfrPqzDTbKSpYtd9uARXp8IIQ6sRO5eBmU0eWCiaVxe9m8/6YCFiuFI5yPNQnOuplddMiPT32e0l+N4nIX0VSg9v5MsTY+/sDwsZboHaCKFMrupj4e79Qr10+dQu7SnqjlmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=beRGaaBD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T02vSM018846
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7DJ4RaeJMoLupHxD1y+u8eH3MOycZ0I9zFremeBae8Y=; b=beRGaaBDsbR0BDiH
	i/u6yPH+lUSlsbEDtWj7xF+LBUCg5ZiDo9Xl1H2/VATq9IYkGmQssRF2btAK2fQt
	rB9noXkLa8IFXeXigqUwrEP3kz3mfhxrHReNOOONYtMDdu3IvLDrYCat6C7y2dAe
	106si8uM4C+6MAdkHiIA74yszPyOqc71aIw8eIaPffQJDAChxnwZfmZCCCkvaF0N
	e+2aFh4wI12EqRwjCsSg0MDfrapa3SdYo4pOnZxECC3PoG5pq7W7bjZd+B3wAW+J
	wEfO0bRXkJbX02Fb6BWksrju0OVd6Y76/wSaDzNuwpnTDjMVsS7eRrFvL0aRFPz0
	czgREg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2f99r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:23:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4abdc49ce0dso13982011cf.2
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 01:23:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753777402; x=1754382202;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7DJ4RaeJMoLupHxD1y+u8eH3MOycZ0I9zFremeBae8Y=;
        b=FZRPqhiZsjNzGkHIqavIc3Uu7iiVPWfRfv9aDWFWGF+MoTFCPstDohhyb1jcvf4ZFe
         05nnViyrM9xVsoDhr/94+UL33MgoMFLJpPrTDrevaINw5zraNV0zzcOsMfOFA9kgpiwJ
         u81jltxe1PHunO++fHqIs+2/+YiZd8oNu1AhfiQPzD6zzV8pW9P8YKyjM9e+T2//C0DX
         0ez8/X7YamGA/oSlIQXYjMPGqIsfa7vFpLlHYqL/Wbjfqv52HSJEj3LUITNAPpczFtdt
         ALQg+6HxYU77MRxwRAyM2G8e1/LywgT0f2aoQEx7MgXQcAWJrnioqRMc0OvvNa3pwyv6
         1xHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhiLkZuU9itjcBa4syl1p/gOv0E+joHc6WUP/sYY2qK0+VurKpE2aMZoZbIhnE8hVc+r2pumhEyvcs@vger.kernel.org
X-Gm-Message-State: AOJu0YwRGq48Vk85dlhyong/GxSjntxuJwpqSyC0IsAxvz4dU9d9qdru
	aZnNlvdVQYZnVIbNds15AKORK1GQcvahD0ix0UPfFuUrEaUp4FLJD8bMMzVsVXFT6HLhYcra9Gu
	sJval26Ln2ZwccxSkIFLNMIryWGF4BzfT2QjdbArElfSjrhjrYHyQrodKNmpCohNu
X-Gm-Gg: ASbGncvEAwcCuMFttjxOb3WfNO0DCn8/vu/xsEiImd5YVDieW1X0PUdSfG0NHs1i+zF
	+FWB+msq0q07IYDEQxgnBcvaiAY9E7OIxQBPoj7ou97Hp+AIDT5xkzvjI3gnj58I5ztIJkbHDiL
	nJ+N46P2FjCeziosu1aTxOC4wNrJuu/O4j6SQwZ93a7MlMCy6/9xp6wUXOLM0KyVGfCstLOoR/6
	LspKuPEoZyjFvahV3pzPa4MG/1qc1tG2YzxRRXKLomYApzWQJU/ulDhfOu8AJbnkpUjMFfy46xO
	JdZRSq2Zj8x/Y7n+klhYQdbkZReJ+0/4qKt81TletMsIbbndsclTUpOTSObW8nk2eiRs4vnS7wr
	uuAU5OYWGYVtJ3pMNaQ==
X-Received: by 2002:ac8:5f51:0:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4ae98dff702mr76086071cf.2.1753777401721;
        Tue, 29 Jul 2025 01:23:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDpC4Bj15W8z8Hn1ZB09u8n7fVHVo8g7aURbaiorGpbmz59AM5D7ns33AzQ2bV0V/RJUM1/w==
X-Received: by 2002:ac8:5f51:0:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4ae98dff702mr76085871cf.2.1753777401111;
        Tue, 29 Jul 2025 01:23:21 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61500491d12sm4326817a12.11.2025.07.29.01.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 01:23:18 -0700 (PDT)
Message-ID: <6b903628-9abf-4b9e-971e-e9338308d693@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 10:23:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 24/24] arm64: dts: qcom: x1e80100: Describe GPU_CC
 power plumbing requirements
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Johan Hovold
 <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Vinod Koul <vkoul@kernel.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250728-topic-gpucc_power_plumbing-v1-0-09c2480fe3e6@oss.qualcomm.com>
 <20250728-topic-gpucc_power_plumbing-v1-24-09c2480fe3e6@oss.qualcomm.com>
 <aIevIuMDA5R8igmi@linaro.org>
 <50868cd8-68a9-4bad-99f3-8cf542886fb6@oss.qualcomm.com>
 <aIhrav7GKpsbVpto@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aIhrav7GKpsbVpto@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: EaW6LO8yjVtydagujmHq5Zhea0VB1lKT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA2MyBTYWx0ZWRfX5Ob/10AhVFQ3
 FxRBmDq0CYEj5p2q3dAbIpw5dlbrPKa5woTn0R0VK5LAIgnNx5aedh97ccHPuu2QMqp171Obk/9
 6vlD9w+Y6E09kwMjJrIVx8ZRIofcHEVAryNJ8sqSXUVvBgsoRuZ6rjewpDpeqeQ3zE9C0YjzvcF
 kA6WCKanjl4TmXKRzrpGciIeB5p6GU5TsRX4htVj4eP+PMo4FooOoDeu9Ad0uRIq+u/7dd+XbrB
 aKcKHHVN8B/jvnMGQMVdt66fqT5vCDMeyNso+rzPX0FXvdvTwBevY/HSd4VdjqyBYPLHuBjazjk
 8LKjRUKwRYZUtMWZ+eWXi6lByAn/5eN/mNn2/Qjfu5qNb/1jjO3W4U31Sv+RnRmeveEne7GQWZ4
 vbFChNmPtRNafXdRtHGLcSLZwXNc3qVKOqkZgeyYapN6+wPe2zAP0vyUPEruIPo1/6mDK8Ym
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=688884fa cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=npIohlpTwfGSXeC_WVoA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: EaW6LO8yjVtydagujmHq5Zhea0VB1lKT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290063

On 7/29/25 8:34 AM, Stephan Gerhold wrote:
> On Mon, Jul 28, 2025 at 11:31:10PM +0200, Konrad Dybcio wrote:
>> On 7/28/25 7:10 PM, Stephan Gerhold wrote:
>>> On Mon, Jul 28, 2025 at 06:16:24PM +0200, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> A number of power rails must be powered on in order for GPU_CC to
>>>> function. Ensure that's conveyed to the OS.
>>>>
>>>> Fixes: 721e38301b79 ("arm64: dts: qcom: x1e80100: Add gpu support")
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++++
>>>>  1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>> index 5e9a8fa3cf96468b12775f91192cbd779d5ce946..6620517fbb0f3ed715c4901ec53dcbc6235be88f 100644
>>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>> @@ -3928,6 +3928,12 @@ gpucc: clock-controller@3d90000 {
>>>>  			clocks = <&bi_tcxo_div2>,
>>>>  				 <&gcc GCC_GPU_GPLL0_CPH_CLK_SRC>,
>>>>  				 <&gcc GCC_GPU_GPLL0_DIV_CPH_CLK_SRC>;
>>>> +
>>>> +			power-domains = <&rpmhpd RPMHPD_CX>,
>>>> +					<&rpmhpd RPMHPD_MX>,
>>>> +					<&rpmhpd RPMHPD_GFX>,
>>>> +					<&rpmhpd RPMHPD_GMXC>;
>>>> +
>>>>  			#clock-cells = <1>;
>>>>  			#reset-cells = <1>;
>>>>  			#power-domain-cells = <1>;
>>>>
>>>
>>> To repeat your own message from a couple of months back [1]:
>>>
>>>> You shouldn't be messing with VDD_GFX on platforms with a GMU.
>>>>
>>>> Parts of the clock controller are backed by one of the MX rails,
>>>> with some logic depending on CX/GFX, but handling of the latter is
>>>> fully deferred to the GMU firmware.
>>>>
>>>> Konrad
>>>
>>> Please describe somewhere in the cover letter or the individual patches
>>> how this relates to the responsibilities of the GMU. I searched for
>>> "GMU" in the patch series and couldn't find any note about this.
>>>
>>> Also: How much is a plain "power on" votes (without a corresponding
>>> "required-opps") really worth nowadays? An arbitrary low voltage level
>>> on those rails won't be sufficient to make the GPU_CC actually
>>> "function". Do you need "required-opps" here? In the videocc/camcc case
>>> we have those.
>>
>> Right, I failed to capture this.
>>
>> The GFX rail should be powered on before unclamping the GX_GDSC (as
>> per the programming guide). The clock controller HPG however doesn't
>> seem to have a concept of RPMh, so it says something that amounts to
>> "tell the PMIC to supply power on this rail". In Linux, since Commit
>> e3e56c050ab6 ("soc: qcom: rpmhpd: Make power_on actually enable the
>> domain") we don't really need a defined level for this (perhaps it's
>> more ""portable"" across potential fuse-bins if we don't hardcode the
>> lowest level anyway?).
> 
> Thanks, I forgot that we have this commit.
> 
>>
>> However after that happens, the level scaling is done by the GMU
>> firmware. This holds for allOf CX/MX/GFX. I'm not super sure if
>> both MX and (G)MXC need to both be captured together - downstream
>> seems to describe MXC as a child of MX (in socname-regulators.dtsi),
>> but I'm not really sure this is true in hardware.
>>
>> The GPU driver currently first enables the GX_GDSC and only then
>> does it kickstart the GMU firmware. Downstream seems to do that as
>> well. So on a second thought, since we've not seen any errors so
>> far, it calls into question what role the GFX rail plays in the
>> GX_GDSC's powering up..
>>
> 
> It might play a role, but we wouldn't know since AFAICT we don't support
> enabling the GX_GDSC. Look at the beautiful gdsc_gx_do_nothing_enable()
> function, it basically just defers the entire task to the GMU. The GDSC
> just exists in Linux so we can turn it *off* during GMU crashes. :D

OHHHHH snap! I, on the other hand, forgot we have *that* commit..

> I think we should identify precisely which votes we are missing, instead
> of making blanket votes for all the power rails somehow related to the
> GPU. In this case this means: Which rails do we need to vote for to make
> the GMU turn on? If there are no votes necessary after the GMU is on,
> it's better to have none IMO.

The GMU pokes at RPMh directly (see a6xx_hfi.c), so we indeed just
need to make sure that it can turn on.. Which in short means the
*C*X_GDSC must be able to power up, which doesn't have any special
requirements. The only question that's left is basically whether
MX_C must be on. I'll try testing that in practice.

Konrad


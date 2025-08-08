Return-Path: <devicetree+bounces-202686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6CB1E5FA
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 11:54:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C8E8189E4C1
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 09:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01DD2701B8;
	Fri,  8 Aug 2025 09:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Enr9R5U2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4623126FDA4
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 09:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754646877; cv=none; b=tCzQpRhg6UgmAG72WzBHjujf6huuGxDHtyn2X/eIo+QK5+Lf/t1yrnI3W5I41ZAtVigmUYvP8nYdhSKdeqh8/+77D/7yESECJqO29nVtCptr5sgczCPJmaYwAimDEVGDb0f//fNp2rJ/AVRUxI2iWNSet7taLOgs2aGrM0A+qXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754646877; c=relaxed/simple;
	bh=IZewFj/uk0R0C1cmRQpY3xYNslex4bPpK5Xu4ZFWs0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xkazpd6FX/nSB32wvBnQP2gLHK16RVi0c1ds4d8qZZjKYt47w3jHjxbSMXTqt6rRZ2zfU8Nh2B2a3OBiMvsl2mvK9G14twAVU4tBjh34xZJjEgnhrNBC9SK0dct9JPcqB7UZCx8X4JAn35hfDmIDE1v+XDKoo1AXsszFjtHAsMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Enr9R5U2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787LMtm003806
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 09:54:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VrNxZb2huOQDxcBDq9vEBgeyKvEis3Dpfn3A/mVFAjo=; b=Enr9R5U2jRHG/1qY
	xAwRbjDa/z93bN5wnZuSo9+Q5AetTe/yAjx1+te4u6hunpJ571wpZ+l6y7ddlm1V
	R6ADxwPfgeA2tkVCa1r219C3D8YjrOV9nmcRAcM7ZYTROBbeEo5pLlBwEQIL8zmN
	0NdM7WVOdLfXnLz1SilT59rTLCu2XtBhtsXk9EE36X7hlrTnhelZt9hE3gKKe4g8
	sfnYAET2bhPs7t0dahEqafyhROtHuM8kUVuJbDTzIV5+1nfLhNaCcNlVEaOK24bi
	5mQQpC1IqGcLH7R/C8MjPpC2BTap5UyuC1PM6ESTA4L31S9aDQgYI5mLp/FwieFT
	hCCjDw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpyahmdf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 09:54:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b2fcbd76b61so3085519a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 02:54:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754646874; x=1755251674;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VrNxZb2huOQDxcBDq9vEBgeyKvEis3Dpfn3A/mVFAjo=;
        b=UlvO04DMGcU703HRd0JHV6f/TZxsyKgCzSDrFH8g/JgTPY8dE0yi4KGR9ZW99gNXMc
         mx4ielMn2cQsAsgx4CD6H4AFg2qyQD5EecsNci6FkgmMGzcVaHxO0z262S9tJmGme4L+
         RqnAYIXYdzrsWg11UQ50ZUWxt5SjO6cR2lHuJMa+46twQ2I2mPfEy5HXndarouL5Aalx
         hnUeMpF+AxREnjjwyfhYd0oOVg2VFpvYicHN2z1ohesf0QE0doebW4nDd+CAieTWtd+r
         nH5YmYY2G1aK/U+c35m+YgmyxwLkr16cP1LSURzL6/VycgFsfYBpac1MAcZvkJDEkNKA
         N92w==
X-Forwarded-Encrypted: i=1; AJvYcCWbnA4RuEUON91Uaz+ZC8RWVgE1SNAx1IOX3F6Uk8RW0K3k855ZHmZhqX98YcTOp82uPkcfHHqymLaK@vger.kernel.org
X-Gm-Message-State: AOJu0YwjaeiLR8chNrxdG/gc06WMkwW3nU6DQyEqBpHtT/1j0rtXGycE
	dhGYYOeWE6vhdPTltSYRBxs/xI6JCFG4OYai74BTX/MmQZNjrYtakz4rtO5TwMsYAEUyeoYpJ3j
	s/D9/g/m6j+kZTKKP8e66AT0hGWa3+hZ1b+R5qhTPW1QPLM2qATqvuqjpU5TbTvKy
X-Gm-Gg: ASbGncuADdgq3MAWucRoF8oCuwwv7GQZ4co40Ms6jKbxPj6f6P/b+/qtfbzlfCkmoVM
	Mb8QgbJGgQU8Bt5JQ+Mwb2PGIMuwskJkRsIxO5dZXen8qOR1BtCczsKxVsdlG7DWWWMlfI5gAbx
	l6uSldUsLyOvEu583M0mwVAeK+91l2xOUA7JKM5CNTx6Mb7Fus00tF+jwbQM9TdPg1Bi4PxnbLd
	+td6dqIyV/f6eOCFM1fwEI338to9V2r3HmboWWvA9rCbDkgO1D7kgBz9XZSpDnvDxfXOJnX8/yD
	LwbLWL6pEdneNb0/QBaOMBq1Au8mLikpYBRMRRimYGUpZ7xR5jsLn/0bh0NObsXdUA/E
X-Received: by 2002:a05:6a20:6a25:b0:238:351a:6442 with SMTP id adf61e73a8af0-2405522ee22mr3230467637.45.1754646873875;
        Fri, 08 Aug 2025 02:54:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMdPYl8Hb5De2uaasmqy64rhr2pYi2WZQYfw282Gwlr2/RoFYRSAeOW9+wrqhGxbXy2C32XQ==
X-Received: by 2002:a05:6a20:6a25:b0:238:351a:6442 with SMTP id adf61e73a8af0-2405522ee22mr3230442637.45.1754646873431;
        Fri, 08 Aug 2025 02:54:33 -0700 (PDT)
Received: from [10.217.217.159] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcce6f6fesm19918035b3a.26.2025.08.08.02.54.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 02:54:33 -0700 (PDT)
Message-ID: <d8c5a4f1-a867-46b6-8519-81c0eba37501@oss.qualcomm.com>
Date: Fri, 8 Aug 2025 15:24:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] clk: qcom: Add TCSR clock driver for Glymur
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>
 <aIoBFeo00PPZncCs@linaro.org>
 <784545d0-2173-4a8b-9d5d-bee11226351e@oss.qualcomm.com>
 <aIxRKHKdBHDefDs2@linaro.org>
 <d2c17575-f188-4154-bb63-e0b1b89d8100@oss.qualcomm.com>
 <b2f219d6-d441-45d0-a168-b2cdbc01b852@oss.qualcomm.com>
 <3fc425fd-39fa-4efc-bc98-da86a88bfb1a@oss.qualcomm.com>
 <c2f39786-5780-4124-9e41-6971428aa267@oss.qualcomm.com>
 <9e3b4706-c61a-4d69-be84-a5b6fc90eb35@oss.qualcomm.com>
 <462b4010-fd79-4682-b9d2-31ffdd53b75a@oss.qualcomm.com>
 <ffbd9302-75f1-4148-881a-767fa413c825@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <ffbd9302-75f1-4148-881a-767fa413c825@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: szJzmiqkial_iHgaUo-uZVPuj2gkN9uh
X-Authority-Analysis: v=2.4 cv=MrlS63ae c=1 sm=1 tr=0 ts=6895c95a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=zhkC1EFh2bCrlkiyJb0A:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXwpzEDdEOMHIX
 w1oJjz8A4sn3VwYbnsbJvtR1AnNRe0htEXJsbYbpwoIv8789WrPAwrM92VjgplqOGkajsMnnGCZ
 qJP5JW2ds9E6TFbPe14f/G5C3ODePJhD6BNUTy9aPJBnZwBcYAdPbFfdhAekjPV7716VsC05Ioe
 KI8/mgVeGzctnNV3hqoE1ynXS+SCidFLtXtC7Ho5p5wVdVrHoY3GnKrScoRyRFgtUDIp9z9XGxi
 v0Mltw0gtz68MhNE6zu6o4qu07jOKFMKTh5taE3WNIA3wsIpZlLAxz5oF7X4SY6ZTtend7HC3lI
 J513XIgcHTCohZtXg+l14ToeMVnEcswwLkJEzr0FeLty+L9GVnZi8qR4IZy+atMrHt+neSpQwij
 nAd/zdeD
X-Proofpoint-GUID: szJzmiqkial_iHgaUo-uZVPuj2gkN9uh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009



On 8/7/2025 6:37 PM, Konrad Dybcio wrote:
> On 8/6/25 12:21 PM, Taniya Das wrote:
>>
>>
>> On 8/6/2025 3:34 PM, Konrad Dybcio wrote:
>>> On 8/4/25 4:21 PM, Taniya Das wrote:
>>>>
>>>>
>>>> On 8/4/2025 6:40 PM, Konrad Dybcio wrote:
>>>>> On 8/4/25 11:00 AM, Taniya Das wrote:
>>>>>>
>>>>>>
>>>>>> On 8/1/2025 5:24 PM, Konrad Dybcio wrote:
>>>>>>> On 8/1/25 7:31 AM, Abel Vesa wrote:
>>>>>>>> On 25-08-01 10:02:15, Taniya Das wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On 7/30/2025 4:55 PM, Abel Vesa wrote:
>>>>>>>>>> On 25-07-29 11:12:37, Taniya Das wrote:
>>>>>>>>>>> Add a clock driver for the TCSR clock controller found on Glymur, which
>>>>>>>>>>> provides refclks for PCIE, USB, and UFS.
>>>>>>>>>>>
>>>>>>>>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>>>>>>>>> ---
>>>>>>>>>>>  drivers/clk/qcom/Kconfig         |   8 ++
>>>>>>>>>>>  drivers/clk/qcom/Makefile        |   1 +
>>>>>>>>>>>  drivers/clk/qcom/tcsrcc-glymur.c | 257 +++++++++++++++++++++++++++++++++++++++
>>>>>>>>>>>  3 files changed, 266 insertions(+)
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> [...]
>>>>>>>>>>
>>>>>>>>>>> +
>>>>>>>>>>> +static struct clk_branch tcsr_edp_clkref_en = {
>>>>>>>>>>> +	.halt_reg = 0x1c,
>>>>>>>>>>> +	.halt_check = BRANCH_HALT_DELAY,
>>>>>>>>>>> +	.clkr = {
>>>>>>>>>>> +		.enable_reg = 0x1c,
>>>>>>>>>>> +		.enable_mask = BIT(0),
>>>>>>>>>>> +		.hw.init = &(const struct clk_init_data) {
>>>>>>>>>>> +			.name = "tcsr_edp_clkref_en",
>>>>>>>>>>> +			.ops = &clk_branch2_ops,
>>>>>>>>>>
>>>>>>>>>> As discussed off-list, these clocks need to have the bi_tcxo as parent.
>>>>>>>>>>
>>>>>>>>>> Otherwise, as far as the CCF is concerned these clocks will have rate 0,
>>>>>>>>>> which is obviously not the case.
>>>>>>>>>>
>>>>>>>>>> Bringing this here since there is a disconnect between X Elite and
>>>>>>>>>> Glymur w.r.t this now.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> The ref clocks are not required to be have a parent of bi_tcxo as these
>>>>>>>>> ideally can be left enabled(as a subsystem requirement) even if HLOS
>>>>>>>>> (APSS) goes to suspend. With the bi_tcxo parent the ARC vote from
>>>>>>>>> HLOS/APSS will not allow APSS to collapse.
>>>>>>>>
>>>>>>>> Is there a scenario where the APSS is collapsed and still the ref clock
>>>>>>>> needs to stay enabled ? Sorry, this doesn't make sense to me.
>>>>>>>
>>>>>>> MDSS is capable of displaying things from a buffer when the CPU is off,
>>>>>>> AFAICU
>>>>>>>
>>>>>>> We can do CXO_AO instead to have it auto-collapse if it's just Linux
>>>>>>> requesting it to stay on, I think.
>>>>>>>
>>>>>>
>>>>>> Thanks Konrad for adding the display use case.
>>>>>> Abel, we earlier also had some PCIe, USB use cases where we had to leave
>>>>>> the ref clocks ON and APSS could collapse.
>>>>>
>>>>> XO votes will prevent CX collapse, not APSS collapse. CX also powers
>>>>> USB and PCIe so that only makes sense.
>>>>>
>>>>> I think it's fair to just stick XO as the parent of every refclock
>>>>> today and think about the what-ifs (such as the mdss case I mentioned
>>>>> above) later - especially since we have no infra to take full advantage
>>>>> of it today (non-APSS RSCs etc.)
>>>>>
>>>>
>>>> When ref clock have been part of GCC, then also they didn't have any xo
>>>> as the parent, similar design we kept when it was moved to TCSR as well.
>>>
>>> Perhaps we've been running on luck (i.e. XO votes being cast through
>>> another device / clock as a second order effect) all this time.. I'd
>>> happily move towards formal correctness.
>>>
>>
>> I would like to stay with no XO linkage to TCSR. Any driver has specific
>> XO requirement should vote for the rpmhcc XO or XO_AO.
> 
> Every driver has an XO requirement, as we happen not to have any
> other crystals onboard.. The clock plan says that these refclks
> are direct children of XO too
> 

The refclocks are just not the direct XO, there could be other source as
well. But I am okay to add the XO parent if it helps the use case on X
Elite and then following use cases on Glymur. I will add the XO parent
in the next patchset.

-- 
Thanks,
Taniya Das



Return-Path: <devicetree+bounces-209776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1075B3912E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 03:41:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EB441C21D98
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 01:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DDF6221FBF;
	Thu, 28 Aug 2025 01:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KZcKznnE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F0B30CDB8
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 01:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756345267; cv=none; b=qkmxmZEDFf0Yyn+8empRheZnw5HF9hhrZ4z7PFvKaNubn7q6NaMnHB54iXmbY6sSQfbRMJIjs4oPA9HGpjpM7sJkO45UGQmYA0Spz6Xe2lhq6xy7IO8V95Mv0Cp0bUjio+ldC57Mo8DJdj8qDuKYlgJpgCWo7Rr8+T/Zsh3ICUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756345267; c=relaxed/simple;
	bh=oaIKgwVoVMWlLCXXh4zBPqyQ4DU113682CKsRxELHGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jBhxlepJCHyhmpqCY8gwryWVwRs1F4Q/1AsVHAlymEG+VGe70C0yNSC4Erun23Jf2As0RtTJ6+lBArPrM1aZlHSoyxxUEO4S6wj9pr17mYBW6ipaAWvtcpN10qwMBV7B0GrNUJ8JFLwferWvQ1CEmQd+YPx0pvEIk0FCwA/vjC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KZcKznnE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RGHH8i027480
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 01:41:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ssoc0exiUKYkJTufSStqPOkqj7hxlg71SdT94NhDD5U=; b=KZcKznnEPFgJsOQn
	EbH6lO2kFL1smweAQwe0gt/nnQ022nK0GbWupThfJsU0f7ZLhDq/kYXGcn3hQK6z
	jX97ca+qt3gJQggKBuMYHUP/FiOEXKPGTqGziyUX6+JNDP1Eoo6Owcclv5gzhYoJ
	JikNeSV0C2Ia87AyLHicMHs4LvwtmwLWKtgSze6A3LvFyVFO2VvH8ywTGn6pfbez
	Qi99DmkrLD2WCiXWCqUtboc3ClyzpFsHi1/n0hlX2+o877h3lvJGweYxtx+HXv8u
	FCsMEfO5EAMC6yX95wiRWKiTapGow2J82CzabkJAb8TSNvn3l3queQl6F0YBuk7+
	xULbmA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16wfv2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 01:41:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581a191bso849035ad.2
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 18:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756345263; x=1756950063;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ssoc0exiUKYkJTufSStqPOkqj7hxlg71SdT94NhDD5U=;
        b=KPJp95d/YTM/i0jG2uvibIyzYLRBOclN8R4TjFJeT5E7esJfYmsOsGx7fJ2FhGrr09
         gGT/KW7tJnSGJVOd7HaM1sjOPzD4Sy11bNx1h2P5t0qEsIS6RvppGYkkWsGZG9seiv8X
         JdC4JxxWPicPZf/umKFWojKGiAnb7CCr4LCrKKfsby0XRiI9QfRMQJmZQ325uEyzd1O8
         AmaWMaW1iFf43GpbTgBekpIjVXTklamhrAjbPBpQB0p7ufJ74f8rVRD2Xtg9w9X97iuW
         0McPHqhNDDirLWexpHHzMg7H8jE2f8q1xVH/xcHo9C4yeQ3+7/BZVFxAJP9NjvHagvMR
         9+ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa0A0TD13y53QjFQzzF+UhA6d8bRWhYiElMiM/nUmEqzOpk8oY2/LM799Zb8mJRwMqwJw9Sv9UbzKP@vger.kernel.org
X-Gm-Message-State: AOJu0YzpImeVe8m1S9rV9usCbGL0NiBRPGYgtkIBC9FqE36iMN7p87BK
	hakCNBJrW8YdngqSaVSogZY4s0DdKwhs0Z9fXglRc2Pxylhn8FBj69qupzSllWnRNGo4ZjiAJUk
	JVCt5LzL+lXyO+l7lsHXF4Z3D4RM0W3JFIL1/gdyHIxDo58nXcIZt6p98dRUjHOx0
X-Gm-Gg: ASbGnctiIhuaPN3VYP+VVW8/f3b8dUrIkH7ZjOcQq1KKsiy9Y4LAuLiBdarl+Q1RBuQ
	+NbPYY0ATMcwWBoXsCGx8m7TgUyNi3r1gF4GJjWsbwWlE1t2JYWLDn/0T/tFCjg8M8WlqK/wS0H
	ubOojoD9tiigar1Fk4ukVwATpi6FZ1mc0kIGeRLxnA/FBIG9bXylrWjNkPgBlqOCLGT9Hlhzt5D
	d5GHVZuPU4C1Ba0QGkcHn/+2XdH+vsT82CpXvYrCA5hv5Ux23q5HVovhgSfqimPDeiTdfa79WoY
	+u34+sSUksFqUe1GkgF0+8t9svPg6B+rXiCu8VaSBQPUGv9OSkdhSNISPQxotg6HETFlXlqk1wz
	qvl0ZDZCU5fu+uSI9vJ2Zm0loEozmrg==
X-Received: by 2002:a17:902:f9c3:b0:23f:fd0e:e5c0 with SMTP id d9443c01a7336-2462ef98ba8mr109012205ad.9.1756345263522;
        Wed, 27 Aug 2025 18:41:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWXipYMCUO2Kzzeeg7jT0Nmhu/2L6WMJrB3Z5gpVV1nUTBpvsLjmhXjD4WaZ1s7Er0CBjoxA==
X-Received: by 2002:a17:902:f9c3:b0:23f:fd0e:e5c0 with SMTP id d9443c01a7336-2462ef98ba8mr109012105ad.9.1756345262976;
        Wed, 27 Aug 2025 18:41:02 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466889c61bsm133558605ad.143.2025.08.27.18.40.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 18:41:02 -0700 (PDT)
Message-ID: <749ec6d1-f2f9-40f5-9c41-3443698f250a@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 09:40:51 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/14] phy: qcom: qmp-usbc: Move reset and regulator
 config into PHY cfg
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-7-a43bd25ec39c@oss.qualcomm.com>
 <ofvzduf5xyip7w6yde2xwsrvv3tdh7ew3yyzeya2qzpqty3j7p@bnetyjowhdn5>
 <6f7c3962-ccfc-4400-a77f-399b06da93e1@oss.qualcomm.com>
 <llrt3xnd5gagovnmyzqebp2da5v67bkxjntfcgc5r5auamspyj@7v5taph3i3c4>
 <f3cc06c1-25d2-40f4-bd77-8a9c51b40efa@oss.qualcomm.com>
 <osav4kwxytfuxvnf26ugdw2qasd753smywsux5punuegbkxqgq@fp3r4esqiqyq>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <osav4kwxytfuxvnf26ugdw2qasd753smywsux5punuegbkxqgq@fp3r4esqiqyq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: kNjBhB-WTZqIec-gLLviVpuXzLHqkvHG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX7porUs1IcFn0
 rC05nHY6MSqIWZeNJ2n6DOJhCdpIMMVSIZdnNSHACOMfaUt1Nz96nAx7yAfynJZUt4MfJeJ42rP
 zIhO4SS9I2BcZyZBY2me1eAEcysVljZYcbE0Gz5mkAfBCwjBYJnXrphKf2mY43FT7F+CKCN+v+/
 HVzOctBgI09a2hbOyg1XwdoxLftcWIGmYfToijYpCOB7WEVoQ03jPWnzrRR1I4UeQii6pieI/yS
 moCqPiTX9TsV2E764SLup3EH+3BZLQMKYpo7QJlO9qdm2B/6tEEl2/hPA0Q0kfQPRnflkjMGiQi
 7S4wBQ3WUE8mW+gGas30UksL62dQm/gDkiHMmI9RSL2SzjxNcKF/e3Gg7QInDzgnmVWRBrek/1o
 yK4KyG9e
X-Proofpoint-ORIG-GUID: kNjBhB-WTZqIec-gLLviVpuXzLHqkvHG
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68afb3b0 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Nindc6OTbrst8G9qLT4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120


On 8/27/2025 10:31 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 27, 2025 at 09:28:00PM +0800, Xiangxu Yin wrote:
>> On 8/22/2025 6:08 PM, Dmitry Baryshkov wrote:
>>> On Fri, Aug 22, 2025 at 04:29:28PM +0800, Xiangxu Yin wrote:
>>>> On 8/20/2025 7:30 PM, Dmitry Baryshkov wrote:
>>>>> On Wed, Aug 20, 2025 at 05:34:49PM +0800, Xiangxu Yin wrote:
>>>>>> Refactor reset and regulator configuration to be managed via qmp_phy_cfg
>>>>>> instead of hardcoded lists. This enables per-PHY customization and
>>>>>> simplifies initialization logic for USB-only and USB/DP switchable PHYs.
>>>>> Please split into two patches in order to simplify reviewing.
>>>> Ok, will split reset and regulator part.
>>>>
>>>>
>>>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>>> ---
>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 108 +++++++++++++++----------------
>>>>>>  1 file changed, 53 insertions(+), 55 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>>>> index 61128d606238321d1b573655b3b987226aa2d594..4e797b7e65da0e3a827efa9a179f1c150c1b8b00 100644
>>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>>>> @@ -421,8 +421,9 @@ struct qmp_phy_cfg {
>>>>>>  	int (*configure_dp_phy)(struct qmp_usbc *qmp);
>>>>>>  	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
>>>>>>  
>>>>>> -	/* regulators to be requested */
>>>>>> -	const char * const *vreg_list;
>>>>>> +	const char * const *reset_list;
>>>>>> +	int num_resets;
>>>>>> +	const struct regulator_bulk_data *vreg_list;
>>>>>>  	int num_vregs;
>>>>>>  
>>>>>>  	/* array of registers with different offsets */
>>>>>> @@ -453,7 +454,6 @@ struct qmp_usbc {
>>>>>>  	struct clk_hw dp_pixel_hw;
>>>>>>  	struct clk_bulk_data *clks;
>>>>>>  	int num_clks;
>>>>>> -	int num_resets;
>>>>>>  	struct reset_control_bulk_data *resets;
>>>>>>  	struct regulator_bulk_data *vregs;
>>>>>>  
>>>>>> @@ -514,9 +514,18 @@ static const char * const usb3phy_reset_l[] = {
>>>>>>  	"phy_phy", "phy",
>>>>>>  };
>>>>>>  
>>>>>> -/* list of regulators */
>>>>>> -static const char * const qmp_phy_vreg_l[] = {
>>>>>> -	"vdda-phy", "vdda-pll",
>>>>>> +static const char * const usb3dpphy_reset_l[] = {
>>>>>> +	"phy_phy", "dp_phy",
>>>>>> +};
>>>>>> +
>>>>>> +static const struct regulator_bulk_data qmp_phy_usb_vreg_l[] = {
>>>>>> +	{ .supply = "vdda-phy" },
>>>>>> +	{ .supply = "vdda-pll" },
>>>>> Please fill in the values for all platforms. It well might be that they
>>>>> all share the same current requirements.
>>>> I checked previous DP projects and found all platforms configured vdda-phy with 21.8mA and vdda-pll with 36mA.
>>> No. On SDM660 and MSM8998 DP defines 73.4 mA for 0.9V supply and
>>> 12.560 mA for 1.8 V supply.
>>>
>>>> However, I didn’t find USB load configs in downstream and from SoC related power grids:
>>> Please check the actual HW documentation for those platforms.
>>>
>>>> QCS615
>>>> L12A: VDDA_USB0_SS_1P8/VDDA_USB1_SS_1P8 Ipk:20ma
>>>> L5A: VDDA_USB0_SS_0P9/VDDA_USB1_SS_0P9 Ipk:50mA
>>>>
>>>> sm6150
>>>> L11A: VDDA_USB0_SS_1P8/VDDA_USB1_SS_1P8 Ipk:20ma
>>>> L4A: VDDA_USB0_SS_0P9/VDDA_USB1_SS_0P9 Ipk:50mA
>>>>
>>>> SM6115
>>>> L12A: VDDA_USB_SS_DP_1P8 Ipk:13.3mA
>>>> L4A: VDDA_USB_SS_DP_CORE Ipk:66.1mA
>>>>
>>>> QCM2290
>>>> L13A: VDDA_USB_SS_DP_1P8 Ipk:13.3mA
>>>> L12A: VDDA_USB_SS_DP_CORE Ipk:66.1mA
>>>>
>>>> sdm660
>>>> LDO10A: VDDA_USB_SS_1P8 Ipk:14mA
>>>> LDO1B: VDDA_USB_SS_CORE Ipk:68.6mA
>>>>
>>>> msm8998
>>>> L2A: VDDA_USB_SS_1P2 Ipk:14.2mA
>>>> L1A: VDDA_USB_SS_CORE Ipk:68.6mA
>>>>
>>>> It seems the USB power requirements vary across platforms, and the
>>>> 21800 µA load for vdda-phy exceeds the Ipk range in most cases.
>>> Ipk being ?
>>
>> IPK: Instantaneous Peak Current
>>
>>
>>>> I also tested removing the load settings for USB+DP PHY, and DP still works fine.
>>> It mostly works either because we don't allow mode switching on older
>>> platforms (yet) or because somebody else has already voted and that vote
>>> keeps the required mode.
>>>
>>> As you've started looking on specifying proper current load, please
>>> finish the work.
>>
>> Discussed with chip validation and power SW teams.
>>
>> The power grid tables are primarily used to ensure each module receives 
>> the correct voltage, and they define the Ipk for each submodule. 
>>
>> While they don’t specify recommended regulator load values, the Ipk values
>> reflect the expected power domain strength and can help estimate the voting
>> strength needed for each supply.
>>
>> Since regulator load is mainly used for voting, I’ll define init_load_uA in
>> the next patch based on each SoC’s Ipk values to better align with hardware expectations.
> If the Ipk is defined per module, then it's fine.


Yes, under each regulator, multiple submodules are powered, and each submodule defines its own Ipk value.




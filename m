Return-Path: <devicetree+bounces-223801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5BFBBDA18
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A64D834A272
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F31F22172C;
	Mon,  6 Oct 2025 10:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NAtN7DHy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA751F12F4
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745414; cv=none; b=METQzcmO38SBr9QwaAaJ9RLISU1mcEpBLtfrR4jkwhDwQKioY0o4UwtDPVKS3ZkJqP8eGh+lCCivtCKVhV2Yh49ldZj+tuywRWopSxjIKcZnjUuEWwkRQY6CkP7ZPRZYXB5CoBmk2vinOO9afdmlEuGx7ycGsrM0ENxa9H14YHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745414; c=relaxed/simple;
	bh=U2IfsPJIglZbNLha2D9xYquVHVAKAm7qePp4wABBM4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=poU8Y46V5qNO2WUJrTCvcwSTeLi0O92pIO/Nt4uh6T2u3e7JfMSP3VFYQRq4z1OBAfM4uT1R96yDpMuttjv4xRnzzE/nn2/9yjtuZESbtpEE5F8TGjzFS6umgLzgmNhparY7tjpSDtswNOIx6CSdKnvdeSIQ4sdSfgHol8E3AwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NAtN7DHy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595LNTn5022342
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:10:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YQ9JTnhy7/VFugNTC6R+z9mSCDzzqwGBYOtYIqduWzQ=; b=NAtN7DHyq3ZwfClP
	4BcHB4FvWVWkddyQhEj1JSJQ1NI4EV/Xg5kV44rS7aNrWzfVxun8QvSl3tATi84o
	nTeNbr4AXqu7YGel83kYMryezB3tUzENWb7p7o9Z1KRJ8LbE1UDKMI+5U4iFYLtz
	nm5OELZyVYoQDuHh23ao29jFFhX048LzURZ6GEnuW/U2c0hiDL+KkIGqVhCed+aH
	5Wuq20ccJqcby2ltn4U1YLD+j6tLYWjngzqxXZpCKHvIM2J5g8KCGfzHvL/YT17H
	WWDVY/oKXA4cbVVNTGzEa0Sy8FC5xCZk/ClEUyGyEnE7sruPkDqgEyZWBoZAbyKO
	vEWGmA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jthpunju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:10:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ddf2a2d95fso17367771cf.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:10:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745410; x=1760350210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YQ9JTnhy7/VFugNTC6R+z9mSCDzzqwGBYOtYIqduWzQ=;
        b=u5oiJRHIkBBuUB3QTlimQ9Ma8GQZ8TA4EQ43UD7i+gUuadGGS9exv7YdCS5kRDz6qB
         aNtom3Yll+6KC2nub3y3y8ETgIrVb3EQT3s7L14cnUB+NHmVbogXzLEzG3YeFUHgXgtW
         p7/2ekNkrerH7qb7RLNMdHbNWIZZrE98iBnFzmSzzysYOulwfEsw0K+zKYw7bqjgQm9x
         XwH558oOC9ktGjN7edixTe+hio51fF+DabVvZJutyw189zgq4WIuEGZiA9FSDEKPO6U9
         ktH0+TAsIhNtq5iXPyNT+PnBH5nrrixodXxFjorgYFL+jjM5g96HsMr/ezk5UJYJJEXx
         /WsA==
X-Forwarded-Encrypted: i=1; AJvYcCXIbuNjkl2HvgsRmd4QBl9UzeUVajScRrRdhm9Mf9Fv2gc/+eoCXlmE2isWx9e8GglYU21YuTP+FTe0@vger.kernel.org
X-Gm-Message-State: AOJu0YwKtokYNx18maWIEMtJoc87FLyGxjpTqxG4qCynb47y8uQ4wLk2
	NjYS/FWqnmuzL+rPa50DfAWXdXdjSa7n9u7q/DFZvTzGqwHpx1d8BcndsS17WNWkRMvROdeiN1n
	oiUfDI7dZhXjLtQzY86KNfWr129LsAWG0Mor9IAVc+8UdJy/knx5GD46QDLOFAz5O
X-Gm-Gg: ASbGncvg2ItAK49PXvVYkEQM4mVKfPBpqhmcKpP90VJ8EWEwdsDKJgcJD+xIeA4b7xF
	ed2uZ88hdeaoi3bQ1v7fwAzY0BRY20+G60VPU7YtfrggshIz4vcuO33JAfJclXaxwXt51hDJXpa
	C3gUV+0FbYblg3jXhNH5xHPtx103ErcDXIKlu8qPmW0lCcZ4awfTa2/lwKUmgka3I7xmEKG2Bk4
	VF47ew9E3s1MUQnFjbUzzM654TYp0zdV3SdDDM8aK0uy9MqZtF1vm8coOFMWzwS5aovwyB7JF4k
	ramNDlss7MEffSTbZdX6TyyaotahuDdSHkCsdkbNAUmrr89Qzz564Sh7t/D4PdRqVbD4HdOWfDT
	PRgByj3H40FgZ0N1y7e5YEFk9Up0=
X-Received: by 2002:a05:622a:60e:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4e58cca7939mr46373551cf.3.1759745410308;
        Mon, 06 Oct 2025 03:10:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkIaT5uOBugms5gwERrur4Q5H8ZrUny5IMG2QAlBQl/ctjJPOfhlmFXcEGWS3cXzuKqN18GA==
X-Received: by 2002:a05:622a:60e:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4e58cca7939mr46373061cf.3.1759745409696;
        Mon, 06 Oct 2025 03:10:09 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486a174a6dsm1115628966b.90.2025.10.06.03.10.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:10:09 -0700 (PDT)
Message-ID: <53aafa84-6d6a-4963-827e-c1600270662f@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:10:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/panel: Add Novatek NT36532 panel driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Junjie Cao <caojunjie650@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark
 <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Antonino Maniscalco <antomani103@gmail.com>,
        Jonathan Marek <jonathan@marek.ca>, Eugene Lepshy <fekz115@gmail.com>,
        Jun Nie <jun.nie@linaro.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
References: <20251001135914.13754-1-caojunjie650@gmail.com>
 <20251001135914.13754-4-caojunjie650@gmail.com>
 <lfdhib6a7ct36nmj3of2setjft7ydrf6sfgtx7qued7qd56nhc@2xol3grm5re7>
 <e36572bf-4fb4-425e-8d10-c5efa5af97f3@oss.qualcomm.com>
 <rxm67cbwkp2qyxdlgqb3fz7fhiskmnhidhjvl4mhqn67iq2x4n@wfueruiiq7kp>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <rxm67cbwkp2qyxdlgqb3fz7fhiskmnhidhjvl4mhqn67iq2x4n@wfueruiiq7kp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: sJ5RAdi1GeFpM_4_0SZ-2BfsNbOjPy93
X-Authority-Analysis: v=2.4 cv=N5gk1m9B c=1 sm=1 tr=0 ts=68e39583 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=0RrB5Ro-Ny3bBzvrWzsA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNiBTYWx0ZWRfX3ANKMpacF7ZW
 SDfemmRlu+3wyNXQMDTR3bSplhXqgvgCTc7HlSEg+hufzsBV8I4E3p3r/dKxjUfL4OOWBnjbEo7
 e+58O663o1YdSRz76ZjYnAMUF+AhcJCx8mgwCCRsAWqFgKBhhvYPRgHOSDakLrXTM7ZznaPWry0
 pMyD18769aFZNflsqqH4I7FE1bTnIgfovh64t6E+pecQEdv9Dj/uDKzqf/Fsmu7RfdXX33oSSQy
 byVspxG0AKPFfxhgD4i5PTzXsrsbA0jsuzCeUCj9zLDAIGD06bjQ7n9q4Cls0b3je8SI+tHnZ2b
 0CPLvd+GE03AU0PRThCmPrMHkCBOjcx8+OzBqD+3qg8lNvIOZ2F1gi3/CWUDCbTCkU3EOTu8aMr
 IaIvIXChN1DcQfZJeKig7vq11smTJQ==
X-Proofpoint-ORIG-GUID: sJ5RAdi1GeFpM_4_0SZ-2BfsNbOjPy93
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040016

On 10/6/25 12:02 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 06, 2025 at 11:24:35AM +0200, Konrad Dybcio wrote:
>> On 10/2/25 4:04 AM, Dmitry Baryshkov wrote:
>>> On Wed, Oct 01, 2025 at 09:59:14PM +0800, Junjie Cao wrote:
>>>> Add a driver for panels using the Novatek NT36532 Display Driver IC,
>>>> including support for the CSOT PPC100HB1-1, found in the OnePlus Pad 2
>>>> tablets.
>>>>
>>>> Signed-off-by: Junjie Cao <caojunjie650@gmail.com>
>>>> ---
>>>>  MAINTAINERS                                   |   7 +
>>>>  drivers/gpu/drm/panel/Kconfig                 |  10 +
>>>>  drivers/gpu/drm/panel/Makefile                |   1 +
>>>>  drivers/gpu/drm/panel/panel-novatek-nt36532.c | 437 ++++++++++++++++++
>>>>  4 files changed, 455 insertions(+)
>>>>  create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt36532.c
>>>>
>>>> +
>>>> +static const struct panel_info csot_panel_info = {
>>>> +	.width_mm = 250,
>>>> +	.height_mm = 177,
>>>> +	.lanes = 4,
>>>> +	.format = MIPI_DSI_FMT_RGB888,
>>>> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_CLOCK_NON_CONTINUOUS |
>>>> +		      MIPI_DSI_MODE_LPM,
>>>> +	.display_mode = csot_display_mode,
>>>> +	.dsc_slice_per_pkt = 2,
>>>
>>> As this is not a part of the standard, what if the DSI host doesn't
>>> support this feature?
>>
>> Shouldn't the core gracefully throw something like an -EINVAL?
> 
> There is no 'core' here. Each DSI DRM host manages DSC on their own.

drm_dsc_helper?

Konrad


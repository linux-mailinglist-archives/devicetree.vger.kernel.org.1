Return-Path: <devicetree+bounces-223814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A25BBDCB3
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2BA2188E7A5
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3FBD26F2BC;
	Mon,  6 Oct 2025 10:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WUcwFQ9S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA8B26F2AF
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759747801; cv=none; b=aAB75PHWWXzIzwuFjx7lR1K3Zcj/qYyxTw0wB+6nEB3dUdvy5ItK+Fix9icIqRQH3uS4dh0jJ60vV3MMjNCreKcKqkZZVd8plOjoHndB3sZ14iS9F/PWaR9QbsBu48caNLypqnrrpTVfxyGYTvvabz+eUpDjLozYZYnoCXyaZsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759747801; c=relaxed/simple;
	bh=nmQN2Ai0HjcSSzO0mxJrOtxVVNPLmWCIRBsAC/F8dB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j0CiNJkxNpQZO0MSLTrPtr6UgunFxNw7NlUYxreS+bpXHk+9RN2X+G90rQrAIMirKJji748yrzgciaqmeczNNQPC7owrEsPIFVjEYCJadPMkLPQwDAME/IpAQt3BKXkfl8cLhKyHe3U/Fx2+pyxkC8dBbGBV4DbYBR5YoMrHnTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WUcwFQ9S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961Tv6O017137
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:49:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IN3CVmizwhnegBcGc3ulurAszyJXyt4uRPeWQ6uV/vI=; b=WUcwFQ9SMmiTZbx2
	NCNeZ1nWtZj9SZeY0FBSxzXMH2IzPbeI3uKZPRyDG5mIBhrMbs10/bHJuffXN1S6
	48ULwM2+mereT1CMxjpteWfk2W6DE7SpPaMQsKBSaw72XyizRA1Vb59NKoU3BYF2
	kN/HEYqbQueAvdOe+N8mgH21IY8fPnz6c8f/WGVRE8w18TQTDEZPzYlp5pOUh0lf
	zq+LbL8Whz/R/nlEOxyrky6T8KZI+AHAWTJxHzZr4qHilz/JFh5CmyACSz8HviOr
	Spq4Ys3qsT8/OfP0FULlcV0FUoOP+wws6TueECzH/vCxhsEMrC864LP8WoN/bm5A
	MH9+MA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6uptq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:49:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-879e3de728aso90539685a.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:49:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759747798; x=1760352598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IN3CVmizwhnegBcGc3ulurAszyJXyt4uRPeWQ6uV/vI=;
        b=ARnIwRiJBIXkcnynk0Y3cKZWPIx2CxC7RZtOgVARdJQmBGf2ydDCfx96EqcJJNMvqg
         y/xgRv6IaMXOxpAcUOQtoHQQnpHBwRdEP+MW5A6/qjePy1p68grelcGXcciG6h8uyS9F
         ikTCONqTk08t21N9yMxvhcKik8lIgjT4Ld2f6+PqigMgNwBsbFXmUIaV9U4JksEsMi1P
         z0aw9a2StphGJjVDGn1md7h4Ijn3HDcLV2CHvvZRJrgUYV7znXwl1uaxBrZOYiPL9V2t
         4ha/olp7ca8XCKTfqqEiVDCYnWmbg10OI4MurITKoMX5fav58S0ZYHffzF1aZp49oBLD
         ktPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNWN4nTjH4XMEIQ8nblEBnBTswT+htH25fyDLxYlnDm4XCl7gJAIXFjQFAvOUOrU/cNr49QQouL0NB@vger.kernel.org
X-Gm-Message-State: AOJu0YwrWzUS+2AUcyHog7DxW99iFjh+LDMLXDmPERzrIMoPPpvYf2uI
	yJwGCD91szKfTrkuiMVEQVc400CmTLkZi5CMmeN7A0EpPjiMjCdhSevwFP0VOvNY4S57Rn49EKq
	a1VE+YcNhdrBFG5ZNMSsBt6RXKAu5txw3VVem37EKnwqkf80uYVTgnu2gKsBzgEAI
X-Gm-Gg: ASbGncuWm2MswEdlmyZdfGNpufj/pwdgNZAuKumNdPgojKM+77Z1xapm4HHwdt5bNNU
	gElCTTjR10uYMSzn91TH/hwGjNU5eY4pHDVWRSwlxbfwfIpfxIz2Yb16ULDpmNXvnG5gJWkvC/K
	OuVzDnAWno2HHZcg3OLH1hBV9oqqkuCX3tmC8fu9xSDZRVv3A8swgEp3ouIXhiqJuwqB3Y2YDVr
	O3sQBkK2K4gvWfo0n0OUXb7ivAqKprr52F2d4bbf78mwsn9h8gqIzkAatU2df1zn5qFibLuz3E1
	BI9KvZ2xkSSunLT+uygQnrgpcIZk21QCJcIhXdbDgu4ef8slHH2vi5nVg37WiVbGyy1/Z3Wofhm
	E0hOl8pK3SUnsxPKdr381ilR8PxY=
X-Received: by 2002:a05:622a:60f:b0:4dc:fc58:c50c with SMTP id d75a77b69052e-4e576a45606mr94443291cf.5.1759747798226;
        Mon, 06 Oct 2025 03:49:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSEU8VjnAr3dc4CRE1tKa0vgiLD4zAxaPVFZcAL5lIiyFY/V+S9ZVpzOWmv+pNPBnQHAcwzQ==
X-Received: by 2002:a05:622a:60f:b0:4dc:fc58:c50c with SMTP id d75a77b69052e-4e576a45606mr94443021cf.5.1759747797738;
        Mon, 06 Oct 2025 03:49:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865f741f1sm1118572366b.39.2025.10.06.03.49.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:49:57 -0700 (PDT)
Message-ID: <65d0012c-4c06-4b39-9375-89d635f8abeb@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:49:53 +0200
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
 <53aafa84-6d6a-4963-827e-c1600270662f@oss.qualcomm.com>
 <2do3dk7gqvbloocsv46t3zrc4ghvhrpiqre6djk6heese3wz75@dlqwkdsnrkbr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2do3dk7gqvbloocsv46t3zrc4ghvhrpiqre6djk6heese3wz75@dlqwkdsnrkbr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX8ihyuDAArq5L
 AxD53IWXUDO/XGNHgKH8yqVcMNNcdWgyklmRsNzHpRbJsosSGmKbx5op8e4OAAj/rudHzP+tezu
 Od4JLP3INAPuQSsK5LxjhyaQeRr5d1FejdRYqAVYSPL3XPuNpkPK/P6b4lR53YYNIdrLhFX97nT
 InX/L4/eIyF7khktkSQfgAzcY9fjJV9QMxFtp/LYFzCGSgL8vSE6zKgu9/SdNnWUnp6dJfBQV9j
 XiJOpasuWV3iNhoXrMI2otKYTIMe9/Uxq1+BQqKZJ695uv5TW/XfG2kkqM8XYfzrf8Fb/bgnPyh
 Tc5K+HZ3grw1Br9w1Hgn8zkeORbpZZ8qcPspQyX05egHSwB085i3ybci+xi/DJOOL3eVAgGckmG
 spbk/eeXfe9nGCznArOs3oViaoxcVw==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e39ed7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=zTkMZ0gcjxiqpFU4bxAA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: NR3ztp_DosdkRIq8J_B250RYSMmv21nN
X-Proofpoint-ORIG-GUID: NR3ztp_DosdkRIq8J_B250RYSMmv21nN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/6/25 12:39 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 06, 2025 at 12:10:05PM +0200, Konrad Dybcio wrote:
>> On 10/6/25 12:02 PM, Dmitry Baryshkov wrote:
>>> On Mon, Oct 06, 2025 at 11:24:35AM +0200, Konrad Dybcio wrote:
>>>> On 10/2/25 4:04 AM, Dmitry Baryshkov wrote:
>>>>> On Wed, Oct 01, 2025 at 09:59:14PM +0800, Junjie Cao wrote:
>>>>>> Add a driver for panels using the Novatek NT36532 Display Driver IC,
>>>>>> including support for the CSOT PPC100HB1-1, found in the OnePlus Pad 2
>>>>>> tablets.
>>>>>>
>>>>>> Signed-off-by: Junjie Cao <caojunjie650@gmail.com>
>>>>>> ---
>>>>>>  MAINTAINERS                                   |   7 +
>>>>>>  drivers/gpu/drm/panel/Kconfig                 |  10 +
>>>>>>  drivers/gpu/drm/panel/Makefile                |   1 +
>>>>>>  drivers/gpu/drm/panel/panel-novatek-nt36532.c | 437 ++++++++++++++++++
>>>>>>  4 files changed, 455 insertions(+)
>>>>>>  create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt36532.c
>>>>>>
>>>>>> +
>>>>>> +static const struct panel_info csot_panel_info = {
>>>>>> +	.width_mm = 250,
>>>>>> +	.height_mm = 177,
>>>>>> +	.lanes = 4,
>>>>>> +	.format = MIPI_DSI_FMT_RGB888,
>>>>>> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_CLOCK_NON_CONTINUOUS |
>>>>>> +		      MIPI_DSI_MODE_LPM,
>>>>>> +	.display_mode = csot_display_mode,
>>>>>> +	.dsc_slice_per_pkt = 2,
>>>>>
>>>>> As this is not a part of the standard, what if the DSI host doesn't
>>>>> support this feature?
>>>>
>>>> Shouldn't the core gracefully throw something like an -EINVAL?
>>>
>>> There is no 'core' here. Each DSI DRM host manages DSC on their own.
>>
>> drm_dsc_helper?
> 
> No, that's just for calculating PPS and some other values. It's one of
> the problems of the DSI model, which I tried to solve a year ago, but
> failed up to now to do it completely and clearly. The DSI device can't
> check host's capabilities. It declares what it needs inside struct
> mipi_dsi_device and hopes for the best.

Alright, thanks for the explanation

Konrad


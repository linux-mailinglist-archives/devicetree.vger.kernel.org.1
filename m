Return-Path: <devicetree+bounces-220319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CE5B9426B
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 05:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E37B42A459F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 03:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01AAE2580E2;
	Tue, 23 Sep 2025 03:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mR0xTMk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8C1236437
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758599322; cv=none; b=mD/cHEsqsD/WSgjsMVtYgOf7SpVausM6rKjHIAlvWUlO7AT5LBTdPU51HlXy/kg8VDcrZIdnss7OBdXvVq4iMCCIuQztDtWfUjFi6s5h7ki7HfsMPLM5la5v1kTVdtXbka1+U3rtYlnjEhrBJou9tGI+zGCYEvh/PYYZM2/N2k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758599322; c=relaxed/simple;
	bh=A2B0Ol5VwdVJczYeQYPvYqekC6DicckRWmmzo5hGvWI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F4LZPkdU+SuOq2/CivbRg53dO5S7KYV/HZB8abliD3uzoxlRDgCaaPh5JOITfW8IGmwETnXAbLkceiS3LI8zIIQaDp3ucF8ZUxwTOMSWjx9pqAQdI9A7/qo8h/jU5CALrile+FPHxwhiDyoiYpRWE/e7PKNL4LNgCFZx2OoKjtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mR0xTMk7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N2L2Du001069
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:48:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2tzkEhv21yTBLeb655r/JRLn+hEu6MSXtvaBf3prN/k=; b=mR0xTMk7SYm1YjCV
	WkPMqhpmOqIXsElhJzbZ7XVz/ATIzxT1wf+Mp2nHpYBOQtv5GqqYlZEZnNjyMMDg
	aoErKwfUe+1uuEYXWKMXU5vH2/HJuXe7Yeyr4C54NJ9UakD8DwoSl1SUyH3m3Ish
	gZ9xpv87yBI+jo4DGggh54wuhBTnyEbdM4vymCLSz6KDnDaJSgonExwBYMSAP+iY
	3ihwjPNdcv2haCwKexoWhhKFor12Bgv+JpnpatS9XkP+tGyoB95DWNj4lholDFl1
	LfwU/5/n559eoA9pMByq0sjByOob47xx94qh1roNBcvVROJMH45FqkJ3IqVx5jRb
	7Q2Piw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdr6nt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 03:48:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2696ab1bc16so14230385ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758599319; x=1759204119;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2tzkEhv21yTBLeb655r/JRLn+hEu6MSXtvaBf3prN/k=;
        b=CFpEr+6PHaE8Vo1BQSVKLlWDMBPlb0vXtXI9LsI9zxa7XW99dGRn0pH6hV04tP+MXF
         N36nU9LHpIp6O78eZc5PojBupwfsF7qEB6ambMK6cng14KlVUybIs/4G1vysVkOZb64h
         0ByBQADySKII5RGmVuAjgw2BswTXGrJ3W07K2bfD8OR6SB0f23h7b4DbUNN0cfzQD2zz
         tJXxw3kyvCaaBXbN+RuCZ0q9uA7H6GpIHK8HB9vHu+Zk9GIypFziWVYCQ6y5C/0UTIsj
         6pHWUYkCmDmHJu5A1lGZLyKzyzyz2Tgfkoo09Sv7GshD8JlPVuZbyJHyPNWj6UxVQJNq
         O8uA==
X-Forwarded-Encrypted: i=1; AJvYcCV+V1CvU8qKlMDqetYGN5rTT6OXjoqgYQ08+xG6Nrl3a6I8rl9IgvcuIiC1v/DIDVgz8wABiN0panIo@vger.kernel.org
X-Gm-Message-State: AOJu0YwMC3bSGdhIcDYt5JzXOrBqEChmk8sNuL6SSAdjqWQN8QtoGYKP
	VIdSAEk1MOCg1XPdb/fQvKV4rRkuXuBr2tjlNIaFDJhkRYbvrFxgGXmanCKj6/5q3ERDk1fcTS4
	Nq5YOswzuzbO6luJx1ALzWDkBxb6NAeY3KA4Y1V0kQqZYkeLy7c/prg2cmQxAYpOA
X-Gm-Gg: ASbGncsbhiCODGJy4FTQ0AiWEuj5voqs501IN2quWhUcfcMCeoAnQ6gPT2JnOEGpQc8
	DXRgXe5HApnT/PrPknPcoOxV/KSVXkILexPV6oqvaBnI8LSS5r0qQJdHiaE4Ahs/KBL6DcGWqBa
	iKvw91Zi4IjEi0TMzE6x14PNawafPouTjeuGInI488RqKint/qgj35PVDFahmsRalaEhLUihFGH
	HVlCMYop+uzAN/TXe7aMKz8t94kSqjyQX2qKZEDOwJbKEdBgEG7yfHT0zDHW9U1lQJF1dhJXOFQ
	zi0Y9nbeHEIAzjuUfLJR6QJQMFKu4qTiVWkVUsaVdtU22DB7koI9INoFfxZNpDiksW5EE43aywX
	5hOC5GMa/7j5FqrlJg6ZHL2/QwJSZFUftu88=
X-Received: by 2002:a17:902:cecd:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27cc3ef18c4mr7163165ad.5.1758599319025;
        Mon, 22 Sep 2025 20:48:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuGCVKMlhrcuNyLUyo+F4+9Dcxv31AiSgDCtjDNN8GbHcs7dWnyk69V9F4hUnIXmzLqt7jMw==
X-Received: by 2002:a17:902:cecd:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27cc3ef18c4mr7162965ad.5.1758599318561;
        Mon, 22 Sep 2025 20:48:38 -0700 (PDT)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016bea0sm148159875ad.40.2025.09.22.20.48.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 20:48:38 -0700 (PDT)
Message-ID: <83e8c8b6-fd2c-41f5-8732-703d47764d0f@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 11:48:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
 <bfpgktxgo2hb6dpzy3i7jdr6w4de5boorx4n6qeapct2vre4sn@4z2mnppridn5>
 <14cdf3a4-714c-4136-8c1d-99392e7911f5@oss.qualcomm.com>
 <2ewxoe76rrii4w3n5b6wl32vmatcp2boj75o65cuq5nx4f2a55@7cn6m7oxzu6c>
 <28eef277-c778-4ffe-94c6-2e90d58633de@oss.qualcomm.com>
 <bonlc3rnfizezrobyuazv2cmyu3hqqck7tbk2g5ryln24eiwno@jxsz2rg2dyex>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <bonlc3rnfizezrobyuazv2cmyu3hqqck7tbk2g5ryln24eiwno@jxsz2rg2dyex>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: mjTWilM7kKNkTTtSUuNukg5WVzNGE0sO
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d21898 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=NbDaqmtucRuFR4rafzwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: mjTWilM7kKNkTTtSUuNukg5WVzNGE0sO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX4Mwf3wDCR28G
 h3TiBKwajZzRDNip0Sax/LBOCYjHXapE4gHE90Ic9Ci2EGoOM6ntb9FbWNBgMPNJcj7wLsfCp9J
 gXTYDbW4B+Nv6BsphuX9YaMHDJQWX8WBVKz9qUyYHh6v/udMdj1IPsvaiGT6H731Hevu140JH4k
 uIyoqhyo8wsrZQ2PgjQ9/vK36l3ErVqDBQbMMvv+4/rb5PsGCdwoY+1T0UE9gE8eyRzJE51ATR7
 He/12hVCvGcPLiwExje7SwaDBnKE2wQX/wK2zeVkIg7LLsF/JC0dKwSMYtRZt3kEHGbD+3NYPDd
 i+c0z/r61FgEQqWr949p4+CcdGq7CBvoMi7lCsokg7mz07KmMMAB5WL7oegaT/+y50LHtdZ1fRf
 4VWsZ2mG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020


On 9/23/2025 7:38 AM, Dmitry Baryshkov wrote:
> On Mon, Sep 22, 2025 at 07:28:17PM +0800, Xiangxu Yin wrote:
>> On 9/22/2025 5:45 PM, Dmitry Baryshkov wrote:
>>> On Mon, Sep 22, 2025 at 02:58:17PM +0800, Xiangxu Yin wrote:
>>>> On 9/20/2025 2:41 AM, Dmitry Baryshkov wrote:
>>>>> On Fri, Sep 19, 2025 at 10:24:29PM +0800, Xiangxu Yin wrote:
>>>>>> Add QCS615-specific configuration for USB/DP PHY, including DP init
>>>>>> routines, voltage swing tables, and platform data. Add compatible
>>>>>> "qcs615-qmp-usb3-dp-phy".
>>>>>>
>>>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>>> ---
>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 395 +++++++++++++++++++++++++++++++
>>>>>>  1 file changed, 395 insertions(+)
>>>>>>
>>>>>> +
>>>>>> +	writel(0x3f, qmp->dp_tx + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
>>>>>> +	writel(0x10, qmp->dp_tx + QSERDES_V2_TX_HIGHZ_DRVR_EN);
>>>>>> +	writel(0x0a, qmp->dp_tx + QSERDES_V2_TX_TX_POL_INV);
>>>>>> +	writel(0x3f, qmp->dp_tx2 + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
>>>>>> +	writel(0x10, qmp->dp_tx2 + QSERDES_V2_TX_HIGHZ_DRVR_EN);
>>>>>> +	writel(0x0a, qmp->dp_tx2 + QSERDES_V2_TX_TX_POL_INV);
>>>>> Are you sure that these don't need to be adjusted based on
>>>>> qmp->orientation or selected lanes count?
>>>>>
>>>>> In fact... I don't see orientation handling for DP at all. Don't we need
>>>>> it?
>>>> Thanks for the review.
>>>>
>>>> I agree with your reasoning and compared talos 14nm HPG with hana/kona
>>>> 7nm PHY HPG; the 7nm COMBO PHY series has orientation/lane-count dependent
>>>> configs, but the 14nm PHY series does not. On QCS615 (talos), the TX_*
>>>> registers you pointed to are programmed with constant values regardless
>>>> of orientation or lane count. This has been confirmed from both the HPG
>>>> and the downstream reference driver.
>>> Thanks for the confirmation.
>>>
>>>> For orientation, from reference the only difference is DP_PHY_MODE, which
>>>> is set by qmp_usbc_configure_dp_mode(). The DP PHY does have an
>>>> SW_PORTSELECT-related register, but due to talos lane mapping from the
>>>> DP controller to the PHY not being the standard <0 1 2 3> sequence, it
>>>> cannot reliably handle orientation flip. Also, QCS615 is a fixed-
>>>> orientation platform (not DP-over-TypeC), so there is no validated hardware
>>>> path for orientation flip on this platform.
>>> Wait... I thought that the the non-standard lane order is handled by the
>>> DP driver, then we should be able to handle the orientation inside PHY
>>> driver as usual.
>>
>> Yes, I have confirmed this with our verification team.
>>
>> For the non-standard lane order, handling flip requires swapping mapped 
>> lane 0 ↔ lane 3 and lane 1 ↔ lane 2 in the logical2physical mapping.
>> This is a hardware limitation, and with the current PHY driver we cannot
>> propagate orientation status to dp_ctrl for processing.
> This might mean that we might need to make DP host receive mux
> messages...


Yeah, downstream handles this by passing orientation and lane_cnt info via the
DP_PHY_SPARE0 PHY register. But even with that approach, dp_ctrl would still 
need access PHY address area.

Let's see if there’s any follow-up on extending this in the future.


>>
>>> Anyway, please add a FIXME comment into the source file and a note to
>>> the commit message that SW_PORTSELECT should be handled, but it's not a
>>> part of this patch for the stated reasons.
>>
>> OK, I will add a |FIXME| comment in |qmp_usbc_dp_power_on| and update the
>> related commit message.
> Thanks!
>


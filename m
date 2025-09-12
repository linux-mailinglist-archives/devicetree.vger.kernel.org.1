Return-Path: <devicetree+bounces-216200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D312B54041
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 04:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E4E51BC4D6C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 02:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A451C862C;
	Fri, 12 Sep 2025 02:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZaBtnepj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEE618E20
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757643323; cv=none; b=aHWdFtevBSqrRaaMHhupoV17/5T+iZy/hyR/DvWPNtR1fh3giS4cJHokLTdDry4ienLSZgdstRgqkS+BOpQW+3scUPQMDYGZpA/mczhmuzBRzAy2gCButVFtJkTlxXTRLIaRVTSTfN95WmTaqjG5LcA7zPx1zzoe++HSwQXzuvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757643323; c=relaxed/simple;
	bh=nUnsPdoniE+tkUSymkZCpEkvCRw+wyDI01SPNexGmgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VH0XlsHef1D9gD0cVESMPoVoQydD+z4RTisW973UHjLsyw6Bl/oVCy+/tYkkJZ0vfeRjQSiqLRKJnX/sA0Go3N7gn9j0leYfPT1xduq/uIkncid9XLmmQTmjTY6cmRiAiT2xhbzBdF0p/WQ5qngSgEQraybhuWbluksdr9j7PRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZaBtnepj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BJNGPt002402
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:15:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hkf9o+nS9HTVNHq6n76xt6lAi8TAxB+Rb2oCezdkjY4=; b=ZaBtnepjRSjQgZLO
	qPvFGKhjsOTfW8Iv5WaBy3odjk41lZqUqNiiDifSR+/4AgUhKG7CAW7AhLOe4+tG
	5RDt82j0++qNzCrNelzF8VXw5iqx8m38MqOKFGysZCZXl9yw53jCYaDS1Mz+zLYL
	gAbx72dpYZb1Nx/QuUSxqPJbHWrZSL9z0kpk9kDtm+/5KoToUXcbBfQHfdLb+4kb
	znk71yZ7ekCmjUiFF5EXKRO5gPws5UCMVFhZzpVB5dEXZeZfSu6LRAtNfw93uitd
	w40eVQzp5FwMg+Fhv7P72+e7GUPMPofxIGJ+WXR8ziQZ6xa3kFTsxq4HLy3RDNdC
	Hln4tQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwsj1u3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:15:19 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32bc6306d47so331239a91.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757643319; x=1758248119;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hkf9o+nS9HTVNHq6n76xt6lAi8TAxB+Rb2oCezdkjY4=;
        b=WzxCVeD05KdVL2xxkGiH5VR9ts8nsFQ8D9eD8QKIl1El7uxMRINKcDyMAIDXB3bw5K
         COZUK6DjBExL1Kyv1jBgSa0oO1+YhEWzz3+OzstICegvMMaLUarH3rOYWIyJskMkPE3y
         g5rS3RQNtORG7Q+DUcU8S83Dm1GnQNmaCqPPoMflhyqVxvluGFtqCSl7bE9Yl9fi7T7v
         5E5L8otWcDBfu7wcFmtPKWz027siklHvSq4lKcHelW3KfxfDZ71Yj8woY4DTUdnybx0B
         ofguplwcvEKRY/b2nGMGjzVZABmFWTgvYC1grFumC4I6UYzMoBNl1xBwKNqlEETZ2F9r
         YOIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIciQHmtZZIR07X/oQbD60zo41yqqgEqVpthAFvqKIrKH+oQ5OX0vTM38lMdmVxHboDdxyZZ1/FPYB@vger.kernel.org
X-Gm-Message-State: AOJu0YxyXcegc+Uz2M8EUT9bAD77p7frFIEjIsboWCaJKxhg7Tykp1lF
	r4l41O08qlZ/Nbk1VS8g7MGZ70rTK0bcubfapFqGSXHploakKDNVh5hsAF+4ekYyYhYZ4zjghMP
	oRSbKA1MGAJ+3jF3rzuav/6rTFLVaopQp79ysSURZqyDCflJrpJ5DKP0S5psL4ctT
X-Gm-Gg: ASbGncu+KERdvM06DuvB+pbFOuO6iAlb2ChzSJGAJILzRW/MNtWd7v5pi4Vkiznu89Z
	IS80Fb7XTwOFKT+XdkhM641h5CLXc8DUSOTPLGZoFuweJ8SJ0QPwbCsyQmLifB8hchJzYNWvw51
	hYo9faZ90olyOU84gHZaC5sy8p4PiKorPvq3cknE8g+B080GgTTEbTl2D1DhDmdomEYa6gPcDVN
	tF/dF1kBKRNunSIE6prIsg/lAtmgax2XtzmxurDh/D6LnxKsgQQD0+dLuWI/nM1Y6mDBarIFRNV
	V2nmUBMrc5e6ph5gNE/m+/A+ppFaY9f9EtSQ3eH/0qfn/lFtYZVtOwEzHOluAM+KLqv8CWu85XM
	erqHqi3MaVdyhb4oUQre4gFGXWecKVA==
X-Received: by 2002:a17:90b:4f8c:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32de4f90745mr761560a91.5.1757643318988;
        Thu, 11 Sep 2025 19:15:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFq4qCtfCRzD4DYH+qfi319AoKpVQ/JAo5O1h9fSmiMtLZQuLKN33nsWtedkSONVwq6ENs6Lw==
X-Received: by 2002:a17:90b:4f8c:b0:32b:dfd7:e42c with SMTP id 98e67ed59e1d1-32de4f90745mr761524a91.5.1757643318503;
        Thu, 11 Sep 2025 19:15:18 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b1edc7sm3597818b3a.66.2025.09.11.19.15.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 19:15:17 -0700 (PDT)
Message-ID: <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 10:15:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
 <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 6kl-jwU7jcPuSFy7D0uaa8MHhHpLYe-d
X-Proofpoint-GUID: 6kl-jwU7jcPuSFy7D0uaa8MHhHpLYe-d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX509PH7F/xXyf
 uZdBaWQYVQM3C6lL9tB2r+e9jOENsZEHdIZMwtVtgitBcO7h/o8VQSLxmejoQhH3WDoXdnisfbC
 vigC1LRjE3BuiopAf2q1ZAGv94eaO0nok106J0qZji4QIOUEEh7ToZJwwuzdBhmOCtWVv/pPSzM
 IlVDU7Rq+YrqmeBv2OKs6P2MkwM5m9CDVJ5aYVJIrnmwBlGh0q1yRm8pdjqzmICcC8525kkgipo
 weY26gS9VJhn6B3ZFx0nuUZwbiIZhc2HquRU5qgl7tuqaIQfAW87VvcF7EK2s5WGfhJmxHzONRQ
 Uouq4aOKAdjetvgSouoQty1PZfiTFgr1+2tKNLDWQt8l46v/MbJDXAXzjamg9uViDYFTQGHy/m2
 M2pSwwv/
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c38237 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=GWYxvd0U3zBiv3KBAmEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018


On 9/12/2025 9:24 AM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:01PM +0800, Xiangxu Yin wrote:
>> Introduce QCS615 hardware-specific configuration for DP PHY mode,
>> including register offsets, initialization tables, voltage swing
>> and pre-emphasis settings.
>>
>> Add qcs615-qmp-usb3-dp-phy compatible string to associate QCS615
>> platform with its USB/DP switchable PHY configuration.
> This should be the last patch in the series: once you add the compatible
> string, it is expected that it works.
>
> The patch LGTM.


In v3[12/14], the compatible string was placed in the last, and you remind me
will trigger unused warnings for the earlier-defined qcs615_usb3dp_phy_cfg.
So I merged them in v4. 

If move this patch to the end, patch v4[07/13] will hit unused warnings due to
missing references. Should I squash patches 04 & 07 and move them to the end?
I'm concerned the resulting patch might be too large.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 141 +++++++++++++++++++++++++++++++
>>  1 file changed, 141 insertions(+)
>>


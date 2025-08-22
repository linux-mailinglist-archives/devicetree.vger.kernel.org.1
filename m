Return-Path: <devicetree+bounces-207907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A870B31286
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7468C605774
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E9D2253F3;
	Fri, 22 Aug 2025 09:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZGLmcP9n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89110221FCA
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755853531; cv=none; b=VzZ6d0+sjhcRwSqQwZPggnHoZTKWux6kTAYp/SIvaAjip1EkiaXQUo1/V5xKu5jGOOI7Flqv1bySE9FLzVu6FC93nNI2r2toOM7a/oIQu2GBR8DW0BdRDKhH0cfdHRjFUfYd644zzsI5SLdH9E83/o6hpPiQ1JW8RaG6eT6pAAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755853531; c=relaxed/simple;
	bh=DLY5vD2G1U8kuKjZ8Y13igWoq/avK0swelon1k2VJEI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r1vJGb87QHCpELoLBAQ9bkVrFwKiTp1pyhcr2K3xJvNhFsqIclDBg90hJibNVVvf0aUk+VjtnI6LEr69wy60EzcVBt8Q0uJlD0D3qyBtkOCrimXbAeQLkc1AuU8oih7syn3y8R2iOM0QyBysYlk2qmNAzKIzTN4Lv3x06ZBcZi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZGLmcP9n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UhpA006837
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:05:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	we5kOYIR9rQ9t3N19Qt3EpeOAg+A9dfHS8z2hNw9bB4=; b=ZGLmcP9nYIXNfPDT
	gU9FtFbEBKZSTsVW8aLigBY5uEQ/hnFdyNcvyHFUZD9fPKNDnHTRCJBlN8/Qt7UC
	vBgrKPcz0yA2adVkAsptuqijCFbVEc8H9ejj31wnFtreBmRb6oCLnNZ3NGVJfbmP
	8GlXXefuEt80YiooSQ0riLJyEJ2oSppWw4XNysM51MQSLPJ6xKkw0JDyZ0cyHUh/
	K1p3uKUyoZCwLheemmfi0z/PcE5UNZynhwHqy+njDzVy+o9yURLG/LQXcMmJ8ouV
	nWcXj/CFMTBlFX8adGal7WHiD83vbzUXo/jA3NBQJOG/2FDu0ZOIZgdWiWBZb9am
	M/mYpg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52drgts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:05:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d9a65c386so9309276d6.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:05:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755853517; x=1756458317;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=we5kOYIR9rQ9t3N19Qt3EpeOAg+A9dfHS8z2hNw9bB4=;
        b=Cz27ek7m/1YhYCsK21BUfEcpq08yN7IzzMgyG2vVoZiqdg+azD+DGEBPgAOImJfuhU
         NJC/BGuBvl59xSa4yZEdQkufrEmtdIiY0U2OruXtMlY/cx7YMdXx9TjmJ/ZkyAegOkWW
         yEGTjDWZP976CCz5Bm9d7gxA2RPPqtnYzRQPNh2Zd+b7qDrp/IaHflkl//XfU8Wz1UIE
         uHnhymca0FTnYsTj7zYNmiwE562G4sHYbaymxZcEn1gojgYVnc2GQAyxvMxNUW+KkDLQ
         z/cHtJ2LS/83STo8JZN4ISRPN1fOa4BJLIHCC//e8mGhH1vR2Aq1Xd9tQ/tooHiT5Cxw
         L9yA==
X-Forwarded-Encrypted: i=1; AJvYcCWpuALHdYQRztCRidX229Z/j8rwPGNjaQjlNFv3eHDfJdtLvnm9AA3RipBurhlD+/sv8DAnSPM6qGMZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyHpGv86LrSUgH0jwKy8AKjqbdHZOCvoaRxo3MRMRAxMzdIcKuF
	mUZYYtlCJ278fvHzDWls1IwNitlNbV+TzHH18n7hdJANWv08qL7FFL130gguqP47BtFo6/HCIck
	6AVlDiDa+ax/Wg6F1Q7M/Vr8h60ZmoriM2kcbut+B8sFO5PjHAP9lt2Q27fYydjzg
X-Gm-Gg: ASbGncuFawhsCLyl08NpJTAZB4E385vagMz3BiGPdUQLJtmRxX2xQ57MVaOqGZsxD7R
	W1ctCLXW+gposfuxBumyXy3TP5A5I5I5FlrVWvs6iYcXEzJr+jDLfJywZgXmDbd0sG9kaQJ+DsZ
	3JjJ+qwGKQqbykc3GBbzlhfnU9/DlMbEKyIczelx3YdkbmxF8d5dVGiQbGZzuf1SZSTKWHHzrQE
	jK9rjgqmMauYg3VMhNahJjsMfX09ZySmm9zpaga/cXF92kjX+6l01cQWUcBIeRh6mGLk7Kcw76F
	Ni9i1ZOselvfRmDJSfQNvlodFPIEAx6vGR1V/M5Dp2Nd8Ma4nbtRWg6yBiH5D1Rv3Iv6X9nGJVN
	MIk2WWNzCZj8uaTv7pg==
X-Received: by 2002:ad4:596b:0:b0:70d:6de2:1b32 with SMTP id 6a1803df08f44-70d9723e3d8mr27746936d6.62.1755853516766;
        Fri, 22 Aug 2025 02:05:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxMWfBZW68IB/KZovde+NRVxhgZvhNidsma5/daN4tO/i9zHYH0AJAj9sHGZxcIBJB4AMYUw==
X-Received: by 2002:ad4:596b:0:b0:70d:6de2:1b32 with SMTP id 6a1803df08f44-70d9723e3d8mr27746106d6.62.1755853515855;
        Fri, 22 Aug 2025 02:05:15 -0700 (PDT)
Received: from [10.207.49.70] (84-253-220-51.bb.dnainternet.fi. [84.253.220.51])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a48b46bsm32794951fa.36.2025.08.22.02.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 02:05:15 -0700 (PDT)
Message-ID: <d4e1f836-afbb-4cc7-a5fd-fa961e3203ec@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 12:05:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
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
 <20250820-add-displayport-support-for-qcs615-platform-v3-5-a43bd25ec39c@oss.qualcomm.com>
 <7b6utbnibia767bp55vhvg6ghdavb66ubdpabyguohuwtmz3mp@unvm36jttota>
 <8922ae6e-9be6-49f7-ac84-d4a1dd60421b@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <8922ae6e-9be6-49f7-ac84-d4a1dd60421b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX9ZWtwB4NcNOf
 fJNAh9ho/Hm9mAQCHAwljt5mqpfBSqE0347rX1y6z4sntXMXwqcw7I2m7568rGrtTqirQm36P1h
 7LeVhlRW6zKDzE9OUc+mSAuYhkKFKsfXDyiq2qANGqMXYyrAvq8OMnb+7M6qSnNZe2tGqFmSvVb
 8ze1L+ZK4okpghvBp6xtpq6GjgsfxH2VJwg4kUTVxHV8tBz9mSY8+L09AqoEPYzO0oaVYCSiEP/
 O5yC1KxITxF9BbX7V2dUdnuFb/qi6l48UXR0raD85PPR1bXLiqwY2At3MEkZlUJWr3yRT95pBja
 opXR7/oqXmBhHJ0sQtxE3bgs+tQ4vxxpkHS+1PA5o4cpMcNyplnbNEL0ygN8zmvzG77wbYczQZx
 RwhtxaalNG0kucP7j6Kg0B5Aq6/8tA==
X-Proofpoint-ORIG-GUID: Zp-cVf4tr-OaaW9Kwf2MimD_o4R0y4g7
X-Proofpoint-GUID: Zp-cVf4tr-OaaW9Kwf2MimD_o4R0y4g7
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a832d7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=JdIsBVl79nXNK9flUcZCTw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=G97a9vFw7kLByEIGoT4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On 22/08/2025 09:59, Xiangxu Yin wrote:
> 
> On 8/20/2025 7:47 PM, Dmitry Baryshkov wrote:
>> On Wed, Aug 20, 2025 at 05:34:47PM +0800, Xiangxu Yin wrote:
>>> Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
>>> including register offsets, init tables, and callback hooks. Also
>>> update qmp_usbc struct to track DP-related resources and state.
>>> This enables support for USB/DP switchable Type-C PHYs that operate
>>> in either mode.
>>>
>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>> ---
>>>   drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 73 ++++++++++++++++++++++++--------
>>>   1 file changed, 55 insertions(+), 18 deletions(-)
>>>
>>>   
>>> +	struct regmap *tcsr_map;
>>> +	u32 vls_clamp_reg;
>>> +	u32 dp_phy_mode_reg;
>>> +
>>>   	struct mutex phy_mutex;
>>>   
>>> +	struct phy *usb_phy;
>> Should be a part of the previous patch.
> 
> 
> Ok, will move usb_phy rename to patch 'Rename USB-specific ops',
> 
> then shall I need drop the |Reviewed-by| tag in that patch since it will change?

Depends on the amount of changes.

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-219984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B607EB906A6
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9E3516EBAD
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 618472877DF;
	Mon, 22 Sep 2025 11:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RFl7+RoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1A73054F6
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758540828; cv=none; b=RfJ7tNzbSZufjTL6Mh/2kUgEJnwJSpkEy8DKO0gQvGkDknVE/wiplowpY7kV6a7xirfFu1/2bIPTOcC6tc2S3ww6qVc7eLNCSGKrTh4u1rVtiGuEsV5UrFQwp4+i29ezV+CribRPu78w3QQC2SsgfaB/8bmycc5XDhk+walzR5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758540828; c=relaxed/simple;
	bh=fTu3I016k0UfmLefAcsCbi/L2QC3YPl16aRqBTC1hHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i53iyiTFvVQGEBkPb0dV/yt+jN0i3cwhWdeYNUMfmBHyQZ29a0ZaqZ5a2u/ns8eZoP6b3nUZvQXNAQzws8CjPDvx6dvy1dwPTaR2BJ8Rre4hDIlrsV1IqHgJ/YMoTKZMddylMhR8qMAWjZec8OIQp8iM6ZCTCplGuaDcRBOsVYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RFl7+RoV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8xSS5016215
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:33:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8ny3tRDGyVpQC4SF6j/gk9PZ+S1uMs0oLN9O/oVrvh8=; b=RFl7+RoVThr85vGk
	0pq84J2kUfPoEE3WsNh6VQcoF4kb8m2Z72K5ej3yZCzlaicskMi9BVCeN+AUwxt1
	maMW7IHkViPYAXSrvKlt3G8y8eswCIT5/+Jhvi+08bQoJtAQB3J1K7tsLcBnlO/r
	uO0dEFeC5s05UDFPUQl/QxFe1XN1psGPHiCo0fcYOAOUaItSHLkOoiQoXfJKQ7f/
	0QZGJhEANzPFktT2Ik7fCZUzgYdl+kQHmjf8S86CC08zyN9bfehARY4q/WVGU6Mm
	YAh024zFm/pDMktZtYjzHzxCTDk7uoSkG2NVvroSVEqb1M0ypux5ePtG+JYMyCC2
	dukhcQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98cks2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 11:33:45 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2698ede62c2so13805635ad.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 04:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758540824; x=1759145624;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8ny3tRDGyVpQC4SF6j/gk9PZ+S1uMs0oLN9O/oVrvh8=;
        b=Ucuv62oKbeH6ma5uRk/EgPdUPAe9+Jl7EZUGTeyFkblRZxTthDYhBox4OWCrF6kDJ7
         hY5VrwvdKezbrG0FRMxxtAnVSPPRoaSiUnCRj14tbwKEqlUU2jyUyyX3ni780zt9MYRN
         qN3Rv9D3wGNehr5v1Wm7PONXK/O4Q2yuxEu7ksPqMDaJtUJmBXbtvWYpq23YZFYeHkHx
         KB/3Thb8lQE4T4wlHsV8gYfYNIDtqT59edW592K3IaZaGthrM3MEbKNq2kdeteOTnM0d
         VKkrn1KK8uk8bGGHk3zonLSJiOEnd7YOFR0x7o5cpSxdahBeUwo+kiXdg2LCdIbD9CMA
         N3Pw==
X-Forwarded-Encrypted: i=1; AJvYcCXfZCr6nbucls4jsgDqbxBM/rU2FPmqKPiNSkk99Y0JvJf6kxJwBImw6v4FEcmDcoOO7zd28n5V+s2P@vger.kernel.org
X-Gm-Message-State: AOJu0YzrvujalJ+NkEyQeXZFnPVDtcu7BaRXg6joFZSqBVBZxr3AvZ9f
	qhXbvqRCyP//gjzJLWMW0mrLGF0bu5q6152Brc5c9tYfP4uF525nrEkYKfpesV5jlsodTKWbO1N
	Fu9Cc34W1WCWsONXFr59k9zRBNjezsNe9Kzc3hKv8zfn71us5HvJV6PnzEaVIaNT2ixdXYsKLpX
	w=
X-Gm-Gg: ASbGncvlg38zzfUcFS7HOpXinDue7Z4yuf7Q9WdxWTGgoPzaYYMTA9Th199c8fkQK6e
	RGhScyaba40ku9gjht8FUlrsFVjMrEfcgvldZW6v29x5lXvh3Gn4Wm4u58VTn6wCqI0l00/cHjm
	yrJoOQGlcOASz8I/DgG3DNxrfYqJiu/cmRhaz18e/wJcOsMlfKkLBz7QoStPL7UkCQIJQVP0XWE
	ViqiRYSbqudgDAXF2sNATqW8KCy0FnMIF1i1NFjdK6f07uDDeEVmleQ6jEiE3IFOHz0mLHxPc/M
	wbXPLgaxsBCV/x+JqEh7e0xhfKzkHtZftarm8sVvNEBv9lgNwG0jyJITJw1LwGVVSmH+RCyxmkx
	ulpYpLnuIvAGZHWiKhVYMnXzCBGY8tbRxMWw=
X-Received: by 2002:a17:903:110c:b0:266:914a:2e7a with SMTP id d9443c01a7336-269ba50450bmr97852945ad.6.1758540824163;
        Mon, 22 Sep 2025 04:33:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDHH9Jnyu/wz0+fPUoAUMxFXs1lC0P7l4A/wqHWPTtDgp9+q8Jyik+xPio2B0P/RaEWdFbmg==
X-Received: by 2002:a17:903:110c:b0:266:914a:2e7a with SMTP id d9443c01a7336-269ba50450bmr97852675ad.6.1758540823742;
        Mon, 22 Sep 2025 04:33:43 -0700 (PDT)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33060828031sm13050240a91.26.2025.09.22.04.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 04:33:43 -0700 (PDT)
Message-ID: <f53fd974-f3a9-4efa-8cca-ff639d75196f@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:33:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
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
 <20250919-add-displayport-support-for-qcs615-platform-v5-7-eae6681f4002@oss.qualcomm.com>
 <zjegjucwluzzh2x56mn7dpk4ocmbdrhyvubkxprpiuko5cifvv@ygvbal3vpssv>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <zjegjucwluzzh2x56mn7dpk4ocmbdrhyvubkxprpiuko5cifvv@ygvbal3vpssv>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: H89k8fNhNEOcL1bLrYaLWlbBKq06E4rN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX3JimJekvuarc
 6h5RblB1N2eaH7/FgCHogtl8rOfysX+iPch/xSYnvPfXKn6avtOdSRYEQpjB19jBzmH70N8mGdm
 f+rV61R0kPWlwmGw+6USDiRwgR1ymGXl+D4Z5Om+VWRKv6AoRMakWlnLy16jGRV/5ajuCfxdlBP
 Bf4ezcgLwE7XuxgppjbX32actlL60YbejGrg4op1B+4UbLL10g1qnn9uqgXYK4nsWHkMHe9MPz8
 tEIDAg/E4Lr8qCwv/J6a6HQic05r95uDgq4ehlSqYbjuAc09okAhthQoEBbpSjrS390EXTwk/nO
 BEfAhdV1Pb5wIaDz+2VCZQvh0OaxmGCyFk+3QS3wN+V9VvzWBwTF3yrdpSB7seqQ2aPhbaZD+14
 5YlCtTJY
X-Proofpoint-ORIG-GUID: H89k8fNhNEOcL1bLrYaLWlbBKq06E4rN
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d13419 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MW-FMpQjATtQXXRqn1QA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018


On 9/20/2025 2:48 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 10:24:24PM +0800, Xiangxu Yin wrote:
>> Move USB-only register setup from com_init to qmp_usbc_usb_power_on,
>> so it runs only for USB mode.
>
> Please rewrite the commit message to start from the problem description.
>
> With that fixed:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>

Ack.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 22 ++++++++++------------
>>  1 file changed, 10 insertions(+), 12 deletions(-)
>>


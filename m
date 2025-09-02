Return-Path: <devicetree+bounces-211655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26555B3FEC0
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 13:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 481682031E7
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D592F8BD6;
	Tue,  2 Sep 2025 11:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nybMVs+E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666C52F8BD1
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 11:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756813840; cv=none; b=u7f2/fCbZlb5PgLkJMx9WwS6hMwjzN7AIJ0qlY1NZanG7Y0cJgIh5ZoX+Uwmoj8aJBNhTp/FPqTyKdRYZXn4cKhTcta0pl+MWQImD8X9EjlkAte/fEjtw2bv89oP1V9SbT/H/KZB8ZZY78me9HWo0e62zGQY8Xkf0K8SNHOBTYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756813840; c=relaxed/simple;
	bh=6PHHebMlrd9cTBVjOtA5XSpV+1kfwCmgVSvtWwrAOyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NmAEU9QxybsS+IInHc231GSL8AxFTkDQB3/MxBB1j7mSBRwaREiH0y0+jM/1nSQpufWoLimakQD1dPHV6Njj8XgUcOL59DZPlXbQTMD775jQzmvlwkea1w0BkbxXdUHq6xg49oqhY8QG3WkVZ2X9QNP4J0MN46QELB+Tk+gqjYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nybMVs+E; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582BH8ol011396
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 11:50:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5EB/XrOSwrBg61UCKv90VdlyE8eMUv62GQ7Noo3Ndow=; b=nybMVs+EeKRJq3LU
	bPFyv0XreWU751FtGKaUNSSqfxImrsxXGm4HO76Rs8IjceRiN/7h1BfWakmZhaMW
	ik3zINYG+NTEQPwfetg2GfiA18kcbVoNTKxE8b50RWjPZGZ28QKZqqHr4gahKllq
	qXFnBR02M7R2ksQyqUwFVjQA5ASDMJbYVNMrHdcjxejP6ogAKHXU6Ot+Mj7ghEqe
	UOMNbwX4bgnM2n80mbKA7spzXNa97mkMgE7HHybsXNuwBpbSPZYXAsydbcfIdvWI
	Cky99Dw1803sPo7Z89Ps/TubwD1L+wTkm5qFuo7rx+Pisn49zb+De5Qcc1jGiFBo
	TZGceg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjfn0x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 11:50:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3037bd983so28881371cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 04:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756813836; x=1757418636;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5EB/XrOSwrBg61UCKv90VdlyE8eMUv62GQ7Noo3Ndow=;
        b=t9CkdW+2vN/1b6ayGSXB1UcqVLoqtKS87xwRYuPqnYlBiHDlTgm7j9xJhXt3hjQvfC
         icAEmtxZegfgXDgumRAu6ofdRHukYYVF27vtYJCTamCEno/JQtJFO2lHhzMLRzK7CLAE
         mCMMCy1Pojjyej0gPhfUe9rIsQzdC6LCknnEI0j+3MHQ3S+Llny2pqQrsMqKnOi6qC5A
         YdblstTx3sU8m9YrH2Alme1r5Ho7kCR5VC8BK+qum7L4KZugDYrT8H4wuI+RPA5TQiDI
         i9zDtQ3exrhJqR4ZjpaldugA4fiNt1Hw1TgfVinVEQ3hQFASFWijJv1nk7bNSFF/9S+T
         N60w==
X-Forwarded-Encrypted: i=1; AJvYcCW6Fy/fu2s4l8oYqtM2uo6h5/lIyOE0vbqzjSoHvXr8djqHFEl9O13Cy64jr+x1+tL0CIXnXe9ks/Pt@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc5ADrvaOIj8UK2UcyJokL6na05f0LEL+ndeg7ojk57HmWixXC
	V0YiX8DsmcDOHBbxwU4VE3FFSDsllxWeIItbQmM8WtrPAJOeWnGm5geQHLRtQKbZNx1fGb2uLZd
	wUdN7TR1QMpWF4cnOKGMNN0iFTU5LdZHhb1wNTVDjjXznaVe20EC506eZ98VdxYcG
X-Gm-Gg: ASbGnctbYc5xsQ6UMlrhici47lFrzLN2F7NK1G/sqNC+DWz8hLdm4CO9+nlv1tMsXT6
	M4wLS6XHVIezULRPLHot6EsxPvHMN1rSpxIXrGXengybrlRYOPQseO/r7+WksS5yd/X6ob7oQQW
	nnwYiPUwRVu2IqZfH1NFKCbjTi8xjcmf+gL59gz7XJD8PE3IpJdkBudzwq1ovCWmKBPrh220dMG
	pcwNCEBC12h/abRHArWrsRNNc/8HUWTSSwBCN6rL9BtY3msmeMjbwE9ed3VcMNy35NXlV9Y0sMu
	VcgONF6Ib8ZQG1BCmaEiceF+9dIZ+tbwWQ7CSt/Oj34ZAHxUmY1yJSM9YrWPFySk+ld/C1AKyTc
	tqDz0ZrA33oKirbHpFamUkA==
X-Received: by 2002:ac8:5ad3:0:b0:494:b722:141a with SMTP id d75a77b69052e-4b313fb8f60mr107758051cf.13.1756813836128;
        Tue, 02 Sep 2025 04:50:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+rzTco+7fQp7WZWydorG6/Vw8s23rOxW1SECVccT+ronOW4dFkZRBskA4ygd4Rv1M9i7TYQ==
X-Received: by 2002:ac8:5ad3:0:b0:494:b722:141a with SMTP id d75a77b69052e-4b313fb8f60mr107757911cf.13.1756813835705;
        Tue, 02 Sep 2025 04:50:35 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04132c77d9sm665564666b.20.2025.09.02.04.50.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 04:50:35 -0700 (PDT)
Message-ID: <4dff9cc2-2152-48a0-b8ab-eea57ce2ace2@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 13:50:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b6da0d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=TNrL9Qa0OoqJGZUcVMkA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Z4DJK-kbeuA3eX_r0o0krYlQQzw1wEEf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfXyMKqpWVnXyBD
 jFJkKh0uteNg26IGJwyTG4+iBVRIWjURTfheKhY/zHrXOshf6+zDQVWfJ5cadagiBFldmOd6AGR
 P+lENF9bJBDg+zX1rnlsBiWogAs+P7hSZrXn7xIuRRY5vkZ1M+XLFVg7Vf5BKFdm2TKZo+Wx+5c
 TUn5hwul/VggxvCnwXid0ctQT1TxObuN2ALvtZZ9SjP79dJd0IDsnz+SuEel3WDGGvFKwWxIWsh
 qQOgDB79tgF+/zXXkfqfRrefHrEmG7hnouh0d37iJPfmQ4ZUOsxA9Bs0KEVZtKppmllgB4HvMAJ
 iZT+XTyHUn6X84yGbwlKO4Cn+8uYWezBVeC3xUVKV3qssN2gj4amXWTZQji9si5bLIKgodi3QVU
 4gs339cm
X-Proofpoint-ORIG-GUID: Z4DJK-kbeuA3eX_r0o0krYlQQzw1wEEf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 9/2/25 11:00 AM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> The layout of the lanes was designed to be mapped and swapped
> related to the USB-C Power Delivery negociation, so it supports
> a finite set of mappings inherited by the USB-C Altmode layouts.
> 
> Nevertheless those QMP Comby PHY can be statically used to
> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
> etc... without an USB-C connector and no PD events.
> 
> Add a property that documents the static lanes mapping to
> each underlying PHY to allow supporting boards directly
> connecting USB3 and DisplayPort lanes to the QMP Combo
> lanes.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -76,6 +76,35 @@ properties:
>    mode-switch: true
>    orientation-switch: true
>  
> +  qcom,static-lanes-mapping:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 4
> +    items:
> +      enum:
> +        - 0 # Unconnected (PHY_NONE)
> +        - 4 # USB3 (PHY_TYPE_USB3)
> +        - 6 # DisplayPort (PHY_TYPE_DP)
> +    description:
> +      Describes the static mapping of the Combo PHY lanes, when not used
> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
> +      be connected to the DP PHY.
> +      The numbers corresponds to the PHY Type the lanes are connected to.
> +      The possible combinations are
> +        <0 0 0 0> when none are connected
> +        <4 4 0 6> USB3 and DP single lane
> +        <4 4 6 6> USB3 and DP
> +        <6 6 4 4> DP and USB3
> +        <6 0 4 4> DP and USB3 single lane
> +        <4 4 0 0> USB3 Only
> +        <0 0 4 4> USB3 Only
> +        <6 0 0 0> DP single lane
> +        <0 0 0 6> DP single lane
> +        <6 6 0 0> DP 2 lanes
> +        <0 0 6 6> DP 2 lanes
> +        <6 6 6 6> DP 4 lanes

Would

oneOf:
  - [0, 0, 0, 0]
  - ...

or something similar work here?

Konrad


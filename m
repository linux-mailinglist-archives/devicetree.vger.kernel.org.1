Return-Path: <devicetree+bounces-223784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 324EFBBD79C
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:43:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E340C4E2682
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033BB1F4CA9;
	Mon,  6 Oct 2025 09:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZLeQpAO5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686D51F4168
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743814; cv=none; b=AQZ9bBe6e2GlYgUjh4nxwuCjv/Wx7GcrO5hqRg+VmVJKI63g4305M2OvMgQZx/WMxevzjrxphfil7F0v/L2i8miSdUCCxZY9517EN+jijtBaVUYPvCaE2SHPMeAqa0kLJUM7sW//rlyZI9bAqvQ7Fh1xqI2sX89mIm1GBM9Tbgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743814; c=relaxed/simple;
	bh=3VAOb8Nrbi79Vo18vNteD/+ZcNN4/z5L/Addy7FvvvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dprslzju5F2WUdNJtL5h5kRaLMfGSGBc6TMaVcmvzePjskAIxKQwY77L9WTvuGEmrbDcMoJi0qQAwy7EnxwsE6Mzun4296ZtR1FTxxasFCVbvXHZ1cUn84mACw6NvfcZ2+1Fb5N8wiN2OND1srnj9O7FNEvwlXxI07Rx4STLHjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZLeQpAO5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961q8pU013641
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 09:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tQIe8mny8lpWTJQXbYK8gsz6F004+u+gJgZcpGlIaik=; b=ZLeQpAO5b+eJvPfu
	nRZcQ7gtc8UaS62u93vdXEq/zYhKi5uqAlek/nu9ZviSzqjhXjRlZsXzeBS4Xy7y
	vdJesuzGXEpPekQg4PcStE/kVbOtOAwYQO9DdnC90Pz2IJltQ3t7o4qWQc/kg97c
	DZsQn6f0IYXoU5Pdg1tZv+x4xbAlICP18cbGN0TVhqqTjuO533qo1A5yZa44Rt+N
	8PWZIfEddATyRP6oX+oN46G1lpoaBgfGJqC5g+07T8sZPojR/QVfwQnqjBT6/lQJ
	Zupuvu0KaS8hBx121Al0AOgerijBOZ0SsJ3oGP5rJ/Hru6R4Bh01M3G/EPTkrbHF
	1rM9CQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu3h03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:32 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dc37a99897so12472351cf.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759743811; x=1760348611;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tQIe8mny8lpWTJQXbYK8gsz6F004+u+gJgZcpGlIaik=;
        b=IptvAhthLR4SxN0vi0WKh+81QFElS+rs+RsI7xiKeBY2RmQ21AK3diJspuPp2kXvQB
         9DTPfMeowbMwEXFJokiUXbuNUJZyAV+F4tCY1AdWy4jQn63yWv4qJMQKbwXD9hEG3jeU
         YUKZ1NW7ux4w04DzH8CkFct4dkiPbLUmYvC7HcVK9K1v4j0xMBgui4J/GuHWIVAFD1RX
         1IxFzAUDdnsbZNt1BzmwwLvNnLxRkLDWzoad2Cu8pdzmi7UISmgX1AK1eat/tV3neFKQ
         l97Uxlt3VsQm6uw6SF2l+swyGhMsSGAWejCniyzCUydjjIoJSpn8J1DIOcZk9ErUEaYX
         DkZw==
X-Forwarded-Encrypted: i=1; AJvYcCWk8sxhXlMeKCY+rZ3bPLLBoaljh/D0L9DpTgZD9nvGpGNpRDu3oi+wlDwYq4pIIAYXRjxLkaw8k5bP@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ2XLNdHcLUDYRChgkEsOSSmN+5cy/dSZKlNYT8IfF9b8wLQ+U
	LuvRTiuRGCmi3hjuwj7/IDAcSfmNbeUtJkYgwpNRIvjUz7EvA1gJ0n/kKblF6rPFCi9hGFfSUoY
	WzebJnZGfYTVuu84tG0SbrzooGyA7EFxoSGypQsKkFj2n65/sgftPy79T9pRo7bJyiWtI/Noc
X-Gm-Gg: ASbGncuSdVPfnmZhw3mNl/MLRdrzXAGdtbjMbvb0VbrhpbOEn58oC/TwvqSKWfuUKV2
	d/dWqzxkqhUr8Ml37OMiZb4lYkaZMI0vVqdPJOyzpJWAL3tixUnKzADlaF2dwDC+/Uwv6xRvy6R
	A3RLhh4Mqq/6cflsAnvM1Hb3p+8P6zlKrZIV4cqCNjNOEhfXRS9JbELl2dj5OucQYEcq2RgBAo7
	BV0FZCRNy1JsNIa3h2SRf01HHlmj5FcgisNTPnSsxUAUcO60/GePCrWXAas2KwhgwKNbjzBR+Mg
	IpTpjVgGCstVu0SrzM4c7IMoOHRzuePDFt59dZA/oRcBqVHHfHEqNB8r5ov+hGv2eHeaWMyK0TS
	Jyl2r9eKRG40oyjWl716T1184beQ=
X-Received: by 2002:a05:622a:258a:b0:4e5:7716:53f2 with SMTP id d75a77b69052e-4e5771655famr95826081cf.8.1759743811126;
        Mon, 06 Oct 2025 02:43:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUXXbxMxFQqe0X0SjTWriB86v6b78P31OuJJMWbMygO3fbIGEmAAsmk5wn/CxtoooibO/WIA==
X-Received: by 2002:a05:622a:258a:b0:4e5:7716:53f2 with SMTP id d75a77b69052e-4e5771655famr95825931cf.8.1759743810661;
        Mon, 06 Oct 2025 02:43:30 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639773d4d8esm4041553a12.30.2025.10.06.02.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:43:30 -0700 (PDT)
Message-ID: <c8dca827-b089-48e0-9dc2-a5b6e3c5b88d@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 11:43:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-1-86a14e8a34ac@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-1-86a14e8a34ac@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ZswvHdnHa4QoD1mjOUGSaP5uvaRM4RzH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX02Qcnl18ZFan
 X3r8wXoQS8kOaGsSx2sfcdfaq10mTbqEL0vkLhVtevEjsVdV8sQqVMX6xdI9cDcaYuJ62TJW6gQ
 OJ1xVGYaFNX6aHK4548ExhMn6HKygBdMccG7h76PzreF3YUWSztS5bqTPjYu3hawKUVzoM3zTps
 Dj2lZI9AkpGjtZUcVITQwhUp4Ka1FxWMkbHheFiICLY1uloIoXghY2f8rqP7/yUISADkV/FHZiZ
 QyeXo+w4TJ/7uu2w8RDSqNGa61balXYuyAiHvN8UAYdTHQkhDV9V82YEWXfKWuf3d5l9cJDpIJM
 QByG5kYmgp3XfJTOOxKXl/qu+J76uH5IndHKtb8aRXo/ZzBOQQCXqst1SV8rCCpUoAC1NyvB0mL
 uNv5DcgFRIFKYuplE6j/27RZVxSrOQ==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e38f44 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=eg4Xx4S7Erm8exKiWv8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ZswvHdnHa4QoD1mjOUGSaP5uvaRM4RzH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On 9/30/25 9:39 AM, Neil Armstrong wrote:
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
> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
> connector, DP->HDMI bridge, USB3 A Connector, etc... without
> an USB-C connector and no PD events.
> 
> Document the data-lanes on numbered port@0 out endpoints,
> allowing us to document the lanes mapping to DisplayPort
> and/or USB3 connectors/peripherals.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +          endpoint@1:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            description: USB Output lanes of the PHY when used with static mapping.
> +			 The entry index is the USB3 lane in the order TX then RX, and the
> +			 number is the PHY signal in the order RX0, TX0, TX1, RX1.> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:

Can this be described in a somewhat reasonable way to be non-compatible
with Type-C properties for more validation?

If not, let's just maybe add a comment like

# Static lane mappings are mutually exclusive with typec-mux/orientation-mux

Konrad


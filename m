Return-Path: <devicetree+bounces-223842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4030BBE389
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 15:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEDB43A912D
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 13:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81A32D29AC;
	Mon,  6 Oct 2025 13:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hqpNpOqT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDA52D2491
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 13:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759758482; cv=none; b=vC5YwXpbCJLxApL6NajuvP6zfgeBt1GrvzZFRDnikCA9+clswr03TdlkEWFzICq4GtLxASA0i+Yru977BCisfMU999g/sYsNJ5XHhge3IFP3/XffKdGnf4BY350h1Dq5CqarFh+HfQBDBgZLrcDFN5sBeC+AGg5Fm4/TRuVkNIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759758482; c=relaxed/simple;
	bh=0dyHyOnT9UVsbBv0b8e1B3s+X6viN2BdJnKbPewtL/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=glBe63TwKRwJKKDivx4TzEdC3k3hOjQE0EaOk5NBK6OJLgiB7+P78oFr5ew0xUlXZax68vjiXt5jhcmAIJyuoVp8+mXKBDpLa3Od+61tkstimEXIQ9N7Gn9RTuKgxLfSQ4ZcZk1HDT0bHyKqWH0uB+XEXLFcAkvBvh1Qt+g7uH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hqpNpOqT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5963EmYX003107
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 13:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mKEI9ardOEbs/KRL8o8YEdZxDhvTEeu6RUjiuRsfy9I=; b=hqpNpOqTDwKjC8lQ
	GmDuLBAqtsZWttN3zXDXMIcTCXYEqiItHMV/1OXRMVo3LTLbYAH2LlisNdPhxuz2
	HxtQlji0wzCSjTox9YB6BuVidDgkAQAO2doFmj11Xxk8PuK6flBLXGT/KL9/40eY
	KLG7+nui/9k1VDkenkIGvWh4vi6+4bLYAf7+UkvXOPJ0H2eL0GyxYW+n/XZ39lC9
	KdGcm9bWoo8yj1oVQpTWhHdlXEFc9G03ou/lTdQE38yQ9Dww0YVDSk+hk22F/Nn2
	RIUoIFVQKMVf+Svhg95c6Ol6M1Jai3Xmrka85NwFBlgxtk05oOqz1gd1oqrHO97T
	zMBCBw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jthpv3yu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 13:48:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e0f9bedf1aso15720271cf.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 06:48:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758479; x=1760363279;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mKEI9ardOEbs/KRL8o8YEdZxDhvTEeu6RUjiuRsfy9I=;
        b=j8hwBxIyKjpohuaYHOv3DxfCZ4zLbnqK5DFe6+Zy6Jg58E/hWs/Oi/y2JI54THkjUu
         19jEGcD0FHti9Hzo3uV6QVc0z1d0Pz7amDo6Us2fI5kA+U6OLSiWajUSHa3kr0OnlOW+
         WrTBU5Kc1rxFoQGFXAWl22OhXwlLnW7oI9cBOAf4drUifF/u1YMcNU78uwMgjZC6+B35
         48SuLxWQZUiGeCeNxirqauzWHAW236sBn5k6vmkYQfyLPXfnEPQu+K3ndtkWfHA3PKYT
         lX70d4xNVL1uoLfMYuQG3wLU6H2sLef8mWxUzW1E1MerZ13BwiufuDCgz5xrvF//aZjr
         JxRA==
X-Forwarded-Encrypted: i=1; AJvYcCXR+BD31cFvdQ4xnH2yw02GjdCpMPbTVUp9AXVfN0VV+k746kxH3HwmwWtx25g0levlnEE4WwM6a67H@vger.kernel.org
X-Gm-Message-State: AOJu0YwnAexrH4IyLsooh1oDlOisROp9ILxJGxJhZ7KWWmZuMek/87MH
	G/EwbLTANSAgIfsycYy01lJ1vT9IscQ9i2FiyvrTT8VkmXAppCiRJc9VwvgFR+IHAqcs0nRdWGN
	T6aqK8B2ZV6yN394jtYNjYDLDNAzS72xTZLF+tCmz0ZRp2EmtJmvHAbqiwLnabKol
X-Gm-Gg: ASbGnct/9MtpfiRaTVn8QaA4voz98UAtxdrx/NTaLtFDUsNw2KdO6vVP+OFMexa46p+
	3ATdo1rMtidlMQuwq54GbhY0yTRTvcwHJ1m4IE5R7T7TPJreKz7VvSBiWTrFWIfOcUHQXd4oluc
	eal+z7OwFACWmMKu7jQhTrGOgBvgZ+mAWVITSvbHDxY7w01PkGtx1LrB9FP2UiWsB1BpHBYLJK9
	W2QhEg9lkeTXRgKjb6AEzxQJnU9eeLfbn7WrBe0Kc29vg1zfTURO5svG5E+c8g9bCJyrMZbUAjO
	unyiSbkDHJxkIw4eht+qdtUZ7Yyw7FQbKYkjTP6Nh76SsAxlpKcqZFkiHlIFTXYtBtgVwlr2aNQ
	2+XHc8Fnr5RSVhzxy31KOXBn4CjU=
X-Received: by 2002:a05:622a:207:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e576a321b9mr103336471cf.1.1759758478771;
        Mon, 06 Oct 2025 06:47:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZCE3HWGrfkutfml/ZXI7OI0XtGR3QGs/0jpHv42TSSRkHE4QcX1lA865GTSpDxCmAPH6/qA==
X-Received: by 2002:a05:622a:207:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e576a321b9mr103336091cf.1.1759758478196;
        Mon, 06 Oct 2025 06:47:58 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865f74002sm1158056366b.42.2025.10.06.06.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 06:47:57 -0700 (PDT)
Message-ID: <2e926e17-f8c1-47cf-8864-b0ef97b145ff@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 15:47:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] watchdog: Add driver for Gunyah Watchdog
To: hrishabh.rajput@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20251006-gunyah_watchdog-v2-1-b99d41d45450@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251006-gunyah_watchdog-v2-1-b99d41d45450@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: O8U2_rYYp4AM_ihqt9QyY0Gr4c4jw49A
X-Authority-Analysis: v=2.4 cv=N5gk1m9B c=1 sm=1 tr=0 ts=68e3c890 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=SATx4Dn_n9eGyeCbFq8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNiBTYWx0ZWRfX4Vk0+G+fk44E
 ghyXTP6xO5elalmL8CZ4HF2bXV7zPWzIirWAQ3aN9LZcm6L2I+ISA5CURieL1uYCWgGzcQmD9zi
 7mEWftY0jGcZrIj4dhqQPJs3mfA4iHRyTss5GADj5OYcYnOC+8euIGJA5xetfbYH0LNtO1W7CTA
 UEclCU2Z4L3AMBb/06fgZDPIusMXagw1HXfkkI0UfxRWPKshQYbXHkUPBD7P5Y/108DnTABOMPe
 jpZsRBAwP3tEG4cQ0H4/jPJyTnQq4nOavCntZn2/bpH1rndgIW6Xpm+UDYW5DzUoU43ff/3BTKl
 jJQrZ6IBx1KhJbYtqhjTGlAGhtt5TvX446j9qd8q4u/n2h9UNF1WJWrmKdi5BPG4DbVW1c6RBpe
 N5NQ1w85Qi20B7b2rec3uK0TrWXPtg==
X-Proofpoint-ORIG-GUID: O8U2_rYYp4AM_ihqt9QyY0Gr4c4jw49A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040016

On 10/6/25 9:37 AM, Hrishabh Rajput via B4 Relay wrote:
> From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> 
> On Qualcomm SoCs running under the Gunyah hypervisor, access to watchdog
> through MMIO is not available on all platforms. Depending on the
> hypervisor configuration, the watchdog is either fully emulated or
> exposed via ARM's SMC Calling Conventions (SMCCC) through the Vendor
> Specific Hypervisor Service Calls space.
> 
> When Gunyah is not present or Gunyah emulates MMIO-based watchdog, we
> expect MMIO watchdog device to be present in the devicetree. If we
> detect this device node, we don't proceed ahead. Otherwise, we go ahead
> and invoke GUNYAH_WDT_STATUS SMC to initiate the discovery of the
> SMC-based watchdog.
> 
> Add driver to support the SMC-based watchdog provided by the Gunyah
> Hypervisor. module_exit() is intentionally not implemented as this
> driver is intended to be a persistent module.
> 
> Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> ---

[...]

> +enum gunyah_error {
> +	GUNYAH_ERROR_OK				= 0,
> +	GUNYAH_ERROR_UNIMPLEMENTED		= -1,
> +	GUNYAH_ERROR_RETRY			= -2,
> +
> +	GUNYAH_ERROR_ARG_INVAL			= 1,
> +	GUNYAH_ERROR_ARG_SIZE			= 2,
> +	GUNYAH_ERROR_ARG_ALIGN			= 3,
> +
> +	GUNYAH_ERROR_NOMEM			= 10,
> +
> +	GUNYAH_ERROR_ADDR_OVFL			= 20,
> +	GUNYAH_ERROR_ADDR_UNFL			= 21,
> +	GUNYAH_ERROR_ADDR_INVAL			= 22,
> +
> +	GUNYAH_ERROR_DENIED			= 30,
> +	GUNYAH_ERROR_BUSY			= 31,
> +	GUNYAH_ERROR_IDLE			= 32,
> +
> +	GUNYAH_ERROR_IRQ_BOUND			= 40,
> +	GUNYAH_ERROR_IRQ_UNBOUND		= 41,
> +
> +	GUNYAH_ERROR_CSPACE_CAP_NULL		= 50,
> +	GUNYAH_ERROR_CSPACE_CAP_REVOKED		= 51,
> +	GUNYAH_ERROR_CSPACE_WRONG_OBJ_TYPE	= 52,
> +	GUNYAH_ERROR_CSPACE_INSUF_RIGHTS	= 53,
> +	GUNYAH_ERROR_CSPACE_FULL		= 54,
> +
> +	GUNYAH_ERROR_MSGQUEUE_EMPTY		= 60,
> +	GUNYAH_ERROR_MSGQUEUE_FULL		= 61,
> +};

Can the calls we make in this driver produce all of these errors?

I'm asking only because we want to minimize the footprint

[...]

> +static unsigned int gunyah_wdt_get_timeleft(struct watchdog_device *wdd)
> +{
> +	struct arm_smccc_res res;
> +	unsigned int seconds_since_last_ping;
> +	int ret;
> +
> +	ret = gunyah_wdt_call(GUNYAH_WDT_STATUS, 0, 0, &res);
> +	if (ret)
> +		return 0;
> +
> +	seconds_since_last_ping = res.a2 / 1000;

> +static int __init gunyah_wdt_init(void)
> +{
> +	struct arm_smccc_res res;
> +	struct watchdog_device *wdd;
> +	struct device_node *np;
> +	int ret;
> +
> +	np = of_find_compatible_node(NULL, NULL, "qcom,kpss-wdt");
> +	if (np) {
> +		of_node_put(np);
> +		return -ENODEV;
> +	}
> +
> +	np = of_find_compatible_node(NULL, NULL, "arm,sbsa-gwdt");
> +	if (np) {
> +		of_node_put(np);
> +		return -ENODEV;
> +	}

Please add a comment about how the above two compatibles tie into our logic
(e.g. "Some builds of Gunyah expose a memory-mapped legacy-Qualcomm or Arm
SBSA watchdog instance instead")

Konrad


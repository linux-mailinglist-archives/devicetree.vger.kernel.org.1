Return-Path: <devicetree+bounces-223764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7B1BBD5A8
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:30:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 593851894AC5
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4465E261393;
	Mon,  6 Oct 2025 08:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DDhVqSS9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51FF3FC7
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739429; cv=none; b=HnGMUUa0CkpDfDH0pOI+gMjFr4h2VN/D1+nFlcZ9ZnNNIRM2TNEOAESz+MHDzwooLdslu7KKfCaHjDe4EzVHIHhHqx2FV8fDbY4gxX9nitfLO8SrpLN8Ed6MJ/46Zn19azd2xGkt+jULTODPZOzF7NgXg4X802SsGBqoG5HyYNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739429; c=relaxed/simple;
	bh=h8CwgLFpO+TicqkeCoMFZK/tgdp9XzNO2dE1KL03W3g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vBR7/oDrcNTsDPExBtf3La0e+NrVlwaYTGLOQPp+fW9BWjJJftc+CSQogbZElU8tSMCWvHkGZjr2EWOUvIcny0jVDCHrRJNmtweB08Kv6cYx9E6Gy/UEb7ibySB3cFqFHSaBdHemWBX/WreqPTcuHWP4lcmQbXTY1Viku9wU+6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DDhVqSS9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5960wYfX020690
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 08:30:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/L1grXilGVTKm+qKpyor+cgwpOJFQIDTL8Rar0TzJG4=; b=DDhVqSS9JcY0Jc8m
	jyQMB9h0yP96EP61LBGxnmgdUpsPoKyoV/Kv7Y0jVT8kQFsJVQUiQL0T3UqexWIi
	8hcWnW9yLrrxT5N6Qj1DqJ/QoMxSpLY9li+95Y4SiEf0fKT9TyfoV52glcV84Xdn
	YDwrZ5aMDoZWF+58kc5pNGsZyO0xJiUS3pysN844F30fZzwI92r4EIAo7Ke9it2G
	ewtmvhHcR5fHU3AJG6KiJbKt+UT30aHPT8+qDgYa4w+LIE9aGpgOj/+v6y37hg4p
	QJepv0vO+vzlDXpEEdiaudL/XHqGQaBuEHVgJH3yU+4xG1e0Z074q7ShDZBV7ws+
	ufq+ng==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy6u8u1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:30:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-853f011da26so154748585a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759739426; x=1760344226;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/L1grXilGVTKm+qKpyor+cgwpOJFQIDTL8Rar0TzJG4=;
        b=llLe5UNDJioRzrPIHTjLAFYR1l5QV9QNg/XPUC9natwpMIpXHi2HGkO0Hozo/0zMf4
         GIC8+VRHK+9QNOKdvdPAkUyBeqVaRBjzH0tcQtp2aV805kiDORLpdXFTgRAMUCsW+DoA
         FR9sLv1rl+rtT+hOpKs/L/IdOoY2CsZAL/Q46gt493Gk51jsPVV3s1kS0zr7KuqnSdcT
         3FFE7fk4MgRA429qfZVEc24VuVtEMoo0k+KefyzlHncJyVsk4PdfbOQ+J4nvqEfR5E6w
         O4RhO6UInnITZZgVDVhEuT7WZYZQOJFaQsDayMi9xAQ6BFdJOKqL5CYJdfdx5Mov1VLw
         XWQA==
X-Forwarded-Encrypted: i=1; AJvYcCX3b3JiD1HMZI3x0Q67sT9vbnFQM8rU0dKHXsY++aNesecih612OFy8mew3S6nS8qRxR520b4oiJXVk@vger.kernel.org
X-Gm-Message-State: AOJu0YyczDkrqxesQXdh1aWsBzAqTDTe/zR5OfiSCKda3Bo5svSEi0FT
	BafoLg5bNlH2jeI7CsgkynJXmsCp1A793l+qj+tJeQUbJSFdPklnqe42S9Aguoq4vLYWvUQz6sT
	Ee+1Rx/ncoCCw6xJhq9Belpvv0X6yoNRPzGOgbFZ5GHGS3qXOx0Z3GUpOONrwkH65
X-Gm-Gg: ASbGncvGLkLTQWsafZouedfOr1PlO1H8QvApaX9ifhDRU3VuIifpyn/RSUTxZNvjY7D
	URQ5xHWSJgkXP/+/UDOWph8rMPjvTwYc8m0ZQgTC6mNxRN20kepotIbQZ4zMl/zI0wOe5Cap5i/
	6G3CoGFo94sAdZswLOezYYUkAV+IeQffj+groRmk4rjrknXSQ7vdJt9cy/9I+9rkIoHzLzOcplU
	PQyanbApmKasfNVcB3v76Rz+dZ5KA8Pf/x+UHJgy+lm3o6R10T9dNd8cgyIVDQs8vUNCehN9TCu
	6B0UD5qy0zopda+WOiE2sFTveCFcryY1RXQnP5qcCG+d/Arim7FEMDFOJXqNv7y4t0WedaKNdVc
	IGKpjfkOFDGg4dFVd4mE8xAYGXYU=
X-Received: by 2002:a05:620a:254e:b0:7e8:c4f:614b with SMTP id af79cd13be357-87a35ce66b3mr915924385a.7.1759739425811;
        Mon, 06 Oct 2025 01:30:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXUjSORB8/gdVaqQhY61pOzDiPB5IX7IjdJsn8jA+4eHYgbYcSssD5tm9/R6DxLCyU1tYgZw==
X-Received: by 2002:a05:620a:254e:b0:7e8:c4f:614b with SMTP id af79cd13be357-87a35ce66b3mr915921685a.7.1759739425283;
        Mon, 06 Oct 2025 01:30:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b422sm1100481366b.54.2025.10.06.01.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:30:24 -0700 (PDT)
Message-ID: <9320c599-c7e3-427c-a096-230037d5db43@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 10:30:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] drm/msm/dsi: add DSI PHY configuration on QCS8300
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20251006013924.1114833-1-quic_amakhija@quicinc.com>
 <20251006013924.1114833-5-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251006013924.1114833-5-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e37e22 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=pHedSVXj9zt6Nr3hYnwA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: eDHsOn38-C757Cfsc3gTMotgLNweKWdt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfXxTn/tZ7a7hH1
 ccXyEzBzIEMmafSU4wRdx/o2MBkMjPba0gr9nG9RsSk79dNoyMbMEeq6573JUYzwlXNW14wB7Nk
 o+Lh49g9Iap95hk0nV3e0PUXY0dPbbnlPdwBDpe13X6JZM2zRnNdr9ciwdScoHpwLgATQhvA+jS
 fWe8S6RnSu1ZTuvPGnJyI5R5fJW8wEDaTNApUl7/NTmpq3DZopvReg9Bt+i+1prfBR3xs62PHfs
 ULCYh2wIcEHdaO1xlakiBXbQmcOrMDwJSozCHoIwaQsueGzM1CaCYil1ZhrW1K3FnsOeInGwFUE
 KMtG5iwSyfo82io6Xw/E2JYVKOjGY6cF7Szk7KNcLp/c9NWlOG7GRr5mh54vMj1bQZU0AXVUmry
 fc1HwR4G9VxNBG6+WuSpkP/9PuL9fw==
X-Proofpoint-ORIG-GUID: eDHsOn38-C757Cfsc3gTMotgLNweKWdt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029

On 10/6/25 3:39 AM, Ayushi Makhija wrote:
> The QCS8300 SoC uses the 5nm (v4.2) DSI PHY driver.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---

[...]

> +const struct msm_dsi_phy_cfg dsi_phy_5nm_8300_cfgs = {
> +	.has_phy_lane = true,
> +	.regulator_data = dsi_phy_7nm_48000uA_regulators,
> +	.num_regulators = ARRAY_SIZE(dsi_phy_7nm_48000uA_regulators),
> +	.ops = {
> +		.enable = dsi_7nm_phy_enable,
> +		.disable = dsi_7nm_phy_disable,
> +		.pll_init = dsi_pll_7nm_init,
> +		.save_pll_state = dsi_7nm_pll_save_state,
> +		.restore_pll_state = dsi_7nm_pll_restore_state,
> +		.set_continuous_clock = dsi_7nm_set_continuous_clock,
> +		},
> +	.min_pll_rate = 600000000UL,
> +#ifdef CONFIG_64BIT
> +	.max_pll_rate = 5000000000UL,
> +#else
> +	.max_pll_rate = ULONG_MAX,
> +#endif
> +	.io_start = { 0xae94400 },
> +	.num_dsi_phy = 1,
> +	.quirks = DSI_PHY_7NM_QUIRK_V4_2,
> +};

Again, this is not necessary, since the lookup code looks like this:

for (i = 0; i < cfg->num_dsi_phy; i++) {
        if (cfg->io_start[i] == res->start)
                return i;
}

Konrad


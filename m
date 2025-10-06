Return-Path: <devicetree+bounces-223797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EACC5BBD9E7
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:08:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C11404E2A5F
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD9D22156D;
	Mon,  6 Oct 2025 10:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YfI5ule6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509A4220F37
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745309; cv=none; b=aoJ+d1kDSJhqC1jlvMrumKA10EdIGsHnCUoYjwZtvEcwwXI+vnuN26XZK8QGPOovTY3SkHv9ypM3lyPOVjxh76d1OgchJOtl9zwAsdhnUxpc3TbTGiv1120NIjQCajU8aSR6r0380cIw73vL8Ww6DhkD7SFRWhgIl5JRdK0T7fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745309; c=relaxed/simple;
	bh=rrCYAYkIIKFxZzj6px2XfJmTeYXc7E9PYfMHKcIzPW8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lKlb7D26l0bx2yFfpL5ZLukcDgY08a5futxeq2mr5+HxYQl/2sXPz8X2CKRNFjhiJUYSxB6TyMWThw1F+B63mVYjWn8q6/DYVg5f+Ux9kj4iYmG8aZIB/0rnY5mYAveAiWJM04o6TcdZBuTIZ/qL1rd5TDwhWoFrDhBDlccG654=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YfI5ule6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NKHoA014025
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QRxl7sNo+3DrrqfT4zz8oVLcU0vJGKPO1RsVS+CbIJY=; b=YfI5ule6kP9JUqOq
	0V/aCsHHGfHDFgLPWiT1BFjvA+8l+1xEg/ctS3i2cfNI02OmWr79FINs0Gno9zKj
	4cd5/aUDM667tNjkUpsYHgR27f+SWOWeV1Kge3Go5an92KPh9RfDNJ0/4OPYwaZU
	Kf98yaYEvGnA57SZTC6DeneYK6E2NMoAr3vFri0t3EIg7qGrDBnKnmIleLdJ1t0a
	e8i5wDGJhkCrZ940YaV9yVQxVTXudAiibMi5HKgr0wcsBoOjTN01eCSycVdO3TMn
	Eao/YWyzXKwN8h3F8ktg8U6Ro7lWSttMiuxcZuBLFumk8THQ8JjCaID/s85kvio2
	T8EumQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7kc5u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:08:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85696c12803so205759885a.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745306; x=1760350106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QRxl7sNo+3DrrqfT4zz8oVLcU0vJGKPO1RsVS+CbIJY=;
        b=oYTgjcoBeSESXmcEJVfZVk7UyRhjLRtaj85bgFYwrytWxmXefUPxfixGUJjTz3vavU
         a1DaK/U1zCzk/7N3zGiYhuW07eZdkMgAgEOHnIUUVIs6VcwUQHd9Z3OPomxk0P3TGi7P
         AtdjZq4tpYNAgyoCH5DWcmr9JWgraGZPlxQQW9gVzFW6Vr65Zmf/asrGvzIxUICdJCef
         AyrDgHOPArxKyOPybcoDJ4DdeoH0lptdukY82xIcgkK++yS7LlHyiKedoX9QDW2bmoKF
         0bb0E5DymMyhf7C4V9CXj/OG7jIFKHH35+IsJJxmFUuaUdNh0xArjJX9MdyuinK05oRx
         QazA==
X-Forwarded-Encrypted: i=1; AJvYcCUoNOAd2JhD+kHK8eCVWuZWZOWZaIakPoRZRZJeCMydvmvP8zAkPfH3A3Y5qH5g8yKKvZ9SUCNPi/3Z@vger.kernel.org
X-Gm-Message-State: AOJu0YybqoFWr1jqn8fz1MSsRDHyd1dCDT6ChE9a9XtubpGss8pfOCOm
	fX0qyKWBlbr4JI/EPf7Zcso37AozmF98OnVVsmXXQqNUVtoUH9ceToZHAZbMdqaPkGganq6LmdM
	QdrAxUB6lQ8OyZYF14mnTSTw7qoWtzseQmfwL1hhD7TMo3BOmNKuV5NvW1ZDCwFFe
X-Gm-Gg: ASbGncv+y1/Sf7ppqAfdSFZyTO+6i8GZtHBCMr5GfOWvJxNmpSYRYqTVEmDZxbsQqAu
	H856atvlb7MQd158FTCpEm2ttcAPz1rSXtiWaj8SP6l8LGWhFfK8+KNG1xDRC+3VCX5WGJRqjJj
	vMD7Be/RFNLJhOHC9pWKf1UlkRx5VfMVv8ipdE+V+UpWvpGJUBdKEQoerzgC5NUVN1SWoS04+up
	dpLcaFo0xq/029f4YV0aAxz9hfTUPUajvDgrNU4rc7JUS06ZtxXQmfIeaMAU05MJPsWOGjyjaZj
	YQc3Ogmds5GE85nvHD57lExG2PxYgbLQ0HHOpzN89MDBx3yo/ZaC2cUv+0SIVDHQj6DZpe5VQZe
	prM3ddTFBaPj8hpksDKNVvqBLxCY=
X-Received: by 2002:a05:620a:4546:b0:85a:dcb:a0fc with SMTP id af79cd13be357-87a3808f27bmr1139715685a.13.1759745305963;
        Mon, 06 Oct 2025 03:08:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFimCYf0SKFbzC3NSXsI5tRolyrinxggfXfZDYyrYmKlPpBtRE4B1n+BKu5V1NHf8AkVOgEQ==
X-Received: by 2002:a05:620a:4546:b0:85a:dcb:a0fc with SMTP id af79cd13be357-87a3808f27bmr1139712585a.13.1759745305366;
        Mon, 06 Oct 2025 03:08:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b5acsm1107908066b.60.2025.10.06.03.08.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:08:24 -0700 (PDT)
Message-ID: <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:08:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
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
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX3QvtyqnwckEG
 c/6KUCnmW5M9Hz9ooFFdcLxJJnQFyZzHqxV7aUDjP+Fq3/ItJn7fpNqEIKOwG7kc9yaOFROBwQw
 xeygg9Ft4fZoztgnzG7H15p4HV0k47GQzyWDzOeU4QunY2Btxhxdc/0u9otiipWE+wtpAeB8Io/
 Yv5Vse/Oh6yGnHwItpk5svzRi1+xq2WqLDx1R7+iltE9NfQ/vaaYfO1zklxM/JjFyuLDHx8x+/o
 sV1cuHujSxfOfxVltrJfZatQ0w6f0+jFxktRs9Hh2LrpRN6gPU3stzkTQgNrIIgEThGDBmsZrdG
 OZU8LeeGZ0o+82egKZZXS6aV2ii//YvTQrCRWvPvkgXRn5VY9PLxw2VbLtNYYbXxZzWdC1Q/syX
 6ZB0ocoBTph1nfo3btnD392h9eguUw==
X-Proofpoint-ORIG-GUID: gLKxwC1ColJ8DXP4iNml05U_3YkwQg5l
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e3951b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=eg4Xx4S7Erm8exKiWv8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gLKxwC1ColJ8DXP4iNml05U_3YkwQg5l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037

On 9/30/25 9:39 AM, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +struct qmp_combo_lane_mapping {
> +	unsigned int lanes_count;

"num_lanes"?

> +	enum typec_orientation orientation;
> +	u32 lanes[4];
> +};
> +
> +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
> +};
> +
> +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
> +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
> +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},

This is not corroborated by your bindings change ^

I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
would be TXd on

> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
> +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
> +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},

Would it be too cheesy to check orientation based like:

static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
{
	return data_lanes[0] == 0;
}

?

> -	ret = qmp_combo_typec_register(qmp);
> -	if (ret)
> -		goto err_node_put;
> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +
> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {

of_property_present()

Konrad


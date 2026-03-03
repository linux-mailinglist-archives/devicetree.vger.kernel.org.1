Return-Path: <devicetree+bounces-270271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJIRGSVRpmmxNwAAu9opvQ
	(envelope-from <devicetree+bounces-270271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 04:10:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C84D11E857B
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 04:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EDA14307015B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 03:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0156E37CD40;
	Tue,  3 Mar 2026 03:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hr3f4Xub";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LSO/K8vf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726E537CD29
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 03:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772507368; cv=none; b=EmAxgDMeSy2nTwBl04kZ6puaCN7gzvVsgeAY+1i4U1xFqBy8HQb6jNdrHcyAQ3u9HqS95s7b7jnPuMoBYG67oqRk3FCkuExC2m7rELmUSAtg5jA1bSK7otUwqrlaaGgG4dxkplZiPOl2XgtYLp5HA43bQKRRi5i8RWmabysfwAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772507368; c=relaxed/simple;
	bh=EydzVDobXWmEGamdHTF2WsUIVHA9GmJZh+MAehCXYYY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=casaejUsKwqjN4ZlhlyvHyeNYzWEElRCSD5moiw21yCZ2E9gYBiTJZVSWQXcApU0YLJwp6nAviCbsF2ycp07qjAvYxx/tC+saVG8aIQFhC8dntq9AMMuQDV0GOUtGtt4kRA7FPzp7dhbtUUzDW+Yhygo2+AxT7GZlzaxINLahv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hr3f4Xub; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LSO/K8vf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622IsxOw3561999
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 03:09:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tbGmto2NuUfl5MvNcF4vDgxXI1X+eEBNwwTZ4Sd7E0g=; b=hr3f4Xub0aaGz0Ae
	Q4+626t/htmu+VvjZ8gCguw1cwFCS6MhTNuB1bavbgBm7RCCTtkGgIoYaeVjPn4D
	MELSih5Ch7Qm8xNdQTiu6yY6eChGTzpfGED5Q4L5Qi8buJuKB9KNkzzYYYfJbSfV
	ujFtld6QN9DuL43ctPIA1QBhB/DY7LWzYkbx1qkLhsMl2jC0BEeInFXY1jpe4o/Z
	d1o4v9Jg3V78qk6WGUz+uJabhxbF4ciUb5Fi4ElNs08XNPugaj8xu5I7kF3xktkx
	Jzd213JVM/AH04wJdSk0F/jQDh0l7/btKxiHGpRT7dIiHe+icdpIx3fykKqefx6y
	WIxZIw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn9bvay42-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 03:09:26 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae4a6bb316so21120975ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 19:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772507365; x=1773112165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tbGmto2NuUfl5MvNcF4vDgxXI1X+eEBNwwTZ4Sd7E0g=;
        b=LSO/K8vfOLwkffkqhAxgOOkKk9MNhMJMvdFgnKtqb+RfolhqAK/LS2SV4yYoFKGwar
         MhGqkVpdhYioK6Xye68lXNy98SXwKRn5/U7ySSoPnXl3pG8PsxhsBmTBJqd+fE+Cg0PO
         gdCW4W4rVGngxd34UpOlrZ1m1x+URiMe8QaGA7ng8/RGVqPpPtnShsrYDFXvLX6HYdI2
         +FrV7YZseCC+ffuM6Jeh2nJqDltgl3jnxTZ3gZ9GdIx8/Ras20lubHnCuQa6P0g/6J/6
         +vTY3JJdO4uAj/thacMN3RG14BZAPC59D3qjzwuo6zjeKlY+vOlr70unw8IasDm5GSbm
         HeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772507365; x=1773112165;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tbGmto2NuUfl5MvNcF4vDgxXI1X+eEBNwwTZ4Sd7E0g=;
        b=ftDjv7ADir0h6HaCnLRbFWos18it9bOTqIMPYm+4WMbyRjRcomu0AH5VMNfeJ0W8td
         UDyqpYvzmsBBcTdnM3iJyP04nYyY0qv/oVeac7Hh87AfoejGyC9VKvgRSLopxSSE+Fv8
         Q9QJRI2yQRzrIbCqeTD0BlPvnWUlTSjSrIX1O85/ivv1aYIpN9M7s034wP2eGxC7q49a
         8/Yy4tYVh/X553LwR7eRcPpel0MIJd9h2pZWypRRbiIexSRubHBXgknpszTdQ3F5xrZd
         QDaEvSzInYW1GnKo8mr6N7URSRi1kdchq/1MbLeeV8K4gPqwX0r/LR5IDzy9AqzCSd+b
         RRww==
X-Forwarded-Encrypted: i=1; AJvYcCUiPBeqa10uxM0zR8gpA14/moEirjW7YR4dl4Zs47hMvoVD5b1ibKL4U59JL8sTt1qf5JlnP5zX5sh9@vger.kernel.org
X-Gm-Message-State: AOJu0YzxJkzUeNNRN4zNRvBGlhAWsp+5Wrxdu/OiW8qKymNDI8VIofdH
	fmbXLSrCAn9F0/p6+Y2z6RsHhweDK/wUK1rQeWnIvU1ztyJKD0YQMc4Mb9VbItF69+hBBEVorZ0
	hq1Tz/Axcoga3QTju/w39VV4RQ86JSqeyd+r4wqNsshvSTdG3XTYGNUId6JTHi/8D
X-Gm-Gg: ATEYQzwH0Rw7I2iLdd9UNBUfTJajJmbeiYIOzUKEGx4fehpmOfyqOLZEDF7nATwgJdG
	vd6NG+k9KWtWjTQyYuym6BwnGFdR98rGXEqPS3I6sgaQ0Fhn/NUnQW/VGnVed39Oz5bPFveJfPn
	HXhL/Zyzy0gZVcSsd1IXXi0uZTUQPCqL09q+GMnKuN6tTuSOwmr3AO2+h+cjKvxckGyD7rO7W13
	5Z6xRUGGMZ80n1miMYPh+GG+30lAmWjdGSttCfV7lQOzqWR3BwPib72xRehRk3h89c7v7oaajkY
	QOqFlY1asMN6R6NEW2rjkdUqfBdgORGKbTk889g6tVF6wP23VoHOEcjqAxBOUPkM89Grngp+VKJ
	BXnTPC5BPbwbJToNTX21hqf62hJvUvcdCBwEO5wb4ZyZPPjRnYCNyAaVZnbS6ZPio6lEnXHUSkj
	ED7mlVxchEGYI=
X-Received: by 2002:a17:903:3c6d:b0:2aa:ea8e:f118 with SMTP id d9443c01a7336-2ae2e3e6adamr143697285ad.3.1772507365154;
        Mon, 02 Mar 2026 19:09:25 -0800 (PST)
X-Received: by 2002:a17:903:3c6d:b0:2aa:ea8e:f118 with SMTP id d9443c01a7336-2ae2e3e6adamr143696925ad.3.1772507364486;
        Mon, 02 Mar 2026 19:09:24 -0800 (PST)
Received: from [10.133.33.114] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4e571b90sm50356815ad.62.2026.03.02.19.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 19:09:23 -0800 (PST)
Message-ID: <9e933431-44da-40b6-85eb-9fa667a7c1fa@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:09:17 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/4] Initial patch set for PURWA-IOT-EVK
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        andersson@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, conor+dt@kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
 <177014002716.3173249.7908353000261603377.robh@kernel.org>
 <e577c093-0851-48b8-abdb-0aee0479c1e3@oss.qualcomm.com>
 <d3mvqtyd6dsphkojenpalduty7x2n3yxf6rjazwndisxnktez7@iwb2nnxwvg4d>
 <1035ed36-8659-4fc9-9a4b-aa6bd2c3a286@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <1035ed36-8659-4fc9-9a4b-aa6bd2c3a286@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: i1GjsU7hw6SX9KFwqZvesRjpOc5QTfWl
X-Authority-Analysis: v=2.4 cv=S83UAYsP c=1 sm=1 tr=0 ts=69a650e6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=gEfo2CItAAAA:8 a=-5c19URaVyYhH7L9fpMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: i1GjsU7hw6SX9KFwqZvesRjpOc5QTfWl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDAxNyBTYWx0ZWRfXx4XtnBge+clt
 Nl1DNNrieTK9gC18bD7lA2abd89xfq3cbZVQCft748Ogf7BKikgtCc+JiFCCPnu0yLN3bieHXwl
 2mh59NSjTDputVZeMR4tucPPGb6Zjsdd+0U8j/6hdaNcSzKvXWJlMU3AiORdGbkBS+fMr0kdPFj
 fxlpvSMsg14dLaIIbIU14Sshny++a15fjPoOlVy7VvejZnSe3FJZaZw0fFbsj2oHJzA72hO0cAP
 LAkh7IOq6WXfvyAgwp9iUgsL2NdLwSCsMFd/Kck+u/feT95A/VlRVSPUmn0akS28U50Z3is0rcv
 9p3phptFAQ22Dq97yzlBQ75no8vBZTnMMHtrzJ4S0JYeCs1G2fd5L12rp3eDOysFSGHCe9jPWPW
 dxHRbnxsqrV4qDqoBBdtSgW9RdmdEcsvf+TAxUB39jJeCdz/eYINPUjb2q5UonqyWAwloqxCt3C
 ZXxdK48hXA4+fFGsFUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030017
X-Rspamd-Queue-Id: C84D11E857B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270271-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url,qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,1bd4000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 2/4/2026 10:52 AM, Yijie Yang wrote:
> 
> 
> On 2/4/2026 10:38 AM, Dmitry Baryshkov wrote:
>> On Wed, Feb 04, 2026 at 09:42:04AM +0800, Yijie Yang wrote:
>>>
>>>
>>> On 2/4/2026 1:37 AM, Rob Herring wrote:
>>>>
>>>> On Mon, 02 Feb 2026 15:35:44 +0800, YijieYang wrote:
>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>
>>>>> Introduce the device tree, DT bindings, and driver updates required 
>>>>> to enable
>>>>> the bring-up of the PURWA-IOT-EVK evaluation board. Focus is on two 
>>>>> key
>>>>> hardware components:
>>>>>
>>>>> PURWA-IOT-SOM — A compact System-on-Module integrating the SoC, 
>>>>> GPIOs, and
>>>>> PMICs. Designed for modularity, it can pair with various carrier 
>>>>> boards to
>>>>> support diverse use cases.
>>>>>
>>>>> PURWA-IOT-EVK — A carrier board tailored for IoT scenarios, providing
>>>>> essential peripherals such as UART, on-board PMICs, and USB 
>>>>> components.
>>>>>
>>>>> Together, these components form a flexible and scalable platform. 
>>>>> Initial
>>>>> functionality is achieved through proper device tree configuration 
>>>>> and driver
>>>>> support.
>>>>>
>>>>> The PURWA-IOT-EVK/SOM shares most of its hardware design with
>>>>> HAMOA-IOT-EVK/SOM, differing primarily in the BOM. Consequently, 
>>>>> the DTS files
>>>>> are largely similar. Both platforms belong to Qualcomm’s IQ-X 
>>>>> family. For more
>>>>> details on the IQ-X series, see:
>>>>> https://www.qualcomm.com/internet-of-things/products/iq-x-series
>>>>>
>>>>> Hardware differences between HAMOA-IOT and PURWA-IOT:
>>>>> - Display — PURWA uses a different number of clocks and frequency 
>>>>> compared to
>>>>>     HAMOA.
>>>>> - GPU — PURWA integrates a different GPU.
>>>>> - USB0 — PURWA uses a PS8833 retimer, while HAMOA employs an 
>>>>> FSUSB42 as the
>>>>>     SBU switch.
>>>>>
>>>>> Features added and enabled:
>>>>> - UART
>>>>> - On-board regulators
>>>>> - Regulators on the SOM
>>>>> - PMIC GLINK
>>>>> - USB0 through USB6 and their PHYs
>>>>> - Embedded USB (eUSB) repeaters
>>>>> - USB Type-C mux
>>>>> - PCIe3, PCIe4, PCIe5, PCIe6a
>>>>> - Reserved memory regions
>>>>> - Pinctrl
>>>>> - NVMe
>>>>> - ADSP, CDSP
>>>>> - WLAN, Bluetooth (M.2 interface)
>>>>> - USB DisplayPort and eDP
>>>>> - Graphics
>>>>> - Audio
>>>>> - TPM
>>>>>
>>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>> ---
>>>>> Changes in v2:
>>>>> - Update the GPU firmware path.
>>>>> - Update the description in the cover letter.
>>>>> - Reorder the patches.
>>>>> - Use separate DTS files for Purwa and Hamoa.
>>>>> - Update base commit.
>>>>> - Link to v1: https://lore.kernel.org/all/20251222-purwa- 
>>>>> v1-0-14ab9316e5ff@oss.qualcomm.com/
>>>>>
>>>>> Changes in v3:
>>>>> - Delete unused PMIC and thermal nodes.
>>>>> - Add WiFi node.
>>>>> - Add display backlight node.
>>>>> - Add connectors and VBUS regulators for USB3 and USB6.
>>>>> - Enable PCIe3 and PCIe5; add PCIe ports along with reset and wake- 
>>>>> up GPIOs.
>>>>> - Link to v2: https://lore.kernel.org/r/20260109-purwa-v2-0- 
>>>>> f39ee10684cb@oss.qualcomm.com
>>>>>
>>>>> Changes in v4:
>>>>> - Enable TPM.
>>>>> - Update the descriptions for video and the USB OF graph.
>>>>> - Link to v3: https://lore.kernel.org/all/20260113-purwa- 
>>>>> v3-0-16eefacbdce9@oss.qualcomm.com/
>>>>>
>>>>> Changes in v5:
>>>>> - Reorder nodes in purwa-iot-evk.dts.
>>>>> - Update base commit.
>>>>> - The DT binding change that fixes the DT warning for pcie3_phy is 
>>>>> located at: https://lore.kernel.org/linux-arm-msm/20260119-topic- 
>>>>> purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u
>>>>> - Link to v4: https://lore.kernel.org/r/20260116-purwa- 
>>>>> v4-0-89b2adae9f09@oss.qualcomm.com
>>>>>
>>>>> ---
>>>>> Yijie Yang (4):
>>>>>         dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
>>>>>         firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
>>>>>         arm64: dts: qcom: Add PURWA-IOT-SOM platform
>>>>>         arm64: dts: qcom: Add base PURWA-IOT-EVK board
>>>>>
>>>>>    Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
>>>>>    arch/arm64/boot/dts/qcom/Makefile               |    1 +
>>>>>    arch/arm64/boot/dts/qcom/purwa-iot-evk.dts      | 1549 +++++++++ 
>>>>> ++++++++++++++
>>>>>    arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi     |  685 ++++++++++
>>>>>    drivers/firmware/qcom/qcom_scm.c                |    1 +
>>>>>    5 files changed, 2242 insertions(+)
>>>>> ---
>>>>> base-commit: 6267b2da1b2d04847a1a8f441e138bc4a89435ee
>>>>> change-id: 20251113-purwa-907ec75b4959
>>>>>
>>>>> Best regards,
>>>>> -- 
>>>>> Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>>> My bot found DTB warnings on the .dts/.dtsi files added or changed in
>>>> this series.
>>>>
>>>> Some warnings may be existing warnings. Consider fixing existing
>>>> warnings before adding new features.
>>>>
>>>> Perhaps the warnings are fixed by another series. If that is the case,
>>>> please set the base commit and any dependencies for the series using
>>>> "b4".
>>>>
>>>> Ultimately, it is up to the platform maintainer whether these warnings
>>>> are acceptable or not.
>>>>
>>>> If you already ran DT checks and didn't see these error(s), then
>>>> make sure dt-schema is up to date:
>>>>
>>>>     pip3 install dtschema --upgrade
>>>>
>>>>
>>>> This patch series was applied (using b4) to base:
>>>>    Base: 6267b2da1b2d04847a1a8f441e138bc4a89435ee (use --merge-base 
>>>> to override)
>>>>
>>>> If this is not the correct base, please add 'base-commit' tag
>>>> (or use b4 which does this automatically)
>>>>
>>>>
>>>> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/ 
>>>> qcom/' for 20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com:
>>>>
>>>> arch/arm64/boot/dts/qcom/purwa-iot-evk.dtb: phy@1bd4000 
>>>> (qcom,x1p42100-qmp-gen4x4-pcie-phy): 'qcom,4ln-config-sel' is a 
>>>> required property
>>>>     from schema $id: http://devicetree.org/schemas/phy/ 
>>>> qcom,sc8280xp-qmp-pcie-phy.yaml
>>>>
>>>
>>> I have already listed the fix in the cover letter:
>>> https://lore.kernel.org/linux-arm-msm/20260119-topic- 
>>> purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u
>>> It is not recommended to list it as a dependency in the latest version.
>>
>> You can use `b4 prep --edit-deps` to mark it as a dependency to be
>> picked up by the bot.
> 
> Krzysztof mentioned in v4 that this is not a dependency and only needs 
> to be mentioned in the changelog.
> 

Gentle reminder. Do we need another version to address the dependency issue?

Thanks,
Jie

> 
>>
>>>
>>>
>>>>
>>>>
>>>>
>>>
>>> -- 
>>> Best Regards,
>>> Yijie
>>>
>>
> 



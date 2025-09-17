Return-Path: <devicetree+bounces-218346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A55B7B7D9FB
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:32:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D75201890EA2
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 11:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6878C2EBBB5;
	Wed, 17 Sep 2025 11:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m2+PVpD+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14882E0B5D
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 11:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758107674; cv=none; b=kNdYtJES2msaJngl2Ttd6PpieR7G8ejpzH5RH78yOAaNhnb+RK77nknOmPKBK52j32HPvzmeG2FHyQqnhsC1exQxaYM7KAam5VA/W7BLJGQG9OL2yeV4T8L7TQMF0zVYj1T9lC+adCHEnn7OvmkBsWktPpKePWebkhJQV0NdDVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758107674; c=relaxed/simple;
	bh=gr9F60Me7a60bNWj3SiJcwOQULQ8APfwa1823sZVpIo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XuMgZPJ3mloB3p00eQE2sjgzNLVcHpf6FNnBh/Vyq7HUHT2bmX6U6XIlzjXZFnkzilb/98ZEeE5oy2kBimB8bzjxQdO7F4fprf3IdMcyWAHhoqgqqbq3jekz+LlkQJ8AhQlJ/V1TT91SlXQNva/Zk332GC5L749wIOYROo9uLK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m2+PVpD+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8Xbhe027242
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 11:14:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SjIVIub8Wket+d8VfqHLW16P1fmhDt81FIBdsCC9eCk=; b=m2+PVpD+JX68xdNA
	e6xGaMzZ2V9W8QeokHqxPURe4dJtCFtGFHq+OxOmaPE4rRv1UxUwfKFmYx/A7XiQ
	cvcPvOILvHD/y1NpaWwONYtYw1bEObfadFOhPRLB0iq4eyFVmx4PYk7ONHW1uHXP
	iIdjyKxmkhqBYTpMoZNFFQwhkaAEW8SnyRrL0x/jxWEKvUl46MBd9LskkdSZbuj8
	5ro/SMmh9Rcrr+GQGChDUbLYQVvsM+U1ImXl1yrubRtPlJNHQOak0cZW3nENXU49
	xISItLnkeQzXKnixLD9usp5TqPO22lsZBIk6swlTbQjefYxhivU/nHBHI1k0zlMA
	AIL1Eg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwj3r7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 11:14:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b79d4154c9so13872591cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 04:14:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758107671; x=1758712471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SjIVIub8Wket+d8VfqHLW16P1fmhDt81FIBdsCC9eCk=;
        b=ulojPUhx3eWltu3jx/6xlfb53BUj8oyUoQfk9mV5KCs+QHAO6er/A1z1dGAh0Xw3Vt
         4bW5X2eZ+cZfwDTJ7ZTESxrG5U1c7HyqxM5eQFcZgzOLuCqj5fkrTIa9gdA0obmuRYLn
         tNhrNkGaX/5wUhkEGxRQ+dsUwnlzpM3Lf4YzKQkpUhkX0tXpdqmd2C4v+ZA4Ci/DHR4j
         yXubxu17cVZHTVHtBtNNrqwXpDa7r0y9AQIa1f3grtW9ZJNsH/CV16mZd/KNHS4mVNPz
         VcREtoTAn7UGtaPq+myAMUIdvIzZuLU2i7lkLXXEjS/efGgf+NBu8BvMHBf7lchvz6N6
         U3DA==
X-Forwarded-Encrypted: i=1; AJvYcCXgZY6e+WIQ2CX5FbRhpnYj6VcOB9jWCgv/4OmN6k6FVsJD3kROYPgonRm4OjiiV1AkgqGAJUVlRn8w@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc0Pxar/PUa01UZUoujZIjVJNe0hd/NJFMwPeKRWnF1t8hkPJy
	HUE7ZVnO7KgaNS4CP/Gm7kNeX5ktoVXW3nSkJs8Hmu6t5nIkNuIXSUtDn1QRMGy4axOC8cAn40B
	1BUMH5gpzdswunhY2TzWJDaiWifhVciXFG2H2dwE4qadc0uNEcDTKOIz/cWthFt+C
X-Gm-Gg: ASbGncsN+9n6wWMkABE+Vta4e9ERwRKQf/lLiOsctzCehz+QYz8lfGFOgMrunb3e231
	rKEpIzgqf6b1SyIXZIuzy9m5zje+uLhBkmPA7sq2th0UCthlqngO56KVxxJEVByNEm4UkgT1Acc
	cibBIuhdSNV/ui7pwLvdzxcyavOvkjsv3kVd6xZNRf+Ye27O1QJsLkuq+TPN3gMMBXVJMv28+wR
	LEW+lrb1/CqaYMjlQZUPVrJlPUVg9eLRCSKGRYFnDssiZsUsTNpBGwD8F7QCULUsHaIqM7aPtW9
	Z8exH7A9ZlaCxERwzDHrOTUhZVwGNKOGBkD0hAP5K72XYb58vSe80BuczvmGPEQq1PSIt247sSW
	Eu6616i5EQTcrLw+uHqDgqg==
X-Received: by 2002:a05:622a:342:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4ba671e5e91mr10613531cf.1.1758107670630;
        Wed, 17 Sep 2025 04:14:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUZWiiFXjANyc5iNlBf2sAU8oL2kw0kwLhnJKg6xlVKg4vTUbDuuDVuoJ15JMc/ewmK01gkw==
X-Received: by 2002:a05:622a:342:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4ba671e5e91mr10613251cf.1.1758107670045;
        Wed, 17 Sep 2025 04:14:30 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b136ee12326sm485898366b.51.2025.09.17.04.14.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 04:14:29 -0700 (PDT)
Message-ID: <fa258ad4-1efa-4fe8-9636-d70c5ea9c8e1@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 13:14:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 9/9] power: supply: qcom_battmgr: handle charging state
 change notifications
To: fenglin.wu@oss.qualcomm.com, Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?UTF-8?Q?Gy=C3=B6rgy_Kurucz?= <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250917-qcom_battmgr_update-v5-0-270ade9ffe13@oss.qualcomm.com>
 <20250917-qcom_battmgr_update-v5-9-270ade9ffe13@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250917-qcom_battmgr_update-v5-9-270ade9ffe13@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXxved/aHek6il
 +bDN0XjBM5N36F7n5itGi0w4E+4mzFqvIOlvyf8nJRNNO++Q8LbJtMsQoDKfqbGYm547BEufUqK
 IW0+353h+AGBiAnXdA7y9s8270wP0Gi7THrNpGQtgL5Kn1GUR+3ZUx8SwDaMU1eF/uToCg++CeF
 biQeKySUtHiX2Rgb40UXxEEEq0Fpq4rIzkgTzdZI1dibdSWOKjlsjfaYyK12pDlI7lFeDxjlXdf
 Fp43PJ8bEP9T2uw621M3r/cH7/E20kjbjp+jdnQcQHctUrUfLpUtl9GrKNgyuVlp/SCcY5x8UI9
 4QFsl09EZWf7z8PYsXeIh0CkGpeU1kMzY9LLYr+k4SWpYtYcBg+UlOQjcxZXVv5KvmbwC/z5qCY
 9PJx7JSL
X-Proofpoint-GUID: 8FzWhj7RzxQs_-XcxKNO1RQsR9HFuSVt
X-Authority-Analysis: v=2.4 cv=ROezH5i+ c=1 sm=1 tr=0 ts=68ca9817 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8
 a=DHQ_eFf6vkL4qwDZSiYA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: 8FzWhj7RzxQs_-XcxKNO1RQsR9HFuSVt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 12:15 PM, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> 
> The X1E80100 battery management firmware sends a notification with
> code 0x83 when the battery charging state changes, such as switching
> between fast charge, taper charge, end of charge, or any other error
> charging states. The same notification code is used with bit[16] set
> if charging stops due to reaching the charge control end threshold.
> Additionally, a 2-bit value is added in bit[18:17] with the same code
> and used to indicate the charging source capability: a value of 2
> represents a strong charger, 1 is a weak charger, and 0 is no charging
> source. The 3-MSB [18:16] in the notification code is not much useful
> for now, hence just ignore them and trigger a power supply change event
> whenever 0x83 notification code is received. This helps to eliminate the
> unknown notification error messages.

Thank you for explaining the technical background.

Please hit enter somewhere in your commit message, this is a very
long paragraph, making it difficult to read.


I believe this maps to:

0 -> POWER_SUPPLY_CHARGE_TYPE_NONE
1 -> POWER_SUPPLY_CHARGE_TYPE_TRICKLE
2 -> POWER_SUPPLY_CHARGE_TYPE_FAST (or _STANDARD, I see battmgr code
reports them both as 2)

However, we already set it to none/trickle/standard(taper) based on
the usual notifications, so I'm not sure if these are more common or
arrive outside the normal state changes - if so, perhaps we can take
them into account as well?

I think it also warrants a:

Reported-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Konrad


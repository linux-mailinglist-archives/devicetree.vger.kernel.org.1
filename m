Return-Path: <devicetree+bounces-253178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB65D082E7
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:27:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F53D30612BB
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35FBB3590B9;
	Fri,  9 Jan 2026 09:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="psM0ANYx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RjC7qyeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73603590C5
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767950654; cv=none; b=MJuABzfIE58Q0Xjc4bTodtsQ9rKXaNCotaZeZP2c8O2XoqeeTuP6i6Sj9Cpn4OFI99RvoY8Q/KVwP5fE/IWuP7gqCOpEXuHl0NjPU5SFRqqTpFbSRgb23nkQyeWMr119iMK3/5cW3bLdGFxnZF9MmFgn0BOir5lB4/2/qWGJfCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767950654; c=relaxed/simple;
	bh=nwvJY2/2FymKX2gBIAsj07D8Ic1TEuILNW6QQ8xh1/Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LY6tyxHHQsymoM73yCAwlz1QN3HkCNewpQp8UZNJ0k02HDwOMwfbfO11aXjPXu4UUch9bMCaFhyD13LxA6qQPs5g/zo3YhnJnEEj5CKzVPjPLdGcs9VHUcRW7gQGePIwkl7GOhO5mk3Kw5aHgXhxR6EdrhvdmDY/t5sodDr5qCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=psM0ANYx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RjC7qyeb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60982XBX2183996
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 09:24:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GSiyN1L5ZrAfufVLlKRfkcDEEnzthrbmB/NCIfyQoSk=; b=psM0ANYxJqiBV1Mn
	Z+2Q+Sl/iXHXGRL8NEwENy1FKwin3ABcQfxjOcYXSofDyOzxKqlUfPfDRRuw9Fl+
	wXgYQWjDceRFaNjOP3/nnOC4b8eSrjAPx/tP5jThajq/J/H4uVx51DHyFRZkYOlb
	cmeMeD+7UCdtXj8NBZOHBVv/QI7z0utkLsRf/8Mjik58WXB0lJgxoGMahku9iqut
	3Adv2c8WmlfQI/kmVJIzGZlzuvQVHpBKNs8JRpaq2e6XYVcRQPztL7L7vhxLFDUQ
	AzKJfMgLS30um0w61eZSs8xi8+vbMcdL1g06K4wL24aQ8hllPWr/Cw0cRGQ66gva
	+AnotQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjwtn88uw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 09:24:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b196719e0fso119943885a.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767950641; x=1768555441; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GSiyN1L5ZrAfufVLlKRfkcDEEnzthrbmB/NCIfyQoSk=;
        b=RjC7qyebCRl/pVYTVG6Sq80DzmkxjUpqcsq78Z6LcnEIHIKfJOa53hV8xAn9PhzRk0
         Hpjfp7NPBNfDIQddZxXUdUKASI8T9z8WA5ffEjLyUF9ZqpyeLpgOnA7dJjCwH7ZcnWg1
         Czsw5TgzDrpV4zmTPrIgwFg6Bdw638uygF72gKTZCIZIxJEy0/ColCc4aeqbo9K3kaUK
         r4iYk4RaP5NYG9Qerl3gwTLz9TTUt9yMGpRX8aBD1Q6vTI1WffBwflHoT78c/F37tMx5
         QEQ+7pcqZ81qcV9555a9KB9e9Wq0HNcG7WmNFnRtBIWMAy3FN8AKBUBCCKYq0o1QykpN
         0DhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767950641; x=1768555441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GSiyN1L5ZrAfufVLlKRfkcDEEnzthrbmB/NCIfyQoSk=;
        b=snF8qHAsBdkUyjZrfrwHzJAEsn1jiHuut1RpoL9ARTRO1C4ktAmDg+gdd8SXrx2WAr
         XiV0BcboM5L9p9TsiL5cfDoHIxoFKjfhfsSNxvZBBedHqwZ/FyQ9xzPZ/ES2rXP7lOAb
         VMJI4A5i9HW3Fm2aZ9pDaiTGQ5d0ORNpgKatlWOUH+RnjtrqhGUxgzjgwEqL0x3ZIEyH
         mV/uZ9Ab9Se32DpOy4fwffVmsE2ipl3t8kSNLJs7NQPwXkWBnC472A7OmjBeY/qW8KkW
         JNS2gM1VHA83/XuFltDrJsanuoon28kZYf+n0R/7gjaVtoScULYW1e2iucze8Gp8vb8P
         Pqcg==
X-Forwarded-Encrypted: i=1; AJvYcCUlhuEVgPXAYf1iyTPZcNOaIjMlQUDuCm2wxZJhI9tes6Z9CywyLDRjI9cU7L0x18nzgn65CwYKI9uq@vger.kernel.org
X-Gm-Message-State: AOJu0YwCSAwwThxJsutih04qPTW3CH8QIL7xdPvk7fLkcAVrKqZXrmdE
	u4miFKLeXP+/1Ps/EBRmJ6Iv+IF0weIrVJ+JFSgyrkXbz6EpL0Tuh+c/7FQr7V1spiSLKUGSJ4t
	XmVaBYnt1M2wlr+8pt6nBdi/PxDuSdMlsYJ58E/dYAXCoYLWxk44bjGqkgTiwP9Ig
X-Gm-Gg: AY/fxX5EdA7d7G763fyAe8uksSgOufr+eUpAAGzpOzgcQlpXXGTCOCOL4/c0zefbul4
	itSkt/kKBTFc7nhXTBATvYcexXrDAQJdGw09YRc0M5Pz5UuKu0VZUQmlWMTbx3I/rVKsY0N8f51
	OT+yw/85l2HtwaZC/7GjeIWcQeOWhjgHIpNVdliP/RDZcV2GXRER/IzNMKskwmyggcUNeowLVGn
	V+GUHwAgf3e5eP7Ge7YKPKdT7XPySBut2usYkE91HssFZZhtYIxCuGEw1ni21sfc0TROIyxKG+9
	C+G66d1bf2PyyYA1VoXqcSXq5aw3AJVsHVhifPhTnakZc+8VdbU4fil0P0Dihg8RB8Y67XG2CcY
	HFPqvHcObF9+cPBh6HcRygtnC5SWvkFzvIwFCaHWinF/diUNMjlmUMC4JaJpcbawR0vg=
X-Received: by 2002:ac8:570f:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4ffb4acf414mr93014881cf.11.1767950641335;
        Fri, 09 Jan 2026 01:24:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQ+T0djSvS4SpF0OC7CDgdv5sGKxvtI7E+ky04MZ1kKA3Xaze8zjFMPWQqjbLZyT6W0TEnww==
X-Received: by 2002:ac8:570f:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4ffb4acf414mr93014801cf.11.1767950640876;
        Fri, 09 Jan 2026 01:24:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a23433asm1065367066b.3.2026.01.09.01.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 01:23:59 -0800 (PST)
Message-ID: <22a39dac-39bd-4bbd-86eb-e7da8cf9c361@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 10:23:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] Add QRB2210 RB1 vision mezzanine/kit support
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bKNDG0Rnd1RkxLhzgtAzfkBFKRgHAuHX
X-Proofpoint-ORIG-GUID: bKNDG0Rnd1RkxLhzgtAzfkBFKRgHAuHX
X-Authority-Analysis: v=2.4 cv=Uohu9uwB c=1 sm=1 tr=0 ts=6960c932 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gu6fZOg2AAAA:8 a=VwQbUJbxAAAA:8
 a=KgWQRcSM6EjKocOE5DAA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=2RSlZUUhi9gRBrsHwhhZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA2NSBTYWx0ZWRfX8zKyMZLsRABn
 d8VZ1ayihvi6ofVgi9Bo4i1nzAwqwbv6AASTRd3Pyqgba2fRg0VlSMR3mS9yig+xAf4djP9+ntI
 ELUwtoLsRDxwcN/nBwT+ecHZ4ghugfVDfWJ4BONhTkdN0u7YPejwpbGwXqaN74ffxbo/4UmAaag
 FVzO8QX9j4lXBJA5ILnsyeGUlaKsLLGgSaDStMeX3mqNY431ouueJ4FCn1sj9z1rU3WJalXnpjy
 p7w9xw9i+Kz/ihtgG7ZzPgdYdWXlDAm6G7rq+wWbjrczfqo+sLnPNYN7HZQnBKg450TMlSXOnIP
 pTR1o91gS9fyy+hV69m2E0TH2HdlVJv367a1fcuB1hAypA9EsoluErNoUZmb55zDC8CPOWMNKpD
 c/2SP1k5iVMMHpjK6H5o3utiA0va1niz79wd02rX+XPAPLSFE4ZUhf/s2KqQeD1eFrZy8Z6qvqK
 s89wRGxaPHPI7cnzpxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090065

On 1/8/26 6:05 PM, Loic Poulain wrote:
> This series enables initial camera functionality on QRB2210 RB1 with
> Vision Mezzanine.It includes device tree updates for camera-related
> components and a fix for the OV9282 sensor driver.
> 
> - Adds pinctrl configuration for the four camera master clocks (mclks).
> - Adds the PM8008 camera PMIC node, which camera power management.
> - Introduces an overlay enabling the Vision Mezzanine board with OV9282
>   camera sensor support.
> 
> Changes in V4:
> * Revert to using active-high polarity for reset, as discussed here:
> https://marc.info/?l=devicetree&m=176711209404226

This isn't really a concern, more of a "FYI", but most people use lore.kernel.org
for web mail archive

Konrad


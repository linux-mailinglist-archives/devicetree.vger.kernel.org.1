Return-Path: <devicetree+bounces-203700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C5EB22476
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 12:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 604E41B65E11
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF702EACFC;
	Tue, 12 Aug 2025 10:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jfbPMLTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE572DAFCE
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754993875; cv=none; b=HXdS7EpPbSdp326wTX9HL/4eUVaXMpOEvNw2niRFhE8qfzTCkGyO15o2ym4AzoLpd7OZLmqk6O80kSQemnroF4omwfd4nAG99t60ox0eufaALfySdPQfsROLnWVyD6XfmCFRiSdLwyOMjvj7XNy/02pGzfGfZXxSlLKToj3Uozk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754993875; c=relaxed/simple;
	bh=5xTFZMaGiWcbIultx3Ov/tihiBM2v3Q5D3nA5FEdCuQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D4806Ehn0sRS8bkHetvzAnvRCFsegqOSNractEjJ/oT3aSLcqiwlVcBmydzU9LavWXoNvt82/DES8sgXxY0zEgtP6FxgXWEqN+aOYguQfih5XMwK4ZCLO2c7jDo68RecGWSqzFZ6+imbth7nC7c/Naxl6bBybpOU8C8NHjhjvNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jfbPMLTS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5XIO5021319
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:17:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Joum4cPJuzcFCJ6jwG3eOeh/Lj78lfvkkD/S8tyc/mk=; b=jfbPMLTSm4qZ5F6J
	RdsG/Dxha+U43bD9277GYspsA6Oq3pMLBf6AnCdYDoDfLmahK8bL1R5IOva4I1Y4
	ctaWqQIhgtNp4fr8kUDlTrhKsRDNOvc6yR9WOoHJ4pmZL7gcCWDpNEP3q1V0qTZg
	FIETShWFYIix0a4DTBADcRL0tXBW8l/UNFT7b0TKHbGOgOsOmUWvNyPlv7aCZ06N
	zI5080zWU3xc+cSOMvUfZ8SpEl1XzvpJOYlnsWw0qvh0EIIe4q3KCyoi+Grss2t7
	V2xIGueAwQzSCgqUPDZZ5asCBR5HQN45/THiWnQDFxRmwF6ok+6of4sfu/y5eyz3
	fTceZA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vjm4e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:17:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4af1219f29bso4831061cf.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754993872; x=1755598672;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Joum4cPJuzcFCJ6jwG3eOeh/Lj78lfvkkD/S8tyc/mk=;
        b=kbBcmHI+nWhBQBGmn22N1GliP2jpIhUSEbM9VvFA4U6NqqQgqzCaP+GYUFOnGYnSK6
         qBYMD+gzd90HYwHllidX0bv0Rn022YTQqnEkkDKzgpW1gV9CAXjV+kJ6x8NCI1XW9Wgk
         /yJzIwsXhHrrypCC5IvzP0rjw+tdDaadj4HdfddOMozu6Sw29Nb5toeAavp//geTn6yM
         4rZg2az+p4WhEtLybQWxqTZCcoJvhTIJSQNIPM+ELheHEKs2Kg3vuJ7wfRvC+Eex+DOG
         DdH1rQ9Kcj12z+T6DdE3QaOuEseeDcSioj7ZMvjY2jA5Zbw+0dop5f9kdCda3NGMnjO3
         KI5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWmChUnQJ8W43YLTbgnaOrPyc54A+eDsKZiQpR1uALQXKA9abP8vNnQFDohMS3yELkbOug0spg0zqc8@vger.kernel.org
X-Gm-Message-State: AOJu0YxN+cY7Juq1DXDXyH4d5AkULXLCjMM5cyjRYSb1TmwHBL3WSE51
	Skz8q69vVlb67ag4vm8m5Y9SE6xSnKU3NJuofREuti8O0q250S6C1+484WzKtfKkVRuAyYQKC16
	VTsX5Yngr0FP4kQ4EWdSkA6+U7tM0Tb8Uzd/AszDD97FImyB6rQRBRBuPwGatG0RZ
X-Gm-Gg: ASbGncu6PMNW3lvMHTsAqh+n5RUPF4DVngPY10d/vU89Mdjg0RbwoHNo+1qKdCHp7vu
	4xs1U2jpRlYvfGpt3yHtRVcVnk/fe4dzNj5bU3I9Ryc6jYITEI9PUVAY1txtHoxnrm0JpTxfrFd
	H5wJgc7pQBb2VeMvQVagg1kcmSKByM0bwGcwgP/dWgEPwuKQZSvZ3CF+ExSNT5n6J/CSXxhibDO
	m3ggh0pv/MIPU1EQQq88KTBk8eSZYJEd3NY2FX97tJMOGsYkR1xv/IRmYDFbE7nxKlxgKuJul1j
	Yhv7pz8W3ZBjs6uv9QxQFdX1bFG1CMc+oXLe7RMx9GWFKXkoLC7FrpgATXQWhpQnNITaK09CoBD
	xAfpVGtp+rxoGHtOuIA==
X-Received: by 2002:a05:622a:1111:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0f5fdd314mr3057721cf.3.1754993872358;
        Tue, 12 Aug 2025 03:17:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPkCuR7hKbWLepCftfHhwJeoBWg8LIVdoaoNSaobyw9K/hydlnviqBV3h7JP0nDkYRnuy8/g==
X-Received: by 2002:a05:622a:1111:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0f5fdd314mr3057591cf.3.1754993871879;
        Tue, 12 Aug 2025 03:17:51 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a23fb8bsm2153333966b.123.2025.08.12.03.17.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 03:17:51 -0700 (PDT)
Message-ID: <388aed37-03c1-4a5f-a425-5ed8c4f9cb34@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 12:17:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/3] arm64: dts: qcom: Add Lenovo ThinkBook 16 G7 QOY
 device tree
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250810-tb16-dt-v10-0-0bfed6d75c69@oldschoolsolutions.biz>
 <20250810-tb16-dt-v10-3-0bfed6d75c69@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250810-tb16-dt-v10-3-0bfed6d75c69@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX+ejb/MIY8KpS
 v5p6N0gL44O5/ryMd3nTWY83GbHTw+rv8T1N+WyUxX1OoWZ29xhSj6EPbyfydzMLLiJFpk51TIA
 G/iS5cdqQuiBnY4izVtlKJy+plhwJo7k+frvAZBevQ/VgzywLq7HIywlpQaJaCC8kFrZOsDOt3N
 4OffeGjVwHBJTL3RXgZS3LD3ffFpEoymIfdavhzhNkkm+qvWgbXUD/9HL9mV7OaccFDoTllyuy7
 xn76Od/XxDtoQAaLGUhkP7N4dRIDGHgvr6TA1jOt/RSW1FCrVt3QutnVxLWjN4IpQLdYdVrgZhP
 CT4GzpY5OBnzFGvEFHdAo7FzcUPgq68eBxve+PJl/esnTgNAC/4uBHRoAl+uYb9iebXyJNzTTyN
 seD5rTM6
X-Proofpoint-GUID: CuV65mL774En-AfvX43jmmT-1QCBWUoa
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689b14d1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gxl3bz0cAAAA:8 a=nGu91fQrwdChBjrFTg8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: CuV65mL774En-AfvX43jmmT-1QCBWUoa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107

On 8/10/25 7:37 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Device tree for the Lenovo Thinkbook 16 G7 QOY
> 
> The Laptop is a Snapdragon X1 / X1 Plus (Purwa) based device [1].

[...]

> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 4bfa926b6a0850c3c459bcba28129c559d50a7cf..6b1d71daff5a778237c5e3706aaea8e29dafa001 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -333,3 +333,5 @@ x1p42100-asus-zenbook-a14-el2-dtbs	:= x1p42100-asus-zenbook-a14.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-asus-zenbook-a14.dtb x1p42100-asus-zenbook-a14-el2.dtb
>  x1p42100-crd-el2-dtbs	:= x1p42100-crd.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-crd.dtb x1p42100-crd-el2.dtb
> +x1p42100-lenovo-thinkbook-16-el2-dtbs	:= x1p42100-lenovo-thinkbook-16.dtb x1-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-lenovo-thinkbook-16.dtb x1p42100-lenovo-thinkbook-16-el2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> similarity index 77%
> copy from arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> copy to arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts

I understand that git may have gotten confused, but the diff is now
impossible to review

Konrad


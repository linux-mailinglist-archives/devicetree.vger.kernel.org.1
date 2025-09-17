Return-Path: <devicetree+bounces-218403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E204B7F824
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D46D67BDFB8
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A44301465;
	Wed, 17 Sep 2025 13:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hjg/lh2C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CC72C0276
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116462; cv=none; b=VrWqxfaTLNCfc7oIBh4NB+iD3Da/QG/UuBReH3rqVGgONgjvm23X9jJ0m17V4/V1aqFxyDEHm91TC1pcAhZaI0pyblxtaWVqXRyX7Ga2wzvjE3c/gP3GVwABjUDKcA9XQXlTluZA+VOLXfkweS0B/YozePg1YhT+hxJ/Nmv55UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116462; c=relaxed/simple;
	bh=EGQp1MRtDaRdckxs+Agp0v3ZnZQQydi1Ok1ET00C9Kg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UBwe9VulXauTp+SiMUnhjeboj7jO7YM/bFNxc/Ryu93isaIgoIyPMV+rIumzwJbfKYFWeUMHVmxpRDFiSkbzTJRFsOp4hHlus1Fkv88bYFlC0Z19pFAqVU7ISr3zBCdkiLZjuncz/L6Q/alEBeYZAoGJJBU8q8s+d7/XbyDJx9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hjg/lh2C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HBL1R1027040
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:40:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uZP2ryaTODrIgPU66w8ts5GJRn4q2asi0s3U67c1cuM=; b=hjg/lh2CTsnrdijW
	6F4PyhE9Gun6SYCCnH1eNSAo8BCAi5zfd9rbVj0kQtiXuGYhAOPfXxzhYIWNKkVH
	rNoyKYf8d/xAHhqNBgTezT4aSqxJFS+4/tipE6o8W34nz1d1g/9L3ZM3lcszhRQ1
	sHULb9pfbwNn216Io07Ka/7+6mUzX0bo9ZTHKW4KojJ5M+s5bjh1X2Awwq+nHwUH
	ZQ4pwqL0YxrkAld37EmwnUuSQFSF9RB6h7YCGc3AB5TUnNN+ePzGQjlLYynyRAw1
	rUAxhobXeguLVYEenmxWoKXTBt01yzVaeEPf3hCyNycr2b2JkYn7OZgLes1Z49YT
	TZr+vw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1j8dw3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:40:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso20544221cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:40:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116458; x=1758721258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uZP2ryaTODrIgPU66w8ts5GJRn4q2asi0s3U67c1cuM=;
        b=K9alNgpuBK62p8/tfppUj9I1XaOH7iQMx+3pJk6Yr6gnk3ll1Igzt6X5M2T6R4eEEU
         4UvNkpHOFli9qTMHP2RiVZO/P4p0nmxgZif2xtIcCFgQoy9LmREAHTLXur6RRPcsVbmP
         zify8fQYbF7UBkj/GmB+/iJGehzsFzJ4cKs6nIXlGZpHv/x8KAbossvWILghDursjrzj
         BnbOAz7vS+SENGylr/jGDJ1rUpRLDtB6ajYw4Mwz0NEleeq9m64JFX5D+gYUlSp0kCZ4
         HtEpSJrv0S/eqtu6HGY9c0qPKcHEC53H94UMlaX3ArQVtI32XbSItWWU3CqIzO6sOMNK
         QG6g==
X-Forwarded-Encrypted: i=1; AJvYcCVciR7P1bvBdI/1aXJUpCZ4AXEEpjOxuwiCAPebCzjtUqajMuad6sOYz17coE1d9/0PgCpl1Cj4HFUB@vger.kernel.org
X-Gm-Message-State: AOJu0YwLttDB+azTLlgGzkw3VI23jOrOJGEs/asrUA9kjND1eIm9mU/5
	G9gcOYXS+KTAETBVx9mere/Hx15vwGHFNLNV6+3ArtjQ1C8Go4/5ewjU9kfkFwI0lgpzDnzsFxu
	yRQvFK5IjszfLiR9xkaOtiI87d5IlA9RTfhpl0EBucs5mkSIW6ukl7VnHADUg+ACW
X-Gm-Gg: ASbGncvLTqfY0mEfG0LO7bscvJYrqlFmZ6cP44qm6Eg0zMr7d0uq0QJtelJsIoc/42v
	qwnALpIIO83Uxt4rKESmmtSM9W+dyaP22pfGO/gRsv9E5+0WJhovUdQ+MLKaSZp8bauon71TCDB
	RQMOD6KX1j4sKC3EDjwLYgHB4dsvmWzRF6aazwBugpCDtwO84rgIwn5CF1zE5K0XCaYL729c+Pv
	8B43mdjsZpHkyVuvENRwT2sa42AhQYN+Ouw6W9BGbxuIHMw2ofi2af1ju+GIBHQS1XAPtysZeVc
	gpyMwPqZZfIg7+eo89mVI8IZ1ck4b4FqZNYsipW49nOPRc3RrY6Hady7K6RFzU/3xllEViWf5uH
	BiEFKeQ7RJADMPyAEBsHHOQ==
X-Received: by 2002:a05:622a:1393:b0:4b7:9ae7:4cdd with SMTP id d75a77b69052e-4ba6ae98dcbmr15405101cf.8.1758116457928;
        Wed, 17 Sep 2025 06:40:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn9y6LGOJWtKLeHHI/lFu4DzeuqWqApyHZRrv7JcmDAID8zEmPUkQuNhNoUxGWDZ5xZBVV7g==
X-Received: by 2002:a05:622a:1393:b0:4b7:9ae7:4cdd with SMTP id d75a77b69052e-4ba6ae98dcbmr15404561cf.8.1758116457196;
        Wed, 17 Sep 2025 06:40:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f482a3153sm5597320a12.0.2025.09.17.06.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:40:56 -0700 (PDT)
Message-ID: <4428ea30-7324-4faf-98a6-b18eb16f9fc8@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:40:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] arm64: dts: qcom: sdm845-lg-common: Add uarts
 and Bluetooth
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-2-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-2-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: o8NQ-bMU6EZLiMjaaIsZiOY-0oYLfYAm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX/saYRTC0o5el
 49f2e8wqZ9Sx/yVyT3DEOTiMXDIka1oo1+QKx8o+2dLYAdWr6lDfpRIb6wR/zP3YP3XF7J11oIY
 IcgVDo+7q6rAhegUdyKk5DAH4CBpwsgsSWHJbleKzsuIt3oSLdisyD6ihRWrl5ltr7qVEDBW9Fo
 SCLk1mPpn2cnz4JoH9VIOyuPoOglEJiIUyOvrXlUyytnZpkgI2L1+oZvxET8baUFlvTZHsuJt1x
 InzzOiqJhUhh0iV4SN+tTqwHndHsJEqLts7N12r/8EGV4cnPd3QfwQ3udYCaSn7exyhzNqoQlCr
 QLwJiqQHdrMIZTmW9VYqeNTw/vPHkFo1rvNfbsuTOsgGUksNB9QKbVCQqEREr7KicWCcV3R/9HQ
 dIitZdgP
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68caba6b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=BZiE_1MFHw7nqvKuBP8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: o8NQ-bMU6EZLiMjaaIsZiOY-0oYLfYAm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110

On 9/17/25 3:09 AM, Paul Sajna wrote:
> uart9 is debug serial on USB SBU1/2
> uart6 is bluetooth
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

I would imagine the SBU uart requires a jig or some other config..

Could you put that information in the commit message?


[...]

> +&uart6 {
> +	bluetooth {

It'd be better if you introduced a new label for the bt node and
referred to it by that label here

> +		/*
> +		 * This path is relative to the qca/
> +		 * subdir under lib/firmware.
> +		 */

This comment is a little redundant

> +		firmware-name = "judyln/crnv21.bin";

Is that fw different to other SDM845 LG firmwares?

Konrad


Return-Path: <devicetree+bounces-133087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC769F933D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A9D8189A2FF
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 743C9215F68;
	Fri, 20 Dec 2024 13:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pKW0EyTr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D49215783
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734701179; cv=none; b=GV6rEu6fGSncrOvNwUU5LWSVDeemwVdShaB0s07terFXM99acNWUFpAfPoqEFRFGqrSRamXY21eHLbFzElOL+PIeRI4aMklaFw0WMWSxacy1TK29rgGoShvkNGZvRgDGatxQJ2k6jVcD8NqpoIyaaTlh7WQafQM/ZJ+kF/31FWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734701179; c=relaxed/simple;
	bh=n4pdjIE8wk6+RrT25j2XZ+MN5qzobRKdoai9EioUYbg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DiH1L4kGgeFnHiO1HputmbbdfZ4DFyjtHdu8GW5tkpVu4ZA7DjKqLTOH3dFxpvQi76kdsRlsa+sWKj1aDsuLPh2953Pn6k1eWBVk2iHVLYfQE2FDRikR43NxPm4M34gXrTRzptr1qRaRVx+EwpU7iiZB3NXWpfVM4KAXhckKOpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pKW0EyTr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKA4Xds016204
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:26:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1i0DA82kkn8WuMBOuii7HiTKNDRCyKMaAec5At2Bx5g=; b=pKW0EyTri/sXirk8
	DqTpbTjast0OqJWtHVOIjLeWwU0zch1+6n8TCbafhNcaARUr1tW3SV3a0WCdVkte
	mAjpydCR0lnLDoX9amtfSYmtP0twAEp1ddHWC+yu7J9U5BKCuRKnRRdUla7upPYj
	BnlQnQFOz24VZORjj3i8402+5xnUSe2ReCgZU8YbfzncfeIib5VpreAUiirppin/
	rBvnS4X+5D4N1iXPIH7kKIHAFaKQdr8RD9a1DBA10k7X2OB1Rjg+A2MKYl6mI06i
	wpAGuarPOa6Jh96o1ysoaohtqsxlhFDW9hBxYEwWrzTX+b1C2bMAkMkhYXiLT5bJ
	uWacAA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n6gugfeh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:26:16 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d880eea0a1so5548156d6.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:26:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734701161; x=1735305961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1i0DA82kkn8WuMBOuii7HiTKNDRCyKMaAec5At2Bx5g=;
        b=DQ6bvraSjSzZKx6QRvMlN8JSZv7FLe0AvxLoF+haMAd0P11flcNWNYvIo+VfzacZPs
         2j/hhxd5GZizKfFwiRfHrzz5dFpQ9V+Jntmk2g9Tc1M5xRSivINtnLYKQnu2kAIPSdjq
         upqjcNSmTvhD8MlgwZj1JSJPBBk7WDeL1vUqK50izTkihMhp5TpupGK1zcBSIlBjIy7l
         LoZGblj20LYj3RgLY1q32owi7V5nfEDi1hbJwRvElscFOhIF1DMCn2xjZTtOf6TQie2Y
         C/C23kxzwNR6PqvlSEfPPpiXqXEZl8tnK38rCS8biwQ57TyrKtEWw+bzQmp7Q5jZmiBg
         R8VA==
X-Forwarded-Encrypted: i=1; AJvYcCV/vCBBPPebNL33XELteCkqUdxOy7tBn44fHLEWveCOPDPj8wxWq7MohApFEDOA2mWTk7z/koeqYV2y@vger.kernel.org
X-Gm-Message-State: AOJu0YwFGXYkVP/4B4x3ZeK7QEHKVFkevnxPA8yMWS4l5LV4KW+yvqF7
	ujtR8m1hEdUssAL2dUNSvXjMmKZy2fHGavXCuc409ZS+jQVRG/hSZFJPG1qJL2hC/jg0g9HckKu
	IbMlSPp+cre847vXN07CD8zv6KV8C4dGNhn/9zyUEJC3BOnxUmrjo3+UjJCKs
X-Gm-Gg: ASbGncuKdQWYeA78yPIpxCNbvVQz4CP8cCBHAyDgc+gVUMz2ndUw8xTIwtW36oC3zsh
	L3UydzTmSV97Imu2UBEQcbjhZIQHMCfjQgXZ/vS3S3LRir25IaIbYE3TWHuwbRNQlAj85tto9qN
	cibfoXhwvz+kEQUoFNoRQtKSDGhBGa9/YtZoDGXQBuYLUO8eXCk7PMSqZDqfti0a8f7GE0Ppkct
	S9cCQOSjBw/DfC0Cj/VLKGfe06RQ/YtWrRZ+3TQU14w3evPnBMm6UBGFvoq38N8o/0gb5rKoy28
	ibeZC7g54b8dySnnXpzts/lq3wDvsLbJeN8=
X-Received: by 2002:a05:6214:5504:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6dd2332ec62mr16425106d6.4.1734701161305;
        Fri, 20 Dec 2024 05:26:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkq09EQ0ae97mVq22oeA9jfGWGDmW+Y+xZX/h1a5jnx6pnSBVt7BZ44l6VTdHgTK4Dtqih8Q==
X-Received: by 2002:a05:6214:5504:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6dd2332ec62mr16424876d6.4.1734701160960;
        Fri, 20 Dec 2024 05:26:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f015270sm175995166b.162.2024.12.20.05.25.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 05:26:00 -0800 (PST)
Message-ID: <7d33eed7-92ba-4cbb-89b0-9b7e894f1c94@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 14:25:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: document qcm2290
 compatible
To: Wojciech Slenska <wojciech.slenska@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S . Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20241220073540.37631-1-wojciech.slenska@gmail.com>
 <20241220073540.37631-2-wojciech.slenska@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220073540.37631-2-wojciech.slenska@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0UdvF92AVLEkHYXH5D8tT_5ALWz0ztjY
X-Proofpoint-GUID: 0UdvF92AVLEkHYXH5D8tT_5ALWz0ztjY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 adultscore=0 mlxlogscore=955 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200111

On 20.12.2024 8:35 AM, Wojciech Slenska wrote:
> Document that ipa on qcm2290 uses version 4.2, the same
> as sc7180.
> 
> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
> ---

FWIW this needs some more work on the Linux side, the IPA driver
currently hardcodes a reference to IMEM, which has a different
base between these two SoCs.

The IMEM region doesn't seem to be used as of current, but things
will explode the second it is.

A long overdue update would be to make the IPA driver consume
a syscon/memory-region-like property pointing to IMEM (or a slice
of it, maybe Alex knows what it was supposed to be used for).

Konrad


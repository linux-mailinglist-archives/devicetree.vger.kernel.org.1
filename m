Return-Path: <devicetree+bounces-178409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E12ABBB7A
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41EF417B261
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6398245037;
	Mon, 19 May 2025 10:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lcg6G2b1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5376D26A0A7
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747651984; cv=none; b=jAEPxItbMVTPrT66KGqtFyk/urJ1SlM8+C6FUZQvuprS73x8MwBuxea8IXfFIm30o7vrjWHyu9206vGF8FWCv5DMAZt9KWzD5XptG6LtgUO13hZylk5/LQjibL8Dw1cOPmLijxA4f7R66aGQeRoXVrVcT3T9VBHW6rO8Yu7IMqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747651984; c=relaxed/simple;
	bh=zFVSB/jLkg54QmOKyFRdojrQh6FB/PFpAZlAM3Co3HQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bxvmrgMM0A6+HLlIAYJV3AJzdzcNCaTG91G0GJyangIiRH3RJSiQRmkHHKtQW/OInZNCqhBefEkwjNA9J2B2rpxD+GpAJipTFOf2HDjPzBubvwdgqjgo6pfAg+jDOW7e6ygtWhvFr6rqDXFe+wUMdv6ATpoA0FxtZyNS5rNoejU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lcg6G2b1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J9IMZh008335
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:53:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=12IaN7eBq8hgvdzeUL9X3AaN
	AZFkI4T15f/kPp9SFK4=; b=Lcg6G2b1SOKlxBPjxEhfdQl2ueH0xpdGSZN7PUhv
	+C0Jz8GC30+1yWDiHcsdQE4NwlIu/JrPPQWHHcsIe4IH4qmvB5LH8Ms32BOyU5Xu
	y5xKhN68az798K5T02SAN4+M9AALMbHj+K76Nqkdpve38WmcWjHk1myCEON9O7O9
	Njym7qj3xNWZieOw0rHeWEN097x3Sb7nUnr5vzTS02AZ280bbg3ct3G7Qrs2VBvo
	1pnX9tfz4GRvE668K7rZWTV1HoQrD4MHHFgGPwqwFJwjAaw7tI/0eVWunoqiv/dc
	/bFZaLp8irDiWUS6kpD765SxLLJ+F75rKIyjoCxyp4EqaQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjnym3qq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:53:02 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8e1d900e5so962656d6.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747651981; x=1748256781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12IaN7eBq8hgvdzeUL9X3AaNAZFkI4T15f/kPp9SFK4=;
        b=nPvdOm8E3711LTLoCvqYD14c9ICJJDZ/TSe92J766y7tGVmGh9SEs+YNwyxPiYK/6P
         tugMmJSIDckqH2gMbJaqWMTgXcj52fZUfK5e0yLBEeOQKqRBt1ML5xStdcWx9xBjGG68
         bS5WqX7NeXk1sYINbzyWYxtT2QWX7lOtZFNIWdjGQ5Zh4r9s5V2ojXav++gkQ3iewsrk
         syE+vVPpHV0FCU+Vm02vrAQStl1VomTqDa5Zeol0xBHblnhejjhwvN9Z6id2Zh3hj2Ak
         oxjJGRiJz7iP2Rh9g4j7pHjSjfYKnyEwmzekcoPVRX1qk92r++NpUWWVJ+p7gGPdXZwg
         LOJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1Sew8bvZyl2dIDFXOQKctFf1H7b4LQshZZ3A1zxYjmQYw+irdYiljQKolzdpfcW1Pj+sNhaXhxaNs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs38nWhU8diQ1GeNh8KWZfAsa/s/4YSecBJPUkIBRlO0Wiczuj
	1hC3schnEuYH2IqLIxGLe8dkPJjRfWjqDfl/NP/IBsC5qTkXk6grOCjB0fyAENRkI4snEBP1nnm
	cqe7bvo89+f4yHYL8AMXRZJPq15a7m2IwDZuMxrwrBteVo6x/c1TddDPRbfbwv7Bw
X-Gm-Gg: ASbGnctIRmBornbKPjx5KJq0Q33zzda4JTI9t3ynVVG5C8lecIFUl6SNuUbI+eO6OxA
	MnE+wzhvIrMSS2TcosoSB+KOkAeJDHXL2dSnle/wDgsQu6ihb8+ViGmXBnXnfMp4nYmvL0vLDxJ
	HkikD0XlFYt3aNrON/KOTT80eo2iKMA36w9bcMeMtdBbzjHsxSmn1DYwH1iE6aifCXUhpIr+k2w
	fTF73pVOjm1A/SVaU8YYQeLCSVNf1O6ucYfG5NKMOO5rbdi8HXA5SoAMMax3PhITrr8YN4grvp4
	ojjvtkq5r5aAsj9WavN9Bd7ixZHhMITUFScvbpgFIMMaPmmt0p6XHFt5R5Nn11dRZFFyTcqEaV0
	=
X-Received: by 2002:ad4:5cca:0:b0:6f2:bcbf:101c with SMTP id 6a1803df08f44-6f8b0902242mr200517536d6.33.1747651981305;
        Mon, 19 May 2025 03:53:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGosXbIBhaFmJ6p5vH35mNxV1xQHFesDqXCVMHgt8ntxYyGnp2tccv6lOtEix4vLMhGsix3iA==
X-Received: by 2002:ad4:5cca:0:b0:6f2:bcbf:101c with SMTP id 6a1803df08f44-6f8b0902242mr200517296d6.33.1747651980961;
        Mon, 19 May 2025 03:53:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e701831bsm1809899e87.156.2025.05.19.03.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 03:53:00 -0700 (PDT)
Date: Mon, 19 May 2025 13:52:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: Re: [PATCH v1 2/2] ASoC: qcom: sc8280xp: Add sound card support for
 QCS9100 and QCS9075
Message-ID: <ni7ww76wwaxx63ikqzvrjaagyfai3dy4tm5aohxgltlrk4yuuz@h52leppsesd3>
References: <20250519083244.4070689-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDEwMiBTYWx0ZWRfX0Vm9gVY7BEzm
 W+rkQ4hh5QWnF1tJ/VhAWRqbzDVKJu4sQPSanz45KXlaKjDTPWahJSwnh20teUEPykJCxwci1Fx
 NEqvYpn3A9sV7O3tr4ipVPBbN4eW34nTlwfQDCqkV7wM9Tin5xy3mpbBJExc9ZM1+MIyQabQ1Wf
 pLJOb6creuD3h7J4yRO2tjbAn6lGnzwr4u+MDPHzonAAyLuRikcuMJr4VqrpQfeZyjuZvSxDxUv
 vFcWlR+IruRzlzo+BsHBCiaTHj6LB+yfdoDYqELN+0PV7E7RaYBESPSxKkUygIhl+xJtA05aVBe
 uv5TSWyoPJrj8tW116b6J88M8ZWy6fYYJ1RWmDWZERsPPQHlvsnLYUdoxB9Uumom/YTPxT/l77i
 ivFJpU9wn/vPja0fO8hOvH3Hl31UXBxhtDtUlbYSMdDpkEpyCJlqs51wSOKhzxq2R4eQXTQQ
X-Authority-Analysis: v=2.4 cv=Z9XsHGRA c=1 sm=1 tr=0 ts=682b0d8e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=IAa2Q9qSwG3VCOmU5ZEA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: yXRPDO_8GW_HUOvtqRLCU5k_-i7oEiXa
X-Proofpoint-ORIG-GUID: yXRPDO_8GW_HUOvtqRLCU5k_-i7oEiXa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=691 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190102

On Mon, May 19, 2025 at 02:02:44PM +0530, Mohammad Rafi Shaik wrote:
> Add compatibles for sound card on Qualcomm QCS9100 and
> QCS9075 boards.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>  sound/soc/qcom/sc8280xp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


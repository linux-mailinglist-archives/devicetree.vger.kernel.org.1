Return-Path: <devicetree+bounces-187301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47903ADF737
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:50:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 085173ADA0A
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E01D21A443;
	Wed, 18 Jun 2025 19:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M/heW6ey"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E893F21C192
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750276221; cv=none; b=pntHkhRSJ7ICQ+RboFqwFl8ifNV4v1hk9nLfPaI2wwSm63ZFsT2FscwBH/RMutd6yFjkhcGGtfHUkrHoPfaZKK50EgWa23xVbh1M7OCRQ/+oCKkIZjUY96maZH+EIHsvpgBumqZg5HeBpl6MeaIIoZrTjT375IBQe1VXRGVIQdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750276221; c=relaxed/simple;
	bh=ohQZorVYOM0YtCJqiJcBa1mft+MNoH3QhgUQVZcK3Xg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zz9S+0iFXW/p5wzcTwduvK2I/TFVT1yKqGE4JDE1AbQEPitc8htyuEpeSg0VTOVJSzfg7M0HlM7RKEltsa1NKV1omBs9N57bIWp+os4duHwVQeArVfB+3JfNM3oyzO8XJFWdDnsxDhomA5XpD/P1Xc6rMNiGgb/UT8XW5GBMRW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M/heW6ey; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IIrsfX009934
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+Ljc/kXCXngRvy5Fgg33kD8o8huQROVV7GWykDyAjSo=; b=M/heW6eyenmG9NGp
	URO22lJQ8+l2FJG+R0JKn/SeFgIT+6CviqwDppRt8KF/p4plmmyRk+pSbI4MbyUB
	rlPdPPRXp8RXN2kF2LosHP7T+vKycy0lhU+Z5Iypw/CGcXuKMsB1pfHGUnqrYBfK
	2hKoAtokXQqHMvEPOsiWlj/Q6RLIZJX0bsx1cjYSow7Lie1BntDYcfyz2YCi/mb1
	C0ubdx5YqFSGoKeLbUpxSxrsXJfX3UwBblwo1JLlNfKDKOAPGr4YXbhJf2MHujAg
	8jqNbg7UyNc+qql3cn/c6vzCCCO4rVe3OrBqLweORAp+w3ZZbC9QXa5Ol2zRCIGw
	oXSmog==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5v3xm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:50:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0979e6263so380885a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:50:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750276218; x=1750881018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Ljc/kXCXngRvy5Fgg33kD8o8huQROVV7GWykDyAjSo=;
        b=gBmwgt3yQUD+PFfw+Fzep0R0zJDpggtbMP2udzLZWxEghSyNg8ZPZkK/JNmrQY1I1G
         CZRapu/jH3eh5cCOfY+gR3vEiKPM9q28RRjGMtNwqOdzcSRxp/PFSRherTRuxOLaM9D2
         +U1HZo71tfADVX7aZF2TBd6S+SVJHEysH4il2bBlZlwYeoZBtRrRnqZ2EgGywtRCNH0F
         q52qt3RgXUjPI0NHku+STowpn+PFkRJ8iAP3TrauhP7hC/y9rAhsft9Ytmfslw53PyCH
         82gs2qcnYyb/ovHD3K/cree3coOm5OrkBqQFJknmspdhCatBorY7Gun19VP8dZvN4W2+
         kvaA==
X-Forwarded-Encrypted: i=1; AJvYcCVTAZNv+L7ipneUcJ49WpghW4iJGkg6bnQr3xvOBYNMJeYJUKt7b2K6Q02w42Nj6dFZ2CukRaMbw4Io@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2h5pK+vCQme1EnkJLz70pHSFF2dw2phgR0reXb1OGA0S15ka5
	qos6RHavGUoEWFSfTHfNr8Zrj39qFCpjs4EVN8vv9kv/gIyvjn3zuCWeycu8eA0mBfvlVzPc7ZJ
	NnOzlpSlBFn1xs37Q/ByUSMzzD0y00Cen3LLIQ5bgZBB6Wy7HyOmfl4f75vvW1qMl
X-Gm-Gg: ASbGnctyTRGsNNl9QgdcO/QffTh3j/ZmVj58g3AshZykmBxCc0d0J/ie6gB7DPRQm/W
	OtjNhaFLyH4WpKisC1qqIPjh5moiewEzVVI7lrsi1uZFtqTP9sx81KTf8C2J/c9iLEedEwaudyf
	2bN6YbUkk8OkmybV02SQFhP0rQpTt3x2t2cGMiKld3Q7TOQnxrbfERm3w3HbcnnV299PcfwrJDk
	jSd7ySlDfHFA9dm37sk4/WZBYLXrcicaTis3daXCO2jE8oFTogxWRjPIE2Z/OUAdBVkFlrgcZq+
	y9B256AT/oxFUFAp/bOZp8EYS+y7TmdocGJD9shCrELyD6DSiXU7e4YXW5xR888GV+BP+cdFxoi
	AYvM=
X-Received: by 2002:a05:620a:4710:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7d3f1b5e5ecmr37443385a.8.1750276217787;
        Wed, 18 Jun 2025 12:50:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfcZRcccmShP6R9wCLOiDGb+StS8GFq53kzUdhUK587RcojJ2gKh2k+QUntxieK0dv2VRsMw==
X-Received: by 2002:a05:620a:4710:b0:7c5:e283:7d0f with SMTP id af79cd13be357-7d3f1b5e5ecmr37442885a.8.1750276217384;
        Wed, 18 Jun 2025 12:50:17 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88ff270sm1106349566b.77.2025.06.18.12.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jun 2025 12:50:16 -0700 (PDT)
Message-ID: <13431db8-83ec-4fed-a6e5-3a6d173176ef@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 21:50:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sar2130p: correct VBIF region size
 for MDSS
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250618-sar2130p-fix-mdss-v1-0-78c2fb9e9fba@oss.qualcomm.com>
 <20250618-sar2130p-fix-mdss-v1-2-78c2fb9e9fba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250618-sar2130p-fix-mdss-v1-2-78c2fb9e9fba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PnmCEl4-DjFgnqGYl6H0BfBGRkMnzHuv
X-Proofpoint-ORIG-GUID: PnmCEl4-DjFgnqGYl6H0BfBGRkMnzHuv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE2OCBTYWx0ZWRfX+9VWQgo0FZLR
 +NlDweXKHomeqxmJDUgrtCINhRvG4Pxr+mKcS5L327KIArL1JoWzB0dxCnoVuXYW6satKowGwRp
 DM9wJP/EU1jYt7MN9Q0hP8wjBmv9lMO5S2lBdOaCdhoNdOjYLMg2aa9JmbJdDz7em6TSqTh4sDQ
 bhrUzEPOoj3NOLYRT6Pe3TDaRUuhOLwVO/XfOynJC9rXci0yd50+JHs6B8nJemVULZaXgIpbKbm
 VWOwTWM+L0WRhVxGLopKoqlYpdf0Jc+Z5SXDMjmKiN26cV3+W/6tSQHBifHWmTtuNqwzlNXlobI
 cgFb/TcLUTvBdgSBtZ6VSCsnFMXbdMEWX8NOsPLs3JY5ESBXwcfGc3Lo1hjK1MkZ2n2xmM07Fy1
 SXpB01seCLmuGMwQu+QoqH/erYCMhOhc7DCcPfWlqsrKd/ORQevee4PkW0yQtkGA6mpf6MUO
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=6853187b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=JF0wo2c6fDunmc63d_EA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=650 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506180168

On 6/18/25 7:49 PM, Dmitry Baryshkov wrote:
> Correct the VBIF region size for the display device on the SAR1230P
> platform.
> 
> Fixes: 541d0b2f4dcd ("arm64: dts: qcom: sar2130p: add display nodes")
> Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Closes: https://lore.kernel.org/all/c14dfd37-7d12-40c3-8281-fd0a7410813e@oss.qualcomm.com/
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


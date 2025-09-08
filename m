Return-Path: <devicetree+bounces-214489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE30B4949A
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 18:00:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EB172080D6
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 16:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA2BC305E08;
	Mon,  8 Sep 2025 16:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OR4rNB/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624CB2FFDDB
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 16:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757347236; cv=none; b=FcIginhElKJ5ZILtFuWauWWmPdEX/IBjNtZixgJ+0QHpNCI9I1YrZox3558ezpSnzKRRRl2+vDW6KfY/pnUtRGOxwy8SUk/ehR4bgurkgfG7SOFpyScD9i7RUMbPaT2XAVGI4v4XbxBMxttph8I6oJc4mcrQD4dqgRYI8mAFBBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757347236; c=relaxed/simple;
	bh=hUf69ei8+oxGPKa9Hh2o6rXQ9Bg3n+Tgs/uT7fTz0Gw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Um0/KTLstUNylB5AZOieQAasxWbpMXivc9GrDOa0ONkioRtbTs2HMRfAlcydy0KNdGPJZFm3GvBTUlzG14WKYPXuPi6TEB2j7zG++XaS/IJLGoDkcbLd9TFG7LyLRNg11gqey2fh1OnmTiungRYDqI/T65TDZt+kLTTJov2Tr68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OR4rNB/D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5888wZQ8008832
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 16:00:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xc0j/77qsOdE0gVrqewVxZfIulHPYV4m7E+uvvmVExo=; b=OR4rNB/DiTh4OldM
	d3m+n7LiRR5GMwtNPs7RljCjkUGi4vMkRfbjtRzkNwQtDYK/DKb2uV1Ba49TLdr5
	ddtlZOtDAhfldbj/uocjYnQFycfJzeREUDPA9a9BMPrDSzHJt8lES9pebvsFcen8
	Qh8ZhyRIDma1Z2ezbBq4lCW2WYsjr8QOX3fJcQTvwKvbWRB46qgr7vVRAMjEWisp
	0r7hHJZORNPlQuMU9jo/6Il5wQp2DK0fyT3Sf4g8WePveJO3CNtZsqHTvRD+dT/k
	dHzO82BMdg5fG7GJ6eTozjNfcgHsTDmDCOxGsEH9X7TYv3M2eZPt6fDUVVSRxQmf
	wumztg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0n4t8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 16:00:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b6027bf032so7602381cf.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 09:00:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757347233; x=1757952033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xc0j/77qsOdE0gVrqewVxZfIulHPYV4m7E+uvvmVExo=;
        b=a+BqtHd5qDqnR9sdaHMVxQu470i5cn4P8wG3XibQysY9pUq9alzqTHikoqg+0XEmVO
         MHQn8M9qX9rtVMsGjSfVJ3NK0xkwF4AbC1FC7z9aHARa9bZgXdRa27JqRukBVeu1+61p
         tzsD9ukj433B4dnwSL6rAxWj4Wer5pvSAv3Zr3lExrvQGrsFC5K/bN30++leZaBdjlUd
         JHnqOgtKAzjvjBLdHktXfpXdRUPoytx9KcOk9AITnValSJw/dd7da8Y9O/sNMw6b8I//
         k5qfQYZ1R8z+4OseTvnuAOLAA4hpay0rR3eXEp49+hT6LpJxSdSXKew2XaNHKv95/ciK
         WFpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAfFC/7oruOS115igJyyrdg94Y08jeiYfHtFayhQ+P21Kk/NNeqVabJtrlFFOE4KGAtluJnYpV5/27@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2XJUHkL0IsYob//8izWTn+u3bQMGc2R8P2mbeLo1b4/SS1BNp
	n5zOxL0unZS8qtuOzLX+4hVsnIAV/6U04c9REgZEomOtk1wh5ohQEse8lTo2k7SHd7v/EV5N9gw
	5hiq5VDa6IeIYUJQeoE3jTR3xIkPPD+K0fcx8fJxLKxtSch4T1A5utJAsxnruUURN
X-Gm-Gg: ASbGncsI5Kt/aAF9/a9VMd6dnxS0hDMx2qogF9AsjWjyiovyREto9WMzC9IfwCuIFUL
	Br7tVy5ijGoaYq7zkFSHnXJQwsFPmR9uC8VPm6FTz4rOU0hMoa3kMitYxzsQDl3ZjaipsdC9/eT
	38oI3b1+ZTUmBo+T0TPhq9ymXHcuwDSJvh1ug5SMQwveGYoJtQDi7ez67EUVSjsYAmMaOx5jT0p
	a01rkMrSeEwEjAGgpFbnR4uE1IgCvczOM++I0EX2RO7klkto1TGxD18ni9Sx9JC8HkSFa3AnDBf
	S8XkjGr1rRSCIX1swdHqw+595of9ZJ1x53BKwIEwbqIfWPgy36Zk/SyvEjNfVZO6ThSZFuDIwPZ
	tZR9gDvhLla1kGJKfa7h/Uw==
X-Received: by 2002:a05:622a:350:b0:4b5:eb40:b1c4 with SMTP id d75a77b69052e-4b5f842e182mr68490361cf.10.1757347232833;
        Mon, 08 Sep 2025 09:00:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUGKT4VnKZH4NpDMrzjB7IPxdNCW57On+HkFQgeAEe31+OJFi1cLKvP2iWscgUTS994/45vg==
X-Received: by 2002:a05:622a:350:b0:4b5:eb40:b1c4 with SMTP id d75a77b69052e-4b5f842e182mr68489611cf.10.1757347232058;
        Mon, 08 Sep 2025 09:00:32 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b040f1cf4b9sm2132882466b.29.2025.09.08.09.00.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 09:00:31 -0700 (PDT)
Message-ID: <9e1e68e9-8bf1-4529-a2c0-3ecb2474d8d1@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 18:00:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] arm64: dts: qcom: sm8250-samsung-r8q: Move common
 parts to dtsi
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250905190931.27481-1-ghatto404@gmail.com>
 <20250905190931.27481-2-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905190931.27481-2-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: C8GKihigTSzKPsqvVTUsA0yjm8omW7o3
X-Proofpoint-GUID: C8GKihigTSzKPsqvVTUsA0yjm8omW7o3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfXw9xybAZzYHwv
 cZvhkwFKLvNuf50Ydfbr7toAJKAtI0jQVSGvC+uS6Ly+gfBYE0bGXvvSOk4QPBqnF8YZpuayBPd
 fYQklPJ0RYgPOtMeEUPZuVyh3aC72ly5vMYunYRv7G81RkMNEg+H3RvonUr39BmZ4ld6SeMk0wO
 D4E7f0cGlo9SCJlR32bEM8PxqGvmbDZzjutPvoNeo4VT3ER4Oi0hBsQsuLMJed4IZqnK58AU1cc
 KafsLmn4iD65dvs8NBSkWxw9dJJFEqPv076nAJTLzSfknSVDeN5Er+pTJ2190X0ZE9QwbEGJBSo
 6Q0qHDS+zE2lgQCxq+qucrZpI2u8lJtUuTD6Knbbks3bJNAFEU8msEBDEQXjT0qfAUUq4LrWgB4
 m4EXK0qO
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68befda2 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=pfkhAzNcYGw44Ndwwm8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_05,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024

On 9/5/25 9:09 PM, Eric Gonçalves wrote:
> Move common parts of the device tree to a separate dtsi in preparation for
> adding other Samsung devices from the S20, Tab S7 or Note 20 families,
> creating sm8250-samsung-common.dtsi. Also add support for UFS, USB and
> GPIO keys.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

FWIW next time try:

git config diff.renameLimit 999999

so that moving code around will hopefully generate a smaller diff

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


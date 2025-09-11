Return-Path: <devicetree+bounces-216022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 887D3B536E5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 17:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9DC83A5A61
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC379343D85;
	Thu, 11 Sep 2025 15:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XEipPzJn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4E7327A36
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603087; cv=none; b=Gxjpo4JFhiq1/HC1F2acVyCNmWMJo44NgUFDY7lZJojTruPikekaF2duWBC9VlIni3Qg4AcAK8zA7l+r8ff4KITuPD4Jkqi+qKrb2fIWWWmK7mFEnuRhEwsaiiQvK1kdV5iZ6Hbb6OKyFpj53JKIenyKG5/9EeeEQlyKG6t2UnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603087; c=relaxed/simple;
	bh=4YrZyyB8Rfh+T+OQdySIWTJZ0Z8Gm32c75Hx6y54/Jk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nd3Ho5HC673NPp2YMX1w1PFuTo/dQgR9Q5aM8+vRhlpItMFmrG/n8naFtXokkY53p2eNr9g/Be2EvknFS1uOyMCHaA/Y+vS0JNUAd/gVEopyRIBP8do31KXFxGHYMiPgEPYg4wPkfVeEaAtXsXCXqrvIU501So57YIUCX57+RPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XEipPzJn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAjaIC006616
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:04:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6FKGH0QcPq3zUDyOCCypdh5UbCID7mN5vXsMYkcjroE=; b=XEipPzJnvAcMMuSp
	rQ3ee6JkPG3R8DPRaI7rTSrrfrayqYsM6hwMWsZfks66TdYvX/cx4bnBGuROXhRg
	vot5BBI/Fs1CmMWqS7rSc2e/WVQqmYqLP6hbJPuX1jn2A7sGP1fr5+Q24xFUVQxt
	Qp+DpKkv6bjRzSmeToebculihMnO5yxbEyHTo4l7eiicZiavfJ3imkGhX3mtaTOq
	m0gPy8oZWiLBDBzb94AQ7EZVMvg1cLFrQrnoYw4Wdq7oKCp4j5Z+yDqkl1OsKXbI
	jS7DthkM8CUeyLTHuReci23rdT8UgocSEzDSHvy2GLeu+MKs7R2E5RnlG4ykO3W+
	pLZwIg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2c94s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 15:04:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f15a5f3dso549001cf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 08:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757603084; x=1758207884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6FKGH0QcPq3zUDyOCCypdh5UbCID7mN5vXsMYkcjroE=;
        b=jFt0XC7NNqy8yJ+f4Kf5nfbrhfi9qtJnD5EMZscGzVPPoybwvU1t2X06VXcNSvpn5h
         UavXJJS6lhwNkeSqvstHFnUmgTW21kuaOijTpBw7ZTRIJLSXja0qTVM6cWag6U8n4qZr
         CwHTJ2X4/VkYFQoH+6XkxVG3SQrz8PaMlQ4p55XjJJE+blRALcp2DZyNA55mQhJknlkd
         CN2TIMHVwlreU0TViTzV3AX2GBiHAunxJrNdX7xHUo83leBfJiMfpzXSU7h3HFsPHFb4
         +0EmBYMPkjQlUCK0KOxiLYpfEQX200dtqDQ645qWJwXrofk+2Nt9jp2Lv6wwMh7m1Xxz
         5aNA==
X-Forwarded-Encrypted: i=1; AJvYcCVaJvahAOtccEq83JnpHDIgdG80R7O5JzA4u76ofTCq3sqWo0peEGFBczZ2oLLR1KUk2bRNLtE/eSRT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzspstw1wCdqoPJBqEAE610PNxezvQfy3JdCazpU7iuGB3q5tvH
	oaEWzjiQP3F8Q9rcEHVBzOo0WXHOiHTeKm5nDJDdu9I+aZg8EB9W9gBLctQtbC4b0nCWAUn0f1C
	+yDNS4SGrqdNS9UaKUuY1oAfa8ktpq5Jd88apGKkeO9NRWMqfHAaxuNn4nGl6wTrc
X-Gm-Gg: ASbGncum1d80HViwSiRS9VwRGxbHantOmFsEvA0+Afm4/BUAS3aOC+C2GL2PJp8kunC
	l1jODGf9OjxkJHaWTgsFYqE+WCvhG+InDH3s57Xc55Xc1ByAgpQSG0r2AmkT/Ewrc5Ta6iK0lU7
	mb6AVnas7J9vaMuRQCEx276GSJBW03jXBP2eXGFCKdA/XYVV76ybE9OEmjF2Lm4NtykbU1zqkuA
	I6HSqIp4UJ4yO7TUbetsZnJfw3EDZh5TFoG+VkjeU2JDluRR0QIelyeS1zBSwmUA7qe5QBcvpDH
	RPQv2TmJ0C99oIDzzydTv7AezyF3HVUgpy5tmTDV6W9jQdte+B84KXxAAcByOgfJ0+727Zcw1Ay
	eJq7ORtekN3m1dugY+z0xPA==
X-Received: by 2002:ac8:5f14:0:b0:4b4:9175:fd48 with SMTP id d75a77b69052e-4b5f830417amr151528371cf.0.1757603084226;
        Thu, 11 Sep 2025 08:04:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0FppMif3cYGizhNCQ1L/ibDbAQ5mYytEfu5gYANTSlZP+Xwy1nadB0B3Hzn2U//SYcIlZqw==
X-Received: by 2002:ac8:5f14:0:b0:4b4:9175:fd48 with SMTP id d75a77b69052e-4b5f830417amr151527391cf.0.1757603083289;
        Thu, 11 Sep 2025 08:04:43 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b317124esm149966666b.46.2025.09.11.08.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 08:04:42 -0700 (PDT)
Message-ID: <53f1e121-302c-4b35-9dad-114d16c2a9a6@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 17:04:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
 <20250911-phy-qcom-edp-add-glymur-support-v3-2-1c8514313a16@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-2-1c8514313a16@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c2e50d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=c4sUNlcVcd6a9V-9oyAA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: yRnBlmHidPwPE_SkmYx5IbgDSwLqT6Qw
X-Proofpoint-GUID: yRnBlmHidPwPE_SkmYx5IbgDSwLqT6Qw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfXwWcSltvNzloD
 R29BDw0qu5GBtOOnYJZlbrB9G4RDt0buf+Jv/xaE1hhczuCCfb6eTeVLG83wkRHjcyGkXF7nYgP
 kJ0EXRAMk+9I4Y+d4mLalT9mTuw9jGUNe1IAAxnw1hU284j1pj4bvLsZdfv5FKdzgEcVPNpHdXy
 0g4YLT8ecgLb/GJxZm68V2974cO+8XbnEwJJOalLLxWHMzZODAM+doCLFYvgGtTSAfRlfih+v6S
 j6M4NCBtX6X/EyjjsMyrKtTq+Yde0BoN7IuI6KJQbGVDUpeUI2483XOzWPeKarWWtPjmUElTTB7
 +K3+WFveX/7uv38JEupoNJaSVSuPbHSwNcjYGUXPQ2gXGuLwX7xe86YKuQjxL4eSFRsWeDY8Jy/
 ykic38iw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

On 9/11/25 4:45 PM, Abel Vesa wrote:
> On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
> registers. This hasn't been an issue so far on currently supported
> platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.
> 
> However, on the new upcoming Glymur platform, these are updated along
> with the rest of the init sequence.
> 
> So update the size of the array holding the config to 13.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


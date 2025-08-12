Return-Path: <devicetree+bounces-203635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 625E4B2220E
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F279C18C5DB4
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06A362D97B1;
	Tue, 12 Aug 2025 08:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YLEHxVhM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6F12DAFB9
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754988511; cv=none; b=HVcHrk83cDTlDNAbK/ZMEKpqUkbqcXzrCiQOvJn3W1Mp5roksv9BRgrh2ljljnLBa9QelowoZGzK0RUhoH3qDtTdORzLBA6EMeiLGbxEiUZEnqCarEBlLdRb22fHZh4Tv5eTh8V/jJRTpgCZe61DSy+5uObInRnNsthFIjQZh18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754988511; c=relaxed/simple;
	bh=bIaw2FNK0aavrRb6Xybh2kRuBOYiqlu0QUXQh1nDLb4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AZyXHFBTssdTQivp8Sg3qQBtkzRFmcB+4642JvGbqEJatbAiH5dRPIKHm0H9y0I9S8DubBt3UEMcVmn74OXdz5CyVM8AFMrgOdy8hu11Uf2TlSqfn5DxCBDpNMCwkgQ/3tNjpTB2pLmPDIrVCsEF9qLs32fGRcA4U5/RWrHDFlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YLEHxVhM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5Xk1F030288
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3yei4bAWRTPlfjD9mJuCaf7V06gKwYYP2mn0nNjJIEY=; b=YLEHxVhMXGTLrKTB
	6inOCxhPCCG+SwslG+L6YC/DWarJSjoQ3ARSNrHSqqKcvuBuVXbGdY0Fa/w17uQT
	HdkJNrP8nK72Bktbd17izgld1oWf1sBqeF0kgAU2luxubb/nnEAmC3gg7IIinz4n
	rsEIYDoA9QSlOFVI6QkUJ0VVL0+rVu0gqPykJkxR51+Dbia/SbkrkycmHD4J5Q8T
	IT5MywbWbgzHKUZM+rlhbgDYihBrNlqiSyiUZhxCY1nlsylhYMPsS0r590Uz6p5S
	Dk2VKu9bpysH/7OlXpLPUwI9Yu0THLgLdKnAI8zw/y1KUpYlY8eKLSQtlB/CNUkK
	xUEO4g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmfdvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:48:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4abc1e8bd11so17636421cf.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:48:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754988508; x=1755593308;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3yei4bAWRTPlfjD9mJuCaf7V06gKwYYP2mn0nNjJIEY=;
        b=o+eUHeJCK1Bo5QUJie3gOcWqO0AWP9zAxa2fo6eK8IrXzKfR+uu6oliwUb02B99KqH
         xFsAaxHuv/rudNtzgYW6R58n0bJgD4D7mh2O79k2Ztp6+IDaaiTyDMDEQj342OJ9bknj
         CIZ0QtUfXFlN2goiyNm7tdA3k8s1q2S3qluIK1bZRt6yQfSrJC6ZD8oyEgJ/OUXaNfmQ
         luOzjH16qfD2pQbmHJtabnOg1PuJuX9/TC4KldAYy4XXoA3SENRXHPV7Bl+6U781WC5T
         R+r50Gcatmqm/7jBBB+u0kuNh4bXLvZaI0qh3M8jRc12g4c9edEPsoamPNaUVg55ejvI
         ubbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVK2kVuci5QNlyhDM3uEhWKc6P6lmyPDvLdoSoMVBbCAOO6oEIg+vzN9kkpHrYos9zORPa1fk8PyvcX@vger.kernel.org
X-Gm-Message-State: AOJu0YzCJLyZ2mhSnq3oujHmjdYagRPrXH+LUfJA1FelNI32qVDvxad3
	po3uRm6WpUxj1Pshc+JA7gRF5vG3lMJqvPzUFKi7eJK1fhhc80GsGHTi3ceQ6cwqvwFz2ieRW1K
	zHD5rl/1GDEovneWLlkjJd8BM+c0ZR2ibJBKm5dL4Vs5DO95VaUx3Ilz5oDmgwmDb
X-Gm-Gg: ASbGncs/M6TJ+Cxr7HHUab0vG2ApsfzjvERWNsxIo3WuyTFxho1mloGUCOrBEJCW/j2
	fqFLg9T5Js1X4snYd4QhMfXWcBCdQyrCarodaMNRrh2Dr74o9Hn65HBnUpWH2RFHRir5U/ER3vX
	CVPxNakNLT4ULnc+JRFAN2qxsieSaHSbtp4J35MQ9pjUaEY6S9+RBwA1+g2L6Dcp88Gdi4E2M9M
	ngKw9KmUu4p7FiQaIXsbOfwoc7xm2b7oyjCumgLiBbpG/XBqVnpS7C8LECVtVaRBSqble9/vBJr
	p6FzbaGD6PZCfXVTY5rxIMk7x8c38xCxDxxV7XsUVbt0w9S/Nw7H3iAQi5Rw7aSmhoUuMoY+geG
	loNsI0X9SjRwaXl4CTw==
X-Received: by 2002:ac8:7f8f:0:b0:4ae:73dc:3896 with SMTP id d75a77b69052e-4b0f4abde25mr1977161cf.12.1754988508333;
        Tue, 12 Aug 2025 01:48:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG49SlooCoq2QbTSVdsPIBo36eilKODoBGFzeYr2YfN/S4e5IAMokZikrVjfKkfSBp8TpMdyw==
X-Received: by 2002:ac8:7f8f:0:b0:4ae:73dc:3896 with SMTP id d75a77b69052e-4b0f4abde25mr1977031cf.12.1754988507544;
        Tue, 12 Aug 2025 01:48:27 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0753f9sm2178410966b.20.2025.08.12.01.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 01:48:27 -0700 (PDT)
Message-ID: <61a781d3-eb4f-4c56-8873-41c95999630f@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 10:48:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7280: Add MDSS_CORE reset to mdss
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com>
 <20250811-sc7280-mdss-reset-v1-3-83ceff1d48de@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250811-sc7280-mdss-reset-v1-3-83ceff1d48de@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfX0M9T1pMUG7qE
 +dBlie9cifuZJ5cukvzAsb/lnfxhNmazUa7MOSsV4ZA7ZR1C85lWQuoKqhIPbe8NTAYcvBj9in9
 6lBNOlbU/93iJXBmVFv6SumE0D55v4T/bBBFRYN+RQJzGKlcebnS4rfLN0l+LZ3HkxTrY+wyA9B
 YA8wpiHk8ck3SS6Or08tH+XS4UzoFKw1x3GJAu2NBUKv8nmyGGScOGpWW0wJafL4XC53TE0insp
 BTY/xMJefn5r6mM7hfpHESKee7NtYVgkM16aWuzD0iy54N37UiYaqy7F2KOwTs4OLX1Eov/462N
 Z5vpe+edX1szGV7VWNZWbnMRLC83EXBa0KyOIflsY6U1uJTKfM/RS0GoUtuLN226hP0y7m0TOZ9
 6wZm6QhS
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=689affdd cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=S_9igCkNjxJcElqm350A:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: sO8XXPw8Pc3Dn0zWRp81kbuCg6twYnhp
X-Proofpoint-ORIG-GUID: sO8XXPw8Pc3Dn0zWRp81kbuCg6twYnhp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035

On 8/12/25 5:11 AM, Bjorn Andersson wrote:
> Like on other platforms, if the OS does not support recovering the state
> left by the bootloader it needs access to MDSS_CORE, so that it can
> clear the MDSS configuration.
> 
> Until now it seems no version of the bootloaders have done so, but e.g.
> the Particle Tachyon ships with a bootloader that does leave the display
> in a state that results in a series of iommu faults.
> 
> So let's provide the reset, to allow the OS to clear that state.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


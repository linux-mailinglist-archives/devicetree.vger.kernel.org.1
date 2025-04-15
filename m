Return-Path: <devicetree+bounces-167249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4E3A89B1D
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:52:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A147017383D
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C825B29A3C2;
	Tue, 15 Apr 2025 10:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KDjMRYMU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5709F28F53F
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714082; cv=none; b=J8IOIgFM61fXtJynBb6/pl/zrqPb42FteqzkZCnlCyXHqCJ4CyEOkStGhoBheVErkdMRMlBt6sN1G+ZjsTr9iU0NHNkAqsGMKceRUNhKkaH+0dK9twdc8YjvoiD8Lej9mtgs2U/UstspHy3PtYtiodeMAqxsyL6c3nrFKYgJUlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714082; c=relaxed/simple;
	bh=0LEnKeuoJmhEiQP1Qg6HuMLQvWZg8sLSX2wfLEdLIDQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wf+ESk4YvOg306VjwqjSpgQOCgdEL+3p2C2GWCaNMEtJ9i8JSchiTnm5QgHUlShXf0NFQWI3fchM8zLfUyHoxC34SEgB+oLOlzqZ6ZI58ybhetSMuOnuLx8bdy0FYQ+aq+N9YDacszWb8F3XWqEcFp0x9i2eB3kfAZcs44mf8Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KDjMRYMU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tF5h018871
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NVoKFr3j9LUHGKgglF2+6o+zU2ehLL20G1TS01r2k6I=; b=KDjMRYMUTZoovRaj
	xfoFjwIF7dZwALA+TOG36VZ5Avw8DXUuI3wvljwX1CiMcyDrIeXprNl1q5nBwZqK
	anscSvvyWu3lXFA5C6/PXHWoWGVnx8kIiOSUyFIOVyD04M7OGFjcsExfhEEcIJlH
	4wR82Q4lQxU2/4i0ChoLv0CWzq+Tkk+l/PULt2xAL5YFhesnOKt8piNliFEk7R5i
	1x+ReBchusqY8KMkfos9stzOeFwHzxEcaP0pEdYsGTerLhUkI7wmub0yjrC54n6O
	D1yO9XbkscKkM7Ln7T/04MUA3GAQpgPIumo2TOUHhQGXMedPgG3MEPi/S8CA4fxD
	+9q8iw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjfpra-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:48:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5530c2e01so64519485a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:48:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744714079; x=1745318879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NVoKFr3j9LUHGKgglF2+6o+zU2ehLL20G1TS01r2k6I=;
        b=aRDIusg3/oItQv8FGnlrzdupx+CNPlN8WEvBkC07WoRlEmZtp41pYXJGoOnsjinegz
         aZItJdp2K294WxyCgll+HA0Yf+DvCzF3jVUIpoc62OgIrMclw3G2JlTj/Uysmvc0hB1I
         QCzLegea7QEAWZcwuDGnKJ/don8RD3eDVi78AGuxfN0uRBI8zA+21YF8+k34DIy1pxD4
         iGFOh9utBNosFxjyBry/iwZGunuqerzzBO/nawFg5phnjeB8yR728DLAG0zA4FtF/LgN
         BeU+EFLrhN2n3/nlwx3lUWfspshBO6RibliTfLzNTC4ubln2uVwiMU2+x9c2f7Mxpogy
         Z4nw==
X-Forwarded-Encrypted: i=1; AJvYcCVS68Q9e1RE3TfU/AZ88opi0jFV/5/eobo6OSeFiR8ZMnlHU7AO+7BCJ7fkdvPrOBMKHWh96Dclp6C9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8uh3EXTPgTZm4MBxZnHwrmYAf5hySucuXHSVdlyNZe+qWKf6u
	ihFHdaDehNOuQhXh6h4rFHcdZhIXjDEJPYAPT+aGW00ffEqkAKpIBJFir6CjlPtUVb4uSiO6WTA
	aIQPvh4yPRzpWZeGpST810NDEQZZrl8rCM/WXN/NhCMwoAzmOSdSHB2UNVgyy
X-Gm-Gg: ASbGncsOxdmBigtagH2iku7y3MzIm+sVEen34AWUd6Al0sYU4MR3Es0GnqI9Nq0Lpg+
	kQVVeWQqKx7oa31YY8zZIt+9ezJgCaGWDGXyEYvETuEGm0DDPtAwTBrAPmf1FU+xaKtgffZR/ra
	oI4b2Y5sReNUTHTJmw18LXgUxZ8kXyHiTsyuFAPyLNevuCAc/ZKyC4pk9zBAMFNaqrqn7snICB8
	CTllBE878D7uGJqdtOBLfqgjRwYXN+XQGzntkCEzhhIDEf/tFRRt/FpS64Xs6slSFcWAFL9ZiYe
	8QS8kjf3EUktoRAMGdBv/s8K2oP+3HxwbqtgPDxo8arTFudWezGgYJNkPh+quop+ZZc=
X-Received: by 2002:a05:620a:404d:b0:7c5:ba85:c66 with SMTP id af79cd13be357-7c7af0c153fmr806651785a.2.1744714079414;
        Tue, 15 Apr 2025 03:47:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHuwG4dNdI2BSsFDbn0eb8qAYld3w/d/K+CHo95e+es2kHPxuJzChDv3YYN+jjEmQ1kbQJdg==
X-Received: by 2002:a05:620a:404d:b0:7c5:ba85:c66 with SMTP id af79cd13be357-7c7af0c153fmr806650685a.2.1744714079068;
        Tue, 15 Apr 2025 03:47:59 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb3ef7sm1060539166b.89.2025.04.15.03.47.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:47:58 -0700 (PDT)
Message-ID: <069f3555-2321-4276-b0c6-153ec15064d0@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:47:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/20] arm64: dts: qcom: sm6125: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-13-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-13-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TFnelhUaMAKtaecLHkNmP9DU_1oVGbon
X-Proofpoint-ORIG-GUID: TFnelhUaMAKtaecLHkNmP9DU_1oVGbon
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fe3960 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=619 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150076

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Can't 100% confirm, but holds true on sister socs, so:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


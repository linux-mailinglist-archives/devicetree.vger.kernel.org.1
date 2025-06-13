Return-Path: <devicetree+bounces-185758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C3DAD8F2D
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 16:17:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6123A3BDC73
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 14:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0FDB1B424D;
	Fri, 13 Jun 2025 14:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="phlfbA9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD571A254C
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749823776; cv=none; b=NlnBkqywFMuUeirl7a84f0YxvdVLZkbbw2v2EcB9L/SYTA5vYF8KF2bs4ESjIiyaRldCe4sj6wMBnsiCrjkCRHgTEp+muY5p1AQH1pte3cQAS56ux9k6Xj3JEUYVFaSl6w736BAivCs3WU2QAkp2xCHNb9yIatwW+CxaMBII5yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749823776; c=relaxed/simple;
	bh=9ybk7RoIxVOTSKEF8RhhpxFfV6/NthPvrJR3mww0pOo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MgCABLSbxrNf2bzmXUw2lTdNbBo5nqcLZMDcYy70XteYs1JUUfTuDNZP1jTC2JcymfMXAY6XSqbe9HmWHczqZi18W6+xGTL2L3RKdO+rBc1sBvC/OGBu59Kvyg+q6CHVx5004f3jcb73P2lCJnN27l/2VSDLBdDgRiwsG0R+AYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=phlfbA9i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55D7xEvc027154
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:09:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dBbKcLZy+Jxr/umSkxl0m8Tk
	8e+YIMdKicRZEcvJZzA=; b=phlfbA9iTDvq1WogUJYlWJS8EhtGPIDz2A6VewGW
	3Yq3W1pyrbl/1giXjxXG7Ovg7eSya2uVhq5cxbPlwugPyawQDkwhDKBr22IuENs6
	Z6iibqYWe1PPDgRfrafXyBQJUycsLZULTX434MtUAGY5nV2PqnVMW8gZyU1slf7B
	8JiiF07QDEgl5O4BNLEFVfAJXgTG4/orRouz3R/O/ZI9YsfvEApvXBNYKrnZdkUc
	9iRPZgl2rPOthRhVW0yxNQVp8gAlozhOkT3CT25y/Kr+uL3Rv+vPJ6plkFoQ1M5k
	DMWLSWrrqwSAAV+SOIaeoy4CpI6gvQ0PWXq65ZzEAJtrDQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ccvkmwn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:09:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d3901ff832so422241285a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 07:09:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749823773; x=1750428573;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dBbKcLZy+Jxr/umSkxl0m8Tk8e+YIMdKicRZEcvJZzA=;
        b=S9G+GhkejoujuSC8V5uw+aE+LpXsVrdkGFTa4+x5DzaqDm2FRZlBNYPAAUg26j5bVJ
         mhNMhmiHV7Cp0q1fkxRJj1dqjBCF5ewdZPH5zTr/b/n3Qt8adqK8ronH/IInU2yFYImf
         pnlYTQC2DFq7sOSpGOxxxs5MNhwOPzrPk4l3jKiMfsSvWW4+u9/Sh8PlAoxh3JDe6+To
         lGpdcmll6HMyKXvZkStP1iaC7vcstlGypLlMBnHRcpo8hFJNYlmEOEMikM6PV/CLJsHF
         gbpbPSwL91wPNmSM7y8JAD5N7N1QSfeQ/7QF2f1j0PPKhtV+5UAg82g6R2hzCL5KxZDM
         ZbAg==
X-Forwarded-Encrypted: i=1; AJvYcCVsNaOhm41X4pNu5qFixY21JcBYyhjGW326DPv7ZHQ7z8ibQ7ZjapRIul7YVJCZMNskEnAHnN0JhNpS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn77R4Ajf8mbASX6LfPUy4QAH53N45GTpCij2+fxfhPQEM8rTe
	j0Ql1M9VOuSqta83dkw+W78bEAbsW4Kf7q5AJl1qVL6EHxJ9V7bEn/4q641HU0Vuf14O/mICpp9
	yShvYPX+TUPrvdG13uJeE2WXn1m9FEOvRu/a6NcyS+mfs7asbRr8z9JviwdMSM9mn
X-Gm-Gg: ASbGncvfwo5PjHrl3Rf3aQfRQkPki5ZKlNMp9BvBwXA/uOO/R+ITNuA9G8VSzZysvNC
	2UCVaKGWJ0wwztFeaXePzV00mgl4QJqlgoYFa7JOEgj4ISAXypO4NF2EZ8Y63MzEO3kfF1KPRYO
	MwXHxq+xUVLb/SFgF3FFow1kyz2o9+RpdSpXfjs5xmAK/0gRfpYSlGeqZg1Id7n08X994Ws8hQY
	SgAGSj4Cj92hBX6zEXqQpuocq09LZq1pxOR96JMf6HRlqOYoSP4eXt0P6md0miV6tvoYiCLGimH
	7KhrlDDVNnKcqYqSJoIIYinnpj78zgvyOzK5HlXl9VXgfkn4OxM8Dy7/MgAM+YdKL9OJRISlWuP
	Hsap4R9ZzUr/iFDETMX+S5P26daQENnQZIEo=
X-Received: by 2002:a05:620a:2989:b0:7d3:9201:850c with SMTP id af79cd13be357-7d3bc3ace08mr455412285a.14.1749823772896;
        Fri, 13 Jun 2025 07:09:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl8SN7pbaLAjQfx5kpcmJcfOmKWAhZsdbfkETLGHu4trAzY1dXsnxEVeHBZOpN1dpoy0tfGQ==
X-Received: by 2002:a05:620a:2989:b0:7d3:9201:850c with SMTP id af79cd13be357-7d3bc3ace08mr455406685a.14.1749823772367;
        Fri, 13 Jun 2025 07:09:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac134f46sm459281e87.57.2025.06.13.07.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 07:09:31 -0700 (PDT)
Date: Fri, 13 Jun 2025 17:09:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Lijuan Gao <lijuan.gao@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ling Xu <quic_lxu5@quicinc.com>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: remoteproc: qcom,sa8775p-pas: Correct
 the interrupt number
Message-ID: <bjys3ptti725husvinnny6k5qtblqpcnsnignt5t62psuhgkz4@rlabonf2wwe2>
References: <20250612-correct_interrupt_for_remoteproc-v1-0-490ee6d92a1b@oss.qualcomm.com>
 <20250612-correct_interrupt_for_remoteproc-v1-1-490ee6d92a1b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250612-correct_interrupt_for_remoteproc-v1-1-490ee6d92a1b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: e3o8Ugz_CWULuoI252LgbZE6Guf6AQeF
X-Authority-Analysis: v=2.4 cv=TsLmhCXh c=1 sm=1 tr=0 ts=684c311e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=zHrrO1oeWpa5Vr4l-gIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: e3o8Ugz_CWULuoI252LgbZE6Guf6AQeF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDEwNCBTYWx0ZWRfX9BzC+z3JsKh9
 fM/mGqtFhjugeAjDv78dvCXtHZYi/3ZdkeAFhb3PJNPeBeqdhnRIDLkRSiB4P6eO1Mug75JM/wH
 VvF93LAKlzBvsueGQa6P27i0of4DSk2BSKNPwRqWg8LGRYne2Z0iDsh1b7pNOHYkWfpmG5/sw+f
 NgIQqJfOQjte0+KVG+9DvByRjicfxVWaL88+FZ61eNWeSI7pA0ENG3XYTbmmtYfLTb7V9GPsIfd
 mkEBDxkvC7RKPSXsUvE8Hc/rsTCX8jyQmu3cZSqRG/AFoH7ogNVVhpV/vhJuk91tFn7NToxDtk7
 ErxaIviPMuf9qxzDFm+sVMtVtaO4KfbWKEcIAYt45qteJY0h3GBje+kgvu3FW/gwbAP8emzEGw+
 3mr9/iGcTuoe8jUz+zGhwNxQ++GQrZhuDv9D/GxP4CTkOmu7VpeeP4aG+1oWj0/bV8tzpnPK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-13_01,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=707 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506130104

On Thu, Jun 12, 2025 at 10:39:32AM +0800, Lijuan Gao wrote:
> Correct the interrupt number of ready and handover in the DTS example.
> 
> Fixes: af5da7b0944c ("dt-bindings: remoteproc: qcom,sa8775p-pas: Document the SA8775p ADSP, CDSP and GPDSP")
> Signed-off-by: Lijuan Gao <lijuan.gao@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


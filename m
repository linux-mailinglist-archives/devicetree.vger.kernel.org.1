Return-Path: <devicetree+bounces-177435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AF7AB77BA
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 409E79E36E1
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE7D28CF7B;
	Wed, 14 May 2025 21:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K9fObCbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18537207DEF
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257339; cv=none; b=YJwzIwameiQUL+UXgGfeyQtQ95QtQgvs5VXAAVxhkYawgSiIPMNSYBKTSwb1mxm6nfinko4lYIAmzXVs77u+Qs41mwzscZyUy03c9DsSCSvamzzgYkK7FT3LfZ0+Lh3rzlqXMjbDNO8cagUOZMsSYQBz3fcLaz1E5uR7XbrwJy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257339; c=relaxed/simple;
	bh=qvjR2XXCGE2xNkWvFLZrOlDwVcZxNCldkgRm3IdHpgo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GEq2uLdcJ+dWR07/8ygFB5QjxnM+OiRpqWr78nLAeFq55EzmmCQoYCi9TUKzCvYA9AmaUFfcMn1Yn6ucVACgNFh77FK29oYx5wLteMquNirta/vOM3TuYoQzDel4MkZ8iF95h7EwDrXWxnwkhBwNoYRPLGsTYcBj1XTS+wO2PXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K9fObCbc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EAuvam015169
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:15:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CSgSL5tsy6KVjdqsenP3jEhW
	60sG6ohO+Dj54gdxcXA=; b=K9fObCbc9SloZ7AxXu1IgLDoCgJ2LSlgmEZ4PNhK
	+16XHDBk3w/Q8RZu9PCyDfqnYfR2enNvfsmLZzjhzW/W6f7HhMlJvz174jxDpB/f
	pWlFI5HeAwXQrRLjg7mDTn6OPbaMHQXad4agK1kAYAZTmYhGobiYSBEKXlqLH4On
	ANRQAHux1yfL5fL0VsMr1CUVc1Y05gtyITlefh9ITwFput7Grj5F/Xy6IG/8k3zv
	3QzfUGDOr8NE9zdmJY56cgpbYq9/nrRqPWHlY0ygEvOl9XUPQqWRP+NUu+uJNlSm
	iENpWPD4cXg9wZnuIASVIQyXju0TuU9Pb8o/DhrBAfX+yA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcr40py-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:15:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so61009885a.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:15:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747257335; x=1747862135;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CSgSL5tsy6KVjdqsenP3jEhW60sG6ohO+Dj54gdxcXA=;
        b=oohVeUGcH+iMnb0KPHOOfOfzUFMXq3iur+vFsECX9XZa6TFegDnltTNCmiHFxIJr9x
         Pn86/f+8qgwv0GuGqK60OfETX0UaWjJ2RcOqGkM0ABs5n4OySKk40mxb4+w4rcMFLhwC
         LeKcfIECfGR/qShbUSa0s6D5ZgRVD3XjctOlMCCiJwxysU0Di7wR7wV+ESZILsLd1Lgh
         EVmqhGKiD52BzGQv/zP3SAszbxRw32ZhuOs3J9qXP11bandierhF7sZ5vW2dNZbuwhBR
         v6rNmUt0CMNku3/mmLYFq0tnvORyPjuOBnQ8Kwc+FYlZUZ/VTJuSjCF2/efOrjkS1JAM
         GdFg==
X-Forwarded-Encrypted: i=1; AJvYcCUPDSbazd+Qq+P7q5OJvzg+Slf+NvXpVJ3iVvKFsQ4rOd9Ayj3ez/prz5lUVdoPDGHSHy72LmffJ4Zn@vger.kernel.org
X-Gm-Message-State: AOJu0YzIf1YJFdJrbiQQZ5peItSkmcYL1ICkaMmNQ4U94dY4UfHkQFcK
	HvYfLbOdQKqP2M9RBYHnFVzO0VCoJP4lOEXJlRDCOnYavj6CpqHXbNGCPnTGvUlHx5g6uFSOXWv
	MTEn8LPkLs7hpG7mWOFvXdqrfkh9or9E+IgsDFpRsG/YnGeas241gOIhiJgnb9iI+fKRdYSpd
X-Gm-Gg: ASbGncvXoWhJUaw63mbhgOncfkvGwOmdCUaXO8cc6p9Q0Wj+XMoQE4l1nYvuhIkC94M
	3TI5KKgAMi0DIMzU3eS61DXp3jrN4hmipJo2BueefXl7akF49dFkYkTVuBaRmgLQiVcaOaLA1g7
	YYunVJKpGvVaalHrnfVeZRvoUFtQAy4hIKQ8Con240rkPNhQy5szWuT9RvUcMTfEpO82hQl0R2F
	tewG0V+71xhkG71We4WrW2JMBLv2m/DHocBgQMSDfsxORWUcEYssohUOcDlgnw8Cp32n9zBV3oS
	LX/8XRjPAkNmuCyoeqK8p7OjFXUrNOm64Vz/giURgjUnRa73NNjL9PkAiYvYQWT/7gCSneoK/Fo
	=
X-Received: by 2002:a05:620a:1d0d:b0:7c9:230f:904a with SMTP id af79cd13be357-7cd39de2503mr208508885a.14.1747257335553;
        Wed, 14 May 2025 14:15:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEF3yZJxhZiWN3ImsNfTVfdXkr/LJlPTcnXcAxIaHup0XQAdoj0fTfNGu52Ukiv4fTDl8MQUg==
X-Received: by 2002:a05:620a:1d0d:b0:7c9:230f:904a with SMTP id af79cd13be357-7cd39de2503mr208505085a.14.1747257335213;
        Wed, 14 May 2025 14:15:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64cd303sm2398927e87.245.2025.05.14.14.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:15:32 -0700 (PDT)
Date: Thu, 15 May 2025 00:15:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 02/18] dt-bindings: clock: qcom: Update sc8280xp camcc
 bindings
Message-ID: <oogbxu2uphyhknr4fjbc4ato6q7r2iermvxbqezyqd2xwamqtr@cddhw4kh6zzx>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-2-571c63297d01@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-2-571c63297d01@quicinc.com>
X-Proofpoint-ORIG-GUID: bcOs6bRf-7Wqoa2oLKgorZRwPjoMVXov
X-Authority-Analysis: v=2.4 cv=Auju3P9P c=1 sm=1 tr=0 ts=682507f8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=SIHCAja6ksQgKCh-pUUA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: bcOs6bRf-7Wqoa2oLKgorZRwPjoMVXov
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5NiBTYWx0ZWRfX3oh2G3ni3kWf
 WQ6gmMI6qc9XXB0WYLFWB2+t+upqMuh+bBGh8IaPSjymGZfy9H/nYIhTEjg5B4q/cWPxFUkk2/U
 1YEm1CBqTdZ0LjUPDfbU1nFtli/Lfv9na5KKK9WReeKPunrTXSvrKDmYx4e0lSv3P3rpV5a1sAd
 Md0c366o627X9TH7xKpZt1Z5w2fZnq86bZlOIOA3uHED5n1EBF5N81fzqS3ZpuTe0ybcI5iyClL
 hRLyz/qCNbxNiXpf2O3lN1kP1R0ve6cO790r68oFRmymkfeYdvhSd7bAnisdrWsSrQQ9D2ugTzU
 /v29/l1lVVzVP6dPsI69k4MnnWtRSQjOl/V8CImOjs/u/BSe2M2JMv7xcDa5DNSOXnteZekAdvv
 palm2alXIhAC9Rf9ZBqdRAT05KT2fbYiLCYL410p4dU0e82ymRfZbsSDRgpbWfUQ8ogWvTMy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=999
 phishscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140196

On Thu, May 15, 2025 at 12:38:47AM +0530, Jagadeesh Kona wrote:
> SC8280XP camcc only requires the MMCX power domain, unlike
> SM8450 camcc which will now support both MMCX and MXC power
> domains. Hence move SC8280XP camcc bindings from SM8450 to
> SA8775P camcc.

It requires MX for PLLs. I know that we were not modelling that
relationship beforehand, but maybe we should start doing that?

> SA8775P camcc doesn't support required-opps property currently
> but SC8280XP camcc need that property,  so add required-opps
> based on SC8280XP camcc conditional check in SA8775P camcc
> bindings.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  .../devicetree/bindings/clock/qcom,sa8775p-camcc.yaml     | 15 +++++++++++++++
>  .../devicetree/bindings/clock/qcom,sm8450-camcc.yaml      |  2 --
>  2 files changed, 15 insertions(+), 2 deletions(-)
> 

-- 
With best wishes
Dmitry


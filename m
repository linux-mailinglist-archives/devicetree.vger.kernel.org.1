Return-Path: <devicetree+bounces-226802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F67BBDB9A3
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 00:17:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33DC1422653
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 22:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ABAE30DD0A;
	Tue, 14 Oct 2025 22:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B9XLbw6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1DC2E9EC2
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760480229; cv=none; b=O3MseVX6tJJ2FUgrtFOOgs2jE9hsq7FaB7Tbq/FJUAUSisNxEH/IMdLU14f7pMl9pgqng8hHce78o2P6DEAXz3+N1h2X1SE5kGYy6R6cYtO0FAD76YNY7zGw6l9QrWAYus92zTZES0KrgsK8METpHQCMxjHQZramvIqRNW/pq48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760480229; c=relaxed/simple;
	bh=UTBERQswmPtrfgvCDNGWHUY5Ci7MI6TrR3rlhhVtcuQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IXzUOiyXyQXuUkszBk1hZ1Cvn1RdpvcqA9FDDxrbCIrtqYFKtzx4LOcTA72i7P9oIyPo8jx5epEWs3sdXqhnMKgs/7UDcbSuO0V5mcDLQUXPzCiQLkDQpsQcjCIX6xU216OmMA/cCByyiYTGrYCw5j7KqJSWM3GQmatrbMBUvSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B9XLbw6F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EKRcex001027
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:17:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=acxFHNB1qCMmBdmM94I3DPDY
	6fafFAZsfZx2OVrKtSs=; b=B9XLbw6Fx2zZ1zBQM570nvp2RMkPYfqyQDQkWZhv
	fzQTbA08rlojgXNeCKfhGuQOndGo3Y9tjj47AwmdGiNu8D62lfTRJqwRTWqzObbm
	xX6SwScK2mMiHynka1CbmHUJMHuVb5DV1hyIOwY0wpOeQ2enGaDuK/DwgLiZ8FrH
	VoyoZlgmM86qvCb+OekhKp3cfCmCoNexlt8FcneC3FxejfLl1BhtIjXifYcyBjaC
	GxUgqbLfCGJ0pdouIlqEZdznFyJgvzWwVOXiKK9ZPB2zaNkC7Ug2trpVYDm865Qt
	gxicwWVxfk9/n1UxpeD35z1/p3BZ2BpyDKkH01UxhTINyg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8gqd0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:17:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8574e8993cbso1231052685a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760480224; x=1761085024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=acxFHNB1qCMmBdmM94I3DPDY6fafFAZsfZx2OVrKtSs=;
        b=pQZfnP1BN6B0dfC7x4m1Iv1/AlqNAckjjrHHL+S9ZsEprT1HqOS/BfSdL6eKFbTQVY
         FcSbJeEo+WEDg3Ryj8Yy4VAVv8b15sNW5LyJ6rBQAYFv/yC/hMkE2dG/3brTmG90XWiB
         XYIfWxpo7AHQ8nBv9i85F/aVclgUQKXW4rve+k7ffZufJVoLD5VGQfQtJ/Ix8muYCcic
         rHzjI0tiwqj0CIEdk9Hmka1Kd0Vm4ZJ+4mb/gg+NnZ6tWz3ZAQ1i+R7DzfGEHSoVP8lM
         v4OzQ4T2ISxL+xhyyL7V7F6mCN2Io+wnnMAvb6xB6Laj6QsIRfcMA1X+tlxqnTM414w1
         l5EA==
X-Forwarded-Encrypted: i=1; AJvYcCWjeExLfyplWV/mhW6htbpokFmTpJ/U8yTfSrAZMmmU59JWKn+u95DNpKAD4icBr4g0ug0wpeLhfkjW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5QoQovL6DTaT5WAYlZr8eUTv2U+IFW8Vk/H16UwqIsH5phmFE
	xnCnwiaCY9zKCI6Ei7vqZhI8FWysYUzH9JoHNnxLLZyhkRBBq37mVFoAlZcgCaPXFg1O1T1OmOF
	5AjISG7cERQFJEulR8RlIKaZLjJe/hLueNBN3PjMn2t97aMt9LrM8u89KPWm78oXV
X-Gm-Gg: ASbGncusjz5In1tQGAkEJAoWz7uel301qlaEbs7ShvBUjFaGbz9OGETQ9yKqVw4kfnR
	B0q5jyNsy/iZNAnWEBtgWgGrnOpAxrVcDMrKjgrYF/rAp3AYgQigqCnoh6K7K8FTpTNNK2hlILU
	JUFv4nr5rAJuHQ1i+C7XD/N4kEr7u1QudpnEjaXvt6fsCnnv86KAAh34PJxerVT7twqXXJ7p9qX
	tepOVaBrelHRnUkmCtHXIzD8QA70lLpUTOR7Dr/zBhe/e2OCzLOGWMKruQ1DWpzuxrpv4TWJhfX
	v5ajT/sP3+7bzP15/QwJzx82zhLYxlJcRMKdfQqKk6XTrWFDnKDczYxcKmhEN8s7TKHWjmXuqn7
	IwxW8C4bTqAHtxmFBoqgZjUMrSChBF0LhgZMo6lZwFJIvOd7BFAjQ
X-Received: by 2002:a05:620a:d96:b0:84e:2544:6be7 with SMTP id af79cd13be357-88356bece86mr3605346485a.65.1760480224015;
        Tue, 14 Oct 2025 15:17:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqry7gL0o/foP5bdIZkkIufw42pdC4mWKYSgvEtxW5lk93OwMTW4qm5JmsLq1hgKg1FOcqoQ==
X-Received: by 2002:a05:620a:d96:b0:84e:2544:6be7 with SMTP id af79cd13be357-88356bece86mr3605341585a.65.1760480223473;
        Tue, 14 Oct 2025 15:17:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762e77ea14sm42497401fa.7.2025.10.14.15.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 15:17:01 -0700 (PDT)
Date: Wed, 15 Oct 2025 01:16:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: xiangxu.yin@oss.qualcomm.com
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: qcs615-ride: Enable DisplayPort
Message-ID: <geh3pbatv53bnk2zgyalnwvumvcsqaz6n7x6dniohsfk7r56sq@mpflfuye62ly>
References: <20251014-add-displayport-support-to-qcs615-devicetree-v3-0-74ec96ba8144@oss.qualcomm.com>
 <20251014-add-displayport-support-to-qcs615-devicetree-v3-3-74ec96ba8144@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-add-displayport-support-to-qcs615-devicetree-v3-3-74ec96ba8144@oss.qualcomm.com>
X-Proofpoint-GUID: fUwPF_b0U8t20b84xZwLwvU6QmRc5zve
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68eecbe0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=VdtQghO5X5uSFlG9jygA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfXznJYSVB2KMow
 Iz6l8phPKkgnEaPA9K6SKjd/keVncyEF08ZWv4bRSXqxOnF7vqYCgW08eFnTZG/bzL5+X8Di6rX
 HkdnIiW57tUL0iAKMt5zPsQCJqHL2OlFrOOWTLY2Eml8QqEvA19pI3qS5TLKCBzASKajzohOEQc
 fGIIxwko07Dr0uzSPjkez/ygngpsJC2OfL61975hVx+VZI+Dl8o9bt8Q6yg+NHSNSOp1GsmYNjh
 G7jRSVEmQFU9NUUVVRwCYH1izJiKU7aYgRypAmn0TBnxKTOOsmIqt57srhqkyDiwvStv6urlMIG
 DXWf2kDwDEXNpt9MsoDoTdLN3ESnaTgqNzCx+HoOpXfPmnOOaQ0WzwIC7lWcTV7TPw51thuEzUQ
 2XTnM9Km5gUdyoJWPqhrNrH7T87eww==
X-Proofpoint-ORIG-GUID: fUwPF_b0U8t20b84xZwLwvU6QmRc5zve
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

On Tue, Oct 14, 2025 at 07:54:56PM +0800, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> Add DP connector node and configure MDSS DisplayPort controller for
> QCS615 Ride platform. Include lane mapping and PHY supply settings

The "lane mapping" no longer applies. LGTM otherwise.

> to support DP output.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 

-- 
With best wishes
Dmitry


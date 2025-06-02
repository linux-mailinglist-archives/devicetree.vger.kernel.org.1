Return-Path: <devicetree+bounces-182139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A35ACA98B
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 08:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E12F1177A2F
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 06:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11FC419342F;
	Mon,  2 Jun 2025 06:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c+2fSjoF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7089114AD2D
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 06:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748846336; cv=none; b=l0w+4d3BaMD9NLb8wjXKy6df/N+dNATCl5ZdCKY/E+FmMETP4ZmvSoKChEtilSZ5pROilxzFiK9taHicEF3B06BoTwQw1YcgcWF3fd7qcKzYumbAMVGmdT1FMhcelwfABV4OlBKrAJnOrU35xnMS0Rnt21ytHXUFG4muO8EO1ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748846336; c=relaxed/simple;
	bh=H+8hGcc842VAoSFMkYka2oWdV8tk0M9H+OQ/c5+ATvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ooaYjP79+fMrIT7aWw8sn76RR6X1W0Lt+e2IvZ9X6BJ2fuYjAGsz7z9zzHmnBzWWtmKkhZ+CcS+35HlUmC5E7ZmHfOJiE5SwF2UzepHXD/fVQ9vcGr8mPEjO5a7LOqrY0fGQCe06ry0VafwmYM7ZCMJG59uondoSZzDVL2f2pNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c+2fSjoF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 551Ltkct029437
	for <devicetree@vger.kernel.org>; Mon, 2 Jun 2025 06:38:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hgWpVsIqocxgnFNmFrMMXpBx
	7pW8ByX+8nWPO0pYioI=; b=c+2fSjoFh7WeBjQikGYXsMtaxntSzjiLRWVr0Ujr
	bC46VWaexDO2BlDRU2QMNVLfLXw98WJ8XcONky5QbZha/BhapV4fUfN8eQMWTb9y
	AaKk8VA2EbymeOFGfxPN4+6BieDeXGdpxBW6KKmf/ThOLaHd0tlT3y8E1+rE7fFD
	z7SXJNkGkUG4M47vm4cyC6jAUhodtw8W+Gmq37F1PdHjhI65yO3jxqtgRU5Shlln
	p/Q7jm1qkqXsGM2asyaXvgIvj/MTi0aUGCDz0zt0VCWvNcHMI7IcWTCI/JrNsCiP
	2C6hhkHJWHzmcmp7/M5xaMBGBMlo2Z+irN++40giZsLuHg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytm6bj6u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 06:38:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7caef20a527so1072852785a.3
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 23:38:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748846332; x=1749451132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hgWpVsIqocxgnFNmFrMMXpBx7pW8ByX+8nWPO0pYioI=;
        b=HgYESXhdOGu0THJMXKw6rCzC17VHqF8eGu80q/iIPp8G2cjKyt51OmAFP+eIRWGo6V
         O74KBqLPbv0NUxfQDNoADpTnFoZEtDH+XnZcfI2E0IuxFB0AvRXYCy+0FfJf2guxV1nv
         m3rE4k2LW/1e34I5qIIoUTILKvpFjLRrqYUVFkMG9tzyUl30qBk71aoWRglC9ZbIZjrt
         FDkgaCBTT6xdfKD/0m95xRpqCRC1fv34o7Zq22YFMaQ6kxM7+YcgMEU8228qMhxaBPE/
         TsuHp2izMVbj2foFGRclIjThxI3cDVYw+abEMYQfKAUg+54jhwbDItywVa/70lCqkIul
         d7Dg==
X-Forwarded-Encrypted: i=1; AJvYcCU6X46SIFZkEIAsRLBq0xmFSAqEBFfmgd8YOqjr9xpcTi5iGdYJPw25SclG5u5Qert+wnlMv4MP2CCN@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5wMQ21FtwwznRero5mQiYBXwA92M1OTAoSfIE99PBQmhaI/go
	ZwCRys16hdm7kLYNn8A0f2fQrKb8aeOHn1fI2Y2j5siL6wzmblsPFvLo0wpnDmTL2W7WR6wo1C8
	SqWnmdV1V7Gz0gXSXDBbHnSZ5353IbFqty5hu5io2Cd9J29TMUcAIorms3MGvG5oF
X-Gm-Gg: ASbGncuGlMn6p5x5syHpaucR9DOv4rSb7lpDP1z0X/+1fD4kV2VPwBMwH0N+1zPDC+Z
	9n6aXAYDRjXmie21pwupEanqoaAabfpOwe0h76MUrLuOYn/MuDySKQBp0pi2F/oInlY31ws0h00
	lBRyb0z8lCbMSccyReDq0jLnXzppmM96EVci50pzjRL1wQ5RdTaVZotCDdkgh1Exq+3Mvy4S70G
	ejrxggKHqFLN6ZMeB7kXuUit2K2KZut/qWUCF31XgKcE+3/MBfxGmG8AlL1mbSPXlcOKIwWbi7z
	gvqF/TQFEARbj0Mlu4ppD88DOUlZlvQvmxGNVxnH6fwfYOkWVx2Da6MSXp36al2lUzX1YeWum1A
	=
X-Received: by 2002:a05:620a:31aa:b0:7c5:3d60:7f91 with SMTP id af79cd13be357-7d0a4aef53dmr1398544385a.15.1748846332389;
        Sun, 01 Jun 2025 23:38:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAH7lHJMHtm+wUmKQxUSIBCKgWZpMZBY9hHwWCQqMr0n2nY53V40/nig5MZ05K/Bkx/ImbsQ==
X-Received: by 2002:a05:620a:31aa:b0:7c5:3d60:7f91 with SMTP id af79cd13be357-7d0a4aef53dmr1398541485a.15.1748846331792;
        Sun, 01 Jun 2025 23:38:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553379378easm1498469e87.240.2025.06.01.23.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 23:38:50 -0700 (PDT)
Date: Mon, 2 Jun 2025 09:38:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: fenglin.wu@oss.qualcomm.com
Cc: Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 6/8] dt-bindings: soc: qcom: pmic-glink: Move X1E80100
 out of fallbacks
Message-ID: <mdxfitbkyfwt7efjshygpjvg3s6mvlq75sa6hatk574iocd2nx@kvn2o66nppih>
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-6-9e377193a656@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530-qcom_battmgr_update-v2-6-9e377193a656@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAyMDA1NCBTYWx0ZWRfX9rcAe1kUJWjO
 nnoa6OmIYEdkwPFzzYZQtQ3BVpQB5MdPEwRJjgFkUQeyydjDNcSHffbudnaetNQVJ6a5pKvbG8T
 9RF2LBBiRfCZ6xU/GSuE3A3VRMSa/P4Ym0q+VfahnLYm7KuAT0yWk1UlxZFM/1+6jfyJ2rBPMRP
 YQglA+maj54hiyAKo1faDSYKFIgwoJS/D24Abx50DL9VaIolXDehZkRbslKMLq+XLfc+0rodgKE
 CjRxoR9TtvROqJUj59eRJpygDrg+phGzi7rP+YtVZLgO7x+MYv88wS9E8MqyDwVHDoazTtpcSDJ
 4c0pka3lBxIN+1HHTCKjYtq6SHIxJjZdptSkMai6x3iuvumVgwfhyt6VBoieBeWs5J+7hIj49pD
 1Q6F0bAAlOSq51sn4TiV+AgAaWs6aJKHAzvmYn4HyDVc4Q3/f1WmN9d6f/G2MHjQWiQZnUVl
X-Authority-Analysis: v=2.4 cv=EOIG00ZC c=1 sm=1 tr=0 ts=683d46fd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=EhlfILWT9FdnabWGdsAA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 9j2CL5N3JwpES6tSbQtnR9U1gzu52O4o
X-Proofpoint-ORIG-GUID: 9j2CL5N3JwpES6tSbQtnR9U1gzu52O4o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-02_02,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=810 adultscore=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2506020054

On Fri, May 30, 2025 at 03:35:11PM +0800, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> 
> Move X1E80100 out of the fallbacks of SM8550 in pmic-glink support.

Why?

> 
> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> index 4c9e78f29523e3d77aacb4299f64ab96f9b1a831..972bec151118f2e20e1f3b4e0c0a8fbbbea7ab90 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> @@ -39,9 +39,11 @@ properties:
>            - enum:
>                - qcom,sm8650-pmic-glink
>                - qcom,sm8750-pmic-glink
> -              - qcom,x1e80100-pmic-glink
>            - const: qcom,sm8550-pmic-glink
>            - const: qcom,pmic-glink
> +      - items:
> +          - const: qcom,x1e80100-pmic-glink
> +          - const: qcom,pmic-glink
>  
>    '#address-cells':
>      const: 1
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry


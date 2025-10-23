Return-Path: <devicetree+bounces-230278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFC4C01140
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5EB064F4EEA
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304F0311C11;
	Thu, 23 Oct 2025 12:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="icgvQ3yD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082B630E82B
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221801; cv=none; b=DSf76UkjflQYcsqsFtJ3k2AlpPiZkPv+oGjHCQ1MMtTMXFP9lnHlUygEoGAbopKMmFEeR30AaYsL9839qfEol0vgr4nKniZ5Dh8wyHGDF26eFoYwsWfzgsym62nfVg4dENxAUZKuFwMizsaP/UBPfV+gluPaTAi71zOoRcR8Nd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221801; c=relaxed/simple;
	bh=cZlyEkb7lExdBwh9PEejexhtDGyWrl4DgTZeGjaLI3M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAN3XuVdexoCCnp0cS8hVVU08QW30ZzW+Yj3EuMsLpOjv/gbETHK/L4pgyyLwVYe536MYCd7tl6eiWJ815nvTsWVa7kRqhUL/d+xYPaK0xCsoKZfFkEI/Pztj6qMvHYp9sIGn9IubFeReq7K9CFUypMwlL8hZHr3dDdFT7i+4Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=icgvQ3yD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7CFBY024844
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:16:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4e4CsJ2qxbzcJTqFCSRdFwah
	q7xIbkuDSSw+M5pcQjk=; b=icgvQ3yDf93btZBjpIalqoLkmXnQ2pDi+Q1TVXRV
	539dPkpkFQMTkL4CilRdyArqe01KPg9kus6yPMaAgoU3BiOF1+UFPgTDUAj4PIIa
	b2278e6v35mn4pjjNchMDN5jUA73hHKhSxWMzox+hikwZ92oCwKbZLyXv8NccOX3
	Bmmpo7vFtSIHlmP7tNvqBMQpKJVH1EDTr+r7qU1Zgyfa9ug1a/81EAXYwm2lSLoL
	iAhIfY0qmYsMuS/e+9EXPHTOgLYRT0cFPKXIbFvMVGRHDOcpfhjBK9Jk/ZtlC4ti
	mbqEJbViiZq5MStIvSRkigVtkz4XqYINo3Lp+ijOhT46oQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w88bca-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:16:36 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-79a3c16b276so13972716d6.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221794; x=1761826594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4e4CsJ2qxbzcJTqFCSRdFwahq7xIbkuDSSw+M5pcQjk=;
        b=GRLxJkZy1G73YZ4pUEtdVEQDHQ29qtdGrNbtbB0KG+iDVBwv6pesTlp4nVqEiiaDTC
         HvQh2lgoz783JCMCvm3dZxv0+OP78ijVPzNL/S578Er0AEp+i9bRUGNyz7qCpyoXIvv/
         IGlst/UF9cg/L3zs/3kbUkrK9VLtge1hE6D5I8+NHcfS2WhQWaBLmMVM/e9Us1YNlXBW
         ZSvzFvPP0BAKPlsZv7sjeQTfDQwYajjNce5jcEHhLtfSqm/CIogY1Y1uFlOabrt2pXPA
         G+9lws6qCquXsE6G0caiaQ8onOWvx6pINmz/OgPkICrN1EvAScPIkXYvN9giqtraNhcG
         +4gA==
X-Forwarded-Encrypted: i=1; AJvYcCW5tzvJxkEPSvRc0fTxKYjmcuGj0RKxOIaOBzKFxJZmTkZQhD6GQOSc/ihlI+QYJkDHZbbWcyiNH2VK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5uS4pnzLhr2WG30oe/VXBNoFaglaHUL6gg3Y4eiSEnoFE1i5Y
	E8ctysc5hVE1e7SzMMmYkAUUlZv8LY8vYeUg5lhtKqTxu+lie7q6ifRV+mxWxH3EivTwB9SXfrA
	Fs1bhFK3Lj6OuA8jLQK6a9A4aepmAcEW2CxczkFhM9pySMgoVLvyXnvILK8YCS68f
X-Gm-Gg: ASbGncsW7Lh7OPzctjYlr271nk9qrL9SKTW1XtD/aly8xhTBL5etBR36UBJ1nkg53De
	C7v07os6PNNoTyF1cZHX0TWt7tXhsaDXD/5lp0pdcEq5tqL87U7ulsWo8BemN+vMshBYOrZjSfJ
	2fINWXAvzgKmtZb5h0ANTC8H07cSxME9HEWLFmEdHK7Ja8O1SGOUyDSFwIgRK6kYaLv+Ph5GE6M
	K/KpA88OHEvnbBF/VUhUX9VuL26I7pdb6u1NwmkaKq/VktqGJf/hsjwiKzh7yXe2yjhCwOfWBHT
	Id3okvFT3wE5qfnZDwwh+2fBJsoTyl34pt7xGJp3tBQG4rFffqQ9y6sTdcXowfTvuWLbwE7CFKT
	ciWR5+RK18hnMBW1CrZXy7YFz38OLXKgl6l80rj0ReUsGm6u1wWebmbnEVp2jNRf/MdCiec/e9y
	L8dX9sYjb8S1iu
X-Received: by 2002:ac8:5916:0:b0:4e8:a9ee:940d with SMTP id d75a77b69052e-4e8b6848072mr186108701cf.65.1761221794309;
        Thu, 23 Oct 2025 05:16:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGop9hpBDFFP1MrcMk2Fsq2TpD6+/75ykSiER9cOjUVWtI35/vGRfvOgaBCSCvXp2xBdGKtQ==
X-Received: by 2002:ac8:5916:0:b0:4e8:a9ee:940d with SMTP id d75a77b69052e-4e8b6848072mr186107931cf.65.1761221793683;
        Thu, 23 Oct 2025 05:16:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4d38709sm678359e87.106.2025.10.23.05.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:16:32 -0700 (PDT)
Date: Thu, 23 Oct 2025 15:16:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 10/12] dt-bindings: display/msm: dsi-phy-7nm: Add
 Kaanapali DSi PHY
Message-ID: <em666johhzrluo5z4t2nu5jo4yuowegaemlrursvczx2zze5o5@uakt5j22ygwm>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-5-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023080609.1212-5-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfXwHrCfsCreQUJ
 PMa+wtmXd13QIZIdokkGZxTGy7v0ovRQKiofsRZJ9FWgqxqOTT/lH7qjYgp69iMikem5z6uW/xD
 4eao56Fpx590yo+SblcCG6MKepVdpBXATjSd+RIVW03nZYK3b9L+YepaJO+GgftSJkrwqCevUpt
 clEtroPnZujB9NUWq4OqqyGnIppAiVWSPfn2kMpA3u2DFg9AYZZjACQS51gOTrtN0Cepl+Dc/+A
 DTvWAN/UpRgutFWJBjZ7yGT1BlIUoaEG+os1/r7COJyZOkk+9zMjgVanw1X7yD+j/118vIr3yqa
 3Vne49Dm+Hd2TA2QBpZruMvrqsDGBqAn0YxkO3KVGgdWiuxLS0JWY+kjQVm8/7432w8AGpYW3lY
 6ZXdytkdHIcd7rBTC3Nls5DG+VV6Cw==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fa1ca4 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=hdgSSxsrCpB_R1hBYGgA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: BGbQFKVma8er2ABkEMver5RRq8R_Owyc
X-Proofpoint-ORIG-GUID: BGbQFKVma8er2ABkEMver5RRq8R_Owyc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On Thu, Oct 23, 2025 at 04:06:07PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

In the subject: DSI, not DSi

> 
> Add DSI PHY for Kaanapali.

Why?

> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> index 1ca820a500b7..a6e044eed3df 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - qcom,dsi-phy-7nm
>        - qcom,dsi-phy-7nm-8150
> +      - qcom,kaanapali-dsi-phy-3nm
>        - qcom,sa8775p-dsi-phy-5nm
>        - qcom,sar2130p-dsi-phy-5nm
>        - qcom,sc7280-dsi-phy-7nm
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


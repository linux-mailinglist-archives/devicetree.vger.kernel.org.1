Return-Path: <devicetree+bounces-181194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E281BAC68EE
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D8C71BC6CDF
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61186283FEF;
	Wed, 28 May 2025 12:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OBe5zTmC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E96283FC5
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434480; cv=none; b=XKiNnBM2lvRaGaSvJO5i+8oeoY0KhWpvO3kwFAJUAUhJ/23QudCUuSXMF8lj9DTrjDl4q38YIPbnD5LLcenrESashQzSglGh0UV8sc4t+Gys/ftpGo9NUihSkvRIlZ8HBQ8FE8FaouZ9fQwBeTWs5j8Qqq+lH6zTMxi4uxtOAIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434480; c=relaxed/simple;
	bh=jYOPvF1Iu9M3uetpmwUkrikZ5IUGSU8JmbXp4kxQezU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A416pAzC7IZW5zx7wRozcCUYd7Vxm6ZVNOJz8aZYLB0O3p3Rtv7mrchrTX553EPz63Tp57VlPzk6DkbPW/ozmduLpz+1jOacsvpo0ftLyC9gJEFNE2BfY4/oQU9owu3JVwbBtlyUwyXiNf1oexmzaOScRQ3F+FO8lBo57gytfjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OBe5zTmC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S3rKuj028172
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cjdekBqq9jQ1YXFhfk1E8WK4
	nJD05A+u1nrX/oJj5mo=; b=OBe5zTmCx9eNzb6Gr9pjOGgX4nz68VzF4PYfCXmb
	kpSlphATodbmzpK4/CcmXm9Ry/OB5hR90fIcgX6j1WoovJYM43uH1nX733aVpOQN
	Cq9cPEMS2NVqazTry1eX2iKI42IF5KOYjgz+IsesBw2FW7JekOVJ8BhuYYIEHT1p
	EiVFoQ4KHnUy6uI7KMqFJe+IjQCz+1plpvlL5/MLzg4wPFOsGIHzZaeDzVmD80EU
	jyHDUXcAXCKtCvZq2Jsy7jzeZc2De6XBjm3sTzq3JvHSBui/ACCfmv73YbCN712T
	SmCSMiVLwjIz+D4FPCgRGtqat5McrFV5FvRmWhpkaTgYJQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992m6d0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:14:37 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fab1b8d379so22030726d6.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:14:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434476; x=1749039276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cjdekBqq9jQ1YXFhfk1E8WK4nJD05A+u1nrX/oJj5mo=;
        b=Kh5a6j6m3SCU3pYikq9hrBjer+QsR2OfForTr2MNm980Z4uvwvG7qyvFrM+N/l/wnj
         kEHIVTAGuzemqp4qPntodzaZX3cKEPtoaNRl8SlRCs/e3ByYbYYSNvcrtkQ51JE1kzNJ
         TKZx9S9yWg/TTuSpS4oJ3nyb4EhWeeu+cQHEuIVHWqz6/nvlK+AmF5wnErzxKwASx78n
         VkobLIG6DO0CRBLBHKW6IFveCXbu6ycVlbe6SpmeY2DVaK6+LXFaGrXvDUDwlGxNrPvL
         dAPpJn6ZNgXDIqpApQskeecXgFlpzNYFlsyN/Iqa1M2+cL3QmX+Oay3UIbIu3rq8RJDP
         k85g==
X-Forwarded-Encrypted: i=1; AJvYcCXym34GSFYWmhmyEsTXsyHnjFoi/IhCdVBpP6zEt0BGjj+V40iXZVZuISVZSB3p8fwgwD/IRB21eR89@vger.kernel.org
X-Gm-Message-State: AOJu0YyF1jzSrHWB/ZvurmrUUuITbx3HD6x0uqPFiJoMIzlDaOQpPV1w
	n9wdHOytvRt/66lEFu+qM/VIH9HaqkMCijo7DxJFgqw7e6RH5oZcITk+numpUO9e1A+rNgojqYz
	EhC9dIo2ZmKREq5ipRALWR0juyjQTXJgf9eJ++F8hOrTEVnkGaoryJajC1N1DFmkO
X-Gm-Gg: ASbGncu9t6223N4AnTPSSU6WTUfdzcfUg63N0sNCPQFZ+d418bM0iqqPKpmdJmURT4U
	bp+fyvIhu2/5vJaYn/YTMhadd4H5w0cimilJocJYgoYpKGNzf6U5jdTRsH6Qnm/Aleo+x+3sL9i
	6bwjXg8R6WMhRWpY/MPqJF+clK/1zTdef6vrgZLoqFjexJfvk4pX+1v6eHTAMPYp+fF4UbwlUNf
	6xdZwQABiaOiVVL9Fr7rgDF5uBDx1jTC3TQ5W6dimHEXQaJ0rrVT6tpJTV9om2j7emabZyhzid5
	LNSL+3Vtpcgmie8dza+t8cTvfdJIcUSOVyC2aUkP2xBZnzR8hXOxqKzmo4Mmg4bnSAUAx/z7Rzo
	=
X-Received: by 2002:a05:6214:21ce:b0:6fa:c2d5:b3a4 with SMTP id 6a1803df08f44-6fac2d5b470mr14194966d6.5.1748434476038;
        Wed, 28 May 2025 05:14:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2p2VwJWOXtJEGL/fYyqmZpdkmAOdMF5Qq25nUD3joqlGl9qIwB9aKQH/bANxFtWon8zcbtA==
X-Received: by 2002:a05:6214:21ce:b0:6fa:c2d5:b3a4 with SMTP id 6a1803df08f44-6fac2d5b470mr14194596d6.5.1748434475626;
        Wed, 28 May 2025 05:14:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a79eb688esm2323591fa.24.2025.05.28.05.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:14:34 -0700 (PDT)
Date: Wed, 28 May 2025 15:14:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 03/10] dt-bindings: usb: qcom,dwc3: Correct the SM8750
 compatible
Message-ID: <ari3245mwglxyelcpbct2dnclmp7xtgj6jwrkopb7t77rzdmio@zkpzkyzydig2>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
 <20250527-sm8750_usb_master-v6-3-d58de3b41d34@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527-sm8750_usb_master-v6-3-d58de3b41d34@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDEwNiBTYWx0ZWRfX1Jjp/+Rzonjl
 jfY2Q4g6yMmgK229aSPNeXexLo7JflzP+6gDNfW8CcG03f32TBh4M5KEUhPbzUoO5DBdY0PUmwH
 gDhNYPidev6yAM6pCJhFC0UIdNSZquThAdNx/mh8egOGQ8h51+WDSpX8q1ZqztNRkgOmKZcdQis
 TXWz1Na+jx5oMqoWZNs3CtAJO61lKgTnJxsrfjNF1gZXq7Tiko4+b1c21CVXF5Tk7qhr9SWPrUz
 Boz7yOdnelTT7BJiTkO3vMTBUR7jx818+19YHSIgwCdNPfCFtokwxxJyMeWJQauzVU+inmBmjZI
 rzwV6TX6a8HWDvP5EENsurxk53lioVStcijqCFapQrWbBsy6TnzU8K3l0Xz/cUgCnv1f8+smt9o
 MA1CnZELGvKaM9nqAS5kPGeQRVDQlHIEJJohG2u01jS3JGx0B6902AfuMwwSSt1XWHfzUxES
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=6836fe2d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=zrS0zEH8eRrj_hfGFQMA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: mvzEWKHI6dRoeYidwNHnxEMWNDapjG2P
X-Proofpoint-ORIG-GUID: mvzEWKHI6dRoeYidwNHnxEMWNDapjG2P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=523 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280106

On Tue, May 27, 2025 at 02:04:39PM -0700, Melody Olvera wrote:
> SM8750 does not require an XO clock in the dt as it is the
> parent of the TCSR refclk_src, so move the compatible to a section
> where the XO clock is not required.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index a792434c59db2e6ba2b9b3b8498ca43f0f8d1ec4..298b1472ccbc4cfeb04927da29ea40b9883d03eb 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -227,6 +227,7 @@ allOf:
>                - qcom,sdx65-dwc3
>                - qcom,sdx75-dwc3
>                - qcom,sm6350-dwc3
> +              - qcom,sm8750-dwc3
>      then:
>        properties:
>          clocks:
> @@ -366,7 +367,6 @@ allOf:
>                - qcom,sm8450-dwc3
>                - qcom,sm8550-dwc3
>                - qcom,sm8650-dwc3

I can't stop but notice that SM8650 also uses TCSR clock as XO. Should
the clock also be dropped from DT?

> -              - qcom,sm8750-dwc3
>      then:
>        properties:
>          clocks:
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-229708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6833ABFAFA0
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 179C656558F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF4BA2FCC1D;
	Wed, 22 Oct 2025 08:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TfCRa44e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A18E280324
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761122972; cv=none; b=d74OcCegHry7EJRfpr4AUt8v/C5rqviz2V4l2M35zhAkosVglPmWm3O+xsoozEk6Bpi8utn8HB32LO9HZeO9RMvxiLw1T+yaYEt/I8ZmgDHRB38OQMSRqKurAcenZ0ukjS5oo0gKT2calkb13v8As1CFOSpmhkTyEWU6ooLWa/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761122972; c=relaxed/simple;
	bh=wjCzMHrY7zm4/gxCP4CZlqp/d73hDT+KJxvUYhxZbuM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EU6DaHIl3swmr3pqJzzEARjl9HhPgfD+v65/ZS8cYwYx892XTh2TzwMCFY2P5DQwWkeC5UYXlY84F4Cy2YejEr5U8scPiyidL2KVWWE922ismrUOQdKyRfj//Hrd/ZzquHdzB4EhIOnZTuz9RTe9XxmI3rW9hi93dQ7cajWsyJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TfCRa44e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2MVYa024533
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:49:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Wt6eXSz1rKUJ6Z/35CgBqLKd
	WLIVbXi8ykJ1f5OWpiQ=; b=TfCRa44eVuqPByQvt5LGEWzLmxAWeriqAkiXX2hv
	SwDoz5ev80kWyTxifiwq2sYSkFCAyRH/si8Dv4+EznKZF9xqrApbV/6hrOwaQlCy
	gYKz7gSMG5OQP3TiN11f/7YAr4R/9jqsGtWslq9LR/ZIXtMFcEaY6WTrmmUBhEg8
	9+9hbj52A5IYNUNbmRTziJ+OdjUhfPfoEC/f+cT9zFsmzfw2Zziu2YYZ1UTESmqK
	8CL/hxBZuOGV59zFCbGRABFalbX5+XdesE9XBJV9W4WN7orjYlxO7DtXFjhVMYjO
	t4yENBIaTQdf+ODExdsJb6RW/Suyi8FLqJiMuxptf4Malw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49wsws6bv3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:49:30 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e884663b25so27158461cf.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 01:49:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761122969; x=1761727769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wt6eXSz1rKUJ6Z/35CgBqLKdWLIVbXi8ykJ1f5OWpiQ=;
        b=VAdAF44JpiOBALDq+73CBun3LOhfwYZsr8/jmty6QRvB79GZ1OpCZwV6rRQWFm0qN7
         zYWFLqM15+Un3AQINQHEShjlKAPrSgdJo23IAcmGqUF/DQMZfll/CQMyeL5BA9u2mHhm
         cNz3rqXgcKbGkc8KWsGbSquz57MLGDDOtcjfFE1YFOEgT26wh3hkyos/RgRWVENl7btL
         X9XckjClC+T8P3bjW73r/KPM33NN/m5g/McIBtKCSg79b10vDBQLv3rz4JSVXxo5ihPI
         YTFB8qDOkqhTLLCEGUReMc1hB32+qrWaPjazZ7sBC0XYlUCkyOyIdOl0GYni/UGE+DdH
         K2mw==
X-Forwarded-Encrypted: i=1; AJvYcCXDvIBr+4UQ4acofpjKEoWddvwRFCdF5/zXlul4VyhmJJpmp+ptdiSSVCBSefuLuto+Ok5iTdTPuz5u@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7JrgUFk6QSX15K5qucWXGi/CM+aC/xpoYolyp3Fq5vgtw0XFA
	YtkiO95pWADJfZ+nL0MXZuty/u7PCfXksuXSOvHovp6SJ+OWgwslgGSv2FiyXTEIZJrOSJbUcfk
	eUns37OphrLawDLmbRMf54sbGUpyMATwTHRfxrVWxCTFH9VwalpbOJJKOCy4ZZ1Fg
X-Gm-Gg: ASbGncvojL4RL2widWwh55ckdyhEWq5/2OJsVG3fCqCedcc1A7DlMf1oI9G0mnc6M/p
	vXtRZ4zNE1e1z2O2PhyRhq2RbzvogoG3Zi48ymsTM2oyWdPVG6MlIryla7dIkWhPgqeUJYyV0e9
	+TcNLv4WSIxCl1daJcy3so+RavxUP++iNZhDZQhfRwqHN8DIxfySZsbjWISH4+0HBNtyOtTuRL8
	1mXbWbXzDbkmMBvFbJ1vre9oDWa1Ok0iCTMlf4grB69nLmIFS7I8/Q+PRc9CITOeTjpP4LU+74w
	foPFHjMxzRzCEvhIhbPybGKDqsyQtY61Wf7wSxE/FFBB6LhbiQizGUCNgJeVNB6224IZ6XgtCmS
	sLWNiERmtoOigWukFr2u9jf1CgaYi1/YYBIQkGRUcCoXn1mwRNdL5Hv1duRhSgc1pZ4hTQdFKxi
	SXiCCqv/jqLVc=
X-Received: by 2002:ac8:7d94:0:b0:4e2:e58a:57e1 with SMTP id d75a77b69052e-4e8b68db873mr143683401cf.37.1761122969440;
        Wed, 22 Oct 2025 01:49:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHD6jgt3mxKd1WB6O0YTEVvISlo0czZyfQHFWSSIjY2FShbZExMO0p+A3Ym2WGTO2ssrxsH+A==
X-Received: by 2002:ac8:7d94:0:b0:4e2:e58a:57e1 with SMTP id d75a77b69052e-4e8b68db873mr143683231cf.37.1761122968951;
        Wed, 22 Oct 2025 01:49:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591eaace6a0sm1771943e87.110.2025.10.22.01.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 01:49:28 -0700 (PDT)
Date: Wed, 22 Oct 2025 11:49:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eugen Hristev <eugen.hristev@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
Message-ID: <g2iviaqetgxf5ycz2otzkpmmc4goo7xuyjmttuu254bfzqqvkf@4vybjh4eghpm>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIwMDE0OCBTYWx0ZWRfXwmvEQRTfW7C5
 QldKsZBPsMPligK5KaYL133DbZNVT73Yf6226rP1+e6ZV+V1CHgFn+00y5qsE1wx/hHPkVz5tVv
 5jZLuirUxUn5Vglx5rL5Gd6J0aN5g3RGV8kMv687tbBHyTgZQHcDqtSwDRafx2273ifR8umTChW
 VdM2MLC9NipvknAP3C48pQCdTENpaZMiRbkqEmmcdhuw7jmf6qlTwe2BMQ+4u/tltMpw/dEWehs
 d5YDCJTiOJapHPHwlVA69rSQcVQAQ0N2OBfm0FpqUj5Tw47l/omSmaKMInxYs6sn68/bAtkSaNW
 LQSmoHs89jxJhpH9GPiFzGrX9A3/9cTLsgHI8K3XafaemKcveIgg4TIsXWnTtufuvbGUyh3GHiK
 x5e8MzeEZps/OWfh7fprHaUFvJQq+w==
X-Proofpoint-GUID: TqI24EguT0YNd03Nps9EKb8hodKmjLFZ
X-Proofpoint-ORIG-GUID: TqI24EguT0YNd03Nps9EKb8hodKmjLFZ
X-Authority-Analysis: v=2.4 cv=a+E9NESF c=1 sm=1 tr=0 ts=68f89a9a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=xGdXe8btZ7SUbin7ybQA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510200148

On Wed, Oct 22, 2025 at 12:28:41AM -0700, Jingyi Wang wrote:
> Document qcom,kaanapali-imem compatible.
> 
> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> index 6a627c57ae2f..1e29a8ff287f 100644
> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> @@ -19,6 +19,7 @@ properties:
>        - enum:
>            - qcom,apq8064-imem
>            - qcom,ipq5424-imem
> +          - qcom,kaanapali-imem

Can you use mmio-sram instead?

>            - qcom,msm8226-imem
>            - qcom,msm8974-imem
>            - qcom,msm8976-imem
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry


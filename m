Return-Path: <devicetree+bounces-189734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92209AE9481
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 05:17:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BD0A1C248E7
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 03:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C44319066B;
	Thu, 26 Jun 2025 03:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="diKasmMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929CC1C683
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 03:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750907847; cv=none; b=tziOlny9xoRpI8+ypAZ5mvgJMYvZjHImS9F2+LPV5xjzyl/GpRtUoBj/04EpmNF6i0bvhu4w+K2HeUpsKx/sB8LMBOOmupYCWx66wstKRMUpq41HnFm+uAWryLp79jvTDjVkJvVblvMEG8nKlWaV42DdvQ1vgknQ1QK2mnAmnL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750907847; c=relaxed/simple;
	bh=x31mGF7s/0RHh07FGyqoXnkN/evj/qdApu57bE/qeio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tYQHmOb0B2LCWoLqTSNHlHhP5HPn/Q7nVODuXPe/CTmAcywmipf3qKOvAlHJNI4RwZFP0Xl1aOKnFMCZQgGxhlqoIlT8DftTuFAQjpMffp/dZDwno+PFTMcIVYdbXtYOlVXJlHYCNeocYcvtr6NtQhuyL1rWloEopqxo6RWie84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=diKasmMg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q0FFgI022078
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 03:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ErBUOcE2lsiiqTjUOQb6F1cA
	j3KxdxJhCA7no6eV1V0=; b=diKasmMgHdFRDruQV16ajkorWL8ivqnLHQJyqUoB
	SC7mNZrO5GTA+JfDJxhVWv5K6BCRc3K7zP13TMQ/qti/lIQC4OngR9pmLzfM6Uwv
	wip6va9+sjUplzEkInaIrnljhG/oBoMpWvO23carllT3pNSJ6oKET3d2vhZ85ndZ
	lXutHiSjCg4w3F0COxDVclaaZyBDrFfbrPtK4XpRjJt7oA7KxhvUjxEe5BzWgZ33
	MSJ2HhX6b2c5pOh5WGV6N0XkYu71SvksfKZ5z7y8/LOoRzT6aWNLqP997JbBPXyo
	Xmh1z0j63B3RINDGKyaAtJT1dNEBuTRTfEpOMsNKSY6Q2g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tdbpsq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 03:17:24 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235f77f86f6so4687725ad.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 20:17:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750907844; x=1751512644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ErBUOcE2lsiiqTjUOQb6F1cAj3KxdxJhCA7no6eV1V0=;
        b=aoMcOdCLx1vDS7Pw8mT47aMO40GrmfbAZ1roVd+VsfThgTdFM0GII9QPM2xiwWFF3u
         Ui5LgIlR/hMaYzjlCuCzBq9vOlZrHhFSf81XbKE8V9D2JzbAcvtvUXfZTqjTiS3ZBgKH
         u1PwVnSI9KSjp92tArvMd8xyxvBufxLbz9g3Dr2rt/QOR2QYubrBHLFawdJYzGVlynnZ
         vO57OVML1XkPJ9S5LeExlwE95jKayzkO8y4L/YO9qoMk4TbfhxbDAQqLwOQNMKoBYhNq
         pU/dH8kNuAscupIZORjk/iB9JEABQJ/SgnKnjauqOUe4daD30FkDx+TkpwFYE/oKqH6r
         /DsA==
X-Forwarded-Encrypted: i=1; AJvYcCXuUeU9qcAL3iPUv0TVwZwkLttQcQHaWhyN4TfJI12G57/8M3R3F2K/y2bIi7pYy7Uem9yYQ6t/hUw6@vger.kernel.org
X-Gm-Message-State: AOJu0YyK1inCW+uDyISJjE8EBhKTaztFmwFd2Lv5K4GHbPjRrJnCMPQs
	ehKFHPrZBkw1KQx1jE80vMGm/G8/fk+qvBjhYfFfpiyLDAseI3SgpXtGFuCl0EqeccKZUhkFEW+
	qk0im5mM3D7KGxsSG9E46uez/PQMQhwy6eY1xjLSHzGmXk+zmSk4uKuSga/9kyMkP
X-Gm-Gg: ASbGncvM1Ihaw5RvrSwp16z4J0j+5w9NBbGf0FMbCru3PttvpCaf95ecC1vNriryO9y
	U8j58o2ZuovXDBHyjODUF+OeaRvgoczALCM+kTFfT36BeHFZxUUGLmkGm5EfPmBAG+rouFiF2ju
	XYq8VPoqM4vlnRkeZQB2p1jb0CeiRDq8ZrMnWkcGM3Uq+0MDKSLLSiizJI/sL+RjJOoP7OPjlF8
	ChEAvyCifnYqP/dObG42pOsjOUmf2JzrfPnnyFCz5anOiOCVCRxJRZVmOO9s1L1GQ7V4l/im7s8
	vq8iJe9Js4G+b1YirgiuCc7/P/3P0/QQUxBJzDPSgAjxfQ/7lCCEydf2cGSxBpQcQQhvvBQsqz8
	WPSbbbQ==
X-Received: by 2002:a17:903:187:b0:234:d679:72f7 with SMTP id d9443c01a7336-23823fead84mr95627295ad.23.1750907843609;
        Wed, 25 Jun 2025 20:17:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmDn5qi3w4LtcEg2tNZs4Bk6hVI5/xpEnIq/0nSUsclWzPvoDTvtuUsmOO4aLVTEXCpBXtZw==
X-Received: by 2002:a17:903:187:b0:234:d679:72f7 with SMTP id d9443c01a7336-23823fead84mr95626695ad.23.1750907842898;
        Wed, 25 Jun 2025 20:17:22 -0700 (PDT)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d86cf609sm149804835ad.203.2025.06.25.20.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 20:17:22 -0700 (PDT)
Date: Wed, 25 Jun 2025 20:17:20 -0700
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add bindings for IQ8 EVK
 board
Message-ID: <aFy7wEmP0EzGUHX+@hu-bjorande-lv.qualcomm.com>
References: <20250623130420.3981916-1-umang.chheda@oss.qualcomm.com>
 <20250623130420.3981916-2-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623130420.3981916-2-umang.chheda@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685cbbc4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=PMlHnbKYs8XDBWqhuCgA:9
 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDAyMyBTYWx0ZWRfXyNstIeFtbaef
 SUxbimFG9lOkrvfI6fokzHuzRFw89WL4i1u5A5x/RifRKazPFbRCMw2nOqNjaE7kwh1E0OaTlD0
 OfiZnP6+WjlL2qwH62f0ERapvhXIlzu/dHG/G0vbHT8fau1r6Rmm13Na64p3GnNZBFalx6/xDGk
 iF51/FDhqeYmKYs3UVx2hUeKs/xVOx1GbdxOgVqLpmmq1kmGmZR/nE2aEhK44l7j6EJFYALEZTG
 J9OJT3jSa+EqO0rustvc5F0GMy1IKsFLVx+S5QI8U0S1mZZYEuvO8o1C0NMs/guwHJcnvXXJjE6
 GqaXg+6sybzb4KyDS2gcr8JnfnaL69kNiQoE/oQUjaIx82ms/PXcVAuCRj3tMzzWT3PjqrLusZy
 1BEGV12QUWkkqAz9c5XKK5NKXtQYh9+FCAXCL3yXzwzIw5QvtDA0Fvy+jJaXHnbgsp8kWFKF
X-Proofpoint-GUID: PtQlFax-z7cXe6rEZh8Gzlv2dM6v0EuU
X-Proofpoint-ORIG-GUID: PtQlFax-z7cXe6rEZh8Gzlv2dM6v0EuU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_02,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1011 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260023

On Mon, Jun 23, 2025 at 06:34:19PM +0530, Umang Chheda wrote:
> QCS8275 is another SoC under IQ8 series of SoCs. Unlike QCS8300
> which has safety features, it doesn't have safety monitoring feature
> of Safety-Island(SAIL) subsystem, which affects thermal management.
> 

QCS8300 and QCS8275 are both the "Monaco" SoC, with some differences in
which nodes are "okay" and "disabled", and as you say here some side
effects thereof.

Describing these as "Monaco" and "Monaco with Sail" would lend itself
for a better structure.

> qcs8275-iq-8275-evk board is based on QCS8275 SOC.
> 
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index b14206d11f8b..19823bc91a3b 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -54,6 +54,7 @@ description: |
>          msm8998
>          qcs404
>          qcs615
> +        qcs8275

Please add "monaco" instead.

>          qcs8300
>          qcs8550
>          qcm2290
> @@ -935,6 +936,12 @@ properties:
>            - const: qcom,qcs404-evb
>            - const: qcom,qcs404
>  
> +      - items:
> +          - enum:
> +              - qcom,qcs8275-iq-8275-evk

Please use the qcom,monaco- prefix. Is qcom,monaco-evk unique enough?
We can sync up offline on this.

> +          - const: qcom,qcs8275
> +          - const: qcom,qcs8300

Please replace these two with just qcom,monaco.

Regards,
Bjorn

> +
>        - items:
>            - enum:
>                - qcom,qcs8300-ride
> -- 
> 2.25.1
> 


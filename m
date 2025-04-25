Return-Path: <devicetree+bounces-171006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FB1A9CFB1
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:35:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E7BE1BA76DA
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E432020E31C;
	Fri, 25 Apr 2025 17:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aynETfNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5601F76A8
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745602518; cv=none; b=Ak+Erq/JeghV7NFgbg++u8xN1Lc1U4MRlebve2jl8n0rgeWJM6glcROr1rX7Jie98Q83F2VRb+TVA7wgigoNWiqADO/RYHO0UkL9Uss4sGnpK0NPY6PEh4w/O4sA1STVGE6N+NTaRuJa7Ime9AkkVYSm7Y1dMkYyWVwc/Dj322c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745602518; c=relaxed/simple;
	bh=hOAgLBo3rmrxxikvNXsfBO4Ojj0ysk7D3E29Qc8z9Ks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bfW2RLXSTU7N+v9bdWveCyBnOjU7IW0uzfcHlrFQKRQs9e8k0MbMPpBMrPhy78t3AuujAB6p1yOy59+kgwr+qR0YgD+FmDMwkE9E0JyEgpuilU5IzoLAfKYZdkBD9hXo9qH/reN2SCIiDUMydaVng/XnJBLS6cs/HwQSA+B9jck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aynETfNJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJxGB032131
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iYju3EJrtvAUizjHu0/EruE+
	XkPNrQlYf7FCiID13iw=; b=aynETfNJo4fdKRQLlL/4QlV2AkETluH554IM58lo
	bPQZnOqSUYty0GoJ5DUfpDu58qv+1h6d51oT1a9Ku6stXydR0vQddkzgS6IWsS+k
	z5COtFcIgdKWUChDxwFWTr1AlaknUVn5x/4ZKXVJjCfh+6nVDzB0zs4cE6nbPQHH
	Gcu/VfcJsBy2LPTW2i2z9OKU32k5C02nVEgkdhP0DbNwd8JyacidI/K3z5xsdquE
	9ENN7h5MTPWTuBEMIrbBXoepdX3H7Uw7hSFEycTzkWMtwHO34hDOjkErozm5ix4d
	NW2lqnP6yyBVWpPJXMZKq7RJkuApGDPXeCa+SBA47Sw/aQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh19qb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:35:16 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f2b3e4c176so52775806d6.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:35:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745602515; x=1746207315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iYju3EJrtvAUizjHu0/EruE+XkPNrQlYf7FCiID13iw=;
        b=NWu2mLrFqUWsZrcanI78e8Q0gVYDmuoi0LINjU4CPiROMVNG1hGq/T4OOGtf+57t0N
         sRoSUSl1bQnDwQw+T8GFzufi5nZGv0s7cT+Hv5ouN79R8GDhtXhGQhHBR8BifEjfWn72
         mYfSJspaZzAKqrUAK2oFfYSXW+pQ3737mIz0YjFEz706R5d9oQhyqGg0L9Z9xBuA3JVX
         xwjO3z8LbdObEH21bfPTD4y69KekZcXfoBnuUM23Lgfm5H7+sS9IoxFuMZ7eH1Yk1h5P
         uYkeE/g1A++ZCPgrfU234x25SqZ4Y07XUB23fNuPk1iJRPneY+xs+vSNIfapdL+HEENb
         BZqA==
X-Forwarded-Encrypted: i=1; AJvYcCVk1C6PfqerhFyKYPviA/wlbUuHtyMlByDHmDfke04DUQLNdjqcx6WhskuUPBIMhFLKaK2RXcpaMXjL@vger.kernel.org
X-Gm-Message-State: AOJu0YxEGG6iU3e1gOOxSn0h0EirkUL8U9+D+wL1V0OjagK1BoHt9yST
	3TC7JfMffslL7bXauGYCHGXntNgJJz5QpR9t6MPdd64AYfxy+KrbXbgodOsL7EqWzomRCLoxjTi
	88YNMf80H31ZRcuRgalviO2tmQe9HhPTM2bUZhic4bJR7sizGbDrLYGa/MPmW
X-Gm-Gg: ASbGncv1xqg9hUTkJ3RxylCOkMFAXnhD/8CH5xqraKitg2Rp2+K8kvu+YAGC88Fizso
	1j1l6oUlkWVvocX1yVsDJ03yIJBP+S6L21Pn9M4UU/b+CiflIY3mHH02VXce6Iwmd6Tu6HMrvFk
	jE4KOXW/ES270G075ELRcVmcfwetqLVxMA7XuzeZjqo6rCFN6iVNyxCtS+TnoHd27//LcxnDUwq
	p+vH18SuDjR6HLc583qNmfCKFD87EkCzJ0X7ox1aQvUy07fk1dBKFx25rND/Z1WOcQ6c2ys0boX
	f4dqzdW1faDDhvwvKkWpdHS20AdSCUvAzekpMkw56AzewIBd59noBh0l16CKv3AXNikeFK4Q+dg
	=
X-Received: by 2002:a05:6214:3015:b0:6e4:7307:51c6 with SMTP id 6a1803df08f44-6f4cba51c2dmr52746226d6.34.1745602515272;
        Fri, 25 Apr 2025 10:35:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJZmtrsMUpGVmcWNWgVpvUyF2Bex7W+EyH/Zif0B93/CxbcE+0Ez8V8EAzdLQZ37qeR4952Q==
X-Received: by 2002:a05:6214:3015:b0:6e4:7307:51c6 with SMTP id 6a1803df08f44-6f4cba51c2dmr52745946d6.34.1745602514967;
        Fri, 25 Apr 2025 10:35:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317cf659b9asm8398381fa.19.2025.04.25.10.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:35:14 -0700 (PDT)
Date: Fri, 25 Apr 2025 20:35:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/11] arm64: dts: qcom: msm8953: Use q6asm defines for
 reg
Message-ID: <44bdd3fgf2e6wfmlfjcj4cepooa3g3b3rzwdsatzrkzre5rkll@24jxskma27nw>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
 <20250425-q6asmdai-defines-v1-3-28308e2ce7d4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-q6asmdai-defines-v1-3-28308e2ce7d4@fairphone.com>
X-Proofpoint-GUID: m0b9zdTrv_YapiOa2o_3CAy0DCpMKLuO
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=680bc7d4 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=0uHdMyS-I8ESt-gxu3MA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: m0b9zdTrv_YapiOa2o_3CAy0DCpMKLuO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNCBTYWx0ZWRfX46lY0fiqmJHx MF8N8QZ6IETIkPBqcdlBBekOv21agvTz79f9SSQB93sNGGS/Hn/IzaWHZ52MAPL8SbZ9V1372sm CyNKqvhaotpRVsU/12ZALQy5rFx0CuvjG97U53t5NOP18NOlVIgHueDECZgPwCZjxK5yBsxIjro
 MBc1JrjQD76DYFg0Gan9zHb7q0nRHV9XwKeqSjiRB3LNisMb79+8kRLYAx4PUFVN1u4v18iY03f h0ZDMhw1nAJXJsaZeI/MYBoxpRyNBAJ2OSvYPkbSpJpNYhpvT7tnFsVFfcvGINamVgMjlpwRQGz QMKF3rUaZ/15WwxCQpU0e2oC3LWvhwF+jm958vrT/Ur57ev4dcIB0P0sdA/A9dseMXxlb5VN39D
 W6K0Tf3jL508k7xfe79PcFUyP763JNvUlCN9aHZJtKbP7uViKW8v7qX9WPbbzaT4xYewPYEg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=598 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250124

On Fri, Apr 25, 2025 at 01:53:42PM +0200, Luca Weiss wrote:
> Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
> readable. No functional change intended.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8953.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


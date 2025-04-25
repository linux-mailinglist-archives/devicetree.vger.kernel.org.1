Return-Path: <devicetree+bounces-171002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FA8A9CF7D
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99F534C6328
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AC41FBC92;
	Fri, 25 Apr 2025 17:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dxYRUDos"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0991F8676
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745601987; cv=none; b=J1eSyZjOZGdbSpzDsj0mBsuhrImLix2CcLJcEg/+xiz0zxV3NaSNz6oCkONeQaFBkSWZh6/IuIsLM+47LWOn0k4NBFwUZ1cKvOeIELdAsGA675eRINFj/3yGaiAxGfQtp7Vigf1++7RYjkGW2KxLZciP+kCUyZbDdWba9RZzAJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745601987; c=relaxed/simple;
	bh=8hg558yANT2sc+YTep6wfK5k68FYbDUsk2+ub2VNI3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kcwSh8W+rjlm/etm+Tqn5+6IRzCUd6t9sdCJW9yyQfrCfNU25qq1KV8kLZjjWJLzGlCuAPBB3rWRGFKgm97B2J5WJWrrhVTULtPrszInPHQ34iwEgtzX3mR6C7TCJ9+u732wF/App4dKfyQAMsPuc2b+U65ZFLRrUmkS/oM1KfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dxYRUDos; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJuR7001355
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:26:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5epQh/flHpVh8dT3+VnITaav
	y9i6eZEZFyRfGUTfpqs=; b=dxYRUDosRFUFA9B/unpg6slaZNQC2s7SJf4A9a7t
	0X6SVESP3MXxLG55zeRX7HuZtNfyE6muo1M5O5hxEiz6SYNLxJ5I15o7OwvqYaqI
	M9bUejR6aFqqWgC9Qq8mv1KVkF2YBl1EepZ4XdcJCnygAwwBMCEB+MI0/3QlFQkb
	udyo6jW1qc6SVjnQzWx65XerwZP9WcTXn/CkRVpxk64JzGz1PhDdFTRBiwaMr+kI
	++0rcGBPym1XxBVIojKC4BJvCWfJ3gDdPDvNsDiRiAzFATOcTiwXjFkfRSMw/5Yk
	Gv3wEw3aBdxTRmPlDdQjqoAe1tM+HEUpjLKUI7UGUnYwfQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3hube-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:26:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so451708585a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:26:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745601982; x=1746206782;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5epQh/flHpVh8dT3+VnITaavy9i6eZEZFyRfGUTfpqs=;
        b=pkbSlkLh66HO3hlh3p3FgXpDfhdET2KEfYkhjql18nRvWUIAjMqLoG0os5qQ+4jHh9
         BRN231/QY8RZ3mtX7L/u80Mz+nqAGm1rHidVf9kudmg3YqfcsbAAAb8+32dKK3QpsM8N
         NEs6nM8qQCwEyuh8xKOc5xwpS7EoO0vtIJ/FgXkX0p5Zhtd16pP+snPOxsh+1QWKr+vB
         yKiNJJfy0Poesbh4toKJiHIK8YvxWG9UPNbm+Fv6vJbUdw2Ex6mHVKXPTE+SIzxkFDBp
         8exJ1/qZuGHMc/ULdK/yC139ZfaAwCG0KN9zLK6aloDd9gdRN52cUgGn0Xyt5dFeA2qM
         GQAg==
X-Forwarded-Encrypted: i=1; AJvYcCWq505naMzetudKh+FhTC9G4J2eH6HYAsLCVnjZAgsL79dObPNZCVTfj5WVCRsfwpYGZsg/AobYtmr6@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp+P9FDl2gHv+aaXsJ3CC5P+r/gaOAuqJrTjXop00bu3bpAbfw
	csMweVHpsVV/hcVOGtB9Vkp9JuTPvee6AC4kEN5+XGwJ9TR8sRsp40IrtgJt/VzdIwv+wfQUyg9
	K2fhadTLb/e4PMHM3OqsSFjJZOLITT3dS8PnTU4O+K7zJP1XbTPgTuPZn3u2j
X-Gm-Gg: ASbGncvO1b0/j8LG5mjoF9KanSMY3cw3OMRW5+baoeB7P1NPdD3N9/YyeIMBbPIHFdO
	+KfBJapHUkd6t2+I/qIhC/OrGsTRr5dJ/vhItKsm9kr+0sbzQoR9vb/qme9sIZL8Vn8r+qImLJb
	YpsF23ezSbpa7jZT28KYBPGdaVdOzu3djG8tAxOlEMN8TIIlrfpl3MluBXXrZ6S3RQ5lCUmeTkP
	1t6AnP7m/0m80WJLTAjwSBG5tIjECdjeSB0FEQcjv9XlcKOLOMprEhpHA/jJDyh2esexKCZZij+
	MXCAjI1b3GB9sulhI12Brfryz4GOt/FPlf9EexoOwI9yChiePANUbyq/1SRPlJeY9Sa8JxrfsZs
	=
X-Received: by 2002:a05:620a:294d:b0:7b6:d7be:2e4 with SMTP id af79cd13be357-7c958659f26mr1134336085a.26.1745601982649;
        Fri, 25 Apr 2025 10:26:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpT2LmKJlaY/z7qsyXSWdk47538nPobMnHSAFaz8q08N8ny0p0lgp7K4A5R/f9gHoDn7zjyQ==
X-Received: by 2002:a05:620a:294d:b0:7b6:d7be:2e4 with SMTP id af79cd13be357-7c958659f26mr1134332885a.26.1745601982311;
        Fri, 25 Apr 2025 10:26:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317cfb481ecsm8114181fa.31.2025.04.25.10.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:26:21 -0700 (PDT)
Date: Fri, 25 Apr 2025 20:26:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, krzk@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: media: qcom,x1e80100-camss: Fixup
 csiphy supply names
Message-ID: <z7rklnxuuqnimmc64vcc2b77n6ohdqznek2yxxlmfljvnkqk4c@4dfzdeb2x2ha>
References: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-0-8c12450b2934@linaro.org>
 <20250425-b4-media-committers-25-04-25-camss-supplies-v2-1-8c12450b2934@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-1-8c12450b2934@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyMyBTYWx0ZWRfXxHBJPXfX/T7o KHNf/jHn5I1A9hngIgfiext70FDdXOqjaFP+w9oEZWvRGm/USoju1l9Vv6jlexPO1rp4bJKprrd h4aAfIB/r/S+K4Jtku7YYs2kR5AawVVOHxWkQecevyeOyFm3L8Zwgr7g0gXOR1P08KMCsCo9pqj
 /UczgPCVrpt4m8pVWif7zoGYWL/1QHlrURxN1uQAl00UDyjJWB01AgHSbkcxK7h8gB0KXSjog+L gINKFSqKC4Gh1ZxW9K0xksw3kq92MfILf6wfYYRKiCBzpfi5v9Ess40ujcI5lVG2IF9vqKl3Yrc fCBMXkZh300ucn0ju3A42fidZXr82XUe0Fn3s5N6SNXykVZeLg4btENOlsRjJqkcMvMEMJdnKZl
 rHLR7cDWpHdVAH9TS9pzH5peN3dkkQbcUy79DI2RP1Sv9vLBZehSECp3i2126gSP6F3oj25T
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=680bc5bf cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=VqMsr5fPH0kPJOHiwU8A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 8kUrBkmueZ9a7t_i-ENZt-BC3wTR8QoV
X-Proofpoint-GUID: 8kUrBkmueZ9a7t_i-ENZt-BC3wTR8QoV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250123

On Fri, Apr 25, 2025 at 04:17:33PM +0100, Bryan O'Donoghue wrote:
> Declare a CSIPHY regulator pair 0p8 and 1p2 for each CSIPHY.
> 
> Name the inputs based on the voltage so as to have a consistent naming of
> these rails across SoCs and PCBs.
> 
> There are no upstream users of this yaml definition yet so this change is
> safe to make.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/media/qcom,x1e80100-camss.yaml        | 52 +++++++++++++++++-----
>  1 file changed, 40 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 113565cf2a991a8dcbc20889090e177e8bcadaac..dc7c1a9394c3b547f5e0885bf501ed42dfbeba88 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -118,14 +118,6 @@ properties:
>        - const: ife1
>        - const: top
>  
> -  vdd-csiphy-0p8-supply:
> -    description:
> -      Phandle to a 0.8V regulator supply to a PHY.
> -
> -  vdd-csiphy-1p2-supply:
> -    description:
> -      Phandle to 1.8V regulator supply to a PHY.
> -
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>  
> @@ -157,6 +149,30 @@ properties:
>                - clock-lanes
>                - data-lanes
>  
> +  vdd-csiphy0-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to csiphy0.
> +
> +  vdd-csiphy0-1p2-supply:
> +    description: Phandle to a 1.2V regulator supply to csiphy0.
> +
> +  vdd-csiphy1-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to csiphy1.
> +
> +  vdd-csiphy1-1p2-supply:
> +    description: Phandle to a 1.2V regulator supply to csiphy1.
> +
> +  vdd-csiphy2-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to csiphy2.
> +
> +  vdd-csiphy2-1p2-supply:
> +    description: Phandle to a 1.2V regulator supply to csiphy2.
> +
> +  vdd-csiphy4-0p8-supply:
> +    description: Phandle to a 0.8V regulator supply to csiphy4.
> +
> +  vdd-csiphy4-1p2-supply:
> +    description: Phandle to a 1.2V regulator supply to csiphy4.

My preference is still for the platform-specific supply names which can
be correlated to the actual SoC pins.

> +
>  required:
>    - compatible
>    - reg

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-250851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A86F3CEC5C1
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 18:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7568D30088A8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 17:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E687729E0F7;
	Wed, 31 Dec 2025 17:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MJMm3lvy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jrM4Zjqh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5833329E10C
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 17:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767201589; cv=none; b=ko9aWiZ7dmJPTmfdfl1vRp9st7gOIpAM0pi9EaL5LA3nl+16TDh3AKmsI/dV8GRA+qc8ILuPaIzxvuhdSDZe5ZsmDwOBNuCGFGKI4l19G9rzJAhRIKbKa0NmFxRBhlTE3Hzfb/E/T+N5TEi1xXcGzD2G2Pz+F8f6PGJPBh9hkxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767201589; c=relaxed/simple;
	bh=id1IeA3bx5TmCwoJSrmQiUecH7EPrlkffZHJvtfx5nw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oFVEn9PUgk+Qxz2eCgPrkopllgey9ha+VOSebkKMToL4ZrDmjLkKDtyca/Ja9IzDfvQRJ+gbBhy5UKJWSmhzjszfUDEihg5I+beGcn2B6q2sdKWrAgGP83/6LI7o4fhbmqlPxnZJkFEkKNKSOe2I3APzXFDFSZVE48tBTilVSDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MJMm3lvy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jrM4Zjqh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV4oXY51429526
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 17:19:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FsVwhGeSNZjfI/xypJprbyAZCILTaLME2r61MFMi/rc=; b=MJMm3lvy/Y3eQX81
	p8lLCK0eriJYaeMJ6JuMn/cjt07FjYOWk7wUlpbgdrZVZ/0dNvoxqBbBTuN7l5hW
	mtemvEHuwI/+iEq5whqBp4cOPxh735vyuvtI1YeOeccb5T3jDEM+cKxawQwcXSWj
	vs78HRATyEEzqVdgUZsBHNLOcPT1H2y1o/1/28mnPRBBJQ+lzBEiB35DfUex70qb
	SI38zYCmFz0wOU8y0EmUaNfE9KCmrsMChAM5QR4p3p1tqBRwphStt29mkAXtwI2O
	2Ol1TxcPwliGULd+EaWKVo3XSrQT/5JgYXydZAFfYBaasDNKq9CbkMuw2OGlJa97
	q6cKQg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcw5e18a9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 17:19:47 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dbd47fb70cso28383746137.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 09:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767201586; x=1767806386; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FsVwhGeSNZjfI/xypJprbyAZCILTaLME2r61MFMi/rc=;
        b=jrM4ZjqhfULXxiUCDQ/gCl13rO1gnr+mGDTjwFt1jo3IyHC0g40FjU1qjGOOmJT3Xs
         khhDoQ4Vkj3u1yV8WdX7d2Aqg3kjQ/VTyLHCY7iEp0m2dB2dSLI1vz6XlIZ8jlHUnJzB
         VMCg/3DU8YIgqUrRJ1qWPdQ/NIo//peyEMKzRDEZ8HNd00jestZRGuJ8ewaVoCDVOtjK
         2qJIEPt40O5EF7a5wd1aItGT5Tjq9d233Qri64VHZBaer9qvqVyiDdaAySmRz6fmNgnq
         1mQgiH55vo7x+N5Plh/yre1vDQycCYIzBysxzdil737e/82Pq9II69Vqkj0DKogJU2cr
         QTGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767201586; x=1767806386;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FsVwhGeSNZjfI/xypJprbyAZCILTaLME2r61MFMi/rc=;
        b=rv+uaubZXEYDJLezKXWJEV7nK9HjjQp4BLy9V/gUkqQc9Lr1UD6lt8ISUYve7SojeH
         9EnxRgL7ZLMa09uF42YNNmIcCRYKWZonN2fO2krNobDd9lVqDwG3Vgh6qG/wLRXDX3sF
         FmX6LQVZ7xCphNe8QgdCaLyFXqiw82upN2P5nIeJOTz3rc3YhwOco+cEPErVjS9Li4gO
         f6/KVbiRueNgsC4dSNtOE75M8KdJvsNOoDKLomJa1xdsnrzueU5jo55cwx9hvfzughsX
         ZPXpYNmWZDiLP0sXD0njXhzfehrnzqwGAEXBIS9nbZeRVO4bMoy2qlvhQptdg7/ZQcXS
         Ms2w==
X-Forwarded-Encrypted: i=1; AJvYcCUzlSedFFiLf1y9xiJzaobhwGfpZQJB4XeabVOHehKhAjPeS5nA/kRu07ha9kOHJA5p1Vt3RIIZvp1M@vger.kernel.org
X-Gm-Message-State: AOJu0YyVVsCjD3ZOusD3S/leDkWVpIKCYfWv122fTtm89hk3a4Q0/E2Q
	BJW6x3M1QoQ1xl/3U+dvSB3e8/C8OM3IZFyH96ZhYFBbxLYzt7hH+lABjZ891DhvJTLtHiUGSBM
	nwwSp3I2/XJX6GmQgxJSHrk1erodqlyyony6KFtbe0NMMcWPn7ZSxBiRLMkgD9LrH
X-Gm-Gg: AY/fxX5pgqSQ2YMrLwrbR7EHdIvo3BMNnSREyKdlPhw4oYkNR0FW9fwYmY/Nw1Vh4NF
	+dflUhrqh89Ys/FAo7qN/ZNJ7v9yU9uyUBO2z4r/9nSKe+zs3kw/P1wvHzJAumLwSkTStmxQpRt
	dWEyIiah1M7n19o+TphiT1wUgqJUxve/EywLxV24nRTzpfoe2yivr4uUx++36eoh/++ceKlKfDa
	qlKtvgdpHcLiBDhx8+qNVs7DY1fsRQo+vPg+QWMi3+sUrq+L7q2yuBwwqnv7wu5yPdxZMuxnL6j
	QQ1DRrWqWEgUp7oyywkFei1K5epLTX1Yf9NwA6cvufRr4jfp6KqP++Z/u7zIXBnlONug7wfa/g0
	tl8Bd0jXzmnrRqewhAAWo2VSjGUDJjuabVrmOe29r9nFOTp2Ix0mNaMDRne4wuBdh7CVj2FsYvh
	h4pI4OZAelsba1fwPGOhvjHfg=
X-Received: by 2002:a05:6102:6441:b0:5dd:37a3:c389 with SMTP id ada2fe7eead31-5eb0237d5c0mr15223330137.2.1767201586371;
        Wed, 31 Dec 2025 09:19:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGx3T6dkQkJD7EfRSRFNeeLsOEG0OrMkSaoi/pwalLJ0EQtX2UMRuBKbYrQVKniuFZcoxPG6A==
X-Received: by 2002:a05:6102:6441:b0:5dd:37a3:c389 with SMTP id ada2fe7eead31-5eb0237d5c0mr15223311137.2.1767201585958;
        Wed, 31 Dec 2025 09:19:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812267b184sm98222551fa.43.2025.12.31.09.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 09:19:45 -0800 (PST)
Date: Wed, 31 Dec 2025 19:19:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 7/8] arm64: dts: qcom: talos: Add GPU cooling
Message-ID: <gwrg55ytewfhlz7w23yl5ac2sjic5uise3cv7jnmuahnolompj@jl7ufr76wokb>
References: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
 <20251231-qcs615-spin-2-v6-7-da87debf6883@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251231-qcs615-spin-2-v6-7-da87debf6883@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDE1MSBTYWx0ZWRfX6C4cuJ5xqZ+3
 IUU87GFEMOLJofLqtMU7OMhJIncQLbVm70o3gWYPYjPt9TVejOzlxYLZzK9mUpHesyGGreT0DGw
 C8m+PwYhB4Dl5kRkE/Z1IeRjk0zcbiSwYrBIFYXVCQ26LpOjUm94rpzB/k4il/FZiWs7jVAicsb
 bU2bidLGduiTXXjcAllIesjz0i4jEOYl0LNLowZhvKY8Eq5puMZOD0OZzLGjNYdgYhJItMMtDDB
 4iVnEwdlFuUwNhbi9Qm9pTwEWKq/wtlyV5QguQkda6d9aXMXrbp4wgJVmrvyZCpfJetvRQeJ3FC
 HjZLfKwN9UdmynhTZZfV4ktdujcDwn/JNuWolM2xzOFE7ydA/EKyXkz1rrQKNHsFEs9ToKL7/3u
 cyT/gMK+XkaOAE9IYUxX+7soKGmUUDCGSNolLwRbC2eJUnA/hNQ4DXRVPxYlfv91REwvEffGEyB
 D/4YImJqjrBFPoS0Sxg==
X-Proofpoint-GUID: uG5UATtMDffdQhGwDJVqJXTEBHy3mc6Y
X-Proofpoint-ORIG-GUID: uG5UATtMDffdQhGwDJVqJXTEBHy3mc6Y
X-Authority-Analysis: v=2.4 cv=Mdxhep/f c=1 sm=1 tr=0 ts=69555b33 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=UQAiW8fk4jwks4S4FoYA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_05,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310151

On Wed, Dec 31, 2025 at 02:15:28PM +0530, Akhil P Oommen wrote:
> From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> 
> Unlike the CPU, the GPU does not throttle its speed automatically when it
> reaches high temperatures.
> 
> Set up GPU cooling by throttling the GPU speed when it reaches 105°C.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


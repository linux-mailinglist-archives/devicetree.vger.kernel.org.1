Return-Path: <devicetree+bounces-227875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C21BE5563
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 314FF4F9321
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C74F32DBF49;
	Thu, 16 Oct 2025 20:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IJbWk0VY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C31D2DCBFA
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760645587; cv=none; b=pwk2XrUyNl1qhzYk0b3yI8uBBJH91bngou8Ubd89Xr8szvHdQXoBvWBSj1aK/GG4pVte/I2afN+RxwVTqkAScnVWvQbMd4O9yUgdiVINTXLkPTZUG0korbRAkE5WR1XGAYznLXVlpUErNZBp7XnCQ5DsZiZV80K5Ip0+JsKk8ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760645587; c=relaxed/simple;
	bh=mOME36+8eQcGxhH4dlB6qH+29/zcbf4zo8g9Kx3M6/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qo3+svMLwqcxsf4speBbbzgB+w/nYb+ibidkcBGGHzaQ+pcgEWhlUnOcMOFAyKo7bWRq+TjYRffQtJyMXzXaF4DHdpeylil2lusGfz/xfW0Z8wrYULqTI85lzvi4miju8a0hjM+EZ2odunbum+LUbpTIiadLAd+XFRi5y53VLu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IJbWk0VY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GDqIUO024767
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:13:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EZQrGx2m2xHUIxdtUEMN1cB9
	SbmMCf28CGDq/t4r4js=; b=IJbWk0VYTEllwTRWe8pLZBWqeFQZD5Hgo8gLf494
	nwsIHDZIG7vexKXz9+8KCJ6jGY8LvUXuvBt0nlFwE8q4nvDEOLS9DArAQ7K6Mkwc
	bbJ2t9ZpTQ5PHfLBNfn5sqOAig2K7T3+oADnIBkO8m3zdc5QHwurMMXd5Jucg8Wn
	vUlfiv9TXv46n9nI5G+nSO2SW6S8UDGgPT6MomcSMrFKVVDFs1KL0qKsVzbb7ibl
	ahlhTkSME3vKK5kZTuIW74+ZRXUOrOCChggm4z7bNbKR3w0cmUHqdtqhFmIWEEK3
	79sN/Z/55ePVXP+i9BkSj32yAiBKxIjK/ouIJJkYexJuyg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff11n02-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:13:04 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c0e0d12ddso40208796d6.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760645583; x=1761250383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZQrGx2m2xHUIxdtUEMN1cB9SbmMCf28CGDq/t4r4js=;
        b=eJNHAHD6Y7zNslEXLhEclZRSbJ1unx/V1VOjT6qZS6HnR9XUt5HBwY8qjNHoibfZu/
         YoLBOrkKfqBbWEZoD9AkAb+IwR+vLg09+B478Wx4a33D9uaFthFnrPy67YSTCi4rEPU8
         SaDvV5AGFsfcMghf8ZrUBWS0mxFn3iwyNCKDphzedMIGjirftonemstwHXnmFPFwrv73
         z//rpSIfA1/KzgmV0RUEJI+0N3wzRFHfXWaPTSkoJC+fevssHK7K8Cz1Bl40INjp17eY
         JhhJVUA0BIGD9uWQIZe+8Ni5zKo4MjhUOluTQ2Lj+t8Z0Dea+PRubSQo3Mqd/ngoomfi
         ZLcw==
X-Forwarded-Encrypted: i=1; AJvYcCXTA8XbOoJwGhwoqMxN2iJYO4F5K1x52uQDTL55wk/N/xzjtAAT+tO5Tl92Stud/eGTb2VQZFV5K3F+@vger.kernel.org
X-Gm-Message-State: AOJu0YwhlFPmInCZle0RwSE3J0X8woUoKu9MqF+CGlSTG6mu7uSGBBzg
	PbmZnz7f70IZIvaSFovFhbTl7tPI2jhA1mY7rQO6069gvOxyWc9j92CIhSIPbDwwieLK0GPUrSl
	WY+maqQpKz5l5ssK/+8stnP2XlFhKtxLD1U0D4BFGVkPpl56HqOi7NnrHN67EiS5k
X-Gm-Gg: ASbGncu/0Z+iMv3GNmIsw+Qyp/n8i/9xIx7VWLsVd5sywHRJS0jdXv0cWQbizaS2JdO
	jtJScOf/7O/dAu0wGUgFoq+G8H6OW6O+GPA9NtfU2PqzwuBrLqTUuFJywuQN9pZjR92SkKZ4W4u
	IA7MMIRvO/f2cyR1ksWfGqfZlgQSA6pT6pbQ9SiP9kK3Cw61GRlitFBgdACbBO39eMmUSuVNExt
	iJ//aM6eXhN8LGaSOTPkyDfqo+YJlJCrObPRDyvwfz8nyGwQwk5jDa+FDQIfvFuvXe3XqBGEprn
	Z2T77UOoVvevXJklxvgmuLA8Ky8Yh8LE2kr8FCnJ0qej/uMdyd74XLTaSF/xnT3fF15MxpM2ZVu
	usIdhnQt5lmbHYhYc6iVi7V3QgHqJX4eLyFqdNZvbEIXRnrGsfFArIJtkuyaPlX77qRst8yq4oL
	MY96JpjH/MqEc=
X-Received: by 2002:a05:622a:198e:b0:4c7:e39a:388b with SMTP id d75a77b69052e-4e89d357b64mr20224681cf.47.1760645583004;
        Thu, 16 Oct 2025 13:13:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNe0OiqXmb/bPK0O4iLCJSWLwLXN9liqFFAIqNAzYgpnDAi5RXwm5Sf4ucmJvR7g081xSpLQ==
X-Received: by 2002:a05:622a:198e:b0:4c7:e39a:388b with SMTP id d75a77b69052e-4e89d357b64mr20224331cf.47.1760645582578;
        Thu, 16 Oct 2025 13:13:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908856381dsm7280357e87.80.2025.10.16.13.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:13:00 -0700 (PDT)
Date: Thu, 16 Oct 2025 23:12:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 5/8] arm64: dts: qcom: sdm845-oneplus: Group panel
 pinctrl
Message-ID: <bspiap2gflponimgt64ulkuyp6sfpzab22bx2v27tdg7m6dynl@c7p7eay3h6r6>
References: <20251016-s6e3fc2x01-v3-0-ce0f3566b903@ixit.cz>
 <20251016-s6e3fc2x01-v3-5-ce0f3566b903@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251016-s6e3fc2x01-v3-5-ce0f3566b903@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXydSiv7TkZpam
 30kM3HrF9um7QrcZHvznH3bFYb7CZ4n9vIoOwclJ74LZPKo4w4Vxp6pnBWxOlbtFuSfEEgt542D
 JXvaTc3laHc/atz8FPNyYWgcSQLxYJhFONE+qy8d1Ba99ITViWe79ZI3//l0Zj8H/mlifGgAe4s
 z0YECSVRrlN7AeMnHHbbqFWHwBBSbKlVzWqjfOC/a0FBWkDKxo6flvVtQO8nFfKrplqFnFoetWu
 VFokitSnuzpP8UVBJFZGpsVhSW9Q24fREmU8RWL/g8Fod+cWpXW9aOenwO5lTZQCCWGg05j/wIB
 CUnSntG4o7/nxoxxPpdwjYMDKh9WkuSZZGsLimIcA==
X-Proofpoint-GUID: bSR-Ur0ZJaCpwGjo-77Sb9B6aXMUWuwZ
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68f151d0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=zJdh1BpShusDlwL3NFkA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: bSR-Ur0ZJaCpwGjo-77Sb9B6aXMUWuwZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Thu, Oct 16, 2025 at 06:17:00PM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> As these pins won't be used outside the group, let's group them.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 46 +++++++++++-----------
>  1 file changed, 24 insertions(+), 22 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


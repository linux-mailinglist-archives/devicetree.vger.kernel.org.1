Return-Path: <devicetree+bounces-248502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7339DCD3402
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 17:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D753300B91F
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 16:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325162D3EC7;
	Sat, 20 Dec 2025 16:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lew08moB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eDUuAP7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55F3287510
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766249531; cv=none; b=aTx1keoQizlkbKmvUv9/5gNsCODMhPvE0ZMuB6YJNfigNcTtoTNn1kaRtv+9iX7pCJABhh6fVdQztnhIqqN9LWrQMWvnBhT8DT32+pW8d2vzzX2b3nne/7QnmG6aTlhfVvk+uKl0OQJm4Tnr58IZ546+9BDRdiL7o76HWUC6ONU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766249531; c=relaxed/simple;
	bh=OPq2jgXtjTjqBqxOYiuLvmvpLqAJDVsRGupbqBGx7rc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iT7LIBQ2/RkcsaojWVGIc/ptSXuiB80KpeaUPJvNwEK2s3XWZyjB6EJtkkPXUbiXxniKz6GQ9ofXMwXoz8GtApQb9yQyt0TuiA3dr0t48o7AjgtoNa82sMtOm42etIYdfj3uMaNa+9/ixLeny/OzukeMziF3Y5ur62uVIKGdmjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lew08moB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eDUuAP7P; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBPLlO3590550
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:52:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=md820MSJFmMhxzBhoy9K+H94
	1G1BAf7npRq1mwTR9kI=; b=Lew08moBKmsRyNrL9SesOrsXUaVNS0HMRZ6xjred
	dIzNReB6N8e/4pAtN4YPXoTQR6By4GSvBp+61ubKABL2PmWQk8+SR8swpBmSHbbN
	QfhgGr2697eMHBLSs9TYNAcgC4U0NpgdgYk+WGPCRM7EFJgoHyX2vMCw2Q670yrz
	55yenpkIGWRxOnV9Iei8/HLHV98+BffG+4SdXsVnaEMNkWVkZxXs6YsDYAjRwzJG
	FKrW3pQtblUqMgk3I9sTqH3BU7KD/EZ1GoQ9c4styrV2QeWcVr8TASDSHVs1umf5
	Kl3UQmcl0aB5ulsv5svVbeRcjyyTFsiVvVy0Ifs55vncAw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mtb0yyr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:52:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0c1d1b36so83594241cf.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 08:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766249528; x=1766854328; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=md820MSJFmMhxzBhoy9K+H941G1BAf7npRq1mwTR9kI=;
        b=eDUuAP7PYK8x7i5RG6R9xFIxhRm+sP+7Wb0inki1JaA1OrrKNaki/e1gf1aNx0EEeF
         B3yGTA5mDr8+gIs3WaCmbe4/05BnSETAz3tjbXno8a2KQcu/BF2IG4ZszCaQ5rmzHvKP
         K/JovzF4D4AHWG9sACIy2yPiF+R4xTP1941exQUREbrIOnnL/Jvskfq9BdB4PwVB0tpE
         Gm7oKnGKNGMK3cpIfiWlauhAm00iuCDuCEIMWRkplSpVcG9+a8QS0/Bgh7YFQs6tplAJ
         FOwUroJvwJtDRDtMIHELouV1HnhJnANQxLTyGnY4r24bn72h9vPKCXTOGR8Fo4+MHrIq
         XmeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766249528; x=1766854328;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=md820MSJFmMhxzBhoy9K+H941G1BAf7npRq1mwTR9kI=;
        b=oAk3GvZ9DB2bjh2I2qShx8C9yS5DzNiz4F+03YEsf+I08pKBxBqqrvNUoMtbmX2ppR
         Fb53C2z/wcvPh0APZ4RTiFKrVxs+D+b6Wgy6fQhlAf2Y/NHOCJ2Y2UKha0RGQizSWylw
         jQefbB1HoUeNLyQH8Ermn7G86TvFDUcTw9WCKB/E4FC7ovHhRh9WlcZLXKU5RdmeJ6oA
         cef+auVFy41Pg36Ygdqkaxi9cvyfyg6gdHtWx0lbFs7szIRoaqb1e516PYok4jOS8qbk
         YZF5sw7S0bu4A30cnmzVT6MY90ccFUhnSUMloszPeEKv+ptEuacl7/6EXUe+dlSB+Drj
         Kt8w==
X-Forwarded-Encrypted: i=1; AJvYcCUOGJv9sEA1calSZC3vOSpI6UuKrW37UdT8wqStlOx4PVsC4KUDUXD4vApTlFYWuLjRog9I31fmAovu@vger.kernel.org
X-Gm-Message-State: AOJu0YwT21EuNYOSnrHr5kBLTNqbJvCs5f1W4jntFXQK2Wuhh9V8AC8/
	9by5ZjOGIibmyy2fM4IRIX0C2B34cmtkhp/kt7B6E8kpREdfHoHq8csjCPnVqDzoXoWxyBfLdLe
	SzeEjXUqAZdMo77lafGB5N3NcFGCZburegN8KPFydIWjG84KA5yvi52PAvDzCzwJO
X-Gm-Gg: AY/fxX7igJJaPpr1zGKWy+Cv2cON22JG30VXqJXSAbchg6IArSenexrviGikOXaqV+j
	c/FGS+joytawVPVVPmtjPVqzOb+Kxttr/nz0gSKTIGA+Q175jWfR5w3R/havP6cPIeYZgz368zP
	PFwS2x0DhLQvuVFJ0kBaET7e5WWJipKMiqol6SrZm8ewThvdbCNXBswwr2XwVws0OFOPqVZ+JAg
	G/jAtjSimKSxFCnkCmwzDG6Qe5HgFdvuFyEMvgAcXa8QnbA9c2iUorEWkr2eNDagORAbrf8VydL
	6leJx59WP52aNKK6Ke/jPG9qwbbn5nHh6KMBnXEFDhw/6MS355+mlClqOV5lMM1f3iUWyIQ6N1H
	pCvO2dg3b+2lDg1Vzah2ryhggbOHj2fsOppHZ/mdw95aCCO3+ibVmUhxVkO0DV6zTwD9NkICvJk
	qU6bXziVOrYm7Y65r5B5IfaEA=
X-Received: by 2002:ac8:7f81:0:b0:4f3:4b53:a917 with SMTP id d75a77b69052e-4f35f43a9damr148411901cf.22.1766249528035;
        Sat, 20 Dec 2025 08:52:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH6MpmVZ7ZQhZ40pLdCdrBIOL53YEAOVIlZxLQot31bDGrYAK4K35/1+HqCakHdqkzMA7+JTA==
X-Received: by 2002:ac8:7f81:0:b0:4f3:4b53:a917 with SMTP id d75a77b69052e-4f35f43a9damr148411641cf.22.1766249527582;
        Sat, 20 Dec 2025 08:52:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812262b36dsm13394911fa.30.2025.12.20.08.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 08:52:05 -0800 (PST)
Date: Sat, 20 Dec 2025 18:52:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 3/6] drm/msm: mdss: Add Milos support
Message-ID: <475izg5bi56oefqtqkvqeyspx2por66zrw4tgqbb3f2ziaghyt@tccm73sl2u2e>
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
 <20251219-milos-mdss-v1-3-4537a916bdf9@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-milos-mdss-v1-3-4537a916bdf9@fairphone.com>
X-Authority-Analysis: v=2.4 cv=E/HAZKdl c=1 sm=1 tr=0 ts=6946d439 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=Ybx_Rsa12JF0X6GijNIA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE0NiBTYWx0ZWRfX3MAwBeTp1g/j
 w/IvIpVII5zVLuDsMl3KnuTiDb2IgG9h74IWniycYWoIMONozMSp2lbBrwygWQgkYKVzmRj6j04
 pgZp/aazsnpAJ/ixj0iFgGFCqVhoWrLD1gAYMw8XD2ubrDD0ZF+0G3NXRrVhEw07cMx2zQIznPu
 Fbd6V6nV/q1bvfJukGvXa3cmj7BGLJHacNXPa4VaZTEfu09H1FjMpMw+cQhexlaVc76g2LZuKW3
 07fZIXtlndxP0Evg/iC0CkX/FUBk5v9lZIq7aSl5jZ2cFvsToIrWo28VqZHRDQwARz6ulFaNJD0
 3fF2ehcn4QXFX5JWN0KBJ3/04c2K2RCimXZqhNZSyRMzx4bZtQsmPjOugmrx91AYnynCWCkryLN
 ZqEIAgk8e3yYGeDV+WHNYWcXUtKpI/aN3byfZlTicqV/81X2tLGpglwO8mRw6IHjvwVfb9bmIHk
 JrfcuEG1KcvBg26WKaA==
X-Proofpoint-GUID: v6XTqhwktuRdKiElap6gc0AJOOlxT58v
X-Proofpoint-ORIG-GUID: v6XTqhwktuRdKiElap6gc0AJOOlxT58v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_03,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512200146

On Fri, Dec 19, 2025 at 05:41:09PM +0100, Luca Weiss wrote:
> Add support for MDSS on Milos.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Though 14000 seems lower than the value for all other platforms.

-- 
With best wishes
Dmitry


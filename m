Return-Path: <devicetree+bounces-241643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B4347C80454
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DEDF8342A3B
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49EB62FFFAC;
	Mon, 24 Nov 2025 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XKKZhE3l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tz0sLWsV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4482FF663
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763985023; cv=none; b=iydT32pt2BGrLn9cJNIIuBGX+ByN1B9AyO+DM4ls/LQROHLUv9sH8T/FfQZ3j2WMl5dRME7bo1Pq6S1WNJMeydB6+a04JO3uhetr++VNXKyKUOsjTQpk/3fljyTCiqj2uzUNpkw17Sadkd0XeGG7YHOixG/Ldh6zR917RDSzSZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763985023; c=relaxed/simple;
	bh=ktd6t9TB6XzZ3dbmNIidsgwh4ZvBONIZl496x+NMuJA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EiHLvVui02MWRA6EGgwhf+Bh3uzD+MctBZdtHHHb16lWbuM8WGLexRge19FaTr9Uob4geqto4WooM49Af4c8W0EyTBE9HFNHC5Jm1V7kE/f+wpQUsSwvWEcFDM2lSgDQpWmvf72dYeKDg0dH4w02fIOJS9tSExSbnHXhvIReal8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XKKZhE3l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tz0sLWsV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO88Mxc1768876
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:50:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3SZ7ZZ386czpSOQVUmKzDyOQh599YOzYaYs+/zwG1h4=; b=XKKZhE3llSXa1Gm/
	7Yp+REN2mq2CqgZkBnv4Y0EfAj0fvh0/KoypqlhZG8GHERKOF63CKIZDf8Tc8lOc
	BuLKy1X4zDCJYjbfzaOZ2QrLXCH1jjIvwVXe1VzxSwzKKhT065oik5yc8lYvCodI
	2spf4bTKj26mKf2PZ//KY1T1iD/YNpgsIQbz6qBmh10cxYRGoL08bRLh1PnRUKJO
	+ilDVrWx524xztAVJvob441DfizBRbx81+syFoTF7AIqE55c40K+/8XeLnKRut9E
	LbkLMLgBK3uJ5/QQV90Vsd6bCnFOPpeCqS3toeJPhDOZT48nJE8hxn46k4dwC3A9
	MQKzRw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ama099usm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:50:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee00f2b7d7so15425491cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763985020; x=1764589820; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3SZ7ZZ386czpSOQVUmKzDyOQh599YOzYaYs+/zwG1h4=;
        b=Tz0sLWsVbQVu7eESLS5jPVHwewBtT8bxgdsV2xyx7GbEBfZwdtjyMkr7U/O2AONOAE
         ZvqOprSTMIayNbwcj/oeOpLl6RMHdywrGcK7KNuhM9eBMOt64G2iHtUTl2dpipEOVBCq
         tXGpAe3Vcr3xhmX+/nPPgM62DxuELYp3fYEbVZ3wCkdUyQsWcli+4kOmjit/N+qpPUMp
         QhHWU5nku+TYLJPIo0AlKJe+xViqMlC+YIhqkKEMGyF83wIzVOCoYgAAtV1yO7SMbGsp
         A8Bnll/7xPg+0apcUHvEfbba8ErrtYynl6PO54l26T1ItPYwJSUUhBnOrp513vKF19BT
         MkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763985020; x=1764589820;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3SZ7ZZ386czpSOQVUmKzDyOQh599YOzYaYs+/zwG1h4=;
        b=R4O/5iE394ZtXmHpjnqYft2ACnUKCyecyNE6kiUT8VuUvhAxck10vePxESipIkgdCs
         Axfmt6apRX9YH5K3DHLX4npzxVyTTVi41WH2/UD4AjxIHRPTwNTHeHGG+fi8Y1Qns3Lk
         kQdKOly+yWRklSiGWSst03OBjqal3t0NXVUC6HTdPGhMXqHkldUL3mbrIo0KOhYvBsV+
         KvvV9cMRqNDps2OeCEFwybEALv4PgWNpCQwlgGVYQIAJLWJw8x6wFOB/VRYZ4E/10Lo1
         MCJtMeNL9kJbFCTaI+eKQ+73CgtShf9cOAzykjy6zS8Sx2b5k6fPIE0FqhRRVX6Ue2O5
         wJUg==
X-Forwarded-Encrypted: i=1; AJvYcCWKLrHDw6BRRYuSg59bUY0su3Vc+GHDUb5N+ASfFSE/PgzqHYbAU85vZ3bR7zWWmbhrz+pjKUhLxSWX@vger.kernel.org
X-Gm-Message-State: AOJu0YyqK4SprayHIv+myxWtpNnxQNwv/WE229/Ke9LjJgCIU5cqsJff
	5SMnwY3IOnA5xJd5cPSmxehhb1Zy42ut8H31ByEUgCx/eelaOn3/ABMVHmhtBmGldD+VkQaUlOd
	lJwT4zZclyfsFw+Hh7j9bBazjUqotV3XY2U280a090QsIK8NFMIXiU5guJXhGk1gA
X-Gm-Gg: ASbGnct4XH1j8ZMdo2TgEx7FNh+qx09UlCQhunqNJuf4qYP++aHGQxx5OsqRLLjlnsW
	Y0SwGdx4gn7RZl1b4nR+9MVggzQr8OpKOi5ioObDFi18t25W9Yf2+pwfiR1cH0pMGSGCPoKiLZz
	3zs4MxN/DdP+coS5oNHqh16FCJo0RmYrQnHlItee0+OKs2St1fz0nAXuh/1+q06z5mkbj2NUk96
	kxQQRI3jo48INM/CzjAMhaaREvmOnjc8Ezq6K/YDHYVOuYwLfAAO1TY/t0nhWVJITKM5ePf8H4m
	63VF9BzgkIxY1tqb86oknKph5AbF+pG2umL3OntiqmSFa/3dj53itVGQp9m4ROWE8c6Ogf3QFXs
	AasXGaHhxU0qp4K6Nsn5kAEoSUDVwibllVBGQLr/QcmBLwm81P4GxbBPKOYqKhDOcNi4=
X-Received: by 2002:a05:622a:508:b0:4ed:67c4:b7b9 with SMTP id d75a77b69052e-4ee5883b027mr117948631cf.1.1763985019922;
        Mon, 24 Nov 2025 03:50:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFE3hRkWmJEOyRnNOZZEZAnqlcqwW4OAL2/F0nzRAv2dxmHvVXnDv1yESoMj2ty1Q56BsWPlg==
X-Received: by 2002:a05:622a:508:b0:4ed:67c4:b7b9 with SMTP id d75a77b69052e-4ee5883b027mr117948311cf.1.1763985019541;
        Mon, 24 Nov 2025 03:50:19 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d54cf2sm1265048966b.18.2025.11.24.03.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 03:50:19 -0800 (PST)
Message-ID: <6be43c27-dea5-4607-ab22-431e3d99492c@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 12:50:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: x1e80100-vivobook-s15: add HDMI
 port
To: maud_spierings@hotmail.com, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
 <20251116-asus_usbc_dp-v2-4-cc8f51136c9f@hotmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251116-asus_usbc_dp-v2-4-cc8f51136c9f@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: mLNnPdPTmJQFwM1i8RhQnHlo5oPupl7m
X-Authority-Analysis: v=2.4 cv=PdHyRyhd c=1 sm=1 tr=0 ts=6924467c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8
 a=ucDlCoAaIB5v6D95Jc0A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEwNCBTYWx0ZWRfX4uPobeNP7chV
 nAFbosM3mibtUKeVYouQXZ4OjMyiPYkhentQrpIbAnvHeWcVHgbtH49qrKcq7xUmesqj+MaE/33
 K9fWhoSp7iP1ngEJr0NSesvZqKNTeIpa7KcSuLCkzDZf/l1bLHCtuqShIrlskD98sQC0PSPdvtz
 ulcmfP5zyXT/+BWfPtucr3lURUDh5omrKFsfyVXINLbMOJqn/mY523cdX/r1n8XLUjdigNzQ7hR
 mEhR11QRGwgifIfnyY/x72ecD7QXZaWl7aKgQ2vqU2z4tximWjqPrs9+KBB/76smt1KRTn3V6oF
 AR2S/Z5PS/skvo3V0b/5QmlLXOVHXJOkAUGeJ+TcJ+ZQxru5b3c+4PIMl2mtAJKVBEXrP/28Kbd
 LIhQl14y3pLTaykERDwi4XbOdHG8Aw==
X-Proofpoint-GUID: mLNnPdPTmJQFwM1i8RhQnHlo5oPupl7m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240104

On 11/16/25 11:52 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Enable the HDMI port on left side of the laptop.
> 
> The display signal is routed through a simple Displayport to HDMI
> bridge.
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


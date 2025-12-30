Return-Path: <devicetree+bounces-250555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 685DCCE9F56
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08C533031A26
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D366929A32D;
	Tue, 30 Dec 2025 14:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GH12eJlw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GHDpN3P5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBCE299929
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767105746; cv=none; b=elBeH8m3IUXVgU2xGww1KOXPzvxq40487YciJUlZM9QrikqfPfP1t/bAm+M6csSMvydrRSQOou5t95REZPTvX0ttNPyc5/ByBhwckQZOGYkRKgkuTvQFH4kHIsdTXlOAJyN9O+6VU8+wcNnNoX848zcEri0y+hFtG9jVjFVJrO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767105746; c=relaxed/simple;
	bh=MrnQarmOYV2lac9FGqbfMEvyRYTbLm43zo1p8N/7l9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KdFsSiyuNE9jzgSREgUwLi8E5hyXwfK4fsHsoMEHZGEWvYDgKfE1UtbuyNiIPwWIDHIKAv2d//jfMJ4gzNsJJndGT82kZV5UmkgY7xnR04NjwOKfv6/+LwEYa42bR2yb05gFNH3h0r6uauC69lAYA3yIX3UpC56BT/kZ9EwNhWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GH12eJlw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GHDpN3P5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUB8na43971227
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:42:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6wor9NnrBVDrtADLcVPBxGh4
	umGNzMinOhfj/1NgI2k=; b=GH12eJlwnnupBW1LDcPUGiM+xghsBVil1gWpCx3/
	CPoKRe4iEIXRsDKpIfxeHpxN10fhw6on3Vy2hIfyNXPfe1mZqRymqVc9bG0LO83i
	O0plF4zuLUkh2yuY4SDNdjJMefYpGfv/GW2or38tppxabjigSSvCC+A9PgeyM2rx
	18oZBOUuMnxnWS5jGSm8BQLlQqts0Bu/WJDDXNO29oAkId90Tlkw78TfDYB1ljgT
	54t92L24hyQHcZOKUbCsHpu0I+NTEHSET8HZcxWcHuJJj5bLKNDcmB+atQ+VyrzH
	hydNgQAx48tIubaDr5eG8k92NocbQthS2ca1+KV4ad5hvQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcdky0f1u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:42:24 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a47331c39so268135516d6.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767105743; x=1767710543; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6wor9NnrBVDrtADLcVPBxGh4umGNzMinOhfj/1NgI2k=;
        b=GHDpN3P5p15OezjXSDXVR82tsv69w1Pizgm3mok2YvMPGBiFNWnpKlvb4gp5M7DV2k
         UGfztbEucPxsK6SIw4piR+hmepz7xcPffFnUcuQhvFnIR6PjNxlZlVWinClWVuxY//sY
         j5c8mb/GAh2gvnU8RriAX7JObe04XuBEC29W7BbFFGSbCb2d8o3F8nI8sROVVIUDNy4d
         iGgStvJRuz3qH9StrWVh8F2IiT1akP9CyxrYKzrio2GD5PZqbq8QtsD8FEkyRk2SjYPt
         KuLzvs1Ag8ykc+r/kSAw1VrMxaEw2YWm2sTM7SdruUHvZ2JQmbwD5JmcqJeDVTCzXJul
         kKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767105743; x=1767710543;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6wor9NnrBVDrtADLcVPBxGh4umGNzMinOhfj/1NgI2k=;
        b=SNpUXzDDadwHb21/ToXUrpASXIA6OTB3ss5qS868G5/0xvbFzdiapOp4+z/DGL2YxV
         m1XXeTM70Sz5jPV+myjHba0m6LdkZEYitEdAxMxquSplkH2s/SY+Nb5JBnwpAO4Y+L6g
         H4U7EsY73SBBhpSGHvifJ9+IWnEjU9atjJzRIHyVOXXPSpjEHPpz/GN4r7cza6cJGR12
         E+uuVOo0LnbI4FpIDrYkoC0zPWVx9jBjZk+bV0JLPOgzJUZgJKbppHa93UYlwtzGobEy
         bneMu4Akg7FbbR4v8N/L21UgpUfhi4nvnsyPF9wyISgyXKzTMfSiEuAAiFuEMN06GiSb
         gTjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWmIvzfDbbHAmxNkoWiEoOwkOJN19p0Np3ZG/Gn+Ye9jVLHlxdfwlySWU5wWYwYL1rP1jhr3QbCbVU@vger.kernel.org
X-Gm-Message-State: AOJu0YwLEC7C/k4B4Lh9F+dbv+xrlDLOnMwSBvDbuEBdFYJ6S3E9xj8G
	q28ahVz9kPJr+/lUG7nsJZYX+3SxsJQH0z6dIbSedaTLDd27JXo5DI8XHe4sIzvJhQhrsooICsM
	/060ZloQYTwiLRONUit00Gr/raF/dljibaBfudhW1TTYRpZK9+lgwbFEnGfW0pYnI
X-Gm-Gg: AY/fxX44JLDNqETkIoAHhNMwM2d/PLj9PbNoQ4KPyJvDTxuw+6q5OPuxkwNX2hJveqF
	igrVisWm3TVg+Cf6D47zg2YbTkyzDYxfnX/r6nm+oqSdTPowSthDhbctDse1RTYPxTQfASgGaEv
	PwDYmacFNngPBZACeJBegxOMm5G3XzW7iXbgnpYjmH4vYIagLlC0Sr6dofJVQiIb/em4RGZ1q24
	UNwNP2DQgCQY0VbSgdRBoNfntossTJqFe2sUabrTQSSRXDigstbkn3ALGdEvfJljSWqODlZdYUy
	9GZtT8LP3tZa89dlfLkd/zvWdBDVp7J9pDax/ihwGGXaF1pI3a2TnHswnfuFeIECoRnROQ316wU
	FgyYXsSRW0LqDDznArXPk4k0KnckKehncp+9eo2U6FThKKNkfmi9PmgyevhfRLt/qk96LgA5Wo0
	PN+Qn4hBvMlZzDYvSmg86eSho=
X-Received: by 2002:a05:6214:2dc4:b0:890:26d6:97c7 with SMTP id 6a1803df08f44-89026d6a194mr57808496d6.8.1767105740785;
        Tue, 30 Dec 2025 06:42:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3qcKT6J9QlY48hLzIyLaziU3BRR0CjBIYGNIjZYvlcvE40bj8TOipEVo2bMWH4KJeIY+muw==
X-Received: by 2002:a05:6214:2dc4:b0:890:26d6:97c7 with SMTP id 6a1803df08f44-89026d6a194mr57808186d6.8.1767105740314;
        Tue, 30 Dec 2025 06:42:20 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ea248sm10103389e87.43.2025.12.30.06.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 06:42:18 -0800 (PST)
Date: Tue, 30 Dec 2025 16:42:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 4/5] arm64: dts: qcom: talos: Fix inconsistent USB
 PHY node naming
Message-ID: <g5kczx6ywgxt6obfq3wgbmjatwuwuadkm2hzu3bs6togdm4gu6@ayflbqxjlvhg>
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-5-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230130227.3503590-5-tessolveupstream@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEzMiBTYWx0ZWRfX/OgqZEQQim6A
 x/t0OcbLBRUuLtO6CR4SGhVzQ9i0KWJaNST6oiYxyOUm5bfAb0oFU8hauPdVWBZWMxRo3pbI7mV
 MzQ+LmPNxDOXMlZqiMVda5k4ikeGlNq3FP9UHEUGDjbv4amk0Oft+79N8aqc9A9Ts8aHGLbZIHt
 FQO40As75uzud01zYELE6mIZNnGx1+aKlV9BYunhWYm+2OjFC5VG2pogU2VZ3lReUdYgOer4We4
 qkOmqYzN6gdVxa2BClkLgXzZA52IqUhIOgTRG6fLI9klv254XBhCCMd/SsEVdjMVwhKXnX4WrPo
 gxVzqLY/8haRpD7VsiwNNZf1aTfPum7WgEmXG9yShoGQjAWpBbKTAtUBa5J4NkzpvhBhazosvUB
 acn61iCP4tXG17DoOWR/C+5IkdRGNreq39pYhbaaHo4zpAGAC1l6uRLjQmN301cd8O1+6fpH3Xr
 uxobRLq6AvHS8PrjBEw==
X-Authority-Analysis: v=2.4 cv=Wskm8Nfv c=1 sm=1 tr=0 ts=6953e4d0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=YpDlA3LpCkOueRwPcZ4A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: VWqWOaLU24vfp91coUKUt_qlqezdRwnD
X-Proofpoint-ORIG-GUID: VWqWOaLU24vfp91coUKUt_qlqezdRwnD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300132

On Tue, Dec 30, 2025 at 06:32:26PM +0530, Sudarshan Shetty wrote:
> The USB PHY nodes has inconsistent labels as 'usb_1_hspy'
> and 'usb_hsphy_2'. This patch renames them to follow
> a consistent naming scheme.
> 
> No functional changes, only label renaming.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


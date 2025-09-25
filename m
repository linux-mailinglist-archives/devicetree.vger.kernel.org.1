Return-Path: <devicetree+bounces-221066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1088BB9D050
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:30:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2F684E0238
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F00F221D96;
	Thu, 25 Sep 2025 01:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bIVS/4Yl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46081EA7CF
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758763823; cv=none; b=muuuHeBKpkX2/JuF1wJAelM7WtXGszvnQOxftS2iRVUY2vnyuZSgOQL/FU3Ly3Uuqc7j9bn8Fr6iobSRI3ntq2x8KF69DSF2K8VPc2gTeRwfyRRtWRfyDMlWhYuS3n0YjiMq/Ll9GjB7Fx2c/6zRSjoKTu90u9TE8/rana7UxBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758763823; c=relaxed/simple;
	bh=DH4aJWPTM7pVDINdGI0khQskFrk+rsjXqGHqx2g/shQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ft4b5U2yThg6CKRCY4TEt7Tj19BkQ0sGiVaeRJ1CxExq/8vZv6r7hLMp4TakLbBv3vfEAjML5XuNIRv7nh9TCROMBzaoqvCZeh6Uj72tsszuVgI5IT9nCO2JwS76Deg/NynBm5DkG5CziPSjhxsiTTMXp+elXJ2qGGqq416JYR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bIVS/4Yl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P17fBk023441
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7mUyHQNj70Gz7bixQgpoodM4
	fSwBQ4FeRDzfYe3Kgjg=; b=bIVS/4YlSjx/k9zYtxSjYonLhSq5UZNZ6xUK91sJ
	fhbv9Q0+vEAV3bPjX/RSDh7p+0e+n2yW/UQcwS4wHX/UA+krksvwppcUbWplp958
	r4sgttbm5d8miPC5YgzHeWcZDbZkjDNLo+M66r02rXGCCUWCTA2pnHoKcnD7dxaq
	U0Zrl8+u6skEi89VyGT/F3IRasF7SDXVTe6OMQYkBYjX7T3XhL8Jh+/bZE8EjLTD
	3m6ugBeqEuT3ou7zlJF+s4M2Zf/Ej8fqzpYh9F6LU7bh8oXMxkpm0xwiPTV9l0Iz
	RKj2w9D48e+5YSTSNiWarYEQmquPh2fYeK0c/fsdpNwayg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budaduqj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:30:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5ecf597acso9963721cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758763820; x=1759368620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7mUyHQNj70Gz7bixQgpoodM4fSwBQ4FeRDzfYe3Kgjg=;
        b=dUJBcyEi3+02rYhNgiWonGIjAt6iH8mUxNk/94/2rsGJR39YDw584ynXO0T8Z1fJ8B
         tzbzjTg/wQbVnZNHVF8rCcR4YE6uT9eoTEUWDq6C45JUFmQjtCRYJg3unz9pu31JT+SJ
         CzT6Hsx3hJ8WYUpAVAK5EfodwXiLDRvv9umTS+Vgwpu/UKjEPdxQq0ljpSYDiTJd+cn/
         ZQw23qvVefL+p+lZg4Wwul+t+BPShl2DawYYu997ZHiyneZ9sl5Fx69n4LYAPcTIJRxM
         fQe5oqH+Q601//M13Lscz5GZEOFVNWTRnYlMHIy9OIt3RarOMscKC+hO320wxq+tr+vH
         oidg==
X-Forwarded-Encrypted: i=1; AJvYcCU3qj2XfYIpWbfw30nsuFJ4FFxiK0PxYD4loDubYwqx3IdVoIjgZpcwose+y5AIDialF8H4l1VbsmLE@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ6YDhCKEFh1tYAK2+7jR0MgDQKpexB0WQ1AXBWJZpF8hpT6qp
	dEwk59DpaK7YCVmjLXZ+ocHkCRqNaVArm4kwhQI1Ne0wpdwSvCmxuOCW1LKauAtUVPsgk8cTUG4
	+l6R4R0E/Yo3Z4mkmIoJZpolV0JmI3R9Js61dtH7vSDvdBQfbhK9uSMIUPdfcMLQL
X-Gm-Gg: ASbGncuXhhtnLfZe/2ZfIRwuQW8dG4wRqnlCHAV8aw9B2MPwA8+JWdHVaXhhlPE/MhT
	lTo2PSkUWIB0Jogoa95arWINsQIgYW1hNcTLG4vEVjHTII7rvPOKnI569TsF5X7p7LSHY9Nc1q9
	O+/5OrVhLDat9b7aWd5UG3Y8bNSGKR1r5V8MJI8r/7ifLNZeIOzooEJrm9pr4B9TFL5xm3L76mI
	VcKvQPBXXxCfTRdBUqswkdjOPO+nDBwSBEaTL4kwpppN40u4nprgl9Q6nfKH/irjKyZbAMmdZf7
	DmMwcppCz4HGf4FY/JeD4zZCR+muKOsC8uPToHR+zNRERx3pUOp68vRPVijJ0vDXFrWbbHF3M5s
	38JyhCkxJaPCa/cM/QnDoMP0/sPwNBNOpOrFCMuu1lm9ZR0FYnNb4
X-Received: by 2002:ac8:5856:0:b0:4d9:440c:2992 with SMTP id d75a77b69052e-4da4bfbe724mr22592161cf.58.1758763819781;
        Wed, 24 Sep 2025 18:30:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF456x3zpn/m71a91HI86r+v93v861E9jEgmFun7cueAn6yXuEgN6HFNgHqzD1nVz/Bp3jCWg==
X-Received: by 2002:ac8:5856:0:b0:4d9:440c:2992 with SMTP id d75a77b69052e-4da4bfbe724mr22591811cf.58.1758763819256;
        Wed, 24 Sep 2025 18:30:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139fb04dsm211238e87.44.2025.09.24.18.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:30:17 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:30:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <un3pulyn7tv3qihdnqmktsctped32am2eglxzfpwyz3u3tqspf@fnieck3i67j2>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-8-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-8-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: caBgLeYuik-Mc-GnZa63VvmGoalXZwVc
X-Proofpoint-ORIG-GUID: caBgLeYuik-Mc-GnZa63VvmGoalXZwVc
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d49b2c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gzIeawRUdsEZb0YUvHYA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX0DmvXz1vc42t
 lpuyQTI7GcuY1NG1ponMsyxpWLepSOdvPG9vVqdnaWPDyN8Qgn+06/W37YW3qeJ31+28vc+yyQp
 zhY8Wk86wuuOEBwKByFiBIUN1N8TUHq85Rwzm6yPzHMkfdRwEqbAXaXIybnyPxvrwLAawmeEV3w
 744w8WkTuwSwoVRhjYkCzcF9IkUb3Lbumk+Q/DvZj+9j2Rp9RDP4fxTebhKkPUC1vgB0EIIBDME
 UcLVK56Hc9KoSjrpPBXXmJUqnHYiHR6ePOnnj2ECDAtVhaWK4S2xTKYJvGiY8lYtBGhynJo487Z
 EicyTiL3uAhktToVwXDyatpD0Xyx5zdxvYfCAvDu0yDgxFTMYj97oSrIzMSNccVuTuy1xfYfPSc
 Pa3Vqll/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

On Wed, Sep 24, 2025 at 05:52:25PM -0700, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 311 ++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
>  .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>  .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +

I think yo've squashed too many changes here. V5 and V6 headers should
be a part of the previous patch.

>  8 files changed, 1251 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> 
-- 
With best wishes
Dmitry


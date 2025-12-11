Return-Path: <devicetree+bounces-245734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A83CB4BFB
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12B6D302B114
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 05:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D47E329E10F;
	Thu, 11 Dec 2025 05:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R6vLDzGe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TOLHsX6H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CB22877D2
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765430200; cv=none; b=mzZAw5BugDAXW0qfIMwvkh/VLFdqlzLyT5A1eqZyCNhMhBA48OQOoTu6WtsihMHsUWBrwHbsoGem+cN/TD4aB7ZS+JJB3U9u96NL040XzQrU17px7vdznmlfP51VtM0W7k5eSNvnjgNKfgGVX4oZlEjRteo43xFSvTJPoYLLBAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765430200; c=relaxed/simple;
	bh=RSMy5KgESJbvLSPLrzgpFHOuVXXnqHZI8OL36ABoOyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jaRgbbf7lqb5smGKk9GP06+dr41aRSoVUUw988Gd1Ku0bBanSbUsOL+JwyksEMVzvAS45bx5DHYkLzjX4WZUIySkG+wMs+A+xrbnrOa9FnTwMVnzuN5YfZGYqHsXaOJc2wfZZS1Qf066m+VNA13CVj8sndJ3ptogxDzAyCsRysQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R6vLDzGe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TOLHsX6H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB1Gfg93927130
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:16:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iC64GZYTP0ExJ/XDQw8it7Ll
	jnTS1uU1C1vmg7w7aMQ=; b=R6vLDzGeKJ7fuWfq8iCqBLPrnPm02FCx8DIeztJl
	fxi5NIka3u5/QMWlND9UN6VpNk3+Gx9WRas+jzgUVKAcT1ZT1JskD3tUwFa0jxKk
	3jonYrXiiao47L2lgkvFKWZEiaztAj71+vFoD7nWTqCytqQPUENntUupCDCsT+r6
	9P9m5zUelzE4+NLFOUHo/a6HX1L+NAgxSRoGl35FZm7Fcq56hbfUIwAIuvQAyeLe
	xrm6lOc+BGF0XNVZ+2WwKrFvDySHnOyX9pyeA9FmbojhYCxnCDp0HfXjhtDFxQQ/
	DIJlny440F54yiPMM3EHYc7wvuZTOziXmmW/ujok8FrAxg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aym580j56-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:16:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee27e24711so9851461cf.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765430195; x=1766034995; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iC64GZYTP0ExJ/XDQw8it7LljnTS1uU1C1vmg7w7aMQ=;
        b=TOLHsX6HdyJVmuQEJluQ/UspKQZXOZsY8su6Gj3/uB1SqjMAJPxemCTflF/5UcJpP4
         P+eFKwT/11Yb/BiMBPk08IwHCxdV6vNMOTpeJQxTV27Up1vPZOwTDI4VN7EzfTd6yNvk
         sIxfD7QUztDYjiOsdhywbMsFG+hffuJ2x7yeZHVlhPZIFMmJvMd5h0x1yqOqNcE6HWDt
         3Qkya2hRyplPEzYtiVQ2J8Dimwyhd68FkACe8cdz+3baYGRLAa3wuyccvzPZw/4B4gWs
         NsVVggh9YFQqM1PPn+U8Z0QMpo/dNaqp/YqH0O0iNFd/GoY9uVvPDkXZHrK9WX2tmKRH
         Aq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765430195; x=1766034995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iC64GZYTP0ExJ/XDQw8it7LljnTS1uU1C1vmg7w7aMQ=;
        b=TaUVJcNFc1UHIF67mfiPNWNKso0NXUbviHOMsH+xa9UgxtsPFDNNTJ+eo30phYaMwo
         JngwhMZ+CcFjWA8+CFVxfNI3Yka2gbVvzyCtREPFGtQUfcQoqKrjpIbNJkHhw5NDQaxM
         6Vh2QpkxwLgCQRHJQV7tKCZnTeky+SdmEyX2m0iev0xRI/XzVWIPRUqLZuqYgK6O9u/0
         /+g3H7kPgJtcMwWpqAF+8jmHZMR5WWhQ8CUlUIZwc7RZZ53GDNBuVeNQe4L+MKv1cSKx
         LJWe44fRmYQrAT2lqygqOkJmEu511ZEyBjj9+8rZW2rOnSa5AGTtbUA4m8aRBd0QTZUH
         lvlQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2A/MqUugBOc5dLaHhsCLf+hWHNw8eK2jnauioA8uHhHBvfcu6v93dsjOAe7Um+76aIsW7aQbHH3hR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd609jydakNZ/9TrLRz9bEvnaR9gmMZt04deSqgW00zhivRBXP
	7QOKICgi/Frh2dCTgY9d5HQ9C5rgLkspSQL2Iz7cKCupn7dIREVZ3XMd1v9wPCc0g9E0bbdkz8K
	1blPcxQ3gMzzrDQ96Aq9Gf0ltFypHlKxPZQpIwUk9RuN5qq0kCtAUHZL+8kw4a24e
X-Gm-Gg: AY/fxX5bhP0SD2P1WT9++9QMRHA8IP+uHDQAglxtFtusCzWk9z1i4ff9W5LwR7QnRrg
	F+fVLnDLbLxwqL+0F5yUa9nsympdw2pFes7ia5xpecp7HIP3C3mznoppBpooWw45ZOLNg4LFIDa
	VMD7tQck/sBGlhWRgF6StRg1y9FWDYN8sWgkFn2p7nHOmpKCG/wlqpaB1O7G8Uwh6XyKOs9FCSG
	YSUDb8dUUmbBimU2n1jjyDNlgQ0IzimpsAKWR3VJN753wxL93I2T/+kBg5EheCjIOiS2w/x6vGA
	tGbt/eXbJmxNuid0z9leQgF7cWgigCtnHM4iCLePfbByzb/E1lARd/snHshry7XcM2M6lMvFYqy
	4YEdLM4a8fPMYyG28yhJ+7P193n05J6RxQ0OatWTVjdBdVM7iOuLCFsy6a74ZJXBUbnCabsPdAH
	+ruACgXuDWDuuyGUXxWmh4j3U=
X-Received: by 2002:a05:622a:1e19:b0:4ee:1ed1:43c6 with SMTP id d75a77b69052e-4f1b19b88c5mr54294251cf.10.1765430195031;
        Wed, 10 Dec 2025 21:16:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwd9oLeFDljFaCQeRHzACMAkn+4FkG8O1G7wq3ItraCp5oly9VXU3f4nhxQ9Ma4hvYTao8VA==
X-Received: by 2002:a05:622a:1e19:b0:4ee:1ed1:43c6 with SMTP id d75a77b69052e-4f1b19b88c5mr54293851cf.10.1765430194070;
        Wed, 10 Dec 2025 21:16:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3199e93sm522084e87.96.2025.12.10.21.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 21:16:33 -0800 (PST)
Date: Thu, 11 Dec 2025 07:16:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, Robert Mader <robert.mader@collabora.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
Message-ID: <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-6-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211014846.16602-6-mailingradian@gmail.com>
X-Proofpoint-GUID: sh9BS9Lz_AKTECDgyipv_2c9Iy7L9Sva
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAzNSBTYWx0ZWRfX4ZE26ptI80P9
 S+V/YWmTY4oVRBeCIOXj+j5VA/CLTY7a60mOHl0QvRAxE7eh3xbBt1+mdZFzENDow5BEpski/4v
 X6PTwWGkan7E3gkIWfRgZEppzue64mYm0w9IYeODojhadyU/lrw0jOD1gtM3yQ8y/RzP1oC6WKE
 VAG/KefG9WYSrqQjdGQanfk6UWiEFDATqsQECtuQcGvlZ1F19L+HCWEaBvzzwtihSNryoipyLOR
 ZkMv12I7LtgnvNRY+98JXUAs1tJTwQMnHYCj6OE3PEk/e9ZcjZIIFhuyAhIkYdpr5noouua2uH7
 eVQ5nRSyv3GCp3zTIRyfSpe7PHQVHzg2szCnmlai3gZMOjHRr1nmZvvkh8p3ser2g/LTgPYTpiG
 ZIxy0c6OZEWjeS9dbX5ve9Rz3vy3xQ==
X-Authority-Analysis: v=2.4 cv=FYU6BZ+6 c=1 sm=1 tr=0 ts=693a53b3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8 a=He3dl_zFzQSlanp4l3sA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: sh9BS9Lz_AKTECDgyipv_2c9Iy7L9Sva
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110035

On Wed, Dec 10, 2025 at 08:48:46PM -0500, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> support for it.
> 
> Co-developed-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../boot/dts/qcom/sdm670-google-sargo.dts     | 107 ++++++++++++++++++
>  1 file changed, 107 insertions(+)
> 
> @@ -392,6 +420,64 @@ vreg_bob: bob {
>  	};
>  };
>  
> +&camss {
> +	vdda-phy-supply = <&vreg_l1a_1p225>;
> +	vdda-pll-supply = <&vreg_s6a_0p87>;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@1 {
> +			camss_endpoint1: endpoint {
> +				clock-lanes = <7>;
> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&cam_front_endpoint>;
> +			};
> +		};
> +	};

This would be much better:

  &camss_endpoint1: {
      clock-lanes, data-lanes, remote-endpoint here
  };


> +};

-- 
With best wishes
Dmitry


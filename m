Return-Path: <devicetree+bounces-241102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B7174C79220
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:08:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9AF3436574D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 13:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA62346784;
	Fri, 21 Nov 2025 13:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fi6Zdz++";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XDsDLMSo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA7F242D60
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763730207; cv=none; b=NmI6J6nQN71feUKjqXYz5vUL6BHBripKPedbi5vLfJGJ7ExZ8UPK+e4bkTvneXQrJv+0PN/h3SiUfMNqXt7adqshu2vxPlsGQQh7k6i+dkJrI6jSZvPvw/mjAYZrW9V4f/H4QAOzLdGdjuKLkPJFkzOaS8r77NTfFeM936pv+WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763730207; c=relaxed/simple;
	bh=Wlkw7CTMZpViEXDbRhWiCoeXPkPaNu8bn2eHQ4cnqpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FPZ5OEQvamBSayIVjQeBaOo1/wByeX0IZux697vlE+s1IO3I6tfzJvFNo0O7dJxVmn6IrgyMNuwM+3gKV7g7yhPSZGvHJKJmYtQu3t63B75FOc1sBHJxRTrJVSnQNStGpCyNut1Km/ahXJD+sp27Pnm6tUApcRHHmbEma9Eqdrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fi6Zdz++; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XDsDLMSo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL8Z4Zs3139930
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:03:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6Ebzqqb2HB25wSY3SHb86DFL
	9SKoXTlvL/xdpHoslPs=; b=fi6Zdz++x5UutEiehiR3xOAXPb7xiJwsgQo+Otgv
	dSqLupmmBqhayW3/WwcbnQ6xcvSWag6ffq3NSo1FpRpcZo+A0qH+Msptq8SmVyhZ
	m6teFL3PizGXnl5IrVhr7cLapRidepbXZcbwF/dhFa/P/aPOEa2tJtCQyRiOuN6d
	/T6LwQ8W20Llbzejd3ES/706XctKo3vn5DHsBOq5r4ERESDXnQW+fgqZdtIuKxI5
	mQtx9GcOjNlJnscUTISgViBMIq8499HM+GyxGR8j75aVgMc+LCkD0v5Rgt4r+RPZ
	aEreuV5fvnfX+yInHfy4LYPUB5VDAZCDlEPaLZ1TW7RwQw==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajmppgxfy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:03:25 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-63e1e96b6d3so2343419d50.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763730204; x=1764335004; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6Ebzqqb2HB25wSY3SHb86DFL9SKoXTlvL/xdpHoslPs=;
        b=XDsDLMSo2ZY9ZD17A3eID/TWqNPxEnvtOBMIrfU8ERCqBBIheS5iUTNITafQHntkhf
         OSscdF/zYYlPLIT+v6cfrr5IsynZ924rs6fCooeRPV4u8TQ/ceDsdMZaYPLUE5AMAARo
         aohNWwZlcPPp38CTG7l1nInOIBz6bfMf6GihydcGaS5Wjk9DdqQlpBzqTnkOBXGgUzra
         O3A7q6o7/HtRtFfsjyl85XgxkeTC4NLZ9fHikd5t+CTpR6Ov54IGKFoq2XVI/0Ph1Tr7
         lakUnG7U4jMb6mQFPMj2RCLKUDrLYetge+vWTj9CE6utDMA1VwjEk8B6eJKHM0WtEpXL
         8Hpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763730204; x=1764335004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Ebzqqb2HB25wSY3SHb86DFL9SKoXTlvL/xdpHoslPs=;
        b=o6LkFQbqG9/cf+cRcLl17VTj3aGPih9qSl5ruW04TEnBqDbMvR5jaCSAQ22mB7Wt7Q
         IEe0iputAGKB9c2QFL7O4hpgnl5/+k8IMfnOwLNknPijFjCcX/nsgJ3ZDbobIfSedCDK
         sftHjZ3QVVeZA/Lsgbn7XO2aTXxxyjUZ2GlSs8ja2EgwupDtw0KDfwCEusu80eJS0hxu
         z4SIeUoXCKFA8oPlWUa7h1JaS8lhQaYIHyilxtHUiZHFJCDo1TgfvcOZEPoWE5eEOTYn
         UFEiat9iLFAn3fn1qvnZNXkBw7I9wrDC9WKAb4auCV+alTzWPwBoeaMd+2mObq0XmDu0
         SSng==
X-Forwarded-Encrypted: i=1; AJvYcCWNntKqOBr8i13+JTEJ4SoqT4HzqzMTxGeQq7NgPKZWsvXQ3MGGYUU8R8gbkS3VcNy0RSiLdhBZoh2l@vger.kernel.org
X-Gm-Message-State: AOJu0YyU9ZKesXePPSzMO61UzEDBqhuTnEHMCZ1+hVYx2HVAAopHCkRT
	14pfYsBYXUBIkHGd1X5DH6BFTw6jpMBTyBVO5NStuRbiTZVEilyplAmsRFqcxneknNKGwhGkXtV
	x6+AQPWFPex6opUmmXm85v3TN42DRvSAq6WULmasumJyxyRFzzSB0V3bVhhyrL8c4
X-Gm-Gg: ASbGncvDm8Vc5NB0XBv8X8RWCq5TqyOAg3mm0gNebeYakS9YH2+bGBAY/gyeplrwQct
	f2lVpkolbSPljizhJryx0RccIN6JEWPcrfnjK+f+IThVCAXpcLIJVCLoHRzj/sL5XKH43PrZ+q6
	0U0Z6cWw2+OpIj5T7a89we/H05vtAUABHvTxQtv4Qj6NnjPh1cWTubEfr7VbmNEXzGbdGdMN9Is
	h1Lkza0rGvn+vn/hS+Lu2Kca33uF5HU9UEkGi0TqSSlVUHx2k1RYw4aBDLz3j0ibQmeN1N2vUnE
	sBww97B7s91BlXODrLvSMUm51ETJ6Ki0PCywslbsEYZ0sjnj6RQYL2Hpc68P2MHNV8ppJuM3DD1
	2Lrm/vx7AO7Ng4CKWI5jmsCP5p11yx8cMHQCMJBaEUQjpOTbQ7v1h0cJqw9QTjFhbPw8rMW7Kkh
	SLB2J5nSU5Y+emXSNsTRVcvC8=
X-Received: by 2002:a53:cd8c:0:b0:63e:1943:ce49 with SMTP id 956f58d0204a3-64302abb486mr1012759d50.39.1763730204039;
        Fri, 21 Nov 2025 05:03:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEi7GrdMAr6GhOFsCRThFLBFakA5j7YJp94i9Kss9c/Elt0tOH0sM/CQSpFGWLHLjb3njADQw==
X-Received: by 2002:a53:cd8c:0:b0:63e:1943:ce49 with SMTP id 956f58d0204a3-64302abb486mr1012697d50.39.1763730203300;
        Fri, 21 Nov 2025 05:03:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596a0d1493bsm1148420e87.73.2025.11.21.05.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 05:03:22 -0800 (PST)
Date: Fri, 21 Nov 2025 15:03:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
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
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: bridge: lt9211c: Add bindings
Message-ID: <vtk3okmi7t2bxx5zynwwr7wqyaj5rol5o4lwxi42h4i3fstbmw@i5hkr6g7kgtj>
References: <20251107-add-lt9211c-bridge-v2-0-b0616e23407c@oss.qualcomm.com>
 <20251107-add-lt9211c-bridge-v2-1-b0616e23407c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-add-lt9211c-bridge-v2-1-b0616e23407c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: sxRA4b0xlgHuM10PbFrWqNf7JlQFUC94
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA5NiBTYWx0ZWRfX5hVb9Hn9s4Pb
 uCjlnlSgxrLHb7qfILxsvk4REvG3QIeX5JLTDnZ8dmGtzsa6KCMD6FD8KtU3czgYBqj7k9oSdpx
 J0oEty4gsUucf02Lg+g2jInyU0XY7kZrROZNsp7GMg7Xhu2sGcJ5sorE6kl/1ENg9ghsSUIFIEN
 OUi8//ncPUe/Egkx/ETJGXRUkGD3AewyQr/hs5ADhfd0UzkmLXt78Hk22NquRQv+MlbNqw/TthX
 WQ2US34cnwEys3g3RNg0uTeIzg3FfSDwIkPHbMTz+L8XjaFzUie9exTnotnK5iqC5dqE7Sm9eUA
 vBEveBoxjgPEA702QKS91AVsBhUL4yLKQasIzc47Vfn/8ovayWNXkshSgv4r/9m8NDimR0KVz9h
 u3EgFb0PCnQZ16CpUWdfccx/gmcJLg==
X-Proofpoint-GUID: sxRA4b0xlgHuM10PbFrWqNf7JlQFUC94
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=6920631d cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=wANug47Xg7UbwDa8xMoA:9 a=CjuIK1q_8ugA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210096

On Fri, Nov 07, 2025 at 06:32:58PM +0530, Nilesh Laad wrote:
> From: Yi Zhang <zhanyi@qti.qualcomm.com>
> 
> Add bindings for lt9211c.
> 
> Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
> ---
>  .../bindings/display/bridge/lontium,lt9211c.yaml   | 113 +++++++++++++++++++++
>  1 file changed, 113 insertions(+)

Can't we reuse lt9211.yaml bindings for this chip version?

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-249595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA01CDD1D5
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:29:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1379D3019BA9
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 22:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DD072E62A6;
	Wed, 24 Dec 2025 22:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aTbnioAZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eel/rBod"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3DA27E049
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766615351; cv=none; b=YgcEgPGUSrdtgz7d6hFuWxdSqYbq7SQupWkCOKhywlbAjZpE8k5MDRmAmLVlZdc0W6kWCwk7O7+7wS894ogv0I51n5/BqFF3t26dNjNcwU6qaKodNFy2XPvm+AeIEtHhMUuzRl5Ozpqp8VjeToc5Pi+2j59fCqXDM63aMYfSPfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766615351; c=relaxed/simple;
	bh=g73/z7LzQVx5hjkbk0HC598BBA0dRgmFqxiTREktjrI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c91McI5Nkpt/H0pA8dM3R1UvlHg8pc6nVLpK9SbEpmuN+A1I9fgdU9GacC1crmyP+Nz9Dc52Uyy5LSLfxj0Q1gXYRagt1sbNtX/hg+jA/8kcDYnBAmPrFHWNmFF6WXA85efoJ0l+3Gy6UnjTn7RRh3LtpIqiN00dRNpfL+mOaOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aTbnioAZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eel/rBod; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOMPPZx4189174
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:29:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wvQVq6F9bvfy0ys8kp6NNiH3
	ITMTAjtxgfbrAUNz8cc=; b=aTbnioAZLkQRINCOhi4sq4N3TVWLG+eFdLcEDJW7
	6rOOQ0y/YFPW2n7mQrxHNvy6Vc6OXHt8cvfEn0Nxs1tkrHi+aqHCqbGq7qVT7TkL
	K4KdqH0+HxwO3MRI2oMDnXx9aeb4Go3JODpsWwe71RZNwbFXNc6rg5AqDKsJD2JJ
	TtJGeBtiAd+upAwtHaUvIY7jF8OlEV4cGJpfmpBgLM9CzKsmrUSxMO2p+fbkCYpK
	7znEvaMapoNNUT5ZeWNaVDdfNS+XKoj5qsvk3HPiOPe5E55cEqjhkJFCfvkZ3hnJ
	yI7T+ZQNsKs/jattVxcCLPcVIhXq/voS+uRzrG7ZJJqXVw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq3n5q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:29:09 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8888a6cb328so159028766d6.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 14:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766615348; x=1767220148; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wvQVq6F9bvfy0ys8kp6NNiH3ITMTAjtxgfbrAUNz8cc=;
        b=eel/rBodYKGDYdkmf40ivYnor7L7HQQXCO2/TlBur0Y4BQ6la6HcEc7QlksWmEyiRc
         jRtiVVTzWxp5HO7mkqJ7B8GqDWVSfvNxDv1vCW/tv8zeuis6YaVs3Rm+I80qoCMo6Ge7
         Y5TlZGAgSZFqfQx9HEBq7H7hnFUN3DkKhVOsWZ4hv/4BAP2PncfiiIVEP7LC6hgPELia
         i2t3lwbgzJOLfS9FaiW3visADMq4zCv6YXDcUFBonfI4SxJxgoiEkn38LJk8L2iC+WYf
         UbFRqUH4Vacw9/XebribkPn7FbK7bawsQ7/QMAyC8uLeoBARzgbYzAXHv74MsQrS/+GB
         juWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766615348; x=1767220148;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wvQVq6F9bvfy0ys8kp6NNiH3ITMTAjtxgfbrAUNz8cc=;
        b=YEqrq5UgQi04b3VVvp2GbC6V3dASILSrQiaZeUgfRekxBW76/PtxLIjhJdZxKIo/zE
         IgFIOkSecgyo3bH0MvwH3YGtnS9VVb2PZzdOVFQsp4xAt4ToiVoqwT5YCV6PYItRg70Q
         D8WGfAWteMKBM2zIvS6f9xdghd1B6FODEEtd1a+4qiRS9papIO67HlqHrTmqGmyajHlL
         1C8SZndmmoDIqIdk0xd7NZl25up51efXtoPgxGfM4+6ogkW01FlnP9y+i117UqyF9OyF
         O0k+QRFPTzzYc+ir2/lYWHfvN89HtJRczDrtjYD2+7/tcrV8IndQaQidOVwRioTftv9M
         d9ew==
X-Forwarded-Encrypted: i=1; AJvYcCXP4S059f61M0aHsYgQ6011533AJzJ2lg4TiMoGJXxEFqAUi+zkBaMOARcZBKkJIoT8Ffeb3An259I0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8jkGzG3UDncZyAKGVb5vMWa/gpchSysrVIYfXxwLQHOJMHgoM
	Yp9uHIE0nc2BQeC7tWzabtw8YQKMiHglHpa3KHlkzQIucQJPTYXi7BAp6d/b/Ffq5mlx/cWbaX4
	4cWtllHroWC/luC063LsDwSLar79t3OyN6iqxqxrNMvo+gr5ozDd9NFSg3634lWLG
X-Gm-Gg: AY/fxX6lw09FbFJQFV1KEAe8F1ctSqzIfGNAHrVG851U9mJ6uRd8j7QSp5KSYiN8v2z
	8DJKJqo+Zj7AxoAvyWOkio2a/jYPVmPl3P5lmyoyexDygIGvAoDuU5XglZqrLiNK59mOELQzppQ
	lQRXoOlhV9N8vpyruttlTQjmYh3gl9xxQ3Wb5TAL07mn/ZKHqbSxrZwcEpvnBxkm/R7Zs047gmH
	2goKPzlkqrzzdHIRXpr8YtQFGMRzQNX4hClg5Nx4LutgwAbb5U6ke9Ui+r8Mm7Q+eAzGg5uEcus
	1OD2Su6xXGi3anwDpFUrkogtjKm3AvElOMxP9TxqS6dl0Rql3cbXKbuxQuRixioFx0at/j4lq1o
	1S8jYQIgjzc9cIjff/e38SYZdknbKQeSvZC3vHQd3xFUASLbRUuGgTFFXNWz0T/VUltcAF0vlcW
	fmV4RkzO/lbzMa1YpFtiZObl8=
X-Received: by 2002:ad4:5aaa:0:b0:880:57b3:cd04 with SMTP id 6a1803df08f44-88d81668f4fmr311316606d6.1.1766615348572;
        Wed, 24 Dec 2025 14:29:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZ/U+oO/Wi5GUJsyhcFlaDH6iMTsM1T7URvZxN8P3ucroQ5KwYbZNXw/6bola6LCgTDOv+4A==
X-Received: by 2002:ad4:5aaa:0:b0:880:57b3:cd04 with SMTP id 6a1803df08f44-88d81668f4fmr311316426d6.1.1766615348127;
        Wed, 24 Dec 2025 14:29:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd90esm5381856e87.31.2025.12.24.14.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 14:29:07 -0800 (PST)
Date: Thu, 25 Dec 2025 00:29:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v8 2/2] MAINTAINERS: Add entry for Innosilicon hdmi
 bridge library
Message-ID: <qvyyiys4vxf7bosauha3lov7uttzwdzehf2kwsu32xxzwyn3cy@jhkdjc2cvwcn>
References: <20251016083843.76675-1-andyshrk@163.com>
 <20251016083843.76675-3-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251016083843.76675-3-andyshrk@163.com>
X-Proofpoint-ORIG-GUID: d9Ogdt36weBnw7umH1NeVDwkdDMb9kSv
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694c6935 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=7XDKy0GsjqpdM7yUEs8A:9 a=CjuIK1q_8ugA:10
 a=0lgtpPvCYYIA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: d9Ogdt36weBnw7umH1NeVDwkdDMb9kSv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDIwMiBTYWx0ZWRfX/h6gZ0otEycp
 zvzlSzCBuazU/CbOS85zAIlB4v5voFt0Hfd+fMofae93kGCs7prCAddKq6sFZeieu+7Ps3Qbt4x
 v7R78DQ7Tp42+BFTf8zIWp51AhKO+YUyiWmsY0tPcfZyf5I9/PL2BrZV9wxHlDX1RYa5yrTUHDY
 KX7ihD3hzT7KESqGZt//jH3ZL4Kd77wrjzSkoqW1Q8+JFkM8DqKX4hvB1BgLzra9WcV2FPnYQAo
 9ZRrktK9/SZ4q/hDmfLowV+iVjUrVQPRVB1hVUIz39XY9pFxkFiofztQlx0Gcn6Ate/yKssEGB2
 ax4SPoGzxEK1YvwIMdGYtt19+giGdJpr7eLRJZZBm5kGflPe5Vz2ODNdYpNPdx4hAAPpIu6R+E3
 aLObUVpO228QyhRSTtIxusz4mOvM8//QveAZDf5bMxMPA45uabo0CXoLII6JPGaSAiPPiBk6qql
 Ctc1CTe4vjAZrvmvSGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240202

On Thu, Oct 16, 2025 at 04:38:32PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add entry for Innosilicon hdmi bridge library
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry


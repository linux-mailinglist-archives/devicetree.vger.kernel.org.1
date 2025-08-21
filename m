Return-Path: <devicetree+bounces-207383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A029B2F596
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 12:47:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13F3CA24BD7
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD3C323496F;
	Thu, 21 Aug 2025 10:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TvIOL4X+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3B429CEB
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755773221; cv=none; b=uRLJFpk7cAsXeYlnSSP7ptuqffM+k8CeQe8xHHOCxzHaMatjDDrqRrWNSs129RGIzAafPiLux80ZCFb1S/3+f9MDV4VOLKldo9G0j73PkHIih0xHONLvY+1TnhWLQKp/Q3codcjZSGqFdvw/ukw3BTWcRANjDYlDjB2sVlHQsqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755773221; c=relaxed/simple;
	bh=f7Bd6WIR0cxTaolSwE2gOQ0HcqA7+1RdYSRjmLkhxmc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p39zukGb0fui48NQfJaYwgX2OgAaHw8HWGkAO9pPaeP/IRliMfAAHy6YK0oD/DVoIwOqTGMCK9SZ/+2t0w7jUSa4DpffCsXom2r5N10EHOW33LbYxNucHFu4Whe5FLhgVzFaCTC0iL81znEw1sN2J+X9Q/NRCChdFGxDWz5IqHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TvIOL4X+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b9Vx027021
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:46:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PbeAkF9lKsJH/3PwbzKREqKnFWKzw18FGY4jC2/s3Xk=; b=TvIOL4X+mzB2gk/t
	ElgOJe1OlODT6w6gJwoKK8s8QnHxjYZc3F8uxWFbELvMOHYMqkTlxf0novdKLncb
	UvBYIYghcFSq5JnPBrWGziUllfoF47zeOD9hZcr170rYNLbYk0sydsEvYQkMls7I
	ujITzUExS7xGKi4dhmRVUGHVkZ3I3LvyKcKLlNzjn+3YVUo0jLCyqV3S7rZX9VEh
	qJH1+G4j1EIAaYWOM1mYtMRwvdbV92a1PoGWqEOoQaanb9xWxc5SslMLFrda/el8
	CtOdVHqOwBcOR9dUNrkc/R9qppV8lQCiO01rSYS4jTP75yROPhKIcwIgaF+G2Va8
	OBo0Jw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528w3kc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:46:59 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9289280dso19082826d6.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:46:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755773218; x=1756378018;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PbeAkF9lKsJH/3PwbzKREqKnFWKzw18FGY4jC2/s3Xk=;
        b=qK1vGZd2j7JsZL16+YJ5rjS7zXHDPAfxpBrOPS8ixqu0qPsl4OUqjicjFJjjD4RmR8
         NY9BBfx9byNAkhK7mhQ/wpeEVohTD6PVqVFpuRc3sR9845tArDU2BjyVx/dP+HnPqnVP
         tamaooog/hJWEwOX4D7NDc1fLrdFdU3S6zp4yUz4OXchGBtK1PtYdONcZKxKTGw54QvW
         zTl7ayP0EnY42cCZKSKigHaGk6+F/4H3rLTNYKhwMr5OQrFiun/nPHpifunSn/mRVPY2
         DaSgtGMcwQuF1AhLjOKlwXdayUpHl6ErLmJ2j6uv3EG1oOmIC3JCTH/KrSxmrqjbar1v
         JZqA==
X-Forwarded-Encrypted: i=1; AJvYcCVwxxsk4cZDn/m4uUaxAAFoe5nhpDH72Qk+n2ey/WqxBjZby8BvME5gqLklcbmvznDosYTImEVxB6Qf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9zusxai9HlG0byXXOYfhdSFbisLClq20xPKl4Oao2U3VuG/zM
	+8SstgdHvazSL8Jh1Gw7xEaqnJLKHEZQtI5Ydp+IB4smAWzLRzcYc4tCsRu3bmHEGh3zbHWN5e6
	Co3VFr9xeHtCRgGUekBtuHw9fqnc+j1MsiHptvfUvCOYgUiSerkF4ny0uLM/PdzqK
X-Gm-Gg: ASbGncug2F+EBLi2I+zVLCvHZ2k3D1sNhLMYKq2ui6PZk5GC9RvE2XpaXbEZZR0ucRG
	m5XZB62cZjFV/LWUvvTMp5TyLtAB91tk2Bmd6th/IhuGFkcEHSA/kiu3gaUaHsFKFpkiaziFe1r
	YbYqcYggqoaKFzRQBgaMxuBEEHaUHNjyGGqO8c6niN8ONMEfpeu3IDvhFJpojDS60umB2bFnJGk
	EDagV6JqhvvbumC9sLfrhM8sR9B3KdNDDsFIbzV//ccISqbARYWj7XxyU0VqFJriKR1wvmO99kt
	0DakYDmOnaEfjeVrSJiWg0iiTJBhH9pq16FJWGKg8P2VPPLXej35OEoBg+sz9eyw3qKVw2mvxHT
	+5dkz0O1spOcV5GhyLjx1VcsEa0H7Vm/kNvC6IXa+komczU5z3hjD
X-Received: by 2002:ad4:5d66:0:b0:709:b92d:e84 with SMTP id 6a1803df08f44-70d88e7ceddmr19991156d6.16.1755773217895;
        Thu, 21 Aug 2025 03:46:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPCh8MTppXOux5rMJyRB2XP2aYfSeODTQkbnpzCGbsdnnzgmSsU7ZBWn1Dz+HjgvczWm/5uA==
X-Received: by 2002:ad4:5d66:0:b0:709:b92d:e84 with SMTP id 6a1803df08f44-70d88e7ceddmr19990796d6.16.1755773217301;
        Thu, 21 Aug 2025 03:46:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef434334sm2999872e87.149.2025.08.21.03.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 03:46:56 -0700 (PDT)
Date: Thu, 21 Aug 2025 13:46:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harikrishna Shenoy <a0512644@ti.com>
Cc: "Raghavendra, Vignesh" <vigneshr@ti.com>,
        Harikrishna Shenoy <h-shenoy@ti.com>, neil.armstrong@linaro.org,
        jessica.zhang@oss.qualcomm.com, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, nm@ti.com, kristo@kernel.org,
        thierry.reding@gmail.com, sam@ravnborg.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, s-jain1@ti.com, devarsht@ti.com,
        u-kumar1@ti.com
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
Message-ID: <k5llnrrvc72stluvlbvzireqn6jq3h6dan7valuim4rty77mfg@gfv7drdyms2q>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
 <td7d5mldzdunb4sxs5rxa4tfnvvpolcmpwurcv5ubn47whnqek@azedwe6h3y5r>
 <8a31d1c5-4233-4696-bf8c-58f5db68d41f@ti.com>
 <fe6f848e-d7bf-477d-bad0-0c8a860f3ae6@ti.com>
 <c1edadf5-538c-43f6-aea4-8fa9f9c5aa13@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c1edadf5-538c-43f6-aea4-8fa9f9c5aa13@ti.com>
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a6f923 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=RF00TdSWAAAA:8 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8
 a=sozttTNsAAAA:8 a=Ne0C-CsPbgjNxdNBSCgA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=_nx8FpPT0le-2JWwMI5O:22
X-Proofpoint-GUID: 4pe4hQe-9bavjAuROx-Iu4JPbGv1KMtq
X-Proofpoint-ORIG-GUID: 4pe4hQe-9bavjAuROx-Iu4JPbGv1KMtq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXz36fv/3kX+at
 f95QJaa7XFkpgYDj9uGpQMEIeOEIjD9/gDjJrBQtavr8nptwF/WHmLyz0kZvjtvWUxAq9Cw4WfK
 ZvPDJh31OA7THcvav16PoA/cTZKSgipmprnA9i6aaRtzUDeTJkJroLUwcdvc9dKFQ+hoEuy5LWB
 dFLdkh+uvftRpnRnHbi9W8b4sazsHf0K3uzQ3Y6nTESOxowoK+TDi8KCB9WRcP0AM80Irnwvub5
 Qaw8NAYA5naON6qxsWA9Hedxffp6iookTW7Z7HBFDV+wVkPX/yLWuwPSbqbmwxZDkDF6upK/X+E
 HxXNiuB8m4hgI9Ovn5kY6RP6Kt1Ati1Qd08W9GSzI/IZ1jzTS77kzhiV0hIqRKqQfirT5YzawyO
 L5b1rezJrLcK5/tjxDptTcDMSnJU8g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Thu, Aug 21, 2025 at 10:33:43AM +0530, Harikrishna Shenoy wrote:
> 
> On 8/20/25 15:34, Raghavendra, Vignesh wrote:
> > 
> > On 8/20/2025 11:06 AM, Harikrishna Shenoy wrote:
> > > On 8/19/25 06:54, Dmitry Baryshkov wrote:
> > > > On Mon, Aug 18, 2025 at 09:17:44PM +0530, Harikrishna Shenoy wrote:
> > > > > Add RPi DSI panel[0] as a valid compatible for simple-panel.
> > > > > 
> > > > > [0]:https://www.raspberrypi.com/products/raspberry-pi-touch-display/
> > > > > 
> > > > > Signed-off-by: Harikrishna Shenoy<h-shenoy@ti.com>
> > > > > ---
> > > > >    .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
> > > > >    1 file changed, 2 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/display/panel/panel-
> > > > > simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-
> > > > > simple.yaml
> > > > > index 1ac1f0219079..65f486f2bc9d 100644
> > > > > --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> > > > > +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> > > > > @@ -268,6 +268,8 @@ properties:
> > > > >          - rocktech,rk070er9427
> > > > >            # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
> > > > >          - rocktech,rk043fn48h
> > > > > +        # Raspberry, 7" dsi panel
> > > > > +      - rpi,7inch-dsi
> > > > It's powertip,ph800480t013-idf02
> > > Could you please point to any documentation for this?
> > Git log would point you to it:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=051e95ee7ec10050154e4c8f48be4d99ac83f8fc
> 
> Timing patterns we use differ from powertip,ph800480t013-idf02.
> 
> Link:
> 
> https://github.com/raspberrypi/linux/commit/8648a8c9442b45e85b73423be1b469d10234b4e2
> 
> https://github.com/beagleboard/linux/commit/bde1b4c52cc5a79a2108076b8706e23d5844afa9
> 
> So I think, separate compatible needs to be added.

Then please identify the panel that is actually being used. RaspberryPi
isn't a panel vendor.

> 
> > > > >            # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
> > > > >          - samsung,ltl101al01
> > > > >            # Samsung Electronics 10.1" WSVGA TFT LCD panel
> > > > > -- 
> > > > > 2.34.1
> > > > > 

-- 
With best wishes
Dmitry


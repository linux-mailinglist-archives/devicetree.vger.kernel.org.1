Return-Path: <devicetree+bounces-108175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF436991F3B
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 17:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33E92B21AE3
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 15:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C418D13A88D;
	Sun,  6 Oct 2024 15:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BG7p6yPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B811B5AA
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 15:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728226868; cv=none; b=JEaPiolpfa5Z1kaHcqCIinSAF8u4y/6cGMUedcO+YqhRslHqG09XKXS1F2vYfihmFoSHaAp4bSLUnUA6ujMaOvkuyHmAK/V7mLTgxuBPBifU4vEpKQ7OUYhm1CmrCvbcJ+aJzgwwExeQt0XRhW64WTmVCfKKiBY/YG5NcHXOagE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728226868; c=relaxed/simple;
	bh=3Jox7XDbaksL3rWHMjU19bnxw0/FsWSY+Vx94uMawHk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uXkpwYEiiMOFeTYhpmyBPPTGwdU/ajyB/ed9xHGF7Hc1vjGVvY6l0I0RqJFnS2GN/yv9jzqN45ALcSoslvdxyN9yxIcSjiHqdiPeXPltaMQ18azBCl1OQ6tQ2fCH3Hus7a7j8fe+YbvCr5i8EMJ9ZU6F2aiox9awXZWhEqmu5gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BG7p6yPP; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6e2e427b07dso5063277b3.1
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 08:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728226866; x=1728831666; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sr7kBmgWEcI5rnWGX+RCamDzTizwOpc6au1fxKMuuS4=;
        b=BG7p6yPPrCaRuC+CVEmOsKToR3szaMm/J0UDvq0hMCM3X9xGFCNwQF4sK7w/uhyWbD
         g/62NLP8hMIAEJ+4CIxgv2tEOE0UhzaBFqx4pcKKZrHv20imtZK+jQhqvpmFvaZ0bgXD
         4jvEzDnIgRy2wjlNpJogsmCO2DNHB3p0v9+c8Sw6UhFOLULbhxpUJzrrV1JsVh9AxyfQ
         V+w+SiAEKiX27EORDnXZ3lpy11qzheBiiGYS5/mTXyt4KIfvlBwlb9QkZAMAv+EbDhW2
         jXt9Rja0NuE0QQZVb8mdBOlv35O6mr40oOs7IpUDG32PpO90QwWVLrqT1Nf/I+7wLJHR
         TSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728226866; x=1728831666;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sr7kBmgWEcI5rnWGX+RCamDzTizwOpc6au1fxKMuuS4=;
        b=di+tXC+q7irhaCZqeMXoshbPdZyYI2s5J91JAO+x4SjwC3c0nV+3LLknc27dGa4CeW
         JofR/aykZRVW+kGcUb5+9m7VbW8cZmYNxhNW3MiIyzGcV0OFTmPAgBT5gXdnpMynhlng
         Ob/kODF9kglvcHO06k4QMp7rcbuhPa535S2/lFgxwaPwhaeZH/U+4DMFqKgcscOSYfgJ
         vxoCoRSVxLiiXzqaVhcBin0lzoioEp+GJlkUK+ESeMgxAjHnSiqZI10KTnTX1iSgWRbn
         1tYOSuIXDJe+3n6c8/hsBnPFn2oRXgRfdivFcucuZIOz49WOhE7xTaE/Wn9XGO0p9Q2g
         PPeg==
X-Forwarded-Encrypted: i=1; AJvYcCVJHxtabV05hdFXCXtvM1Ea6+f8I3MbN2phkLUu0sWYozp8iJ8daxLavWi2E8b8yQDlS2pIcb93AZPW@vger.kernel.org
X-Gm-Message-State: AOJu0YwPECteTTFrW7P1Q7U93s8IARFk4383TubvxQp8OLKZ1qdVOzfb
	cbczl5bYvRc9c1JmSHOpQUYgFGd9uBUY+m2HrHEYs+vuw886T4SMfo2UcRopJ783xmIuSdqelZ6
	Oat3dSE8oGlC9qxJvSZyF9ZjyNmgp4CxKnfDCjg==
X-Google-Smtp-Source: AGHT+IEJycb4R4aw3ReSCNgChwzrEXysCheiplWAjzc1sd3W64fhBUYqqbDLQsAk4nGd84s5GZgRtnV6rDxt3bUR/NM=
X-Received: by 2002:a05:690c:101:b0:6b1:735c:a2fc with SMTP id
 00721157ae682-6e2c72466ccmr69109727b3.27.1728226866169; Sun, 06 Oct 2024
 08:01:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
In-Reply-To: <20241004103046.22209-1-quic_mukhopad@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 6 Oct 2024 17:00:55 +0200
Message-ID: <CAA8EJprNz-Byy6T3qkkUyZnTkyb_7osyuevP8E-xYzzPSmQjUw@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Add support for DisplayPort on SA8775P platform
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, 
	robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, quic_parellan@quicinc.com, 
	quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 4 Oct 2024 at 12:30, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
> This series adds support for the DisplayPort controller
> and eDP PHY v5 found on the Qualcomm SA8775P platform.
>
> ---
> v2: Fixed review comments from Dmitry and Bjorn
>         - Made aux_cfg array as const.
>         - Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
>
> v3: Fixed review comments from Dmitry, Konrad and Bjorn
>         - Used a for loop to write the dp_phy_aux_cfg registers.
>         - Pre-defined the aux_cfg size to prevent any magic numbers.
>         - Added all the necessary DPTX controllers for this platform.
>
> v4: Fixed review comments from Dmitry and Krzysztof
>         - Updated commit message.

For which patches? How?

>
> ---
>
> Soutrik Mukhopadhyay (5):
>   dt-bindings: phy: Add eDP PHY compatible for sa8775p
>   phy: qcom: edp: Introduce aux_cfg array for version specific aux
>     settings
>   phy: qcom: edp: Add support for eDP PHY on SA8775P
>   dt-bindings: display: msm: dp-controller: document SA8775P compatible
>   drm/msm/dp: Add DisplayPort controller for SA8775P
>
>  .../bindings/display/msm/dp-controller.yaml   |  1 +
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml |  1 +
>  drivers/gpu/drm/msm/dp/dp_display.c           |  9 +++
>  drivers/phy/qualcomm/phy-qcom-edp.c           | 74 +++++++++++++------
>  4 files changed, 61 insertions(+), 24 deletions(-)
>
> --
> 2.17.1
>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-110766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F2099BCC2
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 01:36:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B10A1F21470
	for <lists+devicetree@lfdr.de>; Sun, 13 Oct 2024 23:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC77213CFBD;
	Sun, 13 Oct 2024 23:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NLuYY3sT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026AA2F34
	for <devicetree@vger.kernel.org>; Sun, 13 Oct 2024 23:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728862587; cv=none; b=MgafqSI6O7e8DO9ZFngeN62GX7IaGbIP8jZGLakLxD4FggfsNYMLTwV3aFNsxfnuvoQLOOWzFMnWFAnXfgGQH7Q3nvv7Txp4zT6zwdFmU1bzWC1rFi9f0cmx8/tMnirKRjVC8pqqxg8yFdlxVjRKNJbG3Ao3BaGTdoRHt7FYUfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728862587; c=relaxed/simple;
	bh=U6mUU9ML+IfU7BfS7G5ec2FacFT+nLptq76PCY/rxWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VVVZ6vWiQLAAJPXgAaoUg2W0Q36avIwfQlTFuBx0q29S5bF/jVr/QRHwmqXSrNIWdfmQj5K3XUuZLJ2AzlFYQdw2VbZr2Q1fOaYkC/MKdR8j70oX0Q5IZAgV0+m0rjT4u5BTkaoVpQTTh3tgmaUF4Bfhuy7k9Zx3T/K8NEyZp1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NLuYY3sT; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so4218071e87.0
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2024 16:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728862584; x=1729467384; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gtsIDsXd14fK/gP7UyoWpxQjzyKDGOWRk0Y+VS/K1j8=;
        b=NLuYY3sTGgdMxwW6j4IF3Uo2o6C/TCSvt958H4ktt0g4u6qI+Xh3pRS6pwCCu88ySP
         VSwBYJid+I/dvxzDS+jVnzZ33syjRpgs35qfvWQU8kTJ/xBZ0UNgsHS2LcQPgzkd4nyf
         jlHfYMyR8NYO80BZ3w6w2vfNy8gQ8tLveb80I/1sg9NoWmHpjOLJ6kxDd5OfV+j83LXy
         FIZgZ58ldHsEx8RB6v2oLaVwn3xR2WhT0kEwaRSSt76YMrO9JcHBfJCfjaFuc9Ge/QlM
         T4huc6s/yLdBCbOREOmbpjkKuDZhbaAYk4NJGijqKLiPHJ33IPutSKYesssKZHqxHzoa
         d73A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728862584; x=1729467384;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gtsIDsXd14fK/gP7UyoWpxQjzyKDGOWRk0Y+VS/K1j8=;
        b=s0UQHp1THfO5sPizPL9u7e1cs5xRRqy+uOiijlnMI+nitBVfrytZEsJfefvVNNy4YB
         GrElc6EJ+fir0Bw2Uh2cuSAgj5bwc9I4Yr5/4Nt7bgXemNWgfuN095+cx6IFGQQpzVo6
         RoCEoO5t/idWp8i9fju6r5yjb1/hcTaPS0xgmHzf7MLg5aZaO9o22uk/Q+58CwwfUNBg
         hT3u1JD4focLLF6+Cq/US05tnU9Uth0l3xRiUy44itXGyJJaJ1Wl8J+sudzUv7OEE0Sd
         ZaHfhCXX8SfgKZFDBvsCCM+dxxoZYFQoNdX9XA5Jc92at7l41lS6SqAIfmnCX5h4b8uC
         8rfA==
X-Forwarded-Encrypted: i=1; AJvYcCVCfmaEyBUjPEsVElBj79GqoSyOhFueKPg3hYZ1tQAwd9eUZDF2yFWbmDcXirs1OJjC91bYmdooSV2e@vger.kernel.org
X-Gm-Message-State: AOJu0YxzsY2qByF5FALf48VOFhnXJ4v9ISaDwJG8z+oWoCwgcHCzlSbS
	9CyAnrPPqtTPiVmNf+jtZY/KwD58+2VxIJigOZxbrA03/l4np/KpNXofQCx7u6hi9K578X/0ZWc
	J1ZE=
X-Google-Smtp-Source: AGHT+IHFwXgR5icPxsw2kqPcp+dhlQDcfwPu1bgHs8JR0lE4su8aTVs0S0kQ1stHQt0GuBsK4gz6+Q==
X-Received: by 2002:a05:6512:3b9c:b0:530:aa3f:7889 with SMTP id 2adb3069b0e04-539da57f62fmr3626492e87.56.1728862584125;
        Sun, 13 Oct 2024 16:36:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539f1bb45ccsm363614e87.273.2024.10.13.16.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 16:36:22 -0700 (PDT)
Date: Mon, 14 Oct 2024 02:36:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux@mainlining.org
Subject: Re: [PATCH 2/2] drm/panel: Add Samsung AMS581VF01 panel driver
Message-ID: <gdan5zalxmcvtobhizxefemfevn3qkqiflwcmfdhw3v5fwdlex@ozfpn3ejaeub>
References: <20241013212402.15624-1-danila@jiaxyga.com>
 <20241013212402.15624-3-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241013212402.15624-3-danila@jiaxyga.com>

On Mon, Oct 14, 2024 at 12:24:02AM +0300, Danila Tikhonov wrote:
> Add the driver for Samsung AMS581VF01 SOFEF01-based 5.81" FHD Plus CMD
> mode OLED panel support found in Google Pixel 4a (sm7150-google-sunfish)
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-samsung-ams581vf01.c  | 283 ++++++++++++++++++
>  3 files changed, 293 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-samsung-ams581vf01.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


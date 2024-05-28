Return-Path: <devicetree+bounces-69676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEA38D1126
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 02:51:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2ADFCB210CD
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 00:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6294617E912;
	Tue, 28 May 2024 00:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OOnZ2sDg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D56E1C2E
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 00:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716857506; cv=none; b=Lx2U0GxrIYaYgfix2+XfsFEk5qAiWk5VT342qj68m6gbsOEpwFoPqvNkqaAggPP0xCrMx8/qR4fvZKfMAislmAVteIOlS1pL8O2V3wygsxBoY/50mYBVm2T729cpqQGLgZJjc7fnSn5IeEUSsrqDET6OPyCjNo3VEvGgtZRaq/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716857506; c=relaxed/simple;
	bh=+f0VPv4MrrgiymcyGPwMbtbuzF8oJvqu+QmqfjmTGq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ShI4BiK9myokkPqDYKBI2TWa3vfq7Fnw7h6dHkl3wjbfpQt4CwzNV/sw06JCNqIMyFb5jcjiNHwG2P7XmvdT/EHsCSsUyIPtn9kOxvhO2hw1fi3sVl5WDloElNabZoJshyhvWGEsIm5WybKVpMNmK2OYLhvO3VoKjVcb+7shmKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OOnZ2sDg; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52742fdd363so332286e87.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 17:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716857503; x=1717462303; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6Jvp+hZYFfhzystmOitlp42k6Z90166BIGS6uqP4gWo=;
        b=OOnZ2sDgQU+4zWweMiBQE9Pbs5p04NmHpCmsFEdSPLvkc/7OJpwp/Eo1lMfEMliUsE
         CLCrCHvb5OrRXmSABdrDKvUJWXxVl750RN4Fb0DHt+HhwqASVE4ULG8w7lPZzYPvVO3+
         Izwip+juLtwszSlsRIfDdE2aoRyY5yq4NPAXAXyKq1tdgzca43QudyIvFYCDnp1Xarhl
         z6N9Dy5DlzPPvgyEQYs1k3LSm5oKwaX9gKCf/dVufR5xmewWO1LOp5A0Qsma8Ucaqbzp
         HwzENkKwNPkNOfALKD3Z/o3sathREGQWHX81Ue6rsT32qdN+O/l/7t+YjyZ+/xAHVnc1
         dU8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716857503; x=1717462303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Jvp+hZYFfhzystmOitlp42k6Z90166BIGS6uqP4gWo=;
        b=tAlVnGtvsH+trQMjl5s2vjoQ1MRFhrq3DrTdLCNe1I153QBv/OfJf0rBJxFQaEDzYD
         Hwhp6muCh0cAk25uszGn23PTaIUJO1jHSCXqE3FaK6IS65k7+zfr/EbhI5SLRNX+M0zm
         T8Uidsg5H+Dmy3/jR5DumbXCDcFk07KLV9yMAOItcsMsKWqEBVe9eJE+OGy+/hAuwUUd
         MVFVgbdOHyXepyyUYfhB/LM8lsN1HBzPz+KeAX4Zg7GWZKEIQVqfYT0jRkcvDStoBJHZ
         5nny22Mhl/l3uaTfbBtgAHl96HNPiO4LGniaPIU0T/5/3HetGbqH0wwVfGuE5HGKMLmy
         E/wg==
X-Forwarded-Encrypted: i=1; AJvYcCWbUcTdChEPzhejphye8QQurZrPjX8yCFH6UGguKur+9JexV3q1NhpqgIVuyvuXfvD7u0MlhrKeP9IuklZ9inmGqMMmauVIofliTw==
X-Gm-Message-State: AOJu0Yx6ipnixogZ4hubj1kmosgQXtJUtxVhFW0/NhliVhp+L1TDBwo0
	MNVHaQ8XG7Sce+Y8CLT0JyzfJa2id+cmRSHbzLcScRRs1hiyMPU7qa7r23yHe4w=
X-Google-Smtp-Source: AGHT+IGcWgwBgUcaN0cfQnKSG/Vltpwn7liri5wS72ChHP41TsGxpMvTPSgmLVdzeboS4ZHat/qOWQ==
X-Received: by 2002:a05:6512:5cb:b0:523:72b8:8002 with SMTP id 2adb3069b0e04-52965198b89mr5807900e87.30.1716857502311;
        Mon, 27 May 2024 17:51:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529a9c25e98sm511225e87.278.2024.05.27.17.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 17:51:41 -0700 (PDT)
Date: Tue, 28 May 2024 03:51:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
Message-ID: <l2y5jntbmrfard2h6napw27ngdsndvt64vb5xwz5ydmvoham6u@h6xgmmwbakss>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
 <yh4r2pgdl2m5wp627r35zse3obacmeanin5rjo34f7tctgpix2@dme3vwzaivag>
 <fbb666b99104241aae09fc5b2ae72433e1249c23.camel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fbb666b99104241aae09fc5b2ae72433e1249c23.camel@pengutronix.de>

On Mon, May 27, 2024 at 05:40:03PM +0200, Philipp Zabel wrote:
> Hi Dmitry,
> 
> On Mi, 2024-04-17 at 00:58 +0300, Dmitry Baryshkov wrote:
> > On Sun, Mar 31, 2024 at 11:28:57PM +0300, Dmitry Baryshkov wrote:
> > > The IPUv3 DRM i.MX driver contains several codepaths for different
> > > usescases: both LDB and paralllel-display drivers handle next-bridge,
> > > panel and the legacy display-timings DT node on their own.
> > > 
> > > Drop unused ddc-i2c-bus and edid handling (none of the DT files merged
> > > upstream ever used these features), switch to panel-bridge driver,
> > > removing the need to handle drm_panel codepaths separately and finally
> > > switch to drm_bridge_connector, removing requirement for the downstream
> > > bridges to create drm_connector on their own.
> > > 
> > > This has been tested on the iMX53 with the DPI panel attached to LDB via
> > > LVDS decoder, using all possible usecases (lvds-codec + panel, panel
> > > linked directly to LDB node and the display-timings node).
> > > 
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > > Changes in v2:
> > > - Fixed drm_bridge_attach flags in imx/parallel-display driver.
> > > - Moved the legacy bridge to drivers/gpu/drm/bridge
> > > - Added missing EXPORT_SYMBOL_GPL to the iMX legacy bridge
> > > - Link to v1: https://lore.kernel.org/r/20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org
> > 
> > Phillip, Shawn, Sascha, any comments on this patchset?
> 
> Sorry for the delay, this all looks sane to me. I can't find any users
> of the "edid" and "ddc-i2c-bus" properties either. But let me test on
> i.MX6 and with parallel-display as well.

At some point Chris dropped me a note that he had issues with i.MX5 /
sii902x driver, but because of the Connect I wasn't able to fully triage
it. I hope to have time this week.

-- 
With best wishes
Dmitry


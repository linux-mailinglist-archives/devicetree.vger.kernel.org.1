Return-Path: <devicetree+bounces-220398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 537B2B95951
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 13:12:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 057971768C5
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 11:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF9E331D389;
	Tue, 23 Sep 2025 11:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JK11uv56"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB1319D8BC
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758625940; cv=none; b=aijRyCvT+UG9cLFxmyZwQSApwg1YFsfK6ElvyTSv3aciFIaKarcx4mBAxVMFr47C3SGbyxxuwKEfmw5PsYMIya9SF665fFNZwW1hBLXkUpP7/SQEYZ3TitsssM6vacQg2De14Lsma8K/3iF79v+pOMr28Yi25a6tWVC0ueS6/JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758625940; c=relaxed/simple;
	bh=2Mpeg4sU863P59x7ZLTz1eO3+w0YJ+zhnVaBT9TGk+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o2o2V3IKrT5XpuA0XjmEtmrwJNeXXKu81wAkET4hEUBeme0SQeQE933YR9J8O8SzLx1xtZKphScwkhsK6dGPTFNk39iYFqx4LEsTJlOOAJttgnTRgcnxS0oLr9xL4o5yx/OvTiQTE0Vl2X97MS/1ADN2U1ZAfH6OFCJ8NcWAM5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JK11uv56; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3f3a47b639aso1779728f8f.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 04:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758625936; x=1759230736; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NWUMDZg02Yc6pBQ+fyfcvWnx45nePbQrogG4kkah6qw=;
        b=JK11uv56f79YKmzJkFFGORlCYj/RqbiMN+ItQUEnnNbhttdV8y4ryExWZaIZS4Tzl4
         sqlBUc98sNDu9cNSyE+vnOyFgUj5VnJpVVJ469j2PaLJoz3VKdcvgf9mAaPYSNeEE6Qd
         pnaiD1S/x3mU5BLCdot3fQp2uMfk5NPIS7ZAOTJywKXYM8jp/BoNcnY+KqNQ/n8IywbW
         e7Ih7LJQOaF4oVJN59IZaOBApZ1ms8cLt6rg2kfNHnpYeEEq8s9S5Qzafsd1hzvIwN+Z
         8zDmBy9I1ycgarlphE40EvZWo/jx/8ZfrYkXDRJsMHaTNV1vQIpE6frXWLJOgdoKoeEx
         iXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758625936; x=1759230736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWUMDZg02Yc6pBQ+fyfcvWnx45nePbQrogG4kkah6qw=;
        b=G3xionllzfPKy3lzGdZvPbSXZEhigEg+xr5CiKCK8Xcww7W1iZxZVL0O+q0W1hz6Zu
         OAfO2DWwGr6sUpPXzjgEpIHp9mOm6mDuP1GZCb+U+CsvucZXqEby3ymklst8NC+vLvCf
         g14PgSwKM1mVoN6UxNn/daMGOBG7eQMgRsu+EaQTGp+IBzt/OYIHe7S4O2Ro5blDU8NR
         nHxHYE26QBW2C5MTFU9bbU8iWatNHaxscyiUPpxGtROo9aJAzS+nIR1zc4Ndwau5d4Fx
         vi5jXRZx8rXrUbGuwI+1BmSMdz2H5YMaJzoDcBfAprqv+Th94OgOJfQHbZkGD2fHB3iN
         L7Rg==
X-Forwarded-Encrypted: i=1; AJvYcCU6OCKh2+Ozxp+i1HwLVpZe+vFP0b0XtZpO1O8zB7PM69ZlAoUJ4aLgCSR7DkVZ1lDhC6VlOo3mcxBW@vger.kernel.org
X-Gm-Message-State: AOJu0YzNSxC8mt5Vq3Ji1YwRmnsEcFFc/6tw6FYF7BZdjE6XZChWl9g5
	w3YH1qK5qGXvGfjtM45zO+3AXxiWQL58vi1QpX68ji8QAUsMj8fsyhcamrARfs6M5Ok=
X-Gm-Gg: ASbGncs1LjfiP4/I0Kdd4IDVneQylJnhqmx0UgXr6jdsIPy5CXQn243Tx6uM2U7KV+x
	9QLSiWJS+1P+oGazUpjLArTtV+2bwX70V8ruJ8b5Uv32TG+WfVpRlNh7P7XHDQVdcnEtiKK8vud
	JGNY8/kzQMv4mRMVBj1GdHsJbeQ0aBEVWSAwYXUhp5mIihsbyrhvtaAY6hiU210WOsvT7RpdVrV
	RdiM/YAsbHsle+YcsesEqI+M4Rp6ukrjCAkB1nj+YHynqcaN/xsxpZMUD8Ysu4AoZg9Car8JlO9
	o9JPHQlnSTN6R/bCGMe3CGGHKjTzy+1bntCECDsnaF7VSvbiGuDKc6T31/tJeyGZcCwD/vfakId
	NMsftub1AQAT9Lh2B6V56gJ+HIAZouhRv
X-Google-Smtp-Source: AGHT+IG49iNW9kMW01dNqwivcvHhffQ3BmO4pSuUKtosLPnCt7bUnpwTPAUZSNn122slP6AcDzf+Ow==
X-Received: by 2002:a05:6000:18a5:b0:3e2:4a3e:d3e5 with SMTP id ffacd0b85a97d-405c6d117ccmr1764266f8f.22.1758625936117;
        Tue, 23 Sep 2025 04:12:16 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:947e:485e:f019:ebb3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee07407ccasm23587166f8f.15.2025.09.23.04.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 04:12:15 -0700 (PDT)
Date: Tue, 23 Sep 2025 13:12:12 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: rename x1e80100 to hamoa
Message-ID: <aNKAjIXT3ll3L0qT@linaro.org>
References: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
 <20250923-rename-dts-v1-2-21888b68c781@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923-rename-dts-v1-2-21888b68c781@oss.qualcomm.com>

On Tue, Sep 23, 2025 at 02:01:55PM +0300, Dmitry Baryshkov wrote:
> The X1E80100 and several other similar names (X1E78100, X1E001DE) all
> belong to the platform now known as 'hamoa'. Follow the example of
> 'lemans' and rename the x1e80100.dtsi to hamoa.dtsi and
> x1e80100-pmics.dtsi to hamoa-pmics.dtsi.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi                        | 4 ++--
>  arch/arm64/boot/dts/qcom/{x1e80100-pmics.dtsi => hamoa-pmics.dtsi} | 0
>  arch/arm64/boot/dts/qcom/{x1e80100.dtsi => hamoa.dtsi}             | 0
>  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi                  | 2 +-
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi                               | 2 +-
>  arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi                        | 2 +-
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                       | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi        | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts            | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dts             | 2 +-
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts                          | 2 +-
>  arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts   | 2 +-
>  arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts           | 2 +-
>  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts              | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts              | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts           | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi           | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                          | 4 ++--
>  arch/arm64/boot/dts/qcom/x1p42100-hp-omnibook-x14.dts              | 2 +-
>  arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts          | 2 +-
>  arch/arm64/boot/dts/qcom/x1p42100.dtsi                             | 4 ++--
>  21 files changed, 29 insertions(+), 29 deletions(-)
> 
> [...]
> diff --git a/arch/arm64/boot/dts/qcom/x1p42100.dtsi b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> index 10d26958d3c66a5a4faf2ca6065e7b661f967b4e..2cecd2dd0de8c39f0702d6983bead2bc2adccf9b 100644
> --- a/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> @@ -3,8 +3,8 @@
>   * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
> -/* X1P42100 is heavily based on X1E80100, with some meaningful differences */
> -#include "x1e80100.dtsi"
> +/* X1P42100 is heavily based on hamoa, with some meaningful differences */
> +#include "hamoa.dtsi"
>  

If you're renaming X1E, please also rename X1P42100 ("X1(P) with 8
cores"(?)) for consistency. That one also covers multiple SoCs.

Thanks,
Stephan


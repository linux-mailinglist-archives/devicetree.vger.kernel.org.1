Return-Path: <devicetree+bounces-151844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E260A4747D
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22537188C2AC
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2AF1D90AE;
	Thu, 27 Feb 2025 04:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y14zn1GJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3714142065
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740630794; cv=none; b=lHssZ+SxRUwgnt4+4531mnqV1Ti9zVfbNtQNnM7Gry1Tb3MKhGjArzyOIHTxnP3j0fYQMjL5gZ04240BUlOCBGp/i4d//unp+yg/mJKnJ0TF9k7ypCeIDKW1zyt8NHrxlQPA3Vz/kIhS0L1e3ZhkBjPEwWxH8LS71ygpreNimOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740630794; c=relaxed/simple;
	bh=YtZ5CKgC1l5YAr+QgfvUWGH0Dop2tg9dyuK7ovDLanU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bx99vQQ1PTYr3xM55s4lo8QF5eFHrGgabh/fNT5gdNyUIKb8OaV39h5h0bcQbvSagX5jV0cfgjNXuLdXSSf8n08IwkY/Y8ACNl70iWrEf3I7+OI3iz6lUmMMt1xGUFS3bNrBfE23K/LrsXzzZgy8DGvN9oYwQrNMtwuexs8ivw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y14zn1GJ; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3092643f4aaso5174631fa.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740630790; x=1741235590; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=obscijDO91Mt88inTL4A7vtLGjjQitrqKYoQVkgXUGk=;
        b=y14zn1GJoYrYvUK/F8WVk8Qx/xlvIciq4I07zgZ2XzH+2lgpK8LxrKuVPz6kyc/sXK
         0TFg1k3e0uuEnbTkssAHm5a3+EpcLDs6IJ9v7eiYVxoJEOEeOaSgmclaPNGtpY72wlhY
         5Rgb4s0jBC4b1u+Qj1ITPUrMzvNTkvasrdWqmApj5Pei7wZr5IfCfdZBuFx0rmIySE/N
         yayS6ikiHsd3HWXTLRnYzTVeRhOywix84SSKF+ICTZVytj4dmJBB0oLyrqmr9VCSQyj7
         9Uj1yccnd3gkfxjAjtWvnUq/GsrhlRJvWCt5VR8Dm1kwznd/9uieDY0QTcCfYMnfuHak
         IHQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740630790; x=1741235590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=obscijDO91Mt88inTL4A7vtLGjjQitrqKYoQVkgXUGk=;
        b=JtbvJGEy3Q6wKvPdtJuRWsUP9CQaWs2j31kThSEvpCu+mN8pxNjnWkxownM7ogXoer
         Gica3RieEcy3lGIvtW3BGSKeyEENjIfsxrcojGoA+6eQ7v+1pV8T+mVULDtyujx2vx2x
         41HVO7OF6Vz9/KDHQthSHQuZAEhL4Ha8YhTVAReLQATH1bjMUY9LddVurIWNkEBpA6NG
         wsSzC5ZR5RsdUTtQCz8aKUxKGQKdeOXT1A+ycMkjEfxHj0ge0CgjQtqIlpgxfy0Vph3x
         ijeXB4S1IeMdqS/q6o1dJDrmci+rbSLw4aQKdZ510sz0nVyXIscu35rqX0xcXopnW2zn
         CCEw==
X-Forwarded-Encrypted: i=1; AJvYcCUzpLjaW5p3pOxeTEOSLZGXFk7hd/2Tq5z6mMXs4vZGupYjPETE00nB33aoZ9JwCNElX7TVNnbz9/BL@vger.kernel.org
X-Gm-Message-State: AOJu0YxHmYEQ4m+KYQs+8RSAIxywJBh5uxJo1cxTiD4keMIEQa9l4Zws
	U+oljK+4A2pNfKJZZl2PiIjT2NSK2PbX1ybLXUBgtofjOxPM3y5qUOCOPZ7b8KE=
X-Gm-Gg: ASbGncuokZ+YvOevFnc2Zq0ACFO7tu1EwEERg9IObb6gBci9gDSeNwsPo9gqAYsgEWV
	7Sp6Marzn2wU9XwCdngKDdLCKZFqs9Ilv5RovThS5E+3f71HGIwULzFMMzqnSqHXipjSEw6hR29
	4McUJq4WVHR96cGaek105SR9nE4LyiDuWF8VG7/H07smm0GcgzuEb4FChKjqGKoGHRSEKhfq1LQ
	tDZGmE4Hhq0lHRUCGZWZo0JeSc81ODxuTagTb9qS0X1zIk5dDNVd9kN8vgop3MBB+nn5M94oUxh
	+zv6daIW9OYEfjf+iG02s1zcrqCwgtQQsHAQ9zFGkJYeI/mntVA+oVaIIX9l/iBfLF6hM1TIIbG
	M67U+aQ==
X-Google-Smtp-Source: AGHT+IHn49HjynasOW0d3PE6ed9GscgrGPeAaHZGAfjQ6cYekzKg6vVVq5xB21jaMu9bNtfIFG8yJw==
X-Received: by 2002:a2e:9d0c:0:b0:308:eabd:297b with SMTP id 38308e7fff4ca-30b8464b31dmr7624621fa.4.1740630790326;
        Wed, 26 Feb 2025 20:33:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30b8685b31fsm610901fa.77.2025.02.26.20.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:33:09 -0800 (PST)
Date: Thu, 27 Feb 2025 06:33:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	patches@lists.linux.dev, cros-qcom-dts-watchers@chromium.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Pin-yen Lin <treapking@chromium.org>
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sc7180-trogdor: Wire up USB to
 usb-c-connectors
Message-ID: <nnklm22zfnjiabjsbo7fsdigwx6nbcqjidhzynjyr2aunmk5r2@6m4dj45ddfge>
References: <20250225223038.879614-1-swboyd@chromium.org>
 <20250225223038.879614-3-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225223038.879614-3-swboyd@chromium.org>

On Tue, Feb 25, 2025 at 02:30:37PM -0800, Stephen Boyd wrote:
> Fully describe the USB type-c on sc7180 Trogdor devices. Most Trogdor
> devices have two USB type-c ports (i.e. usb-c-connector nodes), but
> Quackingstick only has one. Also, clamshell devices such as Lazor have a
> USB webcam connected to the USB hub, while detachable devices such as
> Wormdingler don't have a webcam, or a USB type-a connector. Instead they
> have the pogo pins for the detachable keyboard.
> 
> Fully describing the topology like this will let us expose information
> about what devices are connected to which physical USB connector (type-A
> or type-C).
> 
> Cc: <cros-qcom-dts-watchers@chromium.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: <linux-arm-msm@vger.kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../dts/qcom/sc7180-trogdor-clamshell.dtsi    |  21 +++
>  .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  47 +++++++
>  .../dts/qcom/sc7180-trogdor-detachable.dtsi   |  16 +++
>  .../dts/qcom/sc7180-trogdor-homestar.dtsi     |  47 +++++++
>  .../dts/qcom/sc7180-trogdor-kingoftown.dts    |  55 ++++++++
>  .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  55 ++++++++
>  .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi |  55 ++++++++
>  .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |  44 +++++++
>  .../qcom/sc7180-trogdor-quackingstick.dtsi    |  31 +++++
>  .../arm64/boot/dts/qcom/sc7180-trogdor-r1.dts |  57 ++++++++-
>  .../dts/qcom/sc7180-trogdor-wormdingler.dtsi  |  47 +++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 121 ++++++++++++++++++
>  12 files changed, 594 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


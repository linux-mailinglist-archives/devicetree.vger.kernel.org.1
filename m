Return-Path: <devicetree+bounces-126904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9399E3826
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 12:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A691161131
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC9A1B21BE;
	Wed,  4 Dec 2024 11:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tCPj1Nc1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC731B3930
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 11:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733310103; cv=none; b=aSG1fXUcOhC5rTjA3uiFTf46Xc3JLEDSw56Erh4ijLUFXz70lvaf1TOyIEb64ONYNnf3buvwVu3xS+qTD+l8mle2esWjs+vyRIo8LN6PqIwgflAllXrX0Gnd9HsCTl7kzFuHvsO6FgB7gfFQFpn4MPK6AxQj6O3bJVEDDZxxMN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733310103; c=relaxed/simple;
	bh=ccqc+Ze9+qmkyBvf6ra1e4vxsoQ7jIJam/V6QbyKci0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BvoPVcqHqa3ZWRZ3ZqjPUqM1ZGGMmkJrfOFqmxnwrGfDhcUpxTUNAlVlDOAPlspJODnxZaaum7HNuPrRoybC64Z+IZKwt3rbeSvtoJ79yGVOUpiXxXOekx8XNjokn3HLIjgb70Xfzmh6tV4TkaFBuJaH7xTEYyYSdwpODA/uvHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tCPj1Nc1; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53e1be0ec84so1280546e87.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 03:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733310100; x=1733914900; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Fw93oX49gMMEDlFVw9bAOV4wOGh1pqOG8Ei8VVa+TEA=;
        b=tCPj1Nc10uv0XAie/MBqzuuk1zeW63KXHicYhnF8iQVPeWdh7ZFyGZmAdkcyLpxX2e
         NPdV9UOIT7TB+IJei9HIokCBIN4Gox8UXAJyF2ocJNor1r7gzHRfeI2TXj8ahd0K/C/V
         8awx9rIjX370Ia42f1ghXcHBgmBHe+zQVwFsVZy2olDhaoJbg4nNkzob05/DQXNw2sob
         nAlpdOtvUcEUDp9gHQXgh/i/2I9oBvctbV2wVI1ta9awIoxXQP+4gsXeidh1ypO/JAzD
         uWw/v7k5yTlGZ/yH3az0/902h+fzXKGDKl9iQ4K9BXj/ApG1TeOiI3JuxX/jlmLcSSoo
         ioyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733310100; x=1733914900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fw93oX49gMMEDlFVw9bAOV4wOGh1pqOG8Ei8VVa+TEA=;
        b=ggTfM0x9Ahtp9hCdMivqUJlzZCNzYSLdcYeJ98IL/PMXGH8eoBQIvvu/yfBbc0r0vq
         Z5P5jgTHVXHSD9jMv/P5B141+gexmJvrjotoCSdUuoyr0Wpfm+ppReaVEfnj6/JCLgpB
         8EJmuiHdlSTdkyWMZVsRm8Hk3VphtcEon8qqW5iiP5G3ukG1n/tWboIPE6Yf+u67uSwt
         zNTJW3PUO3esYtlsSK+BP8ev7nn54W3p1UuNllTVRGNTyMflp4tELIS8E4fyEnPk+6Ng
         p5d4TuVDJmzHD8o4cfIte71J4l3XP1CxXnKRG5kj/TrwDIzkrSoHeVSTHhAIG+e5H3cB
         VJmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdfC1h9uzLfRZSbKz873vDMn62ERcBM5aUbchyj9hkuoR3IprzGcxhOK7MRVdsJsoH5E5s1Ychnq04@vger.kernel.org
X-Gm-Message-State: AOJu0YxDDfJvZ6Ujc2odPn811TesaM8djQuc/UbzetZrCRO2XDEZI1SC
	D/WIlhGRHduPylVxPsbPn61ETld7G5pqNgJximGyacbFYTQ8JANayECTkygGdxc=
X-Gm-Gg: ASbGncsIxiX9NOZl2Kc0Rj1bhhlw72dOYORzlOGAVj+LOtcmLsg5Kibtv+OvNH8WMXe
	iKOwPDfuyShChH76NOy1r5AcJLCh3T+q04khqB8R71eLFhXDdroNrGGCL0/1eg8QSFogZnuqnSB
	G5KfiP4/0OCYbFRGpj3gQ1eJZGF2DnmHrsqfM9w3A315ur3Y/hD1VCiubJYSl2F22Yg/n4cjKhf
	AlIBxMHNyHKkixZ8uGcPYJshGzyvdMP+lU7RZwZzEfcP4vlK3oqZsvVuZLGUEFC5IJQBuxuDpML
	sbjzih767vhH06tSvwqud5TxO3k8gQ==
X-Google-Smtp-Source: AGHT+IHXZUMXi1zd9eHxyOwY1U4Jc7Xk4uPxg84MZMiLNKxWD9azrbXOzcfpS+KjwK592lxt/bVSpg==
X-Received: by 2002:a05:6512:3053:b0:53d:de1b:f961 with SMTP id 2adb3069b0e04-53e129ed30emr3418458e87.7.1733310100403;
        Wed, 04 Dec 2024 03:01:40 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df649687csm2123316e87.209.2024.12.04.03.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 03:01:39 -0800 (PST)
Date: Wed, 4 Dec 2024 13:01:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: qcm6490-shift-otter: remove
 invalid orientation-switch
Message-ID: <gw3cex4hfdkio3slle6iipod3hwrvo7ju2o2kotkbrf632c3za@cvc42mgvkync>
References: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org>
 <20241204-topic-misc-dt-fixes-v1-1-6d320b6454e6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-topic-misc-dt-fixes-v1-1-6d320b6454e6@linaro.org>

On Wed, Dec 04, 2024 at 11:56:53AM +0100, Neil Armstrong wrote:
> The orientation-switch property is not documented in the PHY bindings,
> remove it.
> 
> This fixes:
> qcm6490-shift-otter.dts: phy@88e3000: 'orientation-switch' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/phy/qcom,usb-snps-femto-v2.yaml#
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


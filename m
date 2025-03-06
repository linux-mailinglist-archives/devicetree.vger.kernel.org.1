Return-Path: <devicetree+bounces-154960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A7912A551C1
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 17:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB2D4188374B
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 16:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E3C25C6EE;
	Thu,  6 Mar 2025 16:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="umUoEtpX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36FB25B695
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 16:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741279564; cv=none; b=oyPO4LVhxEpyxGEYtTYY7/weMQPGG9f6lB4bjGp8+DnfHIAox/BjPm5l4Fp6KwTvddV8Hd398db3qW8Q3/t4f+QPj+32qUoPH+f/OO4FkRitS7dHTVxjYA45+4V4W8AY7P/nlvshx/R2nIdwulF0N2ewLqNuhANoq2akvIs56Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741279564; c=relaxed/simple;
	bh=TFqb6nBt6h/0td1uTW45nWiS8RKPJqUeWeIGjdp/DUs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JYWRuYQVdtqhf3GzcfaNqOJ4zMlgthDu0tjGyYiXWliqV3OKAJs4m2rj2zuX85mi2JugYW6vn3HezgRRtt7bgXtPmPS5zOnq0cZuH8KnL9jrwyBEGU/6BHRtHMQTBEPDeemYWsdybCfWd42u3LcXKsyynQl9BPg7ocPI2I79u6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=umUoEtpX; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30613802a6bso9312141fa.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 08:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741279561; x=1741884361; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iYkKdW4t5OSFScRUxZzZa9zKFqxQ50ly8uK9WVZ07tM=;
        b=umUoEtpXyA8DNsbuXKB4TRycGHlKq/HKfpfcaF8jd9CvESP528Djkx8c7R03U0blZb
         G/xferS3kGofdnLagkKEPjpuKn737XFLZofAlIBLf4Od0wf4yNpiZJALksQ5cNVLJYLl
         aitegvl2YpsnyugKQcc6xASsp7YFggyJDK8gXOGIk0QWfOMJ4u6FxawQ0LQ2rfluZunG
         uE08sJwtG0zOjH6PoxxGsQuhaYRECT72ddeokk1bDbc0FjIUjV0RjUxh9qQ+/60ZWlo/
         T+kKkh2TnEJWV7nPrbZjFotux2JGmtXJuc758niA6gk1dOsWK5ZrW/70EwR1MvKU8WKc
         Rfog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741279561; x=1741884361;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iYkKdW4t5OSFScRUxZzZa9zKFqxQ50ly8uK9WVZ07tM=;
        b=HMKemUnrB4zUcyroWDP4elWO4YGyVtPM5NSb7F8XwzomQU+qfOXlaq/24dVi8Sd94V
         A57d+UEtbnj38sXqF11ysvhjuM4OGMGLIzrmkePfQBjJdTZaYdzNDBuzEVnXHdg3Jpkv
         h+8TEjh6ExA0UYo25XQcWxNIjKw1d3gDkaGG+INfGNN7oEuSAxJG1u/zLGqBm/9XlzmI
         Z2TgCm29w/L0iUPKuLK1z2qBJco/79V7SbMk6Zo+R+bzI/KpAuAo7/nMO/7O5t5VTcGl
         GQBwlnLmbtaKaV2cy+z8r1liKssOBy14mxKAozSM+PZyJa5l/kZAjEZyDUV9vbm6CKTX
         Xb9g==
X-Forwarded-Encrypted: i=1; AJvYcCW21n12DlrYbl+TCXy86xZF3E1fvkEvQGCd3ObQBnQ9GUKo/AFv4nsohp1G8zrmtL1HDjE5JvysHpuh@vger.kernel.org
X-Gm-Message-State: AOJu0YxsTaSxcXBgBpqxj48QPSsCyRbazdSO/aeTaTP9qK5BE9B3rjlF
	kAKzyFYMthmGLB8ikP5emBii5DRDlrYwP/oC444vuZrlRSFfGlkXIWHO5m4/q7k=
X-Gm-Gg: ASbGncu5hcVL1k2Cu9tuXOzwG1LcecilugiZURS7N0hXyhKx/Pa4AY4D+Ob0yxJn6tb
	dxF6jjX47Hysc3yTB5+AtAUJ/DTD1RwWsfdFw+hptUroxBaH385D3eGNT0Mmvjti7aFm0vWR8CI
	g+xBtrmg7tsINyvFSstu3Neu3O9+zXDwXEDHUvKY+ajudVGDIsZcRXwFAWuox5p49UnG5lewx8c
	SGa3RvUtVaZnNHjxF6nq9NTxKBOMFN3IWeYgHvC0A+UMXEGIaDb3M9BG6lCA9f6sW1VZUECSPCm
	16nJD4cyNduaKGB0okA6mROFNXCBdIPpdGyl14OPeKJILilmtfJo4sxD4wutTDVarsPcky3t0Q+
	S2ntaO5GBeqhGjpi6oeV/7B1Z
X-Google-Smtp-Source: AGHT+IGpbLi2y4PhgwxHevBiZsJmX/UmrqptJ9oIY8nq8Avmeb5P0twX8p0VwFnIZrkkMoJhAI8b8w==
X-Received: by 2002:a05:651c:22c:b0:30b:a4f6:bb35 with SMTP id 38308e7fff4ca-30bd7a65210mr22112421fa.22.1741279560809;
        Thu, 06 Mar 2025 08:46:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be98d0800sm2597551fa.5.2025.03.06.08.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 08:45:59 -0800 (PST)
Date: Thu, 6 Mar 2025 18:45:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Georg Gottleuber <g.gottleuber@tuxedocomputers.com>, 
	Georg Gottleuber <ggo@tuxedocomputers.com>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	wse@tuxedocomputers.com, cs@tuxedocomputers.com
Subject: Re: [PATCH] arm64: dts: qcom: Add device tree for TUXEDO Elite 14
 Gen1
Message-ID: <jxld7w4i7nut35pnmaxgsnmccg3efffas3rubouxcpxbxrrrxh@rrl47w24ju3i>
References: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
 <75c17309-3072-4321-ab15-69d60190f2f7@kernel.org>
 <d98ad83e-6479-4453-bd1d-4f3703b0dad2@tuxedocomputers.com>
 <aa837beb-ef4e-43ec-b8fa-54a21df1202c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa837beb-ef4e-43ec-b8fa-54a21df1202c@kernel.org>

On Thu, Mar 06, 2025 at 03:03:32PM +0100, Krzysztof Kozlowski wrote:
> On 06/03/2025 14:56, Georg Gottleuber wrote:
> > 
> >> ...
> >>
> >>> +
> >>> +       eusb3_repeater: redriver@47 {
> >>> +               compatible = "nxp,ptn3222";
> >>> +               reg = <0x47>;
> >>> +               #phy-cells = <0>;
> >>> +
> >>> +               vdd1v8-supply = <&vreg_l4b_1p8>;
> >>> +               vdd3v3-supply = <&vreg_l13b_3p0>;
> >>> +
> >>> +               reset-gpios = <&tlmm 124 GPIO_ACTIVE_LOW>;
> >>> +
> >>> +               pinctrl-0 = <&eusb3_reset_n>;
> >>> +               pinctrl-names = "default";
> >>
> >> No graph? Isn't it needed?
> > 
> > What do you mean by ‘no graph’?
> 
> ports connecting this within USB graph between controller and connector.
> Just like other devices with redriver.

No, eUSB2 redrivers don't need (and don't use) OF graph, they are
basic PHYs. See Documentation/devicetree/bindings/phy/nxp,ptn3222.yaml

So this one is correct.

-- 
With best wishes
Dmitry


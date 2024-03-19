Return-Path: <devicetree+bounces-51595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C0587FC6C
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C4451C2234A
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98107F7C7;
	Tue, 19 Mar 2024 10:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rF/OU4cB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C577F7C4
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845833; cv=none; b=KsZ3ZkqTdAz1kjjvMOXusUw1zzc98r7ES/Oe0OGRYCFo285M5eUXQxN6lO0IVo/DE65di+KovZIklTB/qiPG+ErHRCs8lMDbOw0HbIpGPMdVzBq8RmrY60Zvy6Tybn1ZN3zVUT+DPH6/usBRLDptOLL+m/KrDWDtW1iXLVJsioA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845833; c=relaxed/simple;
	bh=cNAGzh5GSei7x1oCy67Dj8gDtsHa88fXDuEJkAfcQ6o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WIbjHQCkFx67yJaGBITKNKCIqmpoqaTXnE8pqhWj3bWesafO2nQNQNQcXdv06Fw02hl5h6bJLBguxgWuy7mj8iiDhfNIgD9dDjATo0GtEpZy1YU9GBLznw1zLE/IQ4K7kNAQc+FTVjc/tYbHS0ip+EcGETria/Tm6m9cXFpUBtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rF/OU4cB; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso4948023276.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845831; x=1711450631; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lrvF/ITWTLZMt7k1zbPxhpoK+Pg/DG+kvR7sAP9yq+c=;
        b=rF/OU4cB7V1OTqxzO0+iTSl10EkA98jk27nTW9UJWzlrEgiaM37tNbYZi2xHLPISTW
         0wBgYXq6R5K9Lv723GOtX5zAdY3sOqf4g6sZQizjLUZyQJP8zVe5TqXcvq/aJWr61LAg
         MqdsVEIWT3iWuHgxtiiWBynxPkLDeNJ3Aq2oIKVBclN3V1E+a4g9hWzvyohBUFrP0Ffy
         wOcaKMXX4sYB22/6l92B06b7EM7QO5bhTCXtYarJRdCFVfgI1ZHwrU2iwpwHrKJl/phP
         GpC9YXuHMG1nosRGJJI5XXpKx5EolCoUyHwRDI+k7636y4k6zDNaI+GoEDM9qIDCS8Kg
         CUgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845831; x=1711450631;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lrvF/ITWTLZMt7k1zbPxhpoK+Pg/DG+kvR7sAP9yq+c=;
        b=OYiH3IF8GOjkQeSWEEngu5AsOrN9BiSR0fhb6ZrUTYHK7A2uYB0RC8LAjwDrVrjmRX
         QGyeZz/COglphGunRwLfjhMODtOaURgH24snCuhOj1VbfXWPdGxQgR1VXHD9W9MYo/Nt
         NuinyqgB8cdEXJ7X2vwSfBKWPMcUU8YZmBQq5mncFPLahLXg+RjRGo9ZtQpMzdiOias2
         tEpwKPZQzLeUd+5l3PmdLrDwGEMlLlMiBVvWYOPgyWPk/hLMRdRPSwBoyWYnTMMjM8Zj
         9MPuMjBGGW797/T2mjAk+RrnoBrO+s6+DE5z5GqL/kKkE5W5s2aUqqVECFIRkKzoe41z
         8HMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwbRrWVeGaAwgpFiBiOzd5HPHjUhnEtaIpF0h/vdKTPO1cBVnip0m0UEGVdfbaTae1hvJL04AFq/96SdYuKX2rGM4fIxr8pGRpiA==
X-Gm-Message-State: AOJu0Yxrf9+UNtyEscdGLlaFLgNv+Gyc4/leZdzf3V1onSJS3az2JTLN
	fnFpBztZLovMYZXJdAPv2YsCzXKkEbLqwwCAgOwNx0/A/7PllQEkkAOeB6qTw+//oiz5awUT/u+
	DxBNLDDBnCE9QVgVkSPh741rvyU8g1uHBhKGY/A==
X-Google-Smtp-Source: AGHT+IFWahUbPbZ0gt9IIGvtcCSEaFVaaIjj/JI8BQjE3K74Qn0khAsyE4Dy379EPMpN+d6EFyJ04gOY3GwCbnEfYU0=
X-Received: by 2002:a25:b21d:0:b0:dcc:58ed:6ecc with SMTP id
 i29-20020a25b21d000000b00dcc58ed6eccmr9940482ybj.41.1710845831327; Tue, 19
 Mar 2024 03:57:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-7-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-7-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:57:00 +0200
Message-ID: <CAA8EJpqTvkb3bea4RxeG4zSMe0Yae209Z_xxLn7DXQi0RZhaiA@mail.gmail.com>
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Mar 2024 at 12:46, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
> provided QMP_PCIE_PHY_AUX_CLK.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
>  arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
>  3 files changed, 4 insertions(+), 17 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


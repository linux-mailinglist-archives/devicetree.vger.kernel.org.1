Return-Path: <devicetree+bounces-52452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B14B2886A80
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 11:38:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2F351C20E87
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 10:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE0E13B2A4;
	Fri, 22 Mar 2024 10:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JiihL1+/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501F33BB21
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 10:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711103927; cv=none; b=HLyr2l9tX6w5fhNs49lZnlgo+lRgpZeskVTZ1gns35pvvEcIKsFhT+QLHImRnRTwmNd09d6RNp8JTFPSkdijUdF0J8tOioHDL+EZQjtz7cc0Vtddx1s4GX9qV2f72LBnniAPg798bxqfQFZXxkt5+MMuW26eD8/5tf/avfzBaDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711103927; c=relaxed/simple;
	bh=Hq2/eEOuWhpmKCsuwoD25OCbkTU9eHjsACQjFbIL5J4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZD2RSogTzaNDoriK0p4BFnmNWeD4ohv6ux8Tr0Ky0VaWVLX5TejPu+naV69E1QYK992d8hgEDlh9wp/9dLrvuPeo36fSlZs8IEkU8EldpOrZ5Od8MOCR/9DJPqo4MTTn3wwZ5+hUPzQsuGgJfeq78vIrLFW5NJgUPexR16VJHN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JiihL1+/; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dd161eb03afso1649058276.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 03:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711103925; x=1711708725; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EW5QX/PBiLajaatZ/82NErGaCFABadkL02aA8JURVjA=;
        b=JiihL1+/6U2Cx7eJN6b4Oe67iNFFFwpMCixX/BSNlEZziujtNC4bsDiR9/+lxJy7AU
         rhESgenhwWlEL6pwXxuSKhrD88LMs5SO/ztC1aZ8D7V3oLww0qjE4XWA2kZgjc6mbsas
         ytdavUNjY1u2pDaiNesQGnGiJDq532WBuZudF1qkTElflgRSWQgZf67M7ej3kqhao0jx
         jDwxeTLj3YRuG7SwuntosDcRg+U1OCkZEhKRvuU2AGYktjqC347VbPZu1wzginm7/8L6
         qRDUy6AH8GmHh6qUOakmNrWj6QcY9HXDADUt+gWDIpZOpzJw0tQTO0+gamIKnhygF4rY
         +5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711103925; x=1711708725;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EW5QX/PBiLajaatZ/82NErGaCFABadkL02aA8JURVjA=;
        b=YNyhu7DNgHPOf//kQLhF2/Bk8biVhZjUOdI78EmJr/hXUBSlrp8aNTHOJ86DJ6Ma1m
         aN5lJxlXaFMFVxYaIn7CB5eaTIBOHlB2ADnvme20pOu+He/DyhYE8P9zzlZOhB/gKexv
         Amb047wDQ0iEQtfvn70hUjiKPcyPQVZ1CqASnqNNQzdnxMIkhFUy5TiRZtvb/UV/xpJH
         /hk7kF0t6xX+zfSPHCX8G6ryKdapHcBPzaAb7J6JhgciGR3iiz8SloEw3agGLM1u2LHP
         VK+dpzBqZ1jJvBD5NrgjJuQOh7s9jZ8cNmVyT5YnSV4o73GEPoYsTiTFnlQvQMC/zvB/
         77Kg==
X-Forwarded-Encrypted: i=1; AJvYcCViwdsw9ZXTlPa6xuG/HI+ulkbTUUvmH+Cybu2q7+xldSppQTm3sWZHrsmrSYWbfITtNg954ydENHZ839ab0jY/fAQaSAAdAy0cVQ==
X-Gm-Message-State: AOJu0Yw8JouexuqiNp6BXL3jl3HwYEpORjCnnlNvbJUb1TraY/GHeUsS
	IizlUNqt+v3glfQGg3xp1/vkVhRtxXj7402UKToKi2o2Kzjce7USmMQ988ebumQRWtAEu6YztJE
	cVH+eN0sognzrTl6wlqHGYn7Uzj8YEF/fvRtslxRp5/tIUQpluWQ=
X-Google-Smtp-Source: AGHT+IHSKsoTSx1uARV4yY9pfYF30+iJm9yZmLK1Rm0y026834WCXCVGtwW6NoGV0aiUmgbWwwTt9TMD1a0SiQcBybI=
X-Received: by 2002:a5b:651:0:b0:dc6:2e29:4262 with SMTP id
 o17-20020a5b0651000000b00dc62e294262mr1579006ybq.58.1711103925350; Fri, 22
 Mar 2024 03:38:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-2-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-2-3ec0a966d52f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 12:38:34 +0200
Message-ID: <CAA8EJpq1JSLdzpkbjSPjfFWvMEKgFBifjkOjAMQJUO40-bFnSw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] phy: qcom: qmp-pcie: refactor clock register code
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Mar 2024 at 11:43, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> in order to expose it, split the current clock registering in two parts:
> - CCF clock registering
> - DT clock registering
>
> Keep the of_clk_add_hw_provider/devm_add_action_or_reset to keep
> compatibility with the legacy subnode bindings.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


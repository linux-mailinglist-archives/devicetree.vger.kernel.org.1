Return-Path: <devicetree+bounces-45765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A2754866A9B
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 08:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 346C91F2348A
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 07:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25451BF2A;
	Mon, 26 Feb 2024 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pqtjI83a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325BD1BDE6
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 07:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708932333; cv=none; b=HmdaGT0++885/yRaMG7Qy24wXrxZFyQVA1P0rJdDFs92rccoGaMK3ngq9p84tppK1lj0+PFPbcSaDDXj8CZkHTNnOZglIJw10gQBsE8dU0BMVseTWklbiVk0aOrmJ+RdiG6rp9y83ah9hV7kDboEm3dGfAJ/PJ0WPUagzheH6SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708932333; c=relaxed/simple;
	bh=wRfI4G+6FC0nrrabyF8vxsAkUOkinuF6aaxWAhU8zws=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jT41F+mEpKLy0xLr1nRxVlYYD7ae3aumAh/ix/Tu37totn94h9EEBjxUkv8Qpmdb4E6vX2/FyibzJ3/VXd9d5vNIxmPfzx8Ucat6VR3xCruaMiVjiIN0zkv3q8rxh4TlY/U6dRPTrTQPRsWrEOygo98z8QVlP+qOAtrmsSlbcqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pqtjI83a; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-563f675be29so2690311a12.0
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 23:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708932330; x=1709537130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+XUqGWD6IWQzzvvwRX/+nQJA+03a/6QRsX8/vxcbvc=;
        b=pqtjI83aRyRY15JxPleiBJS+2K2AIuIkpwR2R0nv5a+DSLYOcfMMdjFNgo55cSlaSf
         +okydGVY00pRchG/gn4idnF/qG52pAepu6dmiYcHKiZ3yUGdadnRU58HPh2Aj+Zqu28q
         +r5u9X/vWMitAODz7q2pmJaWaVB0+X7WCgCbI4qKw/JQtLDc0F4s28kESfOsQM4oHW6d
         e9d+i7LOL7uMVwBURvERfNtdOYm94UiMg9hQyiZqRnA96uJTwKMB+u++t3Ctvnrciwv1
         rTKc+8rP0XBR+aLUAb06i3eUburFFape1XSDxWilGRz4C3N34hEQcR0bcRazDqZAJHH2
         CU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708932330; x=1709537130;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9+XUqGWD6IWQzzvvwRX/+nQJA+03a/6QRsX8/vxcbvc=;
        b=psAn839mNihmKm2K4pf+BFW1J22inlQqy3mkMaKOTjlWlh9+oAXcVwRRrY3Falc42m
         +5ydQu2qBo04mRUVJMEc7o/WzYkwKhVWzz+2tk4BcAt67BOMC8olMjvXFI2RJr05Wems
         IkANMEd6tCbuJkRtolRD+NO0pAhD3naixzl13jOnoPiyMt2IiaoSZl8rN308UW08aUS6
         zzIblGxI2Sc2IkHUVTPEIqRuGWSWA4Ul33INa7DdyNVVM0kLqfmPPfnZC4NBlNt6rcAe
         QxjGErq/deXqFoXZl2Rb2cUB2mvBBdhaveMUTi0iHnyjL09sAMTD1GIN9q6n0B4L805R
         Rptg==
X-Forwarded-Encrypted: i=1; AJvYcCW5sePHUxeUBRDqD873rV/AgUI+FzVmj4miOv7tCjZFXhBITuxBziJFooKB53SJRlRmGYcIW0iRGGwCBU8QgORlm+aT4ps3/cfrDw==
X-Gm-Message-State: AOJu0YyYmMVq9sXoGrSTCjqEabfEaI+NAJNH8xIYCAbBCDkrgiET1zOQ
	PV/XUX4M5uQwMT4QWizwIyDfKISF1DH8SEvEsVEIE2ugg4FFU0W/PzthoY7ObNE=
X-Google-Smtp-Source: AGHT+IEC2B+D1Rc/Z2qp0EvJ/C5SuHJvn4PGDQCefwtskxiIujOGW6alTotXIUZsbE9gNtP2e1uK6A==
X-Received: by 2002:a17:906:318d:b0:a40:4711:da21 with SMTP id 13-20020a170906318d00b00a404711da21mr3696374ejy.37.1708932330575;
        Sun, 25 Feb 2024 23:25:30 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id l15-20020a17090612cf00b00a3f480154a3sm2136224ejb.65.2024.02.25.23.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 23:25:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 NXP Linux Team <linux-imx@nxp.com>, Sebastian Reichel <sre@kernel.org>
Cc: Dong Aisheng <aisheng.dong@nxp.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240224213240.1854709-3-sre@kernel.org>
References: <20240224213240.1854709-1-sre@kernel.org>
 <20240224213240.1854709-3-sre@kernel.org>
Subject: Re: (subset) [PATCH v4 02/16] dt-bindings: bus: imx-weim: convert
 to YAML
Message-Id: <170893232894.6616.17442231091055419472.b4-ty@linaro.org>
Date: Mon, 26 Feb 2024 08:25:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 22:29:34 +0100, Sebastian Reichel wrote:
> Convert the i.MX  Wireless External Interface Module binding to YAML.
> 
> 

Applied, thanks!

[02/16] dt-bindings: bus: imx-weim: convert to YAML
        https://git.kernel.org/krzk/linux-mem-ctrl/c/3884bdce169de87d3f978edf41829e5e52388072

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



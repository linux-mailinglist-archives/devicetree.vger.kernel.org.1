Return-Path: <devicetree+bounces-248467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6790ACD2ED6
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 13:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DA7B3017665
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 12:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6D120F079;
	Sat, 20 Dec 2025 12:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="Y80MlP0f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1ADA131E49
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 12:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766234818; cv=none; b=Cu3H0OgPHvoX10MNA6VRnIBZLLLYWxHQ9I9QqI5agAa/wwRCmO5wZmGaI7Hpfp6uR+v+ppqgdjUvD4i1dDphkGDadZxkToqG22glI8iecKti2sPTYYbXrBXheL5yp0HAO5TVs2gcLuY6aDZd2otBcdZgY3BSmKc+X4hqhs5KYAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766234818; c=relaxed/simple;
	bh=BMqWG7tVLRpE0d5CCcucZYfHD30N453xL0DULNwoUjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qh0SwQZFuMdn5F8nogtD1r+/rH/8FSr94wSB0rbWAyoZodrx1ycgedNX+GbbhGV0R52Gtx0vskpDLSTCXaYqiQsNW3sRfe36/XF295tMJvNj1SDBhWgs/zUAfS4kSEIqJNmi//nmicJCTjXoYcBBhbRlCKvoptZkMhwtfV8Y4Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Y80MlP0f; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a0c09bb78cso18163985ad.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 04:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766234814; x=1766839614; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PnLeQHT6gKO5LrS+1ND5Ys5FEsU3x/z5LzPcGERhZEM=;
        b=Y80MlP0fmDp8tm4zieU3AulAPFsuZnuiz+9owEEQqyJqTATrexNsDnR76R4JpTFEyG
         D589R+STSY6H58P+zUmUonSEQOPIihahjMibqy7il6/G/yl9m5FxjuP0NO2VA7AJR2B4
         ANrZ8WfbRm5zJI7HsdBWwBZ3WNSlGT/WnjGTXCPCTszc2V5jcPB58ADfOEXna1r1d+QX
         dIUAZ7JjUtEZUv8/qoIzP4o7BuMRoBE0SjyeqSu2Zqv35Zf5ciVGE+QLao3y/wd8EPvh
         cfHz42rxGzucWgI6TZh4ZA0Jd7EkEkm+V18BwdgCNfCTBQsZqR73SD3ecY6HKLmygYGA
         m2hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766234814; x=1766839614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PnLeQHT6gKO5LrS+1ND5Ys5FEsU3x/z5LzPcGERhZEM=;
        b=LO2Zkiev82rvGg5vQZ8C61k0PeoOUvygMTFAwrTbcGtCg4UYuhXj7G7KI7OfxdmoVu
         ggvodctnVsO25y6V5KTleIoFzsUqc8YjIPwLms92BTELyOKyBOWPSyojSwxNy7CuwaaH
         3bsnebGTUW1g8RGOqSTI3mcbkOsWElqFFzDP3kYuTnzxFh22+SerMI5J00ImUbEXGRmS
         TOXsX/4cq6ZRnzag1KudJTaqyD+UaSdtnKf8JV7ZeogkFsulicSRE7oBgO3fIJWZjiTD
         EFGPAdgr96w+fLmgL459OZzsVtJXLgQnnk/PDDN99A5469HD50lXsO5jEH3YlazCQLgH
         3vCA==
X-Forwarded-Encrypted: i=1; AJvYcCVW1p4jaRMEFRlelVblh29/wYAeH27x9ngda0ZhcX0nXlZOjx8jIE5b75gRV2vWL5s2qgA4Im02LzGU@vger.kernel.org
X-Gm-Message-State: AOJu0YxpTFuMWdjhq8RmRptmE8bKkGVJc5428ANV4oSKDvNBWdC/dNOb
	4sHORqCChKAYm5Uo00WdUhz84TDgB2kCfUKBb5CkXmEFRwJhw8GYax0jo1bMzgoLFQl7wW2oava
	uQUbbiMZzAJLJ+1RYoNiFSQkXQDkSlsc=
X-Gm-Gg: AY/fxX4BhUmB6g6WEo+c2KwBqiBTXVqyo9mje8XEqezsjl7cmZLg7VgF4a45mWmc6Uw
	Ht9PUcdqAvJyYiMGsDxUYgWQ94kjUHzeHHLWLmf0tmt5/9vQ9ZQAYA9roiebNJQl2I/8cNQsvLl
	pt1/1+rhxqrOurveuR5rONTjQUp1KCOrgYlszdru1v0yqaFd7eoqr2oYBsfPcrnvoIjI2Jdb9sP
	K5z9jI7NO8iRelizDbKF4eMFOo2PY4QdW6IGN6d95+nSNGoVJIUt+VB8vPoZI6XOqg/013HZhH+
	Rvz7qYlb2fnxFQQwf+XUnMzI5gu8z9ZJZgaD5qc=
X-Google-Smtp-Source: AGHT+IGTZVFXf6rAC1bEGZmO7YaQs0mj72/Bxua6dbMs1yZR8CidcfGRl/4LVrNe9mb+pBaCXI6UiiHmEjBYB9UahrA=
X-Received: by 2002:a17:903:198e:b0:2a0:99f7:67b4 with SMTP id
 d9443c01a7336-2a2f0cbc904mr55199135ad.8.1766234813931; Sat, 20 Dec 2025
 04:46:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com> <20251219-qcom-sa8255p-emac-v6-1-487f1082461e@oss.qualcomm.com>
In-Reply-To: <20251219-qcom-sa8255p-emac-v6-1-487f1082461e@oss.qualcomm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 20 Dec 2025 13:46:43 +0100
X-Gm-Features: AQt7F2qpxOToWQKPYlABMJwLqho0Xychdf9rQln23uKf9MMkpqj4U-v6YeXkrYo
Message-ID: <CAFBinCAXb87FKwA_=UEx5YTekevVUun1gieUfMux=oQAgjZS7w@mail.gmail.com>
Subject: Re: [PATCH v6 1/7] dt-bindings: net: qcom: document the ethqos device
 for SCMI-based systems
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Matthew Gerlach <matthew.gerlach@altera.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Keguang Zhang <keguang.zhang@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com, 
	Romain Gantois <romain.gantois@bootlin.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Heiko Stuebner <heiko@sntech.de>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Minda Chen <minda.chen@starfivetech.com>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Shuang Liang <liangshuang@eswincomputing.com>, 
	Zhi Li <lizhi2@eswincomputing.com>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	"G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>, Clark Wang <xiaoning.wang@nxp.com>, 
	Linux Team <linux-imx@nxp.com>, Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>, 
	Samin Guo <samin.guo@starfivetech.com>, 
	Christophe Roullier <christophe.roullier@foss.st.com>, Swathi K S <swathi.ks@samsung.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 19, 2025 at 12:42=E2=80=AFPM Bartosz Golaszewski
<bartosz.golaszewski@oss.qualcomm.com> wrote:
>
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Describe the firmware-managed variant of the QCom DesignWare MAC. As the
> properties here differ a lot from the HLOS-managed variant, lets put it
> in a separate file. Since we need to update the maximum number of power
> domains, let's update existing bindings referencing the top-level
> snps,dwmac.yaml and limit their maxItems for power-domains to 1.
>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---
>  .../bindings/net/allwinner,sun7i-a20-gmac.yaml     |  3 +
>  .../bindings/net/altr,socfpga-stmmac.yaml          |  3 +
>  .../bindings/net/amlogic,meson-dwmac.yaml          |  3 +
Amlogic SoCs have up to one power domain, so for the Amlogic part:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


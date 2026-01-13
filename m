Return-Path: <devicetree+bounces-254518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F67D18C55
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:37:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E3DD9300AC5E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1598D2749C1;
	Tue, 13 Jan 2026 12:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djdbXGFB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66702556E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768307828; cv=none; b=kVgTvPIXFlHpMUnENG0ZVibS/pVALDWFISPmcrobTDuDsZLeCyfEfNM2vOqznQv2W3CuZNQI+IeJFh3MfM2MVoXXIoPOfMFlO+5q8nIvoMDb5KAkMt6BNnwqZQHjFXlzwljbuisDvtNhYZwF7RJXKXkiLyy+XAvHa/U4tPOXgbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768307828; c=relaxed/simple;
	bh=/jEbcQNNf+2y5DghSoCRU+Htja2/wQhqeKPPtGlgrS8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tMHVqS9JAuO95UmhiMkrzvYLzJLZO7RH/i/i7c6ks9L75KzUIzZ7EhhDXJwQ+Ajp80BpbHTlWw0xbCb2TaiapH16kcYeYX90SfktvnV/tXb1mqCkWCNLVhT/d4vBefOwAACf87bko9F3iGXvqSCc+P7q1wFGLEjoLe6F2h/tgQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djdbXGFB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D656C2BCB0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768307827;
	bh=/jEbcQNNf+2y5DghSoCRU+Htja2/wQhqeKPPtGlgrS8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=djdbXGFB/0vFYnxrpHaPDsmzQQ20F7Osv04XDibZ2U163NlSPT6o1qMPl+o0mVNbP
	 +bJYC/uONDGWEOcsPMDaJW6nsYc+VkjK795U4Il/TEvVcY1W9Y5QaKATY7Syf5Pn/S
	 K2NEgIZSD6lIohY1OEP4eJkee0IH2jlvRpfZz1cTjBCyl2ePRW8Xy1r+EKGgnUmqhR
	 Y5p2hkTY8XmCFhTtDYEybg3wOd3X3vfFDnANyXDKYeO8LD70k1+8jhfS1623TFn+Ov
	 GW9pnukDXb1nmpYWUO9sFSrv0u1kusskQNElUZ4sA94yQDoIS4w9IWKnG844y3NboS
	 mOgETq9y0Eh8A==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-382fd45a1feso58927131fa.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:37:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWaOOL02LUEWINfNeDibquOgH76j/2vogS+aUFs/7Zvblsnhs9M06G6Zqm9vH3AR1SpGZzn8IxSEu/q@vger.kernel.org
X-Gm-Message-State: AOJu0YznMLtiHAWl+dT25weZ29DB7fvaM78e+4Udtl2syIPW5+WYd6lg
	keJaoUisc0UneT2hBqusdYnD12rZRTUDzyTe7gGi0X5LRsqUbxBGVgnX1pTuZND9ep6xkLekEzg
	xdTqhFrRoq9T62Azwd8EdMhlTvH2ikDiBdqmGElFGGg==
X-Received: by 2002:a2e:ab19:0:b0:37b:9361:711d with SMTP id
 38308e7fff4ca-38350a55384mr8601501fa.8.1768307826023; Tue, 13 Jan 2026
 04:37:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com>
 <20260112-qcom-sa8255p-emac-v6-2-86a3d4b2ad83@oss.qualcomm.com> <a2a610a3-aead-4e85-8a4c-7b83ccf276dc@lunn.ch>
In-Reply-To: <a2a610a3-aead-4e85-8a4c-7b83ccf276dc@lunn.ch>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 13 Jan 2026 13:36:53 +0100
X-Gmail-Original-Message-ID: <CAMRc=Mf8TTTcU9A3gc_LQF3Ow6Ww0omVJH6x-DQEnOSPXfaUQw@mail.gmail.com>
X-Gm-Features: AZwV_QhI9rebW3ffX0n9A2EUYniK94gLsNSjXRbzl9peLeeXv9eI-nHhZ9l6ybY
Message-ID: <CAMRc=Mf8TTTcU9A3gc_LQF3Ow6Ww0omVJH6x-DQEnOSPXfaUQw@mail.gmail.com>
Subject: Re: [PATCH RESEND net-next v6 2/7] net: stmmac: qcom-ethqos: use
 generic device properties
To: Andrew Lunn <andrew@lunn.ch>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
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
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
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
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 2:45=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, Jan 12, 2026 at 11:15:41AM +0100, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <brgl@kernel.org>
> >
> > In order to drop the dependency on CONFIG_OF, convert all device proper=
ty
> > getters from OF-specific to generic device properties and stop pulling
> > in any linux/of.h symbols.
>
> Is the intention to read these properties from ACPI tables?
>

No. Other than a couple property getters which can use the fwnode
abstraction, there's nothing here that requires the OF dependence.

Bartosz


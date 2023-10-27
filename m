Return-Path: <devicetree+bounces-12534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 335D37D9DB4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E246F282453
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78AFE38BB2;
	Fri, 27 Oct 2023 15:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXXUUeD0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2AD37158
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 15:58:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5AF1C433A9;
	Fri, 27 Oct 2023 15:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698422321;
	bh=ommFfLMys0Fe109bn79ZIOWeURNbAOw1MVfdRBJEY1Y=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=pXXUUeD03ocZqRLT7SUJrjtR/EL2cA4iVgaQDw5kzDqvz3hJdEVbyzhQ4kPvszR9D
	 2sMOxdUeaNAWOeg6oApCjcby7XWUlApK5PMcIuDOLWtV+e3+zxhNRUpZ932htIgOyE
	 EbAl5TnCK48UZm5zZ1L2+lKDKdPBJxSUP4nS1qIPGTQAmb0mel8xUHswiSIIc9eboC
	 2LVPIyVIJ/L/468yGVsDH/FHnwN/6mdXRjESSEcWJ7atJAuEeRsutHEL50qw0Aa34v
	 UOWdaS5CmOLQqVLGm0pgVvNErCwPWVsW1y/WSnTA73KsFoH+HldU4UFNtQWO5oTwm3
	 ve9a/yu7piacA==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-507c91582fdso3250474e87.2;
        Fri, 27 Oct 2023 08:58:41 -0700 (PDT)
X-Gm-Message-State: AOJu0YwgrybHKNQo8OgS9aHP04mJnbh3gOopeyGgFBbxDnNN1QpBkrLj
	KcsyTxDa8j94boYOkVE6SU2pAw+qKn29N8RDNg==
X-Google-Smtp-Source: AGHT+IE/pzOVERpKm6tzpSOqkVPF05dduYZOaPE/qWFhCOyim5kGpTCIUSUUjslhqayndDWjnSiWjIY0tLbrxKxgjyw=
X-Received: by 2002:a19:5211:0:b0:507:99fe:28f3 with SMTP id
 m17-20020a195211000000b0050799fe28f3mr1958607lfb.34.1698422319972; Fri, 27
 Oct 2023 08:58:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231027145422.40265-1-nks@flawful.org> <20231027145422.40265-2-nks@flawful.org>
In-Reply-To: <20231027145422.40265-2-nks@flawful.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 27 Oct 2023 10:58:28 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJh6aJb7_qsVnVNEABBg2utf0FPN+qYyOfsF2dAfZpd0w@mail.gmail.com>
Message-ID: <CAL_JsqJh6aJb7_qsVnVNEABBg2utf0FPN+qYyOfsF2dAfZpd0w@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: dwc: rockchip: Add mandatory atu reg
To: Niklas Cassel <nks@flawful.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Niklas Cassel <niklas.cassel@wdc.com>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 9:56=E2=80=AFAM Niklas Cassel <nks@flawful.org> wro=
te:
>
> From: Niklas Cassel <niklas.cassel@wdc.com>
>
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
>
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
>
> and snps,dw-pcie.yaml does have the atu reg defined, in order to be
> able to use this reg, while still making sure 'make CHECK_DTBS=3Dy'
> pass, we need to add this reg to rockchip-dw-pcie.yaml.
>
> All compatible strings (rockchip,rk3568-pcie and rockchip,rk3588-pcie)
> should have this reg.
>
> The regs in the example are updated to actually match pcie3x2 on rk3568.

Breaking compatibility on these platforms is okay because ...?

>
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml     | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)


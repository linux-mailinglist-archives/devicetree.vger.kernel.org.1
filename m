Return-Path: <devicetree+bounces-12540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C50C7D9EA2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 19:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 391531C20F34
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3F623769;
	Fri, 27 Oct 2023 17:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2647B3984A
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 17:07:59 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9336F7A9C;
	Fri, 27 Oct 2023 10:07:34 -0700 (PDT)
Received: from i53875a19.versanet.de ([83.135.90.25] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qwQIX-0001eX-MH; Fri, 27 Oct 2023 19:07:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Niklas Cassel <nks@flawful.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject:
 Re: [PATCH v3 1/6] dt-bindings: PCI: dwc: rockchip: Add mandatory atu reg
Date: Fri, 27 Oct 2023 19:07:00 +0200
Message-ID: <3040634.xgJ6IN8ObU@diego>
In-Reply-To: <ZTvh51PGCBhSjURY@x1-carbon>
References:
 <20231027145422.40265-1-nks@flawful.org>
 <CAL_JsqJh6aJb7_qsVnVNEABBg2utf0FPN+qYyOfsF2dAfZpd0w@mail.gmail.com>
 <ZTvh51PGCBhSjURY@x1-carbon>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Niklas,

Am Freitag, 27. Oktober 2023, 18:14:32 CEST schrieb Niklas Cassel:
> On Fri, Oct 27, 2023 at 10:58:28AM -0500, Rob Herring wrote:
> > On Fri, Oct 27, 2023 at 9:56=E2=80=AFAM Niklas Cassel <nks@flawful.org>=
 wrote:
> > >
> > > From: Niklas Cassel <niklas.cassel@wdc.com>
> > >
> > > Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> > > using:
> > >
> > > allOf:
> > >   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > >
> > > and snps,dw-pcie.yaml does have the atu reg defined, in order to be
> > > able to use this reg, while still making sure 'make CHECK_DTBS=3Dy'
> > > pass, we need to add this reg to rockchip-dw-pcie.yaml.
> > >
> > > All compatible strings (rockchip,rk3568-pcie and rockchip,rk3588-pcie)
> > > should have this reg.
> > >
> > > The regs in the example are updated to actually match pcie3x2 on rk35=
68.
> >=20
> > Breaking compatibility on these platforms is okay because ...?
>=20
> I don't follow, could you please elaborate?

you're adding the atu reg unconditionally as required element.

Newer kernel versions (strongly) _should_ work with older devicetrees.
So a kernel with that change should also work with a dtb build from the
old style.

DTBs are essentially part of the device firmware, so while some devices
can update theirs easily, you can't really require a dtb update.

I guess you could something like:

   reg-names:
     oneOf:
       - deprecated: true
         items:
         - const: dbi
         - const: apb
         - const: config
       - items:
         - const: dbi
         - const: apb
         - const: config
         - const: atu
=20
(may not be accurate and to spec yet)




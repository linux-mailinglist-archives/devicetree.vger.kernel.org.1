Return-Path: <devicetree+bounces-2698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7CF7AC315
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 4BE131F23B34
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 15:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E651DA37;
	Sat, 23 Sep 2023 15:13:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FBD1D68F;
	Sat, 23 Sep 2023 15:13:18 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BB37127;
	Sat, 23 Sep 2023 08:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=x+v4G3owsgLlnaFabAgkzTD/cnGgye/y5YG9o41uwwY=; b=y8
	CvZ+LIGCwILDn9cRO00YPVFCl5CzbIZ9GLDlTC5/NaqED+W4+CLyA87G3nq5rg8kTgmxGVa305DI5
	KTy0yckb7PcOOYP3Htwq5jkiyeMwjrpu+JMOZU9ssSC4v6rY8moM8jQh1gCuoKSlVAH/ig2TNufsH
	BsTylHYH91DJSPE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qk4JE-007IUJ-S0; Sat, 23 Sep 2023 17:12:40 +0200
Date: Sat, 23 Sep 2023 17:12:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	George McCollister <george.mccollister@gmail.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Kurt Kanzenbach <kurt@linutronix.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Linus Walleij <linus.walleij@linaro.org>,
	Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>,
	Marcin Wojtas <mw@semihalf.com>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Landen Chao <Landen.Chao@mediatek.com>,
	DENG Qingfang <dqfext@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Marek Vasut <marex@denx.de>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	John Crispin <john@phrozen.org>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Oleksij Rempel <linux@rempel-privat.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Grygorii Strashko <grygorii.strashko@ti.com>,
	Sekhar Nori <nsekhar@ti.com>,
	Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
	mithat.guner@xeront.com, erkin.bozoglu@xeront.com,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH net-next v2 00/10] define and enforce phylink bindings
Message-ID: <410dfe3c-6f99-4054-88f8-0acbd134cfce@lunn.ch>
References: <20230916110902.234273-1-arinc.unal@arinc9.com>
 <ZQ2LMe9aa1ViBcSH@shell.armlinux.org.uk>
 <6c1bb7df-34cd-4db9-95b6-959c87b68588@arinc9.com>
 <4856b212-5bc5-4783-a184-b34a4a915878@lunn.ch>
 <5650a2a3-a36f-441e-b4c2-aa7c751b5af5@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5650a2a3-a36f-441e-b4c2-aa7c751b5af5@arinc9.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Sep 23, 2023 at 09:28:41AM +0300, Arınç ÜNAL wrote:
> On 23.09.2023 01:36, Andrew Lunn wrote:
> > > I agree. My patch description here failed to explain the actual issue,
> > > which is missing hardware descriptions. Here's what I understand. An
> > > ethernet-controller is a MAC. For the MAC to work properly with its link
> > > partner, at least one of these must be described:
> > > - pointer to a PHY to retrieve link information from the PHY
> > > - pointer to a PCS to retrieve link information from the PCS
> > > - pointer to an SFP to retrieve link information from the SFP
> > > - static link information
> > 
> > You are missing:
> > 
> > - The MAC has firmware driving the PHY, nothing for linux to do.
> > 
> > There are properties in ethernet-controller.yaml the MAC driver would
> > however like to use such as local-mac-address, max-frame-size,
> > nvmem-cell-names etc.
> 
> This is interesting. This is clearly a hardware difference of the ethernet
> controller.
> 
> I believe this fits case 1. There's still an MDIO bus the ethernet
> controller uses, there's still a PHY on the MDIO bus which the ethernet
> controller uses.

Why must there be an MDIO bus? All the bus provides is a communication
channel to the PHY. There are PHYs which are memory mapped, or use
I2C. SFP are a good example of I2C, which Linux maps to MDIO just to
make things simple, but the hardware is I2C. Why must there be a PHY?
Maybe it is a Base-K link, i.e. a baseboard link to a switch, or a BMC
or something.

> The only difference is the firmware of the ethernet
> controller controls... What exactly does the firmware control that a Linux
> driver would have controlled instead? Just configuring the link settings of
> the MAC?

A MAC driver implements struct ethtool_ops:::get_link_settings and
set_link_settings. For a MAC driver using phylib or phylink they
typically then call into phylib or phylink to do the actual work,
maybe with a bit of pre-processing in the MAC driver.

A MAC driver using firmware would typically make an RPC into the
firmware to implement these calls.

There is a MAC driver currently under review which does not have a PHY
at all. The MAC is directly connected to a switch, all within one
IC. The link is always running at 5Gbps, the link is always up. It is
physically impossible to connect a PHY, so get_link_settings just
returns hard coded values.

	Andrew


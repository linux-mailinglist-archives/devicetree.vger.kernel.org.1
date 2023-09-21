Return-Path: <devicetree+bounces-2152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E733C7A9C4E
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:14:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39B12B21093
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185F8405C4;
	Thu, 21 Sep 2023 18:10:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6886041AAE;
	Thu, 21 Sep 2023 18:10:51 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDC5DAFC21;
	Thu, 21 Sep 2023 11:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=qKm5PjEzUxyMudDyWH1l+GObMoy6S9qVw27naJU6pOw=; b=OUJduL3Hp9PrYXAS7WiSY/LcH1
	OzGr8ycxrYFQLqMLsxZp2JyY+1HhJQ3G1rEkjVVTPEmQByleh6sMMBuKozPsnpZzvwvvJJ3JLVXzN
	8J0txZkz8lhtHI4Me/lysAATpn/bfPA9V/KGdeZAs/cZy4vtQmMIazip89Sw2atjKjJo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qjJHr-0075OV-24; Thu, 21 Sep 2023 15:00:07 +0200
Date: Thu, 21 Sep 2023 15:00:07 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Rob Herring <robh@kernel.org>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
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
Subject: Re: [PATCH net-next v2 07/10] dt-bindings: net: enforce phylink
 bindings on certain ethernet controllers
Message-ID: <a8d49992-4fa8-4a9f-b954-79011a3040a8@lunn.ch>
References: <20230916110902.234273-1-arinc.unal@arinc9.com>
 <20230916110902.234273-8-arinc.unal@arinc9.com>
 <20230918181319.GA1445647-robh@kernel.org>
 <16710cf9-8911-4fed-8e2d-b19b581446c1@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16710cf9-8911-4fed-8e2d-b19b581446c1@arinc9.com>
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

> - Link descriptions must be required on ethernet controllers. We don't care
>   whether some Linux driver can or cannot find the PHY or set up a fixed
>   link without looking at the devicetree.

That can lead to future surprises, and breakage.

Something which is not used is not tested, and so sometimes wrong, and
nobody knows. Say the driver is extended to a new device and actually
does need to use this never before used information. You then find it
is wrong, and you get a regression.

We have had issues like this before. There are four rgmii phy-link
modes. We have had PHY drivers which ignored one of those modes, it
silently accepted it, but did not change the hardware to actually use
that mode. The PHY continues to use its reset defaults or strapping,
and it worked. A lot of device trees ended up using this mode. And it
was not the same as reset defaults/strapping.

And then somebody needed that fourth mode, and made it actually
work. And all those boards wrongly using that mode broke.

The lesson i learned from that episode is that anything in device tree
must actually be used and tested.

> Although I see dsa.yaml and dsa-port.yaml mostly consist of describing an
> ethernet switch with CPU port(s), there're properties that are specific to
> DSA, such as dsa,member on dsa.yaml and dsa-tag-protocol and label on
> dsa-port.yaml.

I would say dsa,member does describe the hardware. It provides two
bits of information:

Which cluster of switches does this switch belong to. You probably can
derive it using the DSA links between switches, which is also a
hardware property. But having it in device tree makes it simpler.

Which switch is this within a cluster. You need to be able to say:
Send this frame out Port X of switch Y. How does a switch know it is
Y? It could be strapping, which is clearly a hardware property.

dsa-tag-protocol is similar to phy-mode. It tells you the protocol
running between the CPU port and the SoC master interface. You often
can imply it, but again, it could be determined by strapping on the
switch.

label is an interesting one, and probably would not be accepted if it
was proposed now. But it has been around a long time. It also does
describe the hardware, it is what is printed on the case next to the
RJ45. To make the user experience simpler, we then try to make the
linux interface name match the label on the case.

	Andrew


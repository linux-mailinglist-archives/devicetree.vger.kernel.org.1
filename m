Return-Path: <devicetree+bounces-8288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8887C77E9
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:34:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26A1E282BC2
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAAA13CCF6;
	Thu, 12 Oct 2023 20:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9O2rBWF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808C53D972;
	Thu, 12 Oct 2023 20:34:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83CDEC433C7;
	Thu, 12 Oct 2023 20:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697142886;
	bh=1NmsynG7soJV4+TPuN+O1s9KhLN02NtYFh7WcmBFz8A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I9O2rBWF8gDar/1iXLQ4oZZKDeER69jhL3u6eC5bovsQijynepBATCh0hAMHpTqWw
	 /vXM3y1SG0pkQD8OS+OKBAZ9rn0hsmJzk5VRmpHzXkF0Lu/LHurNnd62SH3TgwUrfa
	 MKAJeZiLT2kX2yjJB0VYjxbaW822eObD5KQ6gyQY7qbeycSYF/QvVL+i3wJBG2+Fn1
	 i1lGoa/2VsAuTKMzanhcWLUwwviGNuHAIjzoOsczqCc9s1mTHT9D6WP4q6N1v4VmX2
	 emS3ZnCa2dbdUphUNYx3TptZIkTbls5KnuJEZM5JJYdfSHoIGXXTiKA/O8JDlHlCcB
	 bSZmUDB1llELA==
Received: (nullmailer pid 1698490 invoked by uid 1000);
	Thu, 12 Oct 2023 20:34:44 -0000
Date: Thu, 12 Oct 2023 15:34:44 -0500
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "open list:ARM/Mediatek SoC support" <linux-kernel@vger.kernel.org>, "moderated list:ARM/Mediatek SoC support" <linux-arm-kernel@lists.infradead.org>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH net-next 1/2] net: dsa: Use conduit and user terms
Message-ID: <20231012203444.GA1636217-robh@kernel.org>
References: <20231010213942.3633407-1-florian.fainelli@broadcom.com>
 <20231010213942.3633407-2-florian.fainelli@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010213942.3633407-2-florian.fainelli@broadcom.com>

On Tue, Oct 10, 2023 at 02:39:41PM -0700, Florian Fainelli wrote:
> Use more inclusive terms throughout the DSA subsystem by moving away
> from "master" which is replaced by "conduit" and "slave" which is
> replaced by "user". No functional changes.
> 
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---
>  .../bindings/net/dsa/mediatek,mt7530.yaml     |    2 +-

Acked-by: Rob Herring <robh@kernel.org>

>  Documentation/networking/dsa/b53.rst          |   14 +-
>  Documentation/networking/dsa/bcm_sf2.rst      |    2 +-
>  .../networking/dsa/configuration.rst          |  104 +-
>  Documentation/networking/dsa/dsa.rst          |  150 +-
>  Documentation/networking/dsa/lan9303.rst      |    2 +-
>  Documentation/networking/dsa/sja1105.rst      |    8 +-
>  .../dts/marvell/armada-3720-espressobin.dtsi  |    2 +-
>  drivers/net/dsa/b53/b53_common.c              |    4 +-
>  drivers/net/dsa/b53/b53_mdio.c                |    2 +-
>  drivers/net/dsa/bcm_sf2.c                     |   36 +-
>  drivers/net/dsa/bcm_sf2.h                     |    2 +-
>  drivers/net/dsa/bcm_sf2_cfp.c                 |    4 +-
>  drivers/net/dsa/lan9303-core.c                |    4 +-
>  drivers/net/dsa/lantiq_gswip.c                |   34 +-
>  drivers/net/dsa/microchip/ksz9477.c           |    6 +-
>  drivers/net/dsa/microchip/ksz_common.c        |   20 +-
>  drivers/net/dsa/microchip/ksz_ptp.c           |    2 +-
>  drivers/net/dsa/mt7530.c                      |   16 +-
>  drivers/net/dsa/mv88e6xxx/chip.c              |    2 +-
>  drivers/net/dsa/ocelot/felix.c                |   62 +-
>  drivers/net/dsa/ocelot/felix.h                |    4 +-
>  drivers/net/dsa/qca/qca8k-8xxx.c              |   48 +-
>  drivers/net/dsa/qca/qca8k-common.c            |    2 +-
>  drivers/net/dsa/qca/qca8k-leds.c              |    6 +-
>  drivers/net/dsa/qca/qca8k.h                   |    2 +-
>  drivers/net/dsa/realtek/realtek-smi.c         |   28 +-
>  drivers/net/dsa/realtek/realtek.h             |    2 +-
>  drivers/net/dsa/sja1105/sja1105_main.c        |    4 +-
>  drivers/net/dsa/xrs700x/xrs700x.c             |   12 +-
>  drivers/net/ethernet/broadcom/bcmsysport.c    |    2 +-
>  drivers/net/ethernet/mediatek/mtk_eth_soc.c   |    2 +-
>  include/linux/dsa/sja1105.h                   |    2 +-
>  include/net/dsa.h                             |   54 +-
>  include/net/dsa_stubs.h                       |   10 +-
>  net/core/dev_ioctl.c                          |    2 +-
>  net/dsa/Makefile                              |    4 +-
>  net/dsa/{master.c => conduit.c}               |   96 +-
>  net/dsa/conduit.h                             |   22 +
>  net/dsa/dsa.c                                 |  218 +--
>  net/dsa/dsa.h                                 |   10 +-
>  net/dsa/master.h                              |   22 -
>  net/dsa/netlink.c                             |   14 +-
>  net/dsa/port.c                                |  114 +-
>  net/dsa/port.h                                |    2 +-
>  net/dsa/slave.h                               |   69 -
>  net/dsa/switch.c                              |   18 +-
>  net/dsa/switch.h                              |    4 +-
>  net/dsa/tag.c                                 |   10 +-
>  net/dsa/tag.h                                 |   26 +-
>  net/dsa/tag_8021q.c                           |   22 +-
>  net/dsa/tag_8021q.h                           |    2 +-
>  net/dsa/tag_ar9331.c                          |    4 +-
>  net/dsa/tag_brcm.c                            |   14 +-
>  net/dsa/tag_dsa.c                             |    6 +-
>  net/dsa/tag_gswip.c                           |    4 +-
>  net/dsa/tag_hellcreek.c                       |    4 +-
>  net/dsa/tag_ksz.c                             |   12 +-
>  net/dsa/tag_lan9303.c                         |    4 +-
>  net/dsa/tag_mtk.c                             |    4 +-
>  net/dsa/tag_none.c                            |    4 +-
>  net/dsa/tag_ocelot.c                          |   22 +-
>  net/dsa/tag_ocelot_8021q.c                    |   12 +-
>  net/dsa/tag_qca.c                             |    6 +-
>  net/dsa/tag_rtl4_a.c                          |    6 +-
>  net/dsa/tag_rtl8_4.c                          |    6 +-
>  net/dsa/tag_rzn1_a5psw.c                      |    4 +-
>  net/dsa/tag_sja1105.c                         |   30 +-
>  net/dsa/tag_trailer.c                         |    4 +-
>  net/dsa/tag_xrs700x.c                         |    4 +-
>  net/dsa/{slave.c => user.c}                   | 1240 ++++++++---------
>  net/dsa/user.h                                |   69 +
>  72 files changed, 1385 insertions(+), 1385 deletions(-)
>  rename net/dsa/{master.c => conduit.c} (79%)
>  create mode 100644 net/dsa/conduit.h
>  delete mode 100644 net/dsa/master.h
>  delete mode 100644 net/dsa/slave.h
>  rename net/dsa/{slave.c => user.c} (67%)
>  create mode 100644 net/dsa/user.h


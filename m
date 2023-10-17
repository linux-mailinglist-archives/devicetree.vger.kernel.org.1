Return-Path: <devicetree+bounces-9136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF627CBC35
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 09:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43B0A2818EC
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 07:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FB591945F;
	Tue, 17 Oct 2023 07:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=helmholz.de header.i=@helmholz.de header.b="W3B3bafZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D8518644
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 07:27:34 +0000 (UTC)
Received: from mail.helmholz.de (mail.helmholz.de [217.6.86.34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4180FAB
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 00:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=helmholz.de
	; s=dkim1; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=2H1XYwCGnvnQyLwiCFvBq4BTDv9g1LPrxJ3zkNlok2Q=; b=W3B3bafZ7EigAZoxjrOmRUEAAX
	imeq2f75Z1IACWrMX2VxhLeuNC/frO9L3vbQCiXQlb2o0oH1Vq4AXy3N2KKBMkWIMfMkf5xToz5/U
	X6C/+qb7YpLNReQPvMjSpBU/lixkt9NVqDNzQSkNN6mCpjh/vLE8ShCznxnAsZH73z5Kf0GYGsNRw
	E+3fHk1SRFwTwqR2ZSij9mL0cutJ2Mg/duq0quEAAJnlZr0RxzBiMnbiXua3rpi7YkZzvRQ/BjVuF
	xRnW50JHHncgSs2cuvF3/oa57bWPDIxW6wcFIPJXS+7+/CO5CWfVjKucdKk5G9gbShwX1MIq4IJdf
	xUTHcZxg==;
Received: from [192.168.1.4] (port=57894 helo=SH-EX2013.helmholz.local)
	by mail.helmholz.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	(Exim 4.96)
	(envelope-from <Ante.Knezic@helmholz.de>)
	id 1qseUA-0005X9-2v;
	Tue, 17 Oct 2023 09:27:26 +0200
Received: from linuxdev.helmholz.local (192.168.6.7) by
 SH-EX2013.helmholz.local (192.168.1.4) with Microsoft SMTP Server (TLS) id
 15.0.1497.48; Tue, 17 Oct 2023 09:27:26 +0200
From: Ante Knezic <ante.knezic@helmholz.de>
To: <olteanv@gmail.com>
CC: <andrew@lunn.ch>, <ante.knezic@helmholz.de>, <conor+dt@kernel.org>,
	<davem@davemloft.net>, <devicetree@vger.kernel.org>, <edumazet@google.com>,
	<f.fainelli@gmail.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<kuba@kernel.org>, <linux-kernel@vger.kernel.org>, <marex@denx.de>,
	<netdev@vger.kernel.org>, <pabeni@redhat.com>, <robh+dt@kernel.org>,
	<woojung.huh@microchip.com>
Subject: [PATCH net-next v2 1/2] net:dsa:microchip: add property to select internal RMII reference clock
Date: Tue, 17 Oct 2023 09:27:23 +0200
Message-ID: <20231017072723.14216-1-ante.knezic@helmholz.de>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20231016103708.6ka5vxfkdatrjvdk@skbuf>
References: <20231016103708.6ka5vxfkdatrjvdk@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.6.7]
X-ClientProxiedBy: SH-EX2013.helmholz.local (192.168.1.4) To
 SH-EX2013.helmholz.local (192.168.1.4)
X-EXCLAIMER-MD-CONFIG: 2ae5875c-d7e5-4d7e-baa3-654d37918933
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 16 Oct 2023 13:37:08 +0300, Vladimir Oltean wrote:
> > diff --git a/drivers/net/dsa/microchip/ksz8795.c b/drivers/net/dsa/microchip/ksz8795.c
> > index 91aba470fb2f..78f3a668aa99 100644
> > --- a/drivers/net/dsa/microchip/ksz8795.c
> > +++ b/drivers/net/dsa/microchip/ksz8795.c
> > @@ -1434,6 +1434,11 @@ int ksz8_setup(struct dsa_switch *ds)
> >  	for (i = 0; i < (dev->info->num_vlans / 4); i++)
> >  	        ksz8_r_vlan_entries(dev, i);
> >  
> > +	if (ksz_is_ksz88x3(dev))
> > +	        ksz_cfg(dev, KSZ88X3_REG_FVID_AND_HOST_MODE,
> > +	                KSZ88X3_PORT3_RMII_CLK_INTERNAL,
> > +	                dev->rmii_clk_internal);
> > +
> 
> Can this be done in dev->dev_ops->phylink_mac_config() (which so far has no implementation)
> for port 3 of ksz88x3?

> >  	return ksz8_handle_global_errata(ds);
> >  }
> >  
> > diff --git a/drivers/net/dsa/microchip/ksz8795_reg.h b/drivers/net/dsa/microchip/ksz8795_reg.h
> > index 3c9dae53e4d8..beca974e0171 100644
> > --- a/drivers/net/dsa/microchip/ksz8795_reg.h
> > +++ b/drivers/net/dsa/microchip/ksz8795_reg.h
> > @@ -22,6 +22,9 @@
> >  #define KSZ8863_GLOBAL_SOFTWARE_RESET	BIT(4)
> >  #define KSZ8863_PCS_RESET	        BIT(0)
> >  
> > +#define KSZ88X3_REG_FVID_AND_HOST_MODE  0xC6
> > +#define KSZ88X3_PORT3_RMII_CLK_INTERNAL BIT(3)
> > +
> >  #define REG_SW_CTRL_0                        0x02
> >  
> >  #define SW_NEW_BACKOFF	                BIT(7)
> > diff --git a/drivers/net/dsa/microchip/ksz_common.c b/drivers/net/dsa/microchip/ksz_common.c
> > index b800ace40ce1..0a0a53ce5b1b 100644
> > --- a/drivers/net/dsa/microchip/ksz_common.c
> > +++ b/drivers/net/dsa/microchip/ksz_common.c
> > @@ -4160,6 +4160,9 @@ int ksz_switch_register(struct ksz_device *dev)
> >  	        }
> >  	}
> >  
> > +	dev->rmii_clk_internal = of_property_read_bool(dev->dev->of_node,
> > +	                                               "microchip,rmii-clk-internal");
> 
> Port property.

Yes, I guess we can do it in phylink_mac_config. Or perhaps it would be better
to put everything in ksz8_port_setup if you suggest this is a port specific 
property and not global?
Something like:

@@ -1312,8 +1314,15 @@ void ksz8_port_setup(struct ksz_device *dev, int port, bool cpu_port)
        ksz_port_cfg(dev, port, P_PRIO_CTRL, PORT_802_1P_ENABLE, true);

        if (cpu_port) {
-               if (!ksz_is_ksz88x3(dev))
+               if (!ksz_is_ksz88x3(dev)) {
                        ksz8795_cpu_interface_select(dev, port);
+               } else {
+                       dev->rmii_clk_internal = of_property_read_bool(dev->dev->of_node,
+                                                                      "microchip,rmii-clk-internal");
+                       ksz_cfg(dev, KSZ88X3_REG_FVID_AND_HOST_MODE,
+                               KSZ88X3_PORT3_RMII_CLK_INTERNAL,
+                               dev->rmii_clk_internal);
+               }



Return-Path: <devicetree+bounces-21862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B03E805659
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC3CFB20FA3
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11AB05E0B9;
	Tue,  5 Dec 2023 13:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="uRp6DB8o"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 804C3A8;
	Tue,  5 Dec 2023 05:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sXLv+BQQhFyIj+OepEyZ/ix18aKE+IuVWy2i+TljFxM=; b=uRp6DB8os5K4RsEy/2tUwm8nTZ
	KpC14YHGa6Zc3D4mUxpfsJ3voOPTih7Wgr854pnrSTaWgxWU6YVi4d5Drw43VHXLu/E6742PCh+Ra
	FuWh9NO9KUrSK9WHyfAzriA5bQw1gaXSrh7/O7Lj3Q2Vos66sXrbVZCmQ/QssYHxSW01XNWNF3M3Q
	O9BeC3qGJbLGnu1O7FdgDDpGwWEDYbnc/364SX/dYvg+3XdxymrG0UxnhIUp4fEnG3MzP+StRFNdk
	89kIl+zuljDMmLDi5bAvd9i891rGvYkWGfPfWeU9TRipURrhKE5Kc4/GjMHGY8d5xkyK4BPcrOE+z
	x6FdkqZg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36992)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rAVl6-0006qp-0Q;
	Tue, 05 Dec 2023 13:46:44 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rAVl6-0001lK-Gv; Tue, 05 Dec 2023 13:46:44 +0000
Date: Tue, 5 Dec 2023 13:46:44 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Serge Semin <fancer.lancer@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Jose Abreu <Jose.Abreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	openbmc@lists.ozlabs.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 06/16] net: pcs: xpcs: Avoid creating dummy XPCS
 MDIO device
Message-ID: <ZW8pxM3RvyHJTwqH@shell.armlinux.org.uk>
References: <20231205103559.9605-1-fancer.lancer@gmail.com>
 <20231205103559.9605-7-fancer.lancer@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205103559.9605-7-fancer.lancer@gmail.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Tue, Dec 05, 2023 at 01:35:27PM +0300, Serge Semin wrote:
> If the DW XPCS MDIO devices are either left unmasked for being auto-probed
> or explicitly registered in the MDIO subsystem by means of the
> mdiobus_register_board_info() method there is no point in creating the
> dummy MDIO device instance in order to get the DW XPCS handler since the
> MDIO core subsystem will create the device during the MDIO bus
> registration procedure. All what needs to be done is to just reuse the
> MDIO-device instance available in the mii_bus.mdio_map array (using some
> getter for it would look better though). It shall prevent the XPCS devices
> been accessed over several MDIO-device instances.
> 
> Note since the MDIO-device instance might be retrieved from the MDIO-bus
> map array its reference counter shall be increased. If the MDIO-device
> instance is created in the xpcs_create_mdiodev() method its reference
> counter will be already increased. So there is no point in toggling the
> reference counter in the xpcs_create() function. Just drop it from there.
> 
> Signed-off-by: Serge Semin <fancer.lancer@gmail.com>
> ---
>  drivers/net/pcs/pcs-xpcs.c | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
> index 2850122f354a..a53376472394 100644
> --- a/drivers/net/pcs/pcs-xpcs.c
> +++ b/drivers/net/pcs/pcs-xpcs.c
> @@ -1376,7 +1376,6 @@ static struct dw_xpcs *xpcs_create(struct mdio_device *mdiodev,
>  	if (!xpcs)
>  		return ERR_PTR(-ENOMEM);
>  
> -	mdio_device_get(mdiodev);
>  	xpcs->mdiodev = mdiodev;
>  
>  	xpcs_id = xpcs_get_id(xpcs);
> @@ -1417,7 +1416,6 @@ static struct dw_xpcs *xpcs_create(struct mdio_device *mdiodev,
>  	ret = -ENODEV;
>  
>  out:
> -	mdio_device_put(mdiodev);
>  	kfree(xpcs);
>  
>  	return ERR_PTR(ret);

The above two hunks are a completely Unnecessary change.

> @@ -1437,19 +1435,21 @@ struct dw_xpcs *xpcs_create_mdiodev(struct mii_bus *bus, int addr,
>  	struct mdio_device *mdiodev;
>  	struct dw_xpcs *xpcs;
>  
> -	mdiodev = mdio_device_create(bus, addr);
> -	if (IS_ERR(mdiodev))
> -		return ERR_CAST(mdiodev);
> +	if (addr >= PHY_MAX_ADDR)
> +		return ERR_PTR(-EINVAL);
>  
> -	xpcs = xpcs_create(mdiodev, interface);
> +	if (mdiobus_is_registered_device(bus, addr)) {
> +		mdiodev = bus->mdio_map[addr];
> +		mdio_device_get(mdiodev);

This is fine - taking a reference on the mdiodev you've got from
somewhere else is the right thing to do.

> +	} else {
> +		mdiodev = mdio_device_create(bus, addr);
> +		if (IS_ERR(mdiodev))
> +			return ERR_CAST(mdiodev);
> +	}
>  
> -	/* xpcs_create() has taken a refcount on the mdiodev if it was
> -	 * successful. If xpcs_create() fails, this will free the mdio
> -	 * device here. In any case, we don't need to hold our reference
> -	 * anymore, and putting it here will allow mdio_device_put() in
> -	 * xpcs_destroy() to automatically free the mdio device.
> -	 */
> -	mdio_device_put(mdiodev);
> +	xpcs = xpcs_create(mdiodev, interface);
> +	if (IS_ERR(xpcs))
> +		mdio_device_put(mdiodev);

Without the change to xpcs_create() you don't need this change - and
this is why I say you don't understand refcounting.

The point here is that the refcounting management is in each function
where references are gained or lost.

xpcs_create() creates a new reference to the mdiodev by storing it in
the dw_xpcs structure. Therefore, it takes a reference to the mdiodev.
If something fails, it drops that reference to restore the refcount
as it was on function entry.

xpcs_create_mdiodev() as it originally stood creates the mdiodev from
the bus/address, and then passes that to xpcs_create(). Once
xpcs_create() has finished its work (irrespective of whether it was
successful or not) we're done with the mdiodev in this function, so
the reference is _always_ put.

For your use case, it would be:

	mdiodev = bus->mdio_map[addr];
	mdio_device_get(mdiodev);

	xpcs = xpcs_create(mdiodev, interface);

	mdio_device_put(mdiodev);

	return xpcs;

which illustrates this point - we get a reference to the mdiodev by
reading it from the array. We do something (calling xpcs_create)
with it. If that something was successful, it takes its own refcount
otherwise leaves it as-is. We're then done with the mdiodev so we
drop the refcount we took.

There is no need to make the code more complicated by changing this,
so I regard the refcount changes in this patch to be wrong.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


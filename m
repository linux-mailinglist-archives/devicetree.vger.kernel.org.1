Return-Path: <devicetree+bounces-266696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCDxFSlDl2nzwAIAu9opvQ
	(envelope-from <devicetree+bounces-266696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 18:06:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D58160F12
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 18:06:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BCB46302D593
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 17:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F1234DB4B;
	Thu, 19 Feb 2026 17:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nrw92TFt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6CB30E0F1
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 17:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771520797; cv=none; b=P3s4neeUHHOyifebhOeQQMlJZwkpzkigO6HzXVbnSHEBTJOS7nyqg3V1xM/OITI3kWlnPNGP0dTLxZI1Ask1hZxhQz+6WFE9sTEH8oDaa1VeiixBncWSe1pKy5e7WDC2VC1AgkFYLYdOrXtxwLFKvj3WONrEjxF5WPLQP6jtBYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771520797; c=relaxed/simple;
	bh=UeQyfBVnOjo6PM5pXAben29smqszODqM5VqXQ9oksvQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OcZ6nk/Hqv5M2JbbJsfC9NrFs9RAj2UkAdC1tW9ZW5/1AVUYmMDHVH6gjp6Za0/BHR3TTXQEwNAsAYcFgOhyNaPMVrdFNW6xttEzPITtQxBoFDx9Fob3t+Z09U9aJ2Q8MNxlp69+e0Vp9X5rWCzJ3GosQ3WWuUfsdtm+gkJFivg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nrw92TFt; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-435f177a8f7so1144334f8f.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771520794; x=1772125594; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fA3pKx5AN5x/APCEfqAvfW0pxwW9zZ1rtfJ16/Xi50A=;
        b=Nrw92TFtG3nRexzyUvFTCM/s/wZdh4/0iAX7nT6I8P5Zw3oTe8HtQXy4VkupMpyyba
         kc4Kx5YxaCwhMifi5wGIpovUWg5vrEKZhfQgvobdrSNDDNF1kYe1avtfLaRfduVkfMOR
         rGfD352GWi1p9o62yVO8ONG/TPkmIekorAMI9Pb2S0ZIL8eEeMM6M6S389O6BwKquyL6
         dQKuaqf/tuXLpJ5KpP0ZgCo+9b1qQ4KvrkzAf+rpeB5IYvpV6+na0FEqh17MUdJNgyjg
         yTQ03+9ImhXK+fWfhdYLkHLDtfnxaci8IUqQisLAGNTIgX6WYcTdqWrqDCi9q3jAcd7t
         ZN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771520794; x=1772125594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fA3pKx5AN5x/APCEfqAvfW0pxwW9zZ1rtfJ16/Xi50A=;
        b=h650e2JuWwzQR6Z4bfrZUsEFXPUDF0hiOu/eQJH9EW+yJrgttDjtJ55UuunOuWl7RE
         VC0vFDIjroSS2VU3cQhAMxs4H/y1Im/up+j5sp3AaH0gt/PZkGeB7d2lsZtXXdEIGZrZ
         flqkyzsi2CYM87SgFp8a6M6qDMrpel7l+wXcT54e0QYFOWGhWtIUOpl2Vs8GIz+p1jtS
         hYH/Yzr+FXjpG1HkUd6uw5OMhl2odDkUWqIGcLI+quu4DkliwTJojn7iVYssVShYOKVb
         D6sA7Ww4zHhUtDEudOsicmS1ylComKTOVdAm5wsVvV+j3yvIZsRB+fJ4HZbM/99YO4aG
         pBeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWK6bI7Kng2BJw53fWLTcJcJPUJrV4FXAjF63AN3c2XBX4w1SnI26YMaUaiSQzn1cMh2RTnx3HsBkL@vger.kernel.org
X-Gm-Message-State: AOJu0YxIvb+PdKJQ19/WpVIYfDqY2/QWZhNL3vOvr+q5PvUGTXKZMiDz
	FHZBEQGZwcI5LorQDcO5dtnXL1VWg76dKqSFUFxdbGMyGBVDgoR4p61c
X-Gm-Gg: AZuq6aJd3rHoksNe83Pc/IC3bMWgRo/QLrYmaA/Wrx9YPQgKi966CUS3VRk6czX074T
	L+0fIHAEvpxtnTttlfYr4D+kwAW/VDVQfWNjN1oBF0JK6038KZv/vJjlids1WotmAyNmnS8Od6W
	LPkei+S9z3o/k5icytSAxOOJgnoQlfwMaOUK+UmTB7TCP+naBxpzrgfV/h9hgWAhMLVFMylmV5P
	2Odt0SMROp4nORIB+j5xblO3LxMynqZ674lI6S4zphISwHD5Saj/gRonqzTKf9wp8NBXsp+2Mxw
	4pfT0XSUSbqfEuVyTgTG5fHNQ2AzjV+JNrt+D3abfzwNtQPNKIfn+szwNi3kQ7XcxBR4FpnU+cC
	V+qGaLzCiQJ+N1x7RY0MszwEtCQfYucB05zkE3QJZzu4LNXnGflXWGPCKEzDaOdTt46iOAT/Hxa
	UBBd4euvUUcILSsFDGsGQRVEDmdojYG7ZUtKHv4y/+mrpOLAsA/CY2+CjuPpYGH/tT8dSegVS4R
	DQcUnM=
X-Received: by 2002:a05:6000:615:b0:435:e440:f518 with SMTP id ffacd0b85a97d-4379dbad3d7mr36702033f8f.54.1771520793387;
        Thu, 19 Feb 2026 09:06:33 -0800 (PST)
Received: from toolbox (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abd793sm49031868f8f.25.2026.02.19.09.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 09:06:33 -0800 (PST)
Date: Thu, 19 Feb 2026 18:06:31 +0100
From: Max Krummenacher <max.oss.09@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	Max Krummenacher <max.krummenacher@toradex.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "ARM: dts: imx: move nand related property under
 nand@0"
Message-ID: <aZdDF6BObEu_C4KJ@toolbox>
References: <20260219151157.2549198-1-max.oss.09@gmail.com>
 <aZcz1vRg4KtAKUd_@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZcz1vRg4KtAKUd_@lizhi-Precision-Tower-5810>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-266696-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[toradex.com,kernel.org,gmail.com,nxp.com,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maxoss09@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,toradex.com:email,0.0.0.1:email]
X-Rspamd-Queue-Id: B9D58160F12
X-Rspamd-Action: no action

Hi Frank

On Thu, Feb 19, 2026 at 11:01:26AM -0500, Frank Li wrote:
> On Thu, Feb 19, 2026 at 04:11:49PM +0100, max.oss.09@gmail.com wrote:
> > From: Max Krummenacher <max.krummenacher@toradex.com>
> >
> > This reverts commit 8124b4a4a96b57d6cc3705a9df9623c52baa047b.
> >
> > The change introduced a regression: at least Colibri iMX6ULL and
> > Colibri iMX7 no longer boot with that commit applied, while they boot
> > again after reverting it.
> >
> > Although this has only been verified on these two modules, the issue
> > is expected to affect all device trees using the gpmi-nand driver.
> >
> > [    0.876938] Creating 5 MTD partitions on "gpmi-nand":
> > [    0.876974] 0x000000000000-0x000000080000 : "mx7-bcb"
> > [    0.879860] 0x000000080000-0x000000200000 : "u-boot1"
> > [    0.884761] 0x000000200000-0x000000380000 : "u-boot2"
> > [    0.886993] 0x000000380000-0x000000400000 : "u-boot-env"
> > [    0.894686] 0x000000400000-0x000020000000 : "ubi"
> > [    0.899054] gpmi-nand 33002000.nand-controller: driver registered.
> > ...
> > [    0.960443] ubi0: default fastmap pool size: 200
> > [    0.960476] ubi0: default fastmap WL pool size: 100
> > [    0.960500] ubi0: attaching mtd4
> > [    1.636355] ubi0 error: scan_peb: bad image sequence number 1588722158 in PEB 4060, expected 1574791632
> > ...
> > [    1.649889] ubi0 error: ubi_attach_mtd_dev: failed to attach mtd4, error -22
> > [    1.650029] UBI error: cannot attach mtd4
> > ...
> > [    1.670262] Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,253)
> 
> Can you help found the real reason why not boot?
> nand@0 is preferred format for MTD raw nand.
> 
> Frank

I guess the root cause is that the driver for gpmi-nand predates the
update of the binding rules which want the nand device described in
a child node 'nand@0' also for nand controllers which only can
control one nand chip.

While it is possible to update the driver in the same patch set as
changing the device tree to understand the new dtb rules, maybe even
falling back to the old definitions this likely breaks other users,
most notable U-Boot.


So I don't see a quick fix other than reverting and living with the
dtb_check warning.

Regards,
Max

> >
> > Fixes: 8124b4a4a96b ("ARM: dts: imx: move nand related property under nand@0")
> > Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
> >
> > ---
> >
> >  arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi      |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi         |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi |  6 +-----
> >  .../boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi      |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi           |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts            |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi          |  6 +-----
> >  .../boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi  |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi          |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi       | 12 ++++--------
> >  .../boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi   | 12 ++++--------
> >  arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts     |  6 +-----
> >  arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi          |  8 ++------
> >  15 files changed, 22 insertions(+), 82 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi
> > index f452764fae00..547fb141ec0c 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi
> > @@ -36,12 +36,8 @@ &clks {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c3 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi
> > index 58ecdb87c6d4..9975b6ee433d 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi
> > @@ -172,12 +172,8 @@ eth_phy: ethernet-phy@0 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c1 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
> > index 6f3becd33a5b..aa9a442852f4 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
> > @@ -102,12 +102,8 @@ ethphy: ethernet-phy@0 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c1 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi
> > index f2140dd8525f..85e278eb2016 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi
> > @@ -73,12 +73,8 @@ ethphy: ethernet-phy@3 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "disabled";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c3 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi
> > index 131a3428ddb8..c93dbc595ef6 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi
> > @@ -260,14 +260,10 @@ fixed-link {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	#address-cells = <1>;
> >  	#size-cells = <0>;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c3 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
> > index d29adfef5fdb..57297d6521cf 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
> > @@ -252,13 +252,9 @@ etnphy: ethernet-phy@0 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	fsl,no-blockmark-swap;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c1 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts b/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts
> > index 40d530c1dc29..2a6bb5ff808a 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts
> > @@ -133,12 +133,8 @@ ethphy1: ethernet-phy@1 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c1 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi
> > index 776f6f78ee46..e34c8cbe36ae 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi
> > @@ -101,12 +101,8 @@ ethphy0: ethernet-phy@0 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "disabled";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c1 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi
> > index 27e4d2aec137..a3ea1b208462 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi
> > @@ -63,12 +63,8 @@ ethphy1: ethernet-phy@1 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "disabled";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c1 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
> > index dc53f9286ffe..1992dfb53b45 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
> > @@ -296,13 +296,9 @@ &fec2 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	fsl,no-blockmark-swap;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &i2c2 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
> > index eaed2cbf0c82..ec3c1e7301f4 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
> > @@ -160,15 +160,11 @@ &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> >  	fsl,use-minimum-ecc;
> > +	nand-on-flash-bbt;
> > +	nand-ecc-mode = "hw";
> > +	nand-ecc-strength = <8>;
> > +	nand-ecc-step-size = <512>;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -		nand-ecc-mode = "hw";
> > -		nand-ecc-strength = <8>;
> > -		nand-ecc-step-size = <512>;
> > -	};
> >  };
> >
> >  /* I2C3_SDA/SCL on SODIMM 194/196 (e.g. RTC on carrier board) */
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
> > index 3dfd43b32055..43518bf07602 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
> > @@ -43,15 +43,11 @@ ethphy0: ethernet-phy@0 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-ecc-mode = "hw";
> > +	nand-ecc-strength = <0>;
> > +	nand-ecc-step-size = <0>;
> > +	nand-on-flash-bbt;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-ecc-mode = "hw";
> > -		nand-ecc-strength = <0>;
> > -		nand-ecc-step-size = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &iomuxc {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi
> > index fc298f57bfff..83b9de17cee2 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi
> > @@ -60,12 +60,8 @@ ethphy0: ethernet-phy@0 {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "disabled";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &uart1 {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
> > index 8ec18eae98a4..2d9f495660c9 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
> > @@ -25,12 +25,8 @@ usdhc2_pwrseq: usdhc2-pwrseq {
> >  &gpmi {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > +	nand-on-flash-bbt;
> >  	status = "okay";
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  &snvs_poweroff {
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi
> > index a41dc4edfc0d..8666dcd7fe97 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi
> > @@ -375,14 +375,10 @@ &gpio7 {
> >  /* NAND on such SKUs */
> >  &gpmi {
> >  	fsl,use-minimum-ecc;
> > +	nand-ecc-mode = "hw";
> > +	nand-on-flash-bbt;
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_gpmi_nand>;
> > -
> > -	nand@0 {
> > -		reg = <0>;
> > -		nand-ecc-mode = "hw";
> > -		nand-on-flash-bbt;
> > -	};
> >  };
> >
> >  /* On-module Power I2C */
> > --
> > 2.42.0
> >


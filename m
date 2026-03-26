Return-Path: <devicetree+bounces-280938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEUMBA/bxGkq4gQAu9opvQ
	(envelope-from <devicetree+bounces-280938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:06:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B303330376
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 056BB3012E79
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 07:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812C134EF0D;
	Thu, 26 Mar 2026 07:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOOgibVJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20734D394;
	Thu, 26 Mar 2026 07:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774508812; cv=none; b=jlcJaa7wRMv1mKgDtfoFja1e93+R+JyBBpYuNFhuuxOlANrWfSKY+FHpZtAChjvu4NsPPnPYWUSjN3dWwCh9od0JNk2I5yhIhmnd/qa+OT4mwhOy360thgnHUxTAKj+TTF1CEpkIayTI9aLqMR/yWgfI55MNKZlmzFC+qNThauY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774508812; c=relaxed/simple;
	bh=wnrmEoJZhftDGQmoF0Ui8MmyP2+RIp4BULM0C8H6+U4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BvwvmQXP1ZWP8Goph+2Xr2PnYVM33mZmOLRYeqA51P06xFTTk6G/w7qTkje68n3uyDfMZ4UZd7nimZM4N3/neRbzv6v7WzidGVuLGfi2L69FEyDKyVRH57+ReUI7yDfSupAcvkjm+hE2guJ4h+WwY6qlG4SxiSOVUuz8Jsj7gtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOOgibVJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6614C116C6;
	Thu, 26 Mar 2026 07:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774508812;
	bh=wnrmEoJZhftDGQmoF0Ui8MmyP2+RIp4BULM0C8H6+U4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EOOgibVJ48ULWk33CvEWj41ytD48I79FlWDOTFI/jInoo6F1+4h9SEzLHCuz1Q3Sl
	 n774ppj1CAeHK1+NghBetLL/rS52eSp53V192Neh4Z0dMkMHG/b87Yc1E4eQjdDSp4
	 x9a4R/i1zPsJQOYjXFFg0adJv/KmFWFhqBZMudvvm/XD/uFIfW2yUyCMOOv/NOVGU6
	 LMvKw/6QttZHOAsIkDCfd9Q9gNQf5Hr7XZIzIs5fVO+kuMbhnfTKQEIcPa6DjWj09h
	 z5dwnxALwfOktYrL1rsi0ACun2m0pHFrdzQpxd262Nd/hZRfXhFCxMM0dXeUz3VyQ+
	 19EqZV2A95roA==
Date: Thu, 26 Mar 2026 15:06:47 +0800
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: gaohan@iscas.ac.cn, alex@ghiti.fr, aou@eecs.berkeley.edu,
	conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, rabenda.cn@gmail.com,
	robh@kernel.org, spacemit@lists.linux.dev
Subject: Re: [PATCH v2 4/4] riscv: dts: spacemit: Enable USB3.0/PCIe on
 OrangePi RV2
Message-ID: <20260326070647-GKD777612@kernel.org>
References: <20260310161853.3900605-5-gaohan@iscas.ac.cn>
 <20260314080003.2573296-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260314080003.2573296-1-amadeus@jmu.edu.cn>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280938-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[iscas.ac.cn,ghiti.fr,eecs.berkeley.edu,kernel.org,vger.kernel.org,lists.infradead.org,dabbelt.com,gmail.com,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9B303330376
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Chukun, Han

I've merely checked the schematics..

On 16:00 Sat 14 Mar     , Chukun Pan wrote:
> Hi,
> 
> > +	regulator-usb3-vbus-5v {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "USB30_VBUS";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		gpio = <&gpio K1_GPIO(97) GPIO_ACTIVE_HIGH>;
> 
> Is this true?
GPIO97 should be DVL1 which labeled as CAMERA1_RST..

> 
> > +		enable-active-high;
> > +	};
> > +
> > +	usb3_hub_5v: regulator-usb3-hub-5v {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "USB30_HUB";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		gpio = <&gpio K1_GPIO(123) GPIO_ACTIVE_HIGH>;
> 
> Although GPIO123 is labeled as USB_HUB_EN, it actually
> supplies for USB3 vbus.
> 
I agree

> > +		enable-active-high;
> > +	};
> 
> > ...
> > +		peer-hub = <&hub_3_0>;
> > +		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
> 
> Really? GPIO124 is floating.
> 
Right, GPIO123 doesn't connect to any device
check the reset pin of GL3523, it connect to VCC_5V0 which is pulled high
unconditionally..

> > +	};
> 
> I still insist that the regulator name of DT should be the same
> as on the schematic. This will force us to review the schematic.
> 
> Thanks,
> Chukun
Also, it seems the VCC5V0_USB20 is missing too, which controlled by
pin USB0_OTG_EN -> GPIO126

-- 
Yixun Lan (dlan)


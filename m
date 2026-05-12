Return-Path: <devicetree+bounces-296360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMsnDtBeA2qE5QEAu9opvQ
	(envelope-from <devicetree+bounces-296360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:09:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8881B525794
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:09:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A36313026F0C
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CADB93D79F9;
	Tue, 12 May 2026 17:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="EXQuzNNU"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917643D79F0;
	Tue, 12 May 2026 17:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778605405; cv=none; b=ed0+PQybVlXvJe2+5iLvLf0RCc/sP0bWjyUBhqp//cKKasdlx8YrEkJZV4bCzYO9vuqfcwL8orYtMcpJ98+67qF6v9sT4I6Wn7XlA7Iak0PiZwhnRPm8JTt1GFkxgOpJ2S5i0Be0ep7EVFBh0T6g7zp5t+DgC87jkpMhfNon9/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778605405; c=relaxed/simple;
	bh=r1YOJ+96f+7856o47RUX5ERzYHm9soj3U++w0Pxh1aA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MB942fJnZ9gKdlBxXe2Yv/jSCrC+7VEoqx95dRvOCjEXO1zagSNtacibdwLsoVL+rIhPX0X1o7n+UXk7T6E/ZjtB5puo93CmqDDLYPpHHgYMOCFM2bJ2FqyzNkAeDt1lY0YOtQuBbMufh8eaFseUjjfQu2Q1HjfEVk6+xdj9DiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=EXQuzNNU; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=RfeqH0Cmtp9+NntQslpQpPTwstKhK8P2xes8sXl5U3A=; b=EXQuzNNUQOE0CyKC4fgiohPMr9
	5DW2Av4OA+aPD5gm2ohSXn7eG74vsAUQnnQx5u2jvNxIpBNWUpsyIUT2wBfy8kMuAQMCyEiw7nEXF
	eUT5lbnnjDapMElGn26Qvo9rjzzZPxzjX3wbT5BXG8qOxlhzdEcbVo0ZMwA+kR9F5ZgVs0mYcIltS
	Ii7h0lrkHK3HG9pYlmkqSjNe+nDRmTS1CWMOMAU+lKdWokxxNbPYY7u/s8ABeV/SCFKyIjnkKkY41
	b/DVIjT7flr3TBpjihDhl9P++1OKmeDcgpPsWp2WKoIz9kDcesy6Ype9nFQauBvgHWT7Wd5UG+p45
	MBhOwX6A==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wMqVj-00000004u8d-1Kjt;
	Tue, 12 May 2026 19:03:11 +0200
Date: Tue, 12 May 2026 19:03:10 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Yixun Lan <dlan@kernel.org>
Cc: Iker Pedrosa <ikerpedrosam@gmail.com>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Troy Mitchell <troy.mitchell@linux.dev>, linux-mmc@vger.kernel.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	linux-riscv@lists.infradead.org, Ulf Hansson <ulfh@kernel.org>,
	Margherita Milani <margherita.milani@amarulasolutions.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Paul Walmsley <pjw@kernel.org>, spacemit@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v9 7/8] riscv: dts: spacemit: k1-bananapi-f3: add SD card
 support with UHS modes
Message-ID: <agNdTiFbwtllEw0Z@aurel32.net>
Mail-Followup-To: Yixun Lan <dlan@kernel.org>,
	Iker Pedrosa <ikerpedrosam@gmail.com>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Troy Mitchell <troy.mitchell@linux.dev>, linux-mmc@vger.kernel.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	linux-riscv@lists.infradead.org, Ulf Hansson <ulfh@kernel.org>,
	Margherita Milani <margherita.milani@amarulasolutions.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Paul Walmsley <pjw@kernel.org>, spacemit@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20260511-orangepi-sd-card-uhs-v9-0-ae48c0b2b2cf@gmail.com>
 <20260511-orangepi-sd-card-uhs-v9-7-ae48c0b2b2cf@gmail.com>
 <20260512054358-GKE3624147@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260512054358-GKE3624147@kernel.org>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-Rspamd-Queue-Id: 8881B525794
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296360-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,eecs.berkeley.edu,rootcommit.com,ghiti.fr,vger.kernel.org,linux.dev,intel.com,lists.infradead.org,amarulasolutions.com,dabbelt.com,redhat.com,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aurel32.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amarulasolutions.com:email,0.0.0.2:email]
X-Rspamd-Action: no action

Hi Yixun,

On 2026-05-12 05:43, Yixun Lan wrote:
> Hi Iker,
> 
> Please note, once you are sending new patch series, please drop patch 1-4
> which already picked by Ulf, but keep increase the version number
> 
> 
> On 10:54 Mon 11 May     , Iker Pedrosa wrote:
> > Add complete SD card controller support with UHS high-speed modes.
> > 
> > - Enable sdhci0 controller with 4-bit bus width
> > - Configure card detect GPIO with inversion
> > - Connect vmmc-supply to buck4 for 3.3V card power
> > - Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
> > - Add dual pinctrl states for voltage-dependent pin configuration
> > - Support UHS-I SDR25, SDR50, and SDR104 modes
> > 
> > This enables full SD card functionality including high-speed UHS modes
> > for improved performance.
> > 
> > Suggested-by: Anand Moon <linux.amoon@gmail.com>
> > Tested-by: Anand Moon <linux.amoon@gmail.com>
> > Tested-by: Margherita Milani <margherita.milani@amarulasolutions.com>
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 22 ++++++++++++++++++++--
> >  1 file changed, 20 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > index e20daa50a152..8fea6e87acec 100644
> > --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> > @@ -221,7 +221,7 @@ buck3_1v8: buck3 {
> >  				regulator-always-on;
> >  			};
> >  
> > -			buck4 {
> > +			buck4: buck4 {
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <3300000>;
> >  				regulator-ramp-delay = <5000>;
> > @@ -242,7 +242,7 @@ buck6 {
> >  				regulator-always-on;
> >  			};
> >  
> > -			aldo1 {
> > +			aldo1: aldo1 {
> >  				regulator-min-microvolt = <500000>;
> >  				regulator-max-microvolt = <3400000>;
> >  				regulator-boot-on;
> > @@ -374,3 +374,21 @@ hub_3_0: hub@2 {
> >  		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
> >  	};
> >  };
> > +
> > +&sdhci0 {
> I'd suggest to add alias (to 'aliases' node), so we will have stable
> dev node regardless whichever device probe first.. something should like
> 	aliases {
> 		..
> 		mmc0 = &emmc;
> 		mmc1 = &sdhci0;
> 		..
> 	}
> 
> So, how about let's make it convention here, first device is emmc, second
> is SD card, third is sdio device (haven't added yet).. We introduced emmc
> early before this patch, so it stays unchanged which is nice for end user
> 
> Please apply this alias idea to all boards although I only comment in this
> patch..

Having a stable naming is definitely a good idea.

What about boards that have no or optional emmc, like the Milk-V Jupiter 
board? I plan to submit a patch for it, so I wonder if we still number 
the SD card as mmc1 even if there is no emmc.

Thanks
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net


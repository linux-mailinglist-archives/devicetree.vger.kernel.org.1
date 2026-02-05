Return-Path: <devicetree+bounces-262874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLihDMpFhGk/2QMAu9opvQ
	(envelope-from <devicetree+bounces-262874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:24:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D8FEF64C
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 08:24:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1CB6D3005A8D
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 07:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC3FF35C1BD;
	Thu,  5 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="mHZXC9FO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B4732E14F;
	Thu,  5 Feb 2026 07:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770276293; cv=none; b=kAokU2mnQ0S7hxI4i0zr/NOy9KdgFTKVMamc1UPBx2OJSjSgKwjNm8AzwP+ef5zlfEzEt+xfdvhi+UOxpchKus0HA0A9tkGNJjWreX7FDDvmMRPnG4blfysibVcSEJe67BcI7ij056FAQCWDS0XTqc2jWeIKZUicyuCpr8RjGTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770276293; c=relaxed/simple;
	bh=YDF5QhBZ9FUvFt4eRQHerDVFTzhAtl3HvKch4zc+Rzw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vg66pSuqcDasAfXGN0k9bjpL3RcWjn+gNyM1nZaoSyPziftk8almSKaHfX0YeIDymgPfofvixhvM9CZi69aSbg9Z5EAIHMlQaWh9LMgcdvoIn32vFgitlT1eJ44VJTRLSAJfog2jxASCssS77bASYDLqeF8dFgAv6emg6vk9hqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=mHZXC9FO; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 520FD1FAD1;
	Thu,  5 Feb 2026 08:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1770276284;
	bh=Hk2FM+f8l5QrYyPbtUH9yZtELqXLs48+0tAxMfQcvO8=; h=From:To:Subject;
	b=mHZXC9FOE9e7sWUjqd/61SX7F4M/OXDh8/ht7ZFS3317o1T/147F5uWo5nV7lOPBO
	 Ye13Gws237zW1TOcOV70SRdEIl1mMnMOpnE8EfuOY3EI0KYH79MzhGBrqz+/1jcIKI
	 DkzeC1Z1GvIaxTU4MJWUvXuTDQiRoh2Laj/bXaJVQoTvCnt9UbzHWlSRYl00EygIt4
	 +eH6gTHBSABvNlEz1BS/7SVY/8Kq/7Jj2WhXf3JOYE1r6ksFKYhS7l2IcV164rQ7cU
	 Chvq1+s3D7wn/ipQhHbdspJLeHBgHnr/mn/kkTbqM/06u93ked99LPOg4KI0y5wZMC
	 LKjDP/oD46yWw==
Date: Thu, 5 Feb 2026 08:24:39 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Judith Mendez <jm@ti.com>, Vitor Soares <ivitro@gmail.com>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Vishal Mahaveer <vishalm@ti.com>,
	Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>,
	Sebin Francis <sebin.francis@ti.com>,
	Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
	Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt Trigger
Message-ID: <20260205072439.GA4548@francesco-nb>
References: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com>
 <c47697b4-6ebb-4af9-be96-c964d990835d@ti.com>
 <DFO764ES0FNP.1SUQK9R0EUUDQ@baylibre.com>
 <1a91fd40-e814-4b4c-8914-d8f0c4768e07@ti.com>
 <DG59D7WGM35A.1WNIIMNCQ8U3C@baylibre.com>
 <7ae7f6a1-0ee1-4d56-b1d0-f038a7d22b4c@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ae7f6a1-0ee1-4d56-b1d0-f038a7d22b4c@ti.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262874-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[ti.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,ti.com,lists.infradead.org,vger.kernel.org,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,dolcini.it:dkim]
X-Rspamd-Queue-Id: C6D8FEF64C
X-Rspamd-Action: no action

Hello Judith,

On Wed, Feb 04, 2026 at 08:03:39PM -0600, Judith Mendez wrote:
> On 2/3/26 4:35 AM, Markus Schneider-Pargmann wrote:
> > On Wed Jan 14, 2026 at 11:04 PM CET, Judith Mendez wrote:
> > > On 1/14/26 3:16 AM, Markus Schneider-Pargmann wrote:
> > > > On Tue Jan 13, 2026 at 1:29 AM CET, Judith Mendez wrote:
> > > > > On 1/6/26 10:22 AM, Markus Schneider-Pargmann (TI.com) wrote:
> > > > > > Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
> > > > > > u-boot SPL is not able to read u-boot from mmc:
> > > > > > 
> > > > > >        Trying to boot from MMC2
> > > > > >        Error reading cluster
> > > > > >        spl_load_image_fat: error reading image u-boot.img, err - -22
> > > > > >        Error: -22
> > > > > >        SPL: Unsupported Boot Device!
> > > > > >        SPL: failed to boot from all boot devices
> > > > > >        ### ERROR ### Please RESET the board ###
> > > > > > 
> > > > > > I bisected this issue between u-boot v2025.10 and v2026.01 and found the
> > > > > > devicetree merge to be the problem. At a closer look I found the
> > > > > > k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
> > > > > > failure to read from mmc.
> > > > > 
> > > > > I have tested 4 AM62A SK boards and I cannot replicate the issue
> > > > > you are seeing. I do not see an issue with Schmitt Trigger in U-boot
> > > > > nor Linux /:
> > > > 
> > > > Thanks for testing.
> > > > 
> > > > > Can you please run a quick tap sweep on MMC1 and MMC0 interfaces like
> > > > > so? https://gist.github.com/jmenti/f4a73a8323e44bf717c6d2c528c499ca
> > > > > 
> > > > > This will give me an idea if whether we should be talking about
> > > > > revisiting characterization with ST_ENA=1.
> > > > 
> > > > The patch was a bit broken, but I think I managed to apply it to
> > > > v2026.01 as it was supposed to be. (master currently doesn't boot even
> > > > SPL, I don't have time right now to debug that).
> > > 
> > > as Nishanth, mentioned, master is missing two patches [0][1]
> > > 
> > > > 
> > > > I attached the boot log. It does boot with your patch. Also can this be
> > > > an issue with different SD cards?
> > > 
> > > Something does not quite add up,
> > > 
> > > Can you try the following 2 commands?
> > > 
> > > # mmc dev 1
> > > # md.w 0xfa0810c
> > 
> > Finally here is the output from boot and executing these commands. I am
> > now on v2026.04-rc1 with your sweep patch.
> 
> Thanks for sending over the tap sweep. I compiled a comparison table
> here to show a bit of data for the u-boot tuning step:
> https://gist.github.com/jmenti/5d42f1e43fb357083eaa813cfee484a8
> 
> Based on the data I can conclude the following:
> 1. you seem to have more errors than I do
> 2. there seems to be an issue with the chosen final tap setting
> 3. the chosen final tap setting should still have worked for you
> but did not.
> 
> For #2, something in the tuning results seems off so let me investigate
> this on my end and Ill get back.
> For #3, will have to discuss this internally & test a couple more things,
> then come back with more information.
> 
> Meanwhile, I am interested to see what are the tap sweep results for the
> failing Verdin board, if those can be sent as well, that would be great
> info.

Verdin is now booting fine. The boot failure was related to other U-Boot
bugs (as Nishanth mentioned) that are now fixed.

Thanks
Francesco



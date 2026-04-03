Return-Path: <devicetree+bounces-284463-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEdiE6DNz2m50gYAu9opvQ
	(envelope-from <devicetree+bounces-284463-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 16:24:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA333952CB
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 16:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 123153083DF4
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 14:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47626389DE8;
	Fri,  3 Apr 2026 14:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IutkozW3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CB615665C;
	Fri,  3 Apr 2026 14:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775225802; cv=none; b=jKJu7BMMRKIfCNN5kGN1qPifmOmXsaK5uwT2X7P9Izei7kUSWU1yony05zc7ImwmL0zP19UGiczwG3MfTUPVWgBxba60Wn++VWirX+id9sku9LHIXTAupxmKzAgm2cDaG1AbAGk6owXHuW8b8HN3MnG69tIr6Oi31kYE6wTO6nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775225802; c=relaxed/simple;
	bh=esXZWHWyLG1hbgPkvZiDA90BZY2WUDe0Kif7I3Jkhw0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ThChjwd7Bku5PZbPq3gP6XAg4cz0Z3IDE3EX3N8IBm5pgykot5iXIF/gOSMyodkadk149iSe2KZ1ateXJ9jXi/3BxBYdcByAxogz2He3Hv2DE5gNki7Ig07sco760Qfze+rlwS3lRP5YYY+Mj8DN7vhWAWyH9Xxa/z75+DMfzCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IutkozW3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DD0BC4CEF7;
	Fri,  3 Apr 2026 14:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775225801;
	bh=esXZWHWyLG1hbgPkvZiDA90BZY2WUDe0Kif7I3Jkhw0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IutkozW33xu28g5tZHPr/jssuQ0RSfTxQ+TkgAsanRykcmHI1uhGU9Ro6hc9crnry
	 bCxi7I46rpkV4SHHfFk3ck4VQVjYbjkQdxGy1FygH9QJAKwwntdbqrKTn3fYkn0Ddo
	 1moZGShD2P+6+7EdUXxYI6dBXwfDeThAof7PdPa+8tfI1D+yi3Yybn6ejg3oXPnS4C
	 lviKVQp+nC7h1sN4jD4V4k89vYhz9W2zAQCHE6iYuIZOHn8H4nQ6uYziHLe4qKDbD0
	 pGl7mjdxlTUtHMdy76HT5O64iGFIIjxIfGTyzRnriysFkZrjiZ7qbzU1RvJ7I3RNK1
	 Uq0rUYStEqArQ==
Date: Fri, 3 Apr 2026 22:16:37 +0800
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: gaohan@iscas.ac.cn, alex@ghiti.fr, aou@eecs.berkeley.edu,
	conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, rabenda.cn@gmail.com,
	robh@kernel.org, spacemit@lists.linux.dev
Subject: Re: [PATCH v5 3/3] riscv: dts: spacemit: Enable USB3.0/PCIe on
 OrangePi RV2
Message-ID: <20260403141637-GKA1042809@kernel.org>
References: <cfe646a5549a2b3fc8a4335c3ab4918599615369.1775148159.git.gaohan@iscas.ac.cn>
 <20260403095036.231761-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260403095036.231761-1-amadeus@jmu.edu.cn>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284463-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: 7BA333952CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Chukun,

On 17:50 Fri 03 Apr     , Chukun Pan wrote:
> Hi,
> 
> > +	pcie_vcc_3v3: regulator-pcie-vcc3v3 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "pcie_vcc3v3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		gpio = <&gpio K1_GPIO(116) GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> 
> I would like to maintain the same property order as the
> regulator below,
..
> and add vin-supply:
> 
I think Krzysztof will have objection on this, which isn't used by any
device, so not really useful, see similar comment for "reg_dc_in" here
https://lore.kernel.org/all/6530526f-59ca-4753-a068-46c62a1a1fed@kernel.org/


> ```
> 	pcie_vcc3v3: pcie-vcc3v3 {
please keep "regulator-" prefix, which is
 	pcie_vcc_3v3: regulator-pcie-vcc3v3 {

> 		compatible = "regulator-fixed";
> 		enable-active-high;
> 		gpios = <&gpio K1_GPIO(116) GPIO_ACTIVE_HIGH>;
> 		regulator-name = "pcie_vcc3v3";
> 		regulator-min-microvolt = <3300000>;
> 		regulator-max-microvolt = <3300000>;
> 		vin-supply = <&vcc_5v0>;
I'm not sure if there is any enforced rules on this? I can understand you
are trying to sort them in alphabet order.. but I would personally
prefer old way - in slightly logical order.. but I do have no strong
preference..

> 	};
> ```
> 
> > +&pcie1 {
> > +	vpcie3v3-supply = <&pcie_vcc_3v3>;
> 
> > +&pcie2 {
> > +	vpcie3v3-supply = <&pcie_vcc_3v3>;
> 
> I think vpcie3v3-supply is not needed here. [1]
You right, can you send a patch to fix the same issue in tree?
I was trying to fix vpcie3v3 warning, but realized not fixed all..

> 
> > +	hub_2_0: hub@1 {
> > +		compatible = "usb5e3,610";
> > +		reg = <0x1>;
> > +		peer-hub = <&hub_3_0>;
> > +		vdd-supply = <&vcc5v0_usb30>;
> 
> vdd-supply = <&vcc_5v0>;
right, I agree
> 
> Please refer to the schematic. [2]
> 
> [1] https://lore.kernel.org/linux-pci/u53qfrubgrcamiz35ox6lcdpp5bbzfwcsic466z5r6yyx6xz3n@c64nw2pegtfe/
> [2] https://drive.google.com/drive/folders/1pcI_U0C3VJKTCg8A1zj08CwNbohnONSR
> 
> Thanks,
> Chukun

-- 
Yixun Lan (dlan)


Return-Path: <devicetree+bounces-269786-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGypLekFpWnwywUAu9opvQ
	(envelope-from <devicetree+bounces-269786-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:37:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3201D2B40
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B95C3300AB01
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 03:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 243871E1E12;
	Mon,  2 Mar 2026 03:37:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D497262F;
	Mon,  2 Mar 2026 03:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772422630; cv=none; b=YqULhtxMyC1vAd0plQlDafV3Q9dcfRC3ws/IwQ61BhtaW5G/3dT8v9W61PzgPrWxVbvz+cE5R3d5tIvKPtfzNj5GiJpdUm/wbi5ERI3Ezknq/h8+qClz8UR0TyAPifZ7eXsRSxrZiKJSI5RWEKNy7HwoVMTObVTKSmWS/NTHfXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772422630; c=relaxed/simple;
	bh=HlZEZBChSkWIZ0yIr2y0mGvtNu3LDcGkglPa507TXoo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AVunuNRXCyRGT6hUtU4aYQDOehBAkgS713obSHkgL7Xfr3kp5aECpoGENsuBy1wRmQj/ZbwjIbZFY/eZiA7Srmk/rkK8QIY9U3um0YYIlMeFveWPHpsSIngUulRM1LG//PSFWaojTKU79e/5wkA+UsFZcfmoDjg6OxdHwGygeXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.48.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 84C1D341E6C;
	Mon, 02 Mar 2026 03:37:06 +0000 (UTC)
Date: Mon, 2 Mar 2026 11:36:55 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: dlan@kernel.org, alex@ghiti.fr, aou@eecs.berkeley.edu,
	conor+dt@kernel.org, conor@kernel.org, devicetree@vger.kernel.org,
	elder@riscstar.com, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, robh@kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH] riscv: dts: spacemit: pcie: fix missing power regulator
Message-ID: <20260302033655-GYA288339@gentoo.org>
References: <20260226-k1-pcie-fix-pwr-v1-1-94b493cd27e5@kernel.org>
 <20260302030511.30566-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302030511.30566-1-amadeus@jmu.edu.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269786-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.978];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5B3201D2B40
X-Rspamd-Action: no action

Hi Chukun,

Sorry, I missed your mail due recent problem of my client..
On 11:05 Mon 02 Mar     , Chukun Pan wrote:
> Hi,
> 
> > &pcie1_port {
> >  	phys = <&pcie1_phy>;
> > +	vpcie3v3-supply = <&pcie_vcc_3v3>;
> >  };
> > 
> >  &pcie1 {
> > @@ -320,6 +321,7 @@ &pcie2_phy {
> > 
> >  &pcie2_port {
> >  	phys = <&pcie2_phy>;
> > +	vpcie3v3-supply = <&pcie_vcc_3v3>;
> >  };
> 
> ```
> &pcie1 {
> 	vpcie3v3-supply = <&pcie_vcc_3v3>;
> 	status = "okay";
> };
> ```
> 
> According to DT binding, the vpcie3v3-supply of the &pciex node should
> be moved to the &pciex_port node. This is simply a duplication of the
> property.
> 
I have confidence that pcie port need to add a regulator to provide 
supply for devices..

But, I'm not sure whether it's ok to remove regulator from &pciex node,
it's possibly a 'yes' answer, but to convince me, I'd like to see a real
test case to prove it: e.g, power supply for pciex is actually off before 
the driver initialization, then run regular procedure as it should, if
all works fine

Btw, different drivers request same regulator is ok, and is quite normal,
can't draw a conclusion that it's a duplication, as they may be used for
different reasons

> But do we really need this pcie_port (PCIe bridge)?
> 
> The PCIe bridge node (pcie@0) was treated as a platform device, but it
> did not define the interrupts property, which resulted in the following
> warning: `[    2.897980] irq: no irq domain found for pcie@0 !`
> 
> Would it be better to submit a patch to remove this pcie_port?
> 
> ```
> -       ret = k1_pcie_parse_port(k1);
> -       if (ret)
> -               return dev_err_probe(dev, ret, "failed to parse root port\n");
> +       k1->phy = devm_phy_get(dev, "pcie-phy");
> +       if (IS_ERR(k1->phy))
> +               return dev_err_probe(dev, PTR_ERR(k1->phy), "missing PHY\n");
> ```

I've not really looked at this, and not an expert on this area, so will
leave this to Alex or PCIe maintainers..

> I have tested this change and it works.
> 
> Thanks,
> Chukun
> 

-- 
Yixun Lan (dlan)


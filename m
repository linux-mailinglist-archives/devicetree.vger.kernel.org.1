Return-Path: <devicetree+bounces-283527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGzKHPAazWnOaAYAu9opvQ
	(envelope-from <devicetree+bounces-283527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 15:17:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E076A37B13D
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 15:17:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2AF3F301C97A
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 13:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7CD3D810A;
	Wed,  1 Apr 2026 13:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INthCzna"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2B63A8742;
	Wed,  1 Apr 2026 13:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775048836; cv=none; b=VFTjl3YOrpJWLSoufSaoe9TDs55k6T621dtXwgY8LxrkIByrwNGUSQ/6uoGvVyNxuy7Wlh/pq6VUJl3vfCdD+8OAjCmVExiSZCmIk/W5AZPhtAYwP3L67nwanhqqRE7HnlLJiINitB8bwBarjoRVCV0e1ArQvt8dLc8IjtVUNco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775048836; c=relaxed/simple;
	bh=3ZKzNrUwMIHn6dhPALdVNb5G43e3YDmvzJegFVvQeAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RnjyYEtzbromusTC9caAAtREVQeOv5D+jokm3r0SmfeyZ63lFVlVwUP0QOkPekEef5unbEGERabHQjJeZQgPBU/jGjuR6FbuOEDeYAuQbEk3sHJWrWE35aL27z8LHmCJ2UlvpxJDtQgR2Tjx1lqN636GMrcZLojNgEQIqF8wA5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INthCzna; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8D89C116C6;
	Wed,  1 Apr 2026 13:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775048836;
	bh=3ZKzNrUwMIHn6dhPALdVNb5G43e3YDmvzJegFVvQeAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=INthCzna6u4qZOg0xCpIEj8XgnOT8J6+WweNGRff2a25OzhsScGaDe/NfK8Ui7F3l
	 wcTL+2r9CDDzCj/l07TgY8TB9h4YVwGKQcm0rcM/Zv/9ojn48m8CPSDtGZOw77ANDt
	 sfCilYhtStkjFswMw91yoOQ5xV93i7lH/wJFwnErfso0A9CWWM4R+usOtg1D5Fpgs8
	 ghj2KTWVIhVXoUNnNRQpRkKCO3mGZb6Gl1J4PQVARp7mDZgSf+mNnVcB0V97pn/ubR
	 Pmx0E3NhmWZaBn4eJriAz+LXHrVC4nL/e+hnd4zJ2noc8gT2MwaPO86Jeix0SK1BwC
	 t592VqBC2Hsqg==
Date: Wed, 1 Apr 2026 21:07:13 +0800
From: Yixun Lan <dlan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Yao Zi <me@ziyao.cc>
Subject: Re: [PATCH v4 0/2] phy: spacemit: Add USB2 PHY support for K3 SoC
Message-ID: <20260401130713-GKD976850@kernel.org>
References: <20260305-11-k3-usb2-phy-v4-0-15554fb933bc@kernel.org>
 <20260326001443-GKB777612@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260326001443-GKB777612@kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-283527-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E076A37B13D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Vinod Koul,

On 08:14 Thu 26 Mar     , Yixun Lan wrote:
> Hi Vinod Koul,
> 
> On 01:00 Thu 05 Mar     , Yixun Lan wrote:
> > The series trys to add USB2 PHY support for SpacemiT K3 SoC, while 
> > patch [1/2] implement a disconnect function which is needed during
> > next connection.
> > 
> > No DTS part has been inclueded in this series, instead I plan to
> > submit them later while adding USB host support.
> > 
> > I've collected all patches and pushed a complete review branch here[1],
> > for people who interested to test easily, which include DTS and necessary
> > changes, other patches may still need to improve, but sufficient for
> > verifying the functionality.
> > 
> > Link: https://github.com/spacemit-com/linux/tree/WIP/k3/usb2 [1]
> > 
> 
> Just want to ping this, Can you queue it for v7.1? Thanks
> 
Ping again, I'd like to see USB2.0 support in v7.1 for SpacemiT K3
SoC.. and I think this phy patch is the only dependency that waiting
for, the USB DWC[1], and hub[2] patch already merged

Link: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?h=usb-next&id=c05cf9d274daf72dc7e433480cf2e0e888f6bd89 [1] 
Link: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?h=usb-next&id=00b4fe5be06aecd6426930de86b7cffc2330f4b8 [2]

-- 
Yixun Lan (dlan)


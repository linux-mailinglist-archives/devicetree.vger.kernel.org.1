Return-Path: <devicetree+bounces-275626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ssOjCdcWtWnRwQAAu9opvQ
	(envelope-from <devicetree+bounces-275626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:05:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CED28C084
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A59B23006450
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26191218ACC;
	Sat, 14 Mar 2026 08:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrpHf9+a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0252756472;
	Sat, 14 Mar 2026 08:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773475540; cv=none; b=RYxwO2FasOzpXSF88xzxxq/AuQMtbR9SAgi2eQWDV9zqn5ud6DO+G5RCRAoZuoklQz6UEaaA2lKq8cVlJQxLc5VHAZ7Zha1EBmSwuvhE9oD0FHOhK3y0LfESk+EsYMRwGXWnWjcw0wwyfJgj5ngMxpvNcNrCZgpWqoqzdn6Rqyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773475540; c=relaxed/simple;
	bh=xtjslWx4fw62YVGcblCJxi7bzvL0cBKciLoO0Dsr5G4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YB8NX/2Vd7IHwFz3DLP4FlVXr8FG2TG4msRoZopvrDsizqaqXF+bZF4Od2mEImWkOzCIYoUxm4b0vgZ166IgETd8k8bS3GAnWZhKB38/EUFTSn+1bChjy8k+w5PBFgcIhawvGi5byI36wvFnglqbGu/bKjdkf56RIRbiq7yMypY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrpHf9+a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8448DC116C6;
	Sat, 14 Mar 2026 08:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773475539;
	bh=xtjslWx4fw62YVGcblCJxi7bzvL0cBKciLoO0Dsr5G4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DrpHf9+ahFoxkfnWX78OuatZ7zSuGqkeyHnCyBptqF95hK74YLTwChV9AFrEXGk8L
	 +XKIE+ZWrJcB9ONro2i2/MO0vj3MTBc3vnflg3MLgcE/BFaOau6Zd0QXSxglLUwJNm
	 VntAUA3HulkKoxluSIBTTfwl15TvQb1/hjsKSfmkGx8bTrS3wxxt+e4Ky/eraiIx0Q
	 E9soRgfD/OnNhWVhwi2vgoQJDXTcPmK0DMfiK6Zw8TtiYYPlH0TQrsvAFKFB6HV+Cr
	 pIIs9N5AVNvHRJlp2e4gTNEITuyjEsvd0TtIYOknI+6yIZLRwtAWIjjfb5CwALSgyb
	 bW1yin72omPsg==
Date: Sat, 14 Mar 2026 16:05:37 +0800
From: Yixun Lan <dlan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Junzhong Pan <junzhong.pan@spacemit.com>,
	Guodong Xu <guodong@riscstar.com>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: soc: spacemit: k3: Decouple composite
 reset lines
Message-ID: <20260314080537-GKA415778@kernel.org>
References: <20260312-01-k3-reset-usb-pci-v1-0-022b24b7340f@kernel.org>
 <20260312-01-k3-reset-usb-pci-v1-1-022b24b7340f@kernel.org>
 <20260313-certain-idealistic-urchin-001e96@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-certain-idealistic-urchin-001e96@quoll>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275626-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 98CED28C084
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof, 

On 14:42 Fri 13 Mar     , Krzysztof Kozlowski wrote:
> On Thu, Mar 12, 2026 at 10:34:19AM +0000, Yixun Lan wrote:
> > Instead of grouping several different reset lines into one composite
> > reset, decouple them to individual ones which make it more aligned
> > with underlying hardware.
> > 
> > The DWC3 USB host controller in K3 SoC has three reset lines - AHB, VCC,
> > PHY. The PCIe controller also has three reset lines - DBI, Slave, Master.
> 
> Either this is ABI break, which would need explanation, or it is not,
> which also needs explanation and then fixing current bindings before
> they are released.
> 
Literally, Changing IDs would result an ABI breakage, but since we have
no consumers - no driver/DT use those IDs so far, so we could safely
renumber it and push as a fix for it. This issue was already raised by
Philipp in this thread [1], and I agreeed, will put some explanations.

Link: https://lore.kernel.org/r/20260312112858-GKH302167@kernel.org [1]

-- 
Yixun Lan (dlan)


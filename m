Return-Path: <devicetree+bounces-301299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFXjAqIQD2qSEgYAu9opvQ
	(envelope-from <devicetree+bounces-301299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 16:03:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 060675A6BCF
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 16:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A2DE32AFC5E
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 13:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F130D3EFD00;
	Thu, 21 May 2026 13:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bp31nYHS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4293E1689;
	Thu, 21 May 2026 13:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779369190; cv=none; b=cx0cCKR6GotYRve8EsA7LjIIyWIs2tTqK3+cM2a0KULpdMbBukjRCMy1Kz4QOXSNydofk8sOcmL008zK9SQ3ka3aB2cFCdDo8jciUAnrXggL9JKMqNPvnlHmfaYR65dZKTPQAYAhNU3NkAUJdiicB0KPaa/jFl9gS4V8p4MXq4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779369190; c=relaxed/simple;
	bh=Zef4hq7qHQqGuoWfrK+4IAr+ZRdBbb0gYXaHjquOOVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o4mvCUg/LmwMrS/3pt/N0DXCFFZAuekxEIyjvpWpOn3ZaVVwPJSourmDgnqM8F5Ce/1caSxgTSuIAwToQGJLGqSm3vC9b9oaDXm4ITGkEtUmQW1vsRh17bDhQVs4SfjQY2BsO1hnH+Xl40JkrzNbvNosOoBGls1wVinxT5omDd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bp31nYHS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FD4C1F000E9;
	Thu, 21 May 2026 13:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779369188;
	bh=igWpYRd7nceDsGMf2M6kAUT9G6B5P9tILKlWPpy71w0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Bp31nYHS+InA9kOjCwJNq2G2DxBetezP2RDP123toJzCTE6xUkye/TnRndYkVidmC
	 WeJRnS8KjJLsb7bUWu5mq095zAELK/KSmzLEyfhLF0HKb5UBN9FLjxQtCG6MFbdhrj
	 QXn8W5FEU60Jd2t/6jiOtf35im5SEXXPaOudwZyXoSF3y1vnJyNejVFo4p0nE780nU
	 KtHd1dOFxc5pW/RjRwPWh62h+ce3kWHcnNjp5E/8Ck520yvCoeJ8Jfoz1Ee7Okx6R6
	 jUNCvRgYvZVHExeDqyMsQ0ZSNAJ4iW3JVqc+SibgTYmnS/2PFhyW9mRjVTjX/fMb2k
	 RCrCJ0Xlg95hA==
Date: Thu, 21 May 2026 13:13:05 +0000
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Rob Herring <robh@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>, Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, spacemit@lists.linux.dev
Subject: Re: [PATCH v2 1/1] riscv: dts: spacemit: enable USB3 on OrangePi R2S
Message-ID: <20260521131305-GKA3727373@kernel.org>
References: <20260518100030.2354606-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260518100030.2354606-1-amadeus@jmu.edu.cn>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301299-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,jmu.edu.cn:email]
X-Rspamd-Queue-Id: 060675A6BCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Chukun,

On 18:00 Mon 18 May     , Chukun Pan wrote:
> Enable the DWC3 USB3.0 controller and its associated PHY on the
> OrangePi R2S. The USB regulator provides VBUS for USB2 and USB3
> ports, but the USB2 ports are handled by a separate controller.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
Applied, thanks!

[1/1] riscv: dts: spacemit: enable USB3 on OrangePi R2S
      https://github.com/spacemit-com/linux/commit/c5ad6737df88bd3c3e83145edb25737cb19f9a1f

-- 
Yixun Lan (dlan)


Return-Path: <devicetree+bounces-265478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCOTEwGkj2nASAEAu9opvQ
	(envelope-from <devicetree+bounces-265478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:21:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D1233139C51
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2EF11301AABC
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB72307481;
	Fri, 13 Feb 2026 22:21:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC70E2701DA;
	Fri, 13 Feb 2026 22:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771021308; cv=none; b=tJ0TS+T9N06H8tlueBWbNTZkuWHB/XbWdNao1X9vsAxlGlUR+HfOgpckStLEMm1AUJY5wGcb5e1R+SduxZfYFCMH69VUSs1r9JBjlgwzdbuJuNr9oTaHcWafsHvUC3+Z345yk3nJF93dKGH9N9HNt0oAWMeVHSpyxA82kMLe8tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771021308; c=relaxed/simple;
	bh=KRThdpw5w5KcKAgyBKNP9kDO4lgbBX5p0n9PKGMVUj0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M0gfAH1GKDErh9JH9fF89wkhNm5NTEhkc252j7nItXVkfEZPs2cXwin25WWN63/Uswy+nWH3tWtR82LCdycggcQ9swY2h1+SZ88ul95OmV4j7DYUDNMzZSw2X7k0HZ1e1q7CNs0Ap6WJtWAs9LFhvxYb/++UlZhA2yKBd5M0Ios=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.48.232])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id C2A44342502;
	Fri, 13 Feb 2026 22:21:45 +0000 (UTC)
Date: Sat, 14 Feb 2026 06:21:35 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Tomasz Jeznach <tjeznach@rivosinc.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jingyu Li <joey.li@spacemit.com>,
	Zhijian Chen <zhijian@spacemit.com>, iommu@lists.linux.dev,
	linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/8] iommu/riscv: Add HPM support for RISC-V IOMMU
Message-ID: <20260213222135-GYB164498@gentoo.org>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <F9748E3984D2A6F9+cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <a9d9f43a-edf3-419b-bdf7-dbd6bf9e978f@kernel.org>
 <605D8D5AE96AEF8F+31d65ad3-3956-49ae-8d9f-589747a5086c@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <605D8D5AE96AEF8F+31d65ad3-3956-49ae-8d9f-589747a5086c@linux.spacemit.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265478-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	R_DKIM_NA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: D1233139C51
X-Rspamd-Action: no action

Hi Lv,

On 11:41 Sat 07 Feb     , Lv Zheng wrote:
> On 2/6/2026 6:44 PM, Krzysztof Kozlowski wrote:
> > On 04/02/2026 10:08, Lv Zheng wrote:
> >> Includes HPM support for RISC-V IOMMU. The HPM hardware mechanism can be
> >> found in the recent announced SpacemiT SoCs (K3, V100), where T100
> >> (SpacemiT distributed IOMMU) is shipped.
> >>
> >> Revisions:
> >> v1
> >>   Initial release.
> >> v2 (sent as v1.1)
> >>   Split and cleanup DT-bindings.
> >> v3
> >>   Refactor using vendor specific compatible.
> >>
> > 
> > 
> > Do not attach (thread) your patchsets to some other threads (unrelated
> > or older versions). This buries them deep in the mailbox and might
> > interfere with applying entire sets. See also:
> > https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830
> 
> Got it.
> I'm still using an old fashioned upstream way to collect all revisions
> into one thread. Will align to the preferred style.
> 
Using b4 will automate this procedure, you can also take a look at
Konstantin's articles, and the b4 doc
https://people.kernel.org/monsieuricon/sending-a-kernel-patch-with-b4-part-1
https://b4.docs.kernel.org/en/latest/

> Thanks,
> Lv
> 
> > 
> > Best regards,
> > Krzysztof
> > 
> 
> 
> 

-- 
Yixun Lan (dlan)


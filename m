Return-Path: <devicetree+bounces-269444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNL3MsEaoml7zQQAu9opvQ
	(envelope-from <devicetree+bounces-269444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:29:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 084251BEB14
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D88A30288FB
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 22:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B9647AF40;
	Fri, 27 Feb 2026 22:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMta3Nvm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C457236C0CD;
	Fri, 27 Feb 2026 22:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772231355; cv=none; b=Qrq3ptyWI2dzKayUE1UhAN5dX32g6rtUQfLCL+ge0JRuMzaOETUn1e0fNAe/OtqJxLsbsgCei1mUkRZ92tqBYPNVZMfjCFv/oKWSTzAsuOAh9uGvT9uuU+mORnNirvIM6otxFYTp32Ok8PXPoFiMbysIogOejZICGuNdepRBVU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772231355; c=relaxed/simple;
	bh=nXyEBuefuqKE0a94DTQWyFgZfx1eVELzqdDIEmkjXc0=;
	h=Message-ID:Date:MIME-Version:From:In-Reply-To:To:Subject:Cc:
	 Content-Type; b=MktkeoyLXCzdtzcJkYs2Uuw5bJBhXfqB/Cc6VGXVbaGuBcLF6M5uhuhjx486GfaedVP3NoCKoLDARigspnV5kuqDTI7cw0MaI/N3cKHR1WsPztn0Cx8pBAcVxF2iUFl4fv3US9iHcYadapT8Ujr7Mwn8LlzPOS0yhSBpJd77bxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMta3Nvm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2D5BC116C6;
	Fri, 27 Feb 2026 22:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772231355;
	bh=nXyEBuefuqKE0a94DTQWyFgZfx1eVELzqdDIEmkjXc0=;
	h=Date:From:In-Reply-To:To:Subject:Cc:From;
	b=dMta3Nvm6jfyHXf84DTtr6yW4bkPq9O/EgRezeivDn/cAuUyObsfmEyzi6qXOor9r
	 G0h1w4TzqwAyzNbTqL0t+qpp8XW65/iDI3/I1RY7bDtMlKff9yVqRilmI/enSWak1y
	 jnTDe12wHVRvKcF/m/74ig/Uhhas0OYfDEVn79WziJEHZckAthBbfm5lENwdGK21Qs
	 Ag5Yq1iTUJ9UXGNddXOD+VHi6z/rcBmv9g83yCSf/3CF8DnP9MAhOBs1ug//lQK5qv
	 LYBSvKxY0kEOVXIe0XguWQmIHt0KWQFT+Bd9uMHeUamLFlYXcdzc3uiBOIKdRolFdi
	 i0ToxbxhH5WkA==
Message-ID: <aba8eaf1-eabd-4e27-9c2f-2cc8e4338a16@kernel.org>
Date: Fri, 27 Feb 2026 22:29:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com>
To: vijayanand.jitta@oss.qualcomm.com, robin.murphy@arm.com, will@kernel.org,
 joro@8bytes.org, robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
 bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Subject: Re: [RESEND,v8 0/3] of: parsing of multi #{iommu,msi}-cells in maps
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-269444-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bod@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 084251BEB14
X-Rspamd-Action: no action


You're missing a significant number of maintainers.

https://lore.kernel.org/all/20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com/

From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
	robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
	bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
	prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [RESEND,v8 0/3] of: parsing of multi #{iommu,msi}-cells in maps
Date: Thu, 26 Feb 2026 13:12:42 +0530	[thread overview]
Message-ID: <20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com> 
(raw)

There's no point in resending since you aren't mailing the right list of 
people right now

deckard@sagittarius-a:~/Development/worktree/reviews/linux-next-reviews 
(linux-next-reviews) $ scripts/get_maintainer.pl 
0001-of-Add-convenience-wrappers-for-of_map_id.patch
Nipun Gupta <nipun.gupta@amd.com> (maintainer:AMD CDX BUS DRIVER)
Nikhil Agarwal <nikhil.agarwal@amd.com> (maintainer:AMD CDX BUS DRIVER)

<snip>

Please run scripts/get_maintainer.pl on each of your patches and include 
the right set.

---
bod


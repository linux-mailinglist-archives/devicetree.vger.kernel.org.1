Return-Path: <devicetree+bounces-280812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBn3GIF6xGlXzgQAu9opvQ
	(envelope-from <devicetree+bounces-280812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 01:14:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD6F32D8FF
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 01:14:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12F653034566
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 00:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E30156661;
	Thu, 26 Mar 2026 00:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcW6accb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DB91C69D;
	Thu, 26 Mar 2026 00:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774484085; cv=none; b=AGvaTh1StWgJdhkiAdaqp2I406ZM/uGR2pRFC82JQ+m8KMyLIzv2ykT2X7ER1gr6KQ/nxax7z3cZS+NxbEioQtxwpY7G42A6QZWKNE0Yys60GSEKMmuFTMIToQdiyUwLGXhWPzjF5LybN+xeUvMkhnjQqy9mWiUF5kcoc4fzCLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774484085; c=relaxed/simple;
	bh=/TUBF7g8mB34338ES/5O1dCvr9AmdaH2HsuPF9BFNDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BiHN+eKumiNUYPn2WBEJTf40f3fUqiEQL9zr2Iny5vu1CTYcXY9WqJS6eT9koFL2u7uaD725NbUU4TYFUEe5bB9Q3GSGsJj0kdCec9EUkvxQuzb5bSDhqipxvh+ZHiDSPZnPTbeoChI1LrtBGM3izS8B1zYswz4/JUvLHMv0mto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcW6accb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ADF5C4CEF7;
	Thu, 26 Mar 2026 00:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774484085;
	bh=/TUBF7g8mB34338ES/5O1dCvr9AmdaH2HsuPF9BFNDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lcW6accb/PkHae4TeIC9U03nq4FvAa+PoKqsRDJCrNv8pNUCYvh9Heb0KwJ/x/jNA
	 DpFTn5iZ9UcxnGxfajphEQJ7nAVlx4N/fFr/QojmFQTUErB2+ayRVtcfCL6sxl6656
	 HdSE/mqRdkxEvsrj7/d93dhIV0ZbCDSjpzzN7Eju+SjOx9aPzKQ76X+pEk3B/DaWbG
	 DqmQnSiV9DMB7hFJ261R0JrhgnnVfUWv0lCi+Vwx8cyOKbmN29w9+rs+c4kJhTG0L9
	 ag2V7di+vHu7fo6Ds7p2NMyqprMu7dtOYqk0PjNkuJFEwGDpHyapka3hD2NGHBSdR8
	 UvYxzHgS3jbLA==
Date: Thu, 26 Mar 2026 08:14:43 +0800
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
Message-ID: <20260326001443-GKB777612@kernel.org>
References: <20260305-11-k3-usb2-phy-v4-0-15554fb933bc@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305-11-k3-usb2-phy-v4-0-15554fb933bc@kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-280812-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BBD6F32D8FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Vinod Koul,

On 01:00 Thu 05 Mar     , Yixun Lan wrote:
> The series trys to add USB2 PHY support for SpacemiT K3 SoC, while 
> patch [1/2] implement a disconnect function which is needed during
> next connection.
> 
> No DTS part has been inclueded in this series, instead I plan to
> submit them later while adding USB host support.
> 
> I've collected all patches and pushed a complete review branch here[1],
> for people who interested to test easily, which include DTS and necessary
> changes, other patches may still need to improve, but sufficient for
> verifying the functionality.
> 
> Link: https://github.com/spacemit-com/linux/tree/WIP/k3/usb2 [1]
> 

Just want to ping this, Can you queue it for v7.1? Thanks

-- 
Yixun Lan (dlan)


Return-Path: <devicetree+bounces-297166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qff7Fwf5BGqNRAIAu9opvQ
	(envelope-from <devicetree+bounces-297166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:19:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB04453B5EF
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:19:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D4D430067B9
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F5DB3921ED;
	Wed, 13 May 2026 22:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdAxatGA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DFE38AC8D;
	Wed, 13 May 2026 22:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778710692; cv=none; b=cvEtLp5HothNpjIzk2x5ywjg/uNNDV1svVlypNifR9CVUFcRykhM7BMO3PqG43UzK0VggJR9cO0iXsnANGNFfE2VNLNus9PNyWxdfrgHFcKsmaN3v2eWmUp77FRJB81obuKZTO8x79FJ7T646R0K5mgaOypVZf5LREJaq+VOpLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778710692; c=relaxed/simple;
	bh=fEaLuA6xk/honsn13ZPkLZfAQ35x+BpkPpvYqtEy+CY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=miCz1nUhNST4JK23cxW8SAUDXwsHS+l0dQbKs0cXSlxf/Fzr+lZqWsOvcDydZngIC3JPM56cqUyJuWzWTlzArCjhWRMBgEwmG5Ngxsf6WHom7sSIHQSNvnpxRGeUKfgIGiGIaBFM2udNCL88B02zf5W91J9VztOuT2AIwPU49gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdAxatGA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5B39C19425;
	Wed, 13 May 2026 22:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778710692;
	bh=fEaLuA6xk/honsn13ZPkLZfAQ35x+BpkPpvYqtEy+CY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pdAxatGAQ6pqtSN6eES9aeRMy3VqW4m0FUPgvJtb5oLA8enelNwxLe1XPFmCBj4Vr
	 BBSf9i36sXNo7O3/Johk2P6H7B7InRnjJiUAgSQAUMEvQPiPts4k+cFePhkWk/OTvl
	 2rt1PZgWw0d89ovYeFCas4awhuyKkDMsoXYIlxm8fcITXlHwmn1mqqcXO5U6gmBo0D
	 IVua8axr3JRzWn5mrUXmhffXzmd4nCQPBKUBTObCskuHMDn6PPeNbs2bmx3GgaGHAz
	 PIfgnWqNi6kXyERhnZRbLyEvbzt5SpX5D3s7+m+7Mm7isITf7Ds9EFTB5GFM+DnwaM
	 1gzzQ0Y4fhRlA==
Date: Wed, 13 May 2026 17:18:08 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] drivers/of: validate live-tree string properties
 before string use
Message-ID: <177871068177.2012559.622066672086407551.robh@kernel.org>
References: <20260417223003.1-drivers-of-live-tree-v2-pengpeng@iscas.ac.cn>
 <20260507081812.91838-1-pengpeng@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260507081812.91838-1-pengpeng@iscas.ac.cn>
X-Rspamd-Queue-Id: AB04453B5EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297166-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email]
X-Rspamd-Action: no action


On Thu, 07 May 2026 16:18:10 +0800, Pengpeng Hou wrote:
> `populate_properties()` stores live-tree property values as raw byte
> sequences plus a separate `length`. They are not globally guaranteed to
> be NUL-terminated.
> 
> `of_prop_next_string()` iterates string-list properties by walking raw
> bytes, `__of_node_is_type()` checks `device_type`,
> `__of_device_is_status()` checks `status`, and
> `of_alias_from_compatible()` reads the first `compatible` entry. These
> paths must validate that the relevant string fits within the property
> bounds before they hand it to C string helpers.
> 
> Validate these live-tree string properties within their declared bounds.
> In particular, make `of_prop_next_string()` reject malformed entries
> before returning them, keep the `device_type` check inside the existing
> no-lock helper path, and add unit coverage for malformed first and
> trailing string-list entries.
> 
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---
> Changes since v2:
> - fix the QEMU virt boot hang reported by Rob Herring: v2 made
>   __of_node_is_type() call of_property_match_string(), which takes
>   devtree_lock while __of_node_is_type() is also called from paths that
>   already hold devtree_lock, such as of_find_node_by_type(),
>   of_match_node(), and of_find_matching_node_and_match()
> - keep the device_type validation bounded, but use __of_get_property()
>   directly so the helper remains safe under devtree_lock
> 
> Changes since v1:
> - rework of_prop_next_string() so the first returned string is validated
>   through the same bounded path
> - add of_unittest_property_string() coverage for malformed first and
>   trailing string-list entries
> 
>  drivers/of/base.c     | 43 ++++++++++++++++-----------
>  drivers/of/property.c | 27 +++++++++++++----
>  drivers/of/unittest.c | 32 ++++++++++++++++++++
>  3 files changed, 80 insertions(+), 22 deletions(-)
> 

Applied, thanks!



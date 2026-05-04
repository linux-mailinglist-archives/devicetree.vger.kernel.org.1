Return-Path: <devicetree+bounces-292610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IhDHK2J+Gl+wQIAu9opvQ
	(envelope-from <devicetree+bounces-292610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 13:57:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F20D44BCADC
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 13:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6233300FED3
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 11:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2D573B8D7E;
	Mon,  4 May 2026 11:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVIMB9qC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7363A7F4D;
	Mon,  4 May 2026 11:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777895849; cv=none; b=AyZKxhvhFvKeuHc0JeCqpGD1cGthtewxSurJEmwgq5WZ0Xn99IqPKrt+0LsYxhYUbTHnPue3e2IzJQoe86DZnnHcQ+l7a/Hw9FJ/AwkxkzNvNOmIBDUErpt/iYrD2UUQhWoOelUoOAdk6jxCGIZ+S642t3buYkG/s2X83ZGPMLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777895849; c=relaxed/simple;
	bh=xbczkQrN1OtZ9vkdHLLXtvM8pwULvdCmpeoWohMx35w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ke0QsHE4vSu1AbsuugxGp9h1Kkc9dhkLAe6t+rIGadO9H+kWWI+e1ZfVtxiQ0LbV1lzPZAMVlWgRf4o8Qh+dJ3FemGQUN07WzJJAPzjZGfnE4XSGjIX+JzDg069sxl6wn475DRem425sOsyYSr31tpjayl5enXTHlYmonyG1deE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVIMB9qC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AC9CC2BCB8;
	Mon,  4 May 2026 11:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777895849;
	bh=xbczkQrN1OtZ9vkdHLLXtvM8pwULvdCmpeoWohMx35w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BVIMB9qCh84qb3SwLj62WEiHxwygkpq1gNrlpXecnJ6YEm5kDOhJkTkr62WXrvk0Q
	 9Oktcr3e/00TDhd+0QitosUfiqxJnYLnmxRkXOeJQI5mAhYbk5kXNbeWmKtABXa1TW
	 QI4DtpvW0kLO99HOjKWY6isVDtSa5Dllj1ZyFBEaSPquA45+FnvkY/H1OFFoNiK+tz
	 4YREyr8SrleXnqKjZVtLb5bdJ2x+D9vxNBknl9pB/BQZwf/ZKSzlNzyspJcAnH/s7M
	 zYhCdRBo3JH1khVkSEYknH5HZKtcjqvLGV5xfGNPyYsWlK4zxxlyzVjtxJRcMUAtDZ
	 E/qjEp+5qT8gA==
Date: Mon, 4 May 2026 13:57:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wang Zihan <3772548978@qq.com>
Cc: devicetree@vger.kernel.org, linux-csky@vger.kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, guoren@kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: csky: Fix typo in pmu node name
Message-ID: <20260504-misty-beneficial-curassow-b0dea1@quoll>
References: <tencent_7F23A3DF4B91955F6E2BD07BAE7C92B2E607@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <tencent_7F23A3DF4B91955F6E2BD07BAE7C92B2E607@qq.com>
X-Rspamd-Queue-Id: F20D44BCADC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292610-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[qq.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qq.com:email]

On Sat, May 02, 2026 at 07:19:08PM +0800, Wang Zihan wrote:
> Fix 'performace-monitor' to 'performance-monitor' in the example
> node name.
> 
> Signed-off-by: Wang Zihan <3772548978@qq.com>
> ---
>  Documentation/devicetree/bindings/csky/pmu.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Fixing this in TXT bindings is pretty pointless, the file should just be
converted.

Best regards,
Krzysztof



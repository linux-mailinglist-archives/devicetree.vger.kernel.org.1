Return-Path: <devicetree+bounces-318874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9BJ7FM5zRWoaAgsAu9opvQ
	(envelope-from <devicetree+bounces-318874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:08:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A38256F14B6
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:08:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CZ2woGJe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318874-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318874-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F573304A858
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 19:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0521A35E1A6;
	Wed,  1 Jul 2026 19:56:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAC2431E6B;
	Wed,  1 Jul 2026 19:56:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782935780; cv=none; b=slLe+XgEX/jBiX/1M15OFjfA6jiIsyWnFy3Y0kd5lRKrscm9KmvKSvy15d9ISYejwovcJdOr2ZatqzJnmOms9a3Kwvm12byF32A/5Kg7u6Fz1UlryQPQ3tn+0SYc+xia2ZT1uQhOIN5lszNf4ABt32clnP73EneTpE9o+qxCfmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782935780; c=relaxed/simple;
	bh=ThOCvNilUhg3CU2EWiEtm2iRHpDL86qpM1lKENVJwyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DcqD62RVkvhQy/WZfLabYMcl9M92uDkzx/2tcUjW5y0Fxd8G7nRB4t3duW4V3kyaudjnfJISXb/cKnKKzpwoymCcQmKhKg2OWWDxd95FMWs6GX3/HqalIKu8cn/8FEJUTjbghVjd3OOOCHEQZbn4ple7LabxjgyVPuCXNMGKM7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ2woGJe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85F451F000E9;
	Wed,  1 Jul 2026 19:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782935779;
	bh=2jTAoyUtrQjC4pFI5xTAx1xnY1v3m6f+Afx0jq4MXsc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CZ2woGJe4vn9Ab6OV92QZ4f0vhzNjHtuZwvK3w+7qyQBl6W7VQjdAgWthb6JWQOa/
	 Upz8WC9KYSdFIzWBNrfcWGi1XZW5NkJ2u2IpLWl6AUju+I+JxAz+TvoPTeHvlLkWfn
	 xO7IS7/srzSQ+/RPUq0dcrO019g2QjNTtUIcCxeWV2iSkfKHa3P9yoF6kalO+LZPg6
	 AX0Bws0OUdNBhEXSh2h+qXZzZwcnKro0iqu18zxE6kdkekf7i1tfQJDkR2jZ4xDCfi
	 geLClcY/HHr9l8Ugf0qYCah+K2CdM1Wy0w4C81mr0E89t7H9Wn4ssyYdXa8hR+bhE0
	 7DrmzPmp/HIJQ==
Date: Wed, 1 Jul 2026 14:56:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH 2/2] dt-bindings: rockchip: grf: Narrow allowed reboot
 modes
Message-ID: <178293577838.1640591.14450570055545790463.robh@kernel.org>
References: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260701105849.197086-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701105849.197086-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318874-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:heiko@sntech.de,m:zhangqing@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A38256F14B6


On Wed, 01 Jul 2026 12:58:51 +0200, Krzysztof Kozlowski wrote:
> syscon-reboot-mode schema allows arbitrary "mode-.* properties but only
> a subset actually makes sense and is valid.  Provide negative look-ahead
> pattern to disallow any modes not supported by the device, which
> tightens the binding.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



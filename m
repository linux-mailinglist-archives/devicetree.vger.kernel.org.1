Return-Path: <devicetree+bounces-265059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNtnGtbBjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:04:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C142712D41B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:04:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB4EC3066BDB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72788346A1F;
	Thu, 12 Feb 2026 12:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+SA3LYA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE24284895;
	Thu, 12 Feb 2026 12:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897797; cv=none; b=co4w8IjQAgsQZMKF5fRrkGwdby6M08pPr/xfLMgZ6RpLh3yp03HotPIjtA9aHUHMtEeZVeZgS+IFYYS3DZzFBvBWsl3ET7iEyGfh0Fj/mWVWuwQhS3U0Svj4EwuqPH/wGPXI7VhwEs2GpquwfWV+uKehhBpPUpdXNAcFMywL2fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897797; c=relaxed/simple;
	bh=SZTz8HS9PWKBbdj5b1EMRwXlgepLmkuv69oIrOnPdcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bIUVCOaGYQv5A0A3CmulIpingGESwhzH7sQI9t1aGZBAogh4W6NcYQzFqC9rpS/6+WCmudcAaypdL3ZQLvfrZNVMMDQqz+MvqXaVe4csrJn4FREmQFcbgvFSBbLq6IAOpn0D9+RNO5LJtf/OY5jF81DtriIp7JeI5i+u5bYIObs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+SA3LYA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67095C4CEF7;
	Thu, 12 Feb 2026 12:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770897796;
	bh=SZTz8HS9PWKBbdj5b1EMRwXlgepLmkuv69oIrOnPdcY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U+SA3LYAhVdyGRMYNYGEU4GprVv77KQ5bP8VRHPjcMk95kB+NihCUNPMMQYxkudZB
	 1ZKFDz30j0zy67aIfC3as2goYgNs2WvAUbNBX3v4aP+rzwT7Z+sY0UOcXz0m8DapJb
	 2VHMQ4vzdKRTIzs6CqkUhhRS9GIrxKAFMY4C+YtbGWj5gKCV1Y1xyVULpPhwbD0OMe
	 O/+BBougAMDGhGofIQ9bSejxi+pTZWXDE0hrQdjckrQfK8ZxJz/FXNY7R5LdnPs0o3
	 8fHuropl7OXGzqLs8eH5HXkNeagi9IrV1Pc7swD62TPWDCyfNwM4t/Zwo1Wvvfe0zl
	 d4bgQbQzbcQDA==
Date: Thu, 12 Feb 2026 13:03:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ze Huang <huang.ze@linux.dev>, Junzhong Pan <panjunzhong@linux.spacemit.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: spacemit: k3: add USB2 PHY support
Message-ID: <20260212-rampant-grinning-deer-1eb7ca@quoll>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
 <20260212-11-k3-usb2-phy-v1-1-43578592405d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260212-11-k3-usb2-phy-v1-1-43578592405d@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265059-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: C142712D41B
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 09:38:54AM +0800, Yixun Lan wrote:
> Introduce a compatible string for the USB2 PHY in SpacemiT K3 SoC. The IP
> of USB2 PHY mostly shares the same functionalities with K1 SoC, while has
> some register layout changes.
> 
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-275621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FX1pA+YQtWlDwAAAu9opvQ
	(envelope-from <devicetree+bounces-275621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:40:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 565F428BF35
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3F853050218
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 07:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CFE296BC8;
	Sat, 14 Mar 2026 07:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOu1zzQe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4B348CFC
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 07:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773474017; cv=none; b=aEm9sy3cZGNv/wvjtvzID3waCWcH6iZ/IceeAo8xzLJA6rRlLBxnUPvQD56ulrXQT9jNJzbr4qtN7Q0/dnWaLTAXPOSeai7fr5mVPGv7UWxoSLtibtcvYGueuUmSOqVfCfrCyBT7KVKhc1GZv5i490JEUOy7UiSQFYBxkFxT+Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773474017; c=relaxed/simple;
	bh=jr47S8Omkd671RmRpwVUVeGq79Jq1P9/cSVeCw/uis8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YAoJF42SwcxN2ybtOoCILY/h7RBubTb7nxSTlvgeI04LbXaTeRkLnHwJkPDbpMx8qt6smIxmfGpK0Ogi1LITxZLrE5Z1L4fACj2zPVsvmUH4T/yRiiPRg9ueLkOcDmdzi4fO1YcStigeyLfIssglWEHqVqOJFVnDeTUAr2mH/OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOu1zzQe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81266C2BCB1
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 07:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773474017;
	bh=jr47S8Omkd671RmRpwVUVeGq79Jq1P9/cSVeCw/uis8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=VOu1zzQe+2Yc0ZFpfntKg/CMWuzKeWujXrmWicC7XhZE0fF/reknaXH1ch7dgAJRX
	 8dKORNHxbrVdXcLjewURgcrue7eJMHWrVug2WvioUOG9/zM8Q8mj0rPDH8iAfszfAo
	 o/r8kjQs3ApJW7CXTwUWADBSH0tCEiexiR7XZ8LHgVfUswprQaZut8lGw/nAlJ9Etn
	 oocTr2M/9+tWHDBkjff62v8eVVXI4Si/WnPQfqlnrAF81chdzxGW4XusBZF4aZz9/S
	 WPJZEs7giLAM3nlSJsQnMOflj+gZzSqKRUNhAXaDnno7lZpQzvHS7sntOBwR6tWRhb
	 KP1P/RcG4lOoA==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5a1273de95aso4193993e87.0
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 00:40:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWuHD3i9PUEIOnu8vw4KFnb02XXn7d3KV5xgHCqCMrZAV6bZKVH/2po5eS3YCvjpb1DWaDO7NuPRqn0@vger.kernel.org
X-Gm-Message-State: AOJu0YxAKm6+pGS16BjEOIw5LsSkE+f3I4uwSKyr9X2qyeUsUasGbpUI
	hIQO3KzCOA1lhIsfNKrFzFpK1EWXa1py8dozhwb5Kt3GesksVRkB4AD+oiKCd1I5w3PJvBFmzfl
	povwLiFhBoAtIQoSOBk8M6qb5+uEJIrE=
X-Received: by 2002:a05:651c:3251:b0:389:fa42:b278 with SMTP id
 38308e7fff4ca-38a896a7e7amr21812631fa.14.1773474015748; Sat, 14 Mar 2026
 00:40:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com> <20260305-b4-pck600-a733-v2-2-ba6bbed7d253@gmail.com>
In-Reply-To: <20260305-b4-pck600-a733-v2-2-ba6bbed7d253@gmail.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 14 Mar 2026 15:40:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v65h4aXPAfZ1KnsxgxwtOmfu0ZKbzHjYoG3auacpoBg57g@mail.gmail.com>
X-Gm-Features: AaiRm50gm5CxKsArz3g0RHJT9DAFqfRxhiIS2xZcN5maI6-RPumGZgYHHPT9O04
Message-ID: <CAGb2v65h4aXPAfZ1KnsxgxwtOmfu0ZKbzHjYoG3auacpoBg57g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pmdomain: sunxi: Add support for A733 to Allwinner
 PCK600 driver
To: Yuanshen Cao <alex.caoys@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275621-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,linaro.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 565F428BF35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 5, 2026 at 11:34=E2=80=AFAM Yuanshen Cao <alex.caoys@gmail.com>=
 wrote:
>
> The Allwinner A733 PCK600, similar to A523 PCK600, is likely a
> customized version of ARM PCK-600 power controller. It shares the same
> BSP driver with A523. According to the BSP provided by Radxa, unlike
> A523, it doesn't require reset, as well as a different pair of delay
> values.
>
> Make reset optional in the sunxi pck600 driver and add support
> for A733.
>
> Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>

Reviewed-by: Chen-Yu Tsai <wens@kernel.org> # matched against BSP driver


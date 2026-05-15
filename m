Return-Path: <devicetree+bounces-298533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJOAKHuFB2rR6wIAu9opvQ
	(envelope-from <devicetree+bounces-298533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 22:43:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E8B55783A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 22:43:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4793030072A4
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 20:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C02D73E2743;
	Fri, 15 May 2026 20:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ab8qBBh3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E04E37B3F2
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 20:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778877812; cv=none; b=QjnKwLfr9dNIKZVr9ZgfNmPU+RioT4mpDbYYcNHfG1RMXqpKlKmyTtRvqiTxJR0CLCC/nV20VznSO2GWC/miYMhaSws5FP0viT7F/q50PRbFRFUe8bpaZ9ZTRBfbC4pUsOCjBAcfFx+0GHG0bMzHmXiaSijbGQLY9SQPrZ1jKQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778877812; c=relaxed/simple;
	bh=fSbkO66drQxDXBEkBWJUSYj6dJyJWqK2hwHpjEhCbbI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Lz5lFj8f6lE03jCWoHqk2EUa5kiW/ISKiNOsYknaRQRfDpz4rIJsH8qLdI2G8uouTvBY+uqkzZQq8kGWs6kBPr7SdwFPcK4XZvn4pT7B4oIuF4IRTLrZIQLoi4GdUtmP8Kucpx8rwSwni5IUmgtpxL6ARqZdJDv5rUGWmXQaHec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ab8qBBh3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13C20C2BCB0;
	Fri, 15 May 2026 20:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778877812;
	bh=fSbkO66drQxDXBEkBWJUSYj6dJyJWqK2hwHpjEhCbbI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Ab8qBBh35lbGb+hJEWLKDYLaQgHIFBB4em2lH7JQSfDDAm+cZfh61A9+/DHFzxWpE
	 bBQWCUnKEhdBWK+EAi4YZ1WZaFkngTzvxf7YOBtnj/X/+gCMq8HaCHJ9X+LaRYwSUk
	 /KcXgv+XDbRJDRmKqrYuujFFyBAWx+8jS2fhHwCJjlJyIA4QeUR6rMNLexRXRkR/u8
	 jHTxqEYvm0rrsartaiWboV/fIvkhzJhiX2/CgatXPUorFLMZEfpjGGNhGoyVnb35n/
	 DsE3ZdqhXZHvNDVTYC00wOT/MMAw2OhhtNYYtboFGjuf/LQOK0F2TxPPRHQGQ3Xk3m
	 JvpKqkrBbwE6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] spi: dt-bindings: tegra: Support IOMMU property for
 Tegra194 QSPI
Reply-To: sashiko-reviews@lists.linux.dev
To: "Aaron Kling via B4 Relay" <devnull+webgeek1234.gmail.com@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-tegra194-qspi-iommu-v1-1-57dfb63cd3d6@gmail.com>
References: <20260515-tegra194-qspi-iommu-v1-1-57dfb63cd3d6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 20:43:31 +0000
Message-Id: <20260515204332.13C20C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 92E8B55783A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298533-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,webgeek1234.gmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrectly allowing the `iommus` property on a device node that=
 uses an external DMA controller.
--

commit 7b9b9a70107dbc216f12066e863bde3029e71a0d
Author: Aaron Kling <webgeek1234@gmail.com>

spi: dt-bindings: tegra: Support IOMMU property for Tegra194 QSPI

This commit updates the Tegra210 QSPI device tree binding to allow the
iommus property for the Tegra194 QSPI compatible string. It states that
this is supported via an external DMA controller.

> spi: dt-bindings: tegra: Support IOMMU property for Tegra194 QSPI
>
> This is supported via an external dma controller

If the Tegra194 QSPI controller uses an external DMA controller, the extern=
al
DMA controller acts as the bus master while the QSPI controller is a periph=
eral
slave. Because the iommus property specifies the IOMMU master interfaces fo=
r a
device that performs direct memory access, does this property belong on the
external DMA controller's node rather than the QSPI controller's node?

> diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.y=
aml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> --- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> +++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> @@ -78,7 +78,9 @@ allOf:
>          compatible:
>            not:
>              contains:
> -              const: nvidia,tegra234-qspi
> +              enum:
> +                - nvidia,tegra194-qspi
> +                - nvidia,tegra234-qspi
>      then:
>        properties:
>          iommus: false

Allowing the iommus property on the QSPI node here appears to misrepresent
the hardware architecture for an external DMA topology. If the operating
system attempts to attach an IOMMU domain to the QSPI device based on
this binding, could the actual DMA transfers fault due to the DMA controller
itself not being mapped?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-tegra194-q=
spi-iommu-v1-0-57dfb63cd3d6@gmail.com?part=3D1


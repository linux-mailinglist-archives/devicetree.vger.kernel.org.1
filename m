Return-Path: <devicetree+bounces-297206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDNME44JBWoeRwIAu9opvQ
	(envelope-from <devicetree+bounces-297206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 01:30:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CCA53BFEC
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 01:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CA873049970
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E48836C9C2;
	Wed, 13 May 2026 23:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3zPuNwv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEC225B09B
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 23:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778715019; cv=none; b=j8tEXHlZ9+Syc4OWIGf7ijN6KxbKBR4lGqrOEINdlS+jWDGShSnZsMAudwYZxMNCjH1WDsCmEZQQjtl8ImWtuoVG2QFrNR4IAc63y9oqI9lyhDDICkuZZELhTKMyiq5KR9DSA4WxMsNTbKnzghSt23dOuHr0surolH3Pb21cH7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778715019; c=relaxed/simple;
	bh=56JO3GUpv3Cra4S9lKjZU5u80IsY0FCBf/wPjtK2L5M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Vmu6YlgkML1p20pSbqV36rHFd7n3GAn71Us82xYPIeiZC3nxBO0SDP8oqjbQohRrTSsVfEE2giNT3LLHdmtMGPXtMN5A5Y23W1phlp36qH9lxpKtcjqzxo7yck4FIAuS2+/MaI5n57rzLiPlAQeHBkfbbWYX0UzZiIzRbloicoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3zPuNwv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2EA1C19425;
	Wed, 13 May 2026 23:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778715019;
	bh=56JO3GUpv3Cra4S9lKjZU5u80IsY0FCBf/wPjtK2L5M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=E3zPuNwvRscpsuaGOdrJJMeX3TAwAOsr02AGqgQq1t1LUj8cdkQp7dQP7UzKqx2G7
	 UeiO9k62tVIUzd3itYt6uYT/LFnZx7IILBjbDG+vYwfK70nLhdBFDXe84wUcjBHsJc
	 YPeZ0E8p+yORdKWPUHLaziAoEya6HC5UWwQEqQZT4v8MY3gYcn3ktfcZFP6DRjRWkg
	 abeAwl5f99pZs0+qok910U765AHre/GaqWbXS4HM+KHbWsafFUHT+crZzeZ6oedC+j
	 pYIDMsk+c1bQT+Q9Qggjt6UFwSDJ9+sny/jLm3GDV6Ad9AotaRH3xV5H4MDB2IC0gY
	 W2CjwqKtwRyjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: fpga: altr,socfpga-fpga-mgr: convert to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manish Baing" <manishbaing2789@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260512165058.64049-1-manishbaing2789@gmail.com>
References: <20260512165058.64049-1-manishbaing2789@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 23:30:12 +0000
Message-Id: <20260513233015.E2EA1C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A2CCA53BFEC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297206-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,get_maintainer.pl:url,devicetree.org:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The 'maintainers' list incorrectly includes Steffen Trumtrar and Ro=
b Herring.
--

commit be1c0ecc6a9857f9aa82bd84bf85fccfa1cb035c
Author: Manish Baing <manishbaing2789@gmail.com>

dt-bindings: fpga: altr,socfpga-fpga-mgr: convert to DT schema

This commit converts the Altera SoCFPGA FPGA Manager bindings from the lega=
cy
text format to a YAML schema.

[ ... ]

> diff --git a/Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr=
.yaml b/Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr.yaml
> new file mode 100644
> index 0000000000000..d09d552dde5e9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fpga/altr,socfpga-fpga-mgr.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/fpga/altr,socfpga-fpga-mgr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera SOCFPGA FPGA Manager
> +
> +maintainers:
> +  - Steffen Trumtrar <s.trumtrar@pengutronix.de>
> +  - Rob Herring <robh@kernel.org>

Are these the intended maintainers for this specific binding?

Steffen Trumtrar does not appear to be the original author of the text
binding, and is not listed in the MAINTAINERS file for the FPGA manager
framework or the Altera SOCFPGA architecture.=20

Additionally, while Rob Herring is the general Devicetree maintainer,
the general guidance is to avoid listing him as the dedicated maintainer
for specific vendor schemas unless he authored them.

Would it be better to list the FPGA subsystem maintainers (such as Moritz
Fischer or Xu Yilun) or the original author of the text binding here so
the get_maintainer.pl script routes queries to the right people?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512165058.6404=
9-1-manishbaing2789@gmail.com?part=3D1


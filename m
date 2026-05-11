Return-Path: <devicetree+bounces-295819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBS1H6dMAmpaqQEAu9opvQ
	(envelope-from <devicetree+bounces-295819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:39:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FE951660A
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:39:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 774B63015736
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B5D84D8DB6;
	Mon, 11 May 2026 21:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCrWvq8r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1941137F72A
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 21:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778535586; cv=none; b=sJJGXveyu4JibbQK6TsIVib9aPMIN2KEpRNUVGvT0fbi4vUQrSPgHVdQgZfiTttQO96x9y+eERHiO4i29XgSpGsU1mm1xuSLWndn/GD6F2ntIQ61VI1A3RLnU3GPeL86+77Q6I2P4lglZgXPUG055Ioiei7FhCiMiXvpATCgKzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778535586; c=relaxed/simple;
	bh=D4EgHDk9xQ0CQSZ9uCqa9IoydiJHS14pOqRBWHOb6xA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=I2F5WBNqXFum5jSRuisubGHaAW8bsSvJVJx0ZZlzlxyL8/6xMm7aR+34C9kJYQ2EoPgUrNQwB5YQegJH/4DZKN0Zn6WUP2LGK+nvXPMH2dsbtRuNuo38/fRor8hD8QSmZKZO9yS1vNEvwqGwQI86vMpywOBNq4mG8skK6iTWIeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCrWvq8r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0B80C2BCB0;
	Mon, 11 May 2026 21:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778535585;
	bh=D4EgHDk9xQ0CQSZ9uCqa9IoydiJHS14pOqRBWHOb6xA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=lCrWvq8rJBwXObFg1u6ZTFms92o/i/uafdytRu+s7aYOSCPgnGx9tQYwjYFC+2Cpz
	 1Ks7Ncslu+km5qf1aOjpF+mQcWRx0MrycMETI4b41LiOP7q6HN3dCVE1bAFMgBRCLQ
	 2Hp+wVriQu4XXKLfM3QvEIBuU/TKlrMamqyGkS1npPPWbkJWFObVEPDrwEC3Xtcx6o
	 adCDpcV9LBvknSQJAiga2dlLar6PgDeds6vGf5pH1NNwbleqD4AxPy/V73DHWyml8E
	 3AgRvbpjQh4QxeSs8WvXMoByLufV3ymuXxBKTHp8PazxvxqJi0gDBeBq6/nCedr5J8
	 zbJJjN4KXMAlw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: misc: add documentation for Xilinx
 AXI-Stream FIFO IP core
Reply-To: sashiko@lists.linux.dev
To: "Kartik Nair" <contact.kartikn@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260510190908.400-1-contact.kartikn@gmail.com>
References: <20260510190908.400-1-contact.kartikn@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 21:39:45 +0000
Message-Id: <20260511213945.A0B80C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E0FE951660A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295819-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The YAML binding schema is incomplete and sets `additionalProperti=
es: false`, which rejects valid device trees and breaks driver probing.
- [Low] The commit introduces a new YAML binding but fails to remove the ex=
isting text-based binding, leading to duplicated and conflicting documentat=
ion.
--

commit a25eb1af928bc942c4ddef43a8d5e91efa619819
Author: Kartik Nair <contact.kartikn@gmail.com>

dt-bindings: misc: add documentation for Xilinx AXI-Stream FIFO IP core

This patch adds device tree binding documentation for the Xilinx AXI-Stream
FIFO IP core. It introduces a new YAML schema to document the compatible
strings used by the axis-fifo driver.

Does this update also need to remove the existing text-based binding at
drivers/staging/axis-fifo/axis-fifo.txt? Keeping the legacy text file
alongside the new YAML schema introduces duplicated and conflicting
documentation.

> diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.ya=
ml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> new file mode 100644
> index 0000000000000..597699034f134
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> @@ -0,0 +1,44 @@
[ ... ]
> +properties:
> +  compatible:
> +    enum:
> +      - xlnx,axi-fifo-mm-s-4.1
> +      - xlnx,axi-fifo-mm-s-4.2
> +      - xlnx,axi-fifo-mm-s-4.3
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1

The drivers/staging/axis-fifo/axis-fifo.c driver requires several vendor
specific properties to probe successfully, such as
xlnx,axi-str-rxd-tdata-width, xlnx,axi-str-txd-tdata-width,
xlnx,rx-fifo-depth, xlnx,tx-fifo-depth, xlnx,use-rx-data, and
xlnx,use-tx-data.

Are these properties missing from the schema?

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false

If the vendor properties are added to the device tree to allow the driver
to probe, won't setting additionalProperties to false cause the schema
validation to fail?

Device trees that pass this strict schema would then fail at runtime since
the driver will abort the probe when the missing properties are not found.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510190908.400-=
1-contact.kartikn@gmail.com?part=3D1


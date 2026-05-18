Return-Path: <devicetree+bounces-299472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKloEnYkC2p5DwUAu9opvQ
	(envelope-from <devicetree+bounces-299472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:38:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D8A56EF9F
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57BE0307FDF3
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E1E1C3BFC;
	Mon, 18 May 2026 14:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeiULzxe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFD93F39F8
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 14:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779114717; cv=none; b=jXET/KPnZgKgwzftbEw/wcEFzcZ4eno7kBxCEoUDJGgICjTX3ya7sLeRU7P8qrLMc8WMAzLK0pfzpiRvfknlX4th/PKLSLbIdGXSHh45njOMU/bg+pIh+biWA+ZOA3bgL/k/lo3uOvoi31KWrbjMlr28VGTyR0KVFG8FrCz6CNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779114717; c=relaxed/simple;
	bh=XapvubZBbeYrAAyjh9gzFPv+lTOc6fUaqaZry4ft/Uo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SeEReEsFxzVfb8X+o/ZUQoifYd8kqxq7IhER+HlGx0dt+f+Ogb+djo7QWRGtdrdX+/4I1ok8l+UbS5f6zbs5BMOjhOz6+XcJZ5xR9kz+I7B+77WMJ9zzvY0dzZJAgQqHDZTGbA5mbv+k3rVoAXBgTHqA+cunNH3gXSP/V49VL6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeiULzxe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F58EC2BCB8;
	Mon, 18 May 2026 14:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779114716;
	bh=XapvubZBbeYrAAyjh9gzFPv+lTOc6fUaqaZry4ft/Uo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=SeiULzxe7DazaQSUhaksY4SsnACoBcp2lYnj0PZeHyOBtak8zsUr+5MqsEfRWi7ME
	 5a60/ooOfIc2Ewq7sEsdAjl31YX4FQmah6V+E2I8NW8iznlMWwd8zMaJHCTGPnYg8U
	 uIdCc3E7ILvaHxr/4wbt6fKIvrjWWDG1+oQoPL91sSfrUeeugh2YU5Ei0Yc6hdOmag
	 UY9GI1pto6IuSeIQ+7dXoAFn/9qI6NZXFuWLNgV+ezW7KoYnasOSl4z1s/mErYcXeE
	 w1/8FASfcPOPs2klcrACtG6+KnYIh17+UpM46S5GYbOfmphavMVIs6HnWczeQyC/XF
	 p27eAq46p312w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: nvmem: airoha: add SMC eFuses
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518142042.8331-2-ansuelsmth@gmail.com>
References: <20260518142042.8331-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 14:31:55 +0000
Message-Id: <20260518143156.4F58EC2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299472-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 96D8A56EF9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `compatible` property enum omits the AN7583 SoC despite the =
commit message claiming support.
- [Medium] The `#address-cells` and `#size-cells` properties are missing fr=
om the `required` list.
--

commit e333b70b463993a4fe3c97641d9aaa8019a4117c
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: nvmem: airoha: add SMC eFuses schema

Add Airoha SMC eFuses schema to document new Airoha SoC AN7581/AN7583
way of accessing the 2 eFuse bank via the SMC command.

> diff --git a/Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.ya=
ml b/Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.yaml
> new file mode 100644
> index 0000000000000..e21ce07c4f411
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.yaml

[ ... ]

> +properties:
> +  compatible:
> +    enum:
> +      - airoha,an7581-efuses

The commit message mentions this schema supports both the AN7581 and AN7583
SoCs. Should airoha,an7583-efuses be included in this enum, or is there a
reason only the AN7581 compatible string is listed?

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0

[ ... ]

> +    required:
> +      - reg
> +
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible

Since the schema defines child nodes (efuse-bank@[0-1]) that use the reg
property, should #address-cells and #size-cells be added to this required
list to ensure the device tree is structurally valid?

> +
> +additionalProperties: false

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518142042.8331=
-1-ansuelsmth@gmail.com?part=3D1


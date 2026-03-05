Return-Path: <devicetree+bounces-271340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCnyA1P7qGnVzwAAu9opvQ
	(envelope-from <devicetree+bounces-271340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:41:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A333B20AA19
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:41:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECB36304CCE2
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21B8D26B77D;
	Thu,  5 Mar 2026 03:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKKrvh/v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFE1189B84;
	Thu,  5 Mar 2026 03:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772681840; cv=none; b=WRrlbtQ44Kgpe9OvkxS9yH2lJWmaB12MK9YbcmFNH5F884KSshhiAAGiesNEhJ5PU+Pw0ES3xwHHz2UmLcwYeTOgvCk/Hq/TgKMROMsQKbF6y8d51hPibWI8zbcw/f5clC9SiYTf7CRdW27BWNEtYSPindW7g7HH0+SYI6+HkQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772681840; c=relaxed/simple;
	bh=4CChaQiwX+2W8fCaoWno/DcM/mSm9HaXiOce0Px9PGY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=A+4LjW+y7QIeytKKjOkPeTKOMHOPJhO/AfSsMEii3vpoZY8cuPRJZd/WKs+eRkQ8zA1CZ3r3LuH1Mr2oJy0qE0MZfz1NtRnIktzsOMjGmO+GMu7eKGXBaA2YIcyfMNgULvK6X6/cdKtEXXBFdpdUbi8PLXEP9yOw5vtgWEGcpw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKKrvh/v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04E2AC116C6;
	Thu,  5 Mar 2026 03:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772681839;
	bh=4CChaQiwX+2W8fCaoWno/DcM/mSm9HaXiOce0Px9PGY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QKKrvh/vwUqdQ7CABCR64QJ6mNeP341xSZOGi2IP7zyqEpzWlS//ncythdDmn7/Cj
	 91G4MUWMCsL+7ZK37AWXtVeesAzbduu/9Sf0aPagC3ZJT2z419gN6eJ7k5pEB2f1L1
	 MHlBXF/sHvpKYla1Or3hRoJXGllqTzwd8vu87vP+hcno16YsjRN41yKIx/2VCvBzBo
	 buE8tWz7v8RG35IGx5m3jtD86WjoFTJ2R2k24fhRq2yCIPmiHT61IDMfYpMBKcXGLj
	 Tjb/77k1PD3EJq6p8uq+sDwVI/4KzrJBvj/1sRXxrESet1XMXTjyZ45H1sOmk1OrHs
	 dAI51fgyU+KYQ==
Date: Wed, 04 Mar 2026 21:37:17 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Bayi Cheng <bayi.cheng@mediatek.com>, 
 linux-arm-kernel@lists.infradead.org, 
 Project_Global_Chrome_Upstream_Group@mediatek.com, 
 vince-wl.liu@mediatek.com, Mark Brown <broonie@kernel.org>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 sirius.wang@mediatek.com, linux-spi@vger.kernel.org, 
 Chuanhong Guo <gch981213@gmail.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 linux-mediatek@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 jh.hsu@mediatek.com
To: Meiker Gao <ot_meiker.gao@mediatek.com>
In-Reply-To: <20260305022740.2334033-1-ot_meiker.gao@mediatek.com>
References: <20260305022740.2334033-1-ot_meiker.gao@mediatek.com>
Message-Id: <177268183719.3308732.11684734825825109153.robh@kernel.org>
Subject: Re: [PATCH] spi: dt-bindings: mediatek,spi-mtk-nor: Add clock
 bindings for mt8189
X-Rspamd-Queue-Id: A333B20AA19
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271340-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[mediatek.com,lists.infradead.org,kernel.org,vger.kernel.org,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Action: no action


On Thu, 05 Mar 2026 10:27:36 +0800, Meiker Gao wrote:
> Update mediatek,spi-mtk-nor.yaml to add conditional clock and
> clock-names bindings for the mt8189-nor platform. The mt8189-nor
> controller requires five specific clocks and corresponding clock-names
> ("spi", "sf", "axi_f", "axi_h", "axi_p"). This change enforces these
> requirements in the device tree binding schema.
> 
> For other platforms, the minimum number of clocks and clock-names
> remains unchanged. The patch also adds an example for mt8189-nor,
> illustrating the new clock configuration.
> 
> This update ensures correct hardware description and validation for
> mt8189-nor, improving compatibility and reducing configuration errors.
> 
> Signed-off-by: Meiker Gao <ot_meiker.gao@mediatek.com>
> 
> ---
>  .../bindings/spi/mediatek,spi-mtk-nor.yaml    | 78 ++++++++++++++++---
>  1 file changed, 68 insertions(+), 10 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml:20:1: [warning] too many blank lines (2 > 1) (empty-lines)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml: allOf:1:else:properties:clock-names: {'minItems': 2, 'maxItems': 2, 'items': [{'const': 'spi'}, {'const': 'sf'}, {'const': 'axi'}, {'const': 'axi_s'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml: allOf:1:then:properties:clock-names: {'minItems': 5, 'maxItems': 5, 'items': [{'const': 'spi'}, {'const': 'sf'}, {'const': 'axi_f'}, {'const': 'axi_h'}, {'const': 'axi_p'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml: allOf:1:then:properties:clock-names: 'oneOf' conditional failed, one must be fixed:
	False schema does not allow 5
	[{'const': 'spi'}, {'const': 'sf'}, {'const': 'axi_f'}, {'const': 'axi_h'}, {'const': 'axi_p'}] is too long
	[{'const': 'spi'}, {'const': 'sf'}, {'const': 'axi_f'}, {'const': 'axi_h'}, {'const': 'axi_p'}] is too short
	1 was expected
	5 is greater than the maximum of 2
	5 is greater than the maximum of 3
	5 is greater than the maximum of 4
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml
Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.example.dts:69:18: fatal error: dt-bindings/clock/mt8189-clk.h: No such file or directory
   69 |         #include <dt-bindings/clock/mt8189-clk.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.dtbs:140: Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1597: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260305022740.2334033-1-ot_meiker.gao@mediatek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



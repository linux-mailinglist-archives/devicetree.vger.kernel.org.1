Return-Path: <devicetree+bounces-295051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 614bCkJTAGpMGQEAu9opvQ
	(envelope-from <devicetree+bounces-295051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 11:43:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8853E503613
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 11:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51B733009993
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 09:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46432378D70;
	Sun, 10 May 2026 09:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RksC4Wy4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F8B14F70;
	Sun, 10 May 2026 09:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778406207; cv=none; b=IeFA8PX/Vqh3Y9+KOc2p1wrGUjQpaiVJrImjrjhsx/ZJWPPN3lPzlbWJBWngVfa0BDsuax7CpUDetpElsWWQ+rWEWlltL80HceC7XIPQiK9P7siqUrK7DdJWZAaMhN+TOlcPbHC4SUgDma9Rj+cHFRSj/5QiFiCoU6+/wyPT+S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778406207; c=relaxed/simple;
	bh=6T9RsFee+35Fv3yUGgy8bpfXlTZX9qPRAI1Cl6GHMRY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=hA2LqP+B7gc4jZg97o7vBmMqAo2cEZ9dOXOLN/GJakWZvj5YPcKxDDzDTi1ygClgekmSgBaI/p3OHamYRf3SxbkP+qU1nlGUSoy+2F1RTexARBMPMz9Zd4Kiao6Dnb9jXaRuf4vzG1NfYZLgVtfuWj8GSrYVwyuMRaIXiklv+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RksC4Wy4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10737C2BCB8;
	Sun, 10 May 2026 09:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778406206;
	bh=6T9RsFee+35Fv3yUGgy8bpfXlTZX9qPRAI1Cl6GHMRY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=RksC4Wy4vawWBsBaSUB+WX9R5ImpO4RiREThlI1AArrJ+mjLTDmH7c6OgHs/t2fu5
	 1+uJTuhUnvpy2P0CNTSNrb2Hbz6quVKmPzXrRvHDJu7IBEnka38ruQiEf6fgBRTZmf
	 wFTazFwgJbly/IJywhqoTVhChZPHiTUYBqJWxX8bJ9Ei0U7DZo3NXe5Aix/khXKdrH
	 2Ll+Ic2gF1NJdIMj9FtIQ5/FOadRYNfGKukgkReQ9CfkHTmOe/r+s8EVOjvkPEKEql
	 8DkYOxkdO9EXVfePyutFgpl4SFCCYaj6FYEuxgeQqGhrw+Vm553quOrN2gESXDNulK
	 lGbLmgC4vdrpw==
Date: Sun, 10 May 2026 04:43:24 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Michal Simek <michal.simek@amd.com>, Andy Shevchenko <andy@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 devicetree@vger.kernel.org, =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 linux-iio@vger.kernel.org
To: Pramod Maurya <pramod.nexgen@gmail.com>
In-Reply-To: <20260510083219.70224-1-pramod.nexgen@gmail.com>
References: <20260510083219.70224-1-pramod.nexgen@gmail.com>
Message-Id: <177840620410.2231152.2719293513543946236.robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: iio: adc: Convert xilinx-xadc bindings
 to YAML schema
X-Rspamd-Queue-Id: 8853E503613
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295051-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,a:email]
X-Rspamd-Action: no action


On Sun, 10 May 2026 04:32:13 -0400, Pramod Maurya wrote:
> Convert the Xilinx XADC and UltraScale System Monitor device tree binding
> from the legacy plain-text format to a YAML schema, enabling automated
> validation with dt-schema.
> 
> The new binding covers the same hardware and compatible strings:
>   - xlnx,zynq-xadc-1.00.a (ZYNQ hardmacro)
>   - xlnx,axi-xadc-1.00.a  (AXI softmacro)
>   - xlnx,system-management-wiz-1.3 (UltraScale System Management Wizard)
> 
> Signed-off-by: Pramod Maurya <pramod.nexgen@gmail.com>
> ---
> Changes in v3:
> - Move xlnx,channels from properties: to patternProperties: to satisfy
>   vendor-props.yaml meta-schema, which requires vendor-prefixed entries
>   in properties: to be type: boolean; xlnx,channels is a subnode (object)
>   so it belongs in patternProperties:
> 
> Changes in v2:
> - Fix patternProperties regex to use lowercase hex unit addresses
>   (channel@a through channel@f) instead of decimal; correct range
>   is now "^channel@([0-9a-f]|10)$"
> - Add allOf/if/then conditional to enforce xlnx,external-mux-channel
>   is required when xlnx,external-mux is "single" or "dual"
> 
>  .../bindings/iio/adc/xilinx-xadc.txt          | 141 ------------
>  .../bindings/iio/adc/xlnx,xadc.yaml           | 205 ++++++++++++++++++
>  MAINTAINERS                                   |   7 +
>  3 files changed, 212 insertions(+), 141 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/xilinx-xadc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/xlnx,xadc.yaml: patternProperties: '^xlnx,channels$' should not be valid under {'pattern': '^\\^[a-zA-Z0-9,\\-._#@]+\\$$'}
	hint: Fixed strings belong in 'properties', not 'patternProperties'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260510083219.70224-1-pramod.nexgen@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



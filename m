Return-Path: <devicetree+bounces-316853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q5nvObg+Qmpw2gkAu9opvQ
	(envelope-from <devicetree+bounces-316853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:45:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC2B6D865C
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:45:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Sw7wKvlL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316853-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316853-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E028300D54F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC91A3769EF;
	Mon, 29 Jun 2026 09:25:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80C5309EF9;
	Mon, 29 Jun 2026 09:25:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782725104; cv=none; b=UTrrBi01+LSpdyvee4Y7OTAXwvH7jKCMrKeU5ewfpvOsHKotRR94jZepzlEyGsZirE+1Yc7DS9IpGsIXMMehERHt5XqrU6R2Jokz+e5b0fIfhhWjtHMT4cY4W5Iaz7AQqyExHBvDgHnUAPL1qsGn0nNnKE2twYcBbAsQ2b+HTbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782725104; c=relaxed/simple;
	bh=KCcf0qFlEh/XVLoI0a2Gd9TZIqeugHqyyd+6Kud2mgI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=hlMxINLB96x8XkyjnckSUEeEjTBSPBoTIhFUFdSiOo0PmqKH3bokNtMRD7EG1y5h8x0RNY0NwKlU9MpHq9NsUMsuT/oYjcxk+D7Q0c1t2Lgx0PwwWs8aUKcbDq1PbRNXMVuHKy4YEWhbKwZs19DbKe3zb9QpfyxbVWXHvL9r8mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sw7wKvlL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40ADF1F000E9;
	Mon, 29 Jun 2026 09:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782725103;
	bh=BvoBxDaYcxAyprGRisWh5uNQejdq5Yph7yMgOQ/rysE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=Sw7wKvlLu0TQrgS+9IhOHufpEfsY4J0es1JGOsIvejwypUNwzzY/4mdIhpuLqb7vU
	 fHor2wITvy9smgvb4mnHTsHqSJp7ujrNqwPfiudbJibgTX9MsS+isx9N2n8hu5JrGi
	 CGHnIV3if9NBrg0Wirioju4ZHVL8O6+hg2sCKYC9d64EJ0b3oAcb/9ltB1IFms0J9z
	 1w3R5DKqiL6dE7yyxByXIWvHK9GAWgmsyQXqrHxG0njGkP3KnIHiuYtTOXJDkwU+hf
	 2Abmm5fCXFh7N/Wg4jWZNTgW761FjTuUwTbbhMng2u77D7N0aUyOxz/VLpjBLTSVkF
	 UJfyY36kk2XGg==
Date: Mon, 29 Jun 2026 04:25:02 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, festevam@gmail.com, imx@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 krzk+dt@kernel.org, kernel@pengutronix.de, Frank.Li@nxp.com, 
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org
To: chancel.liu@oss.nxp.com
In-Reply-To: <20260629074734.3643227-2-chancel.liu@oss.nxp.com>
References: <20260629074734.3643227-1-chancel.liu@oss.nxp.com>
 <20260629074734.3643227-2-chancel.liu@oss.nxp.com>
Message-Id: <178272510234.1491191.9572770485267787597.robh@kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: connector: Add fsl,aud-io-slot
 binding
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org,pengutronix.de,nxp.com];
	TAGGED_FROM(0.00)[bounces-316853-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:festevam@gmail.com,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk+dt@kernel.org,m:kernel@pengutronix.de,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:linux-kernel@vger.kernel.org,m:chancel.liu@oss.nxp.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,nxp.com:url,nxp.com:email,vger.kernel.org:from_smtp,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DEC2B6D865C


On Mon, 29 Jun 2026 16:47:31 +0900, chancel.liu@oss.nxp.com wrote:
> From: Chancel Liu <chancel.liu@nxp.com>
> 
> The NXP AUD-IO slot represents a physically present I/O connector on
> the base board. It acts as a nexus that exposes a constrained set of
> I/O resources, such as GPIOs, clocks and interrupts, through fixed
> electrical wiring. All actual hardware providers reside on the base
> board. The connector node only defines index-based mappings to those
> providers.
> 
> This connector type is present on i.MX95 19x19 EVK and i.MX952 EVK,
> where it is used to attach the IMX-AUD-IO audio expansion card[1]. The
> same add-on board can be reused across different base boards that carry
> this connector.
> 
> [1]https://www.nxp.com/part/IMX-AUD-IO
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>
> ---
>  .../bindings/connector/fsl,aud-io-slot.yaml   | 113 ++++++++++++++++++
>  1 file changed, 113 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml: clock-map: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml: clock-map-mask: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml: clock-map-pass-thru: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml: Unresolvable reference: /schemas/clock/clock-nexus-node.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.example.dtb: connector (fsl,imx95-19x19-evk-aud-io): False schema does not allow {'compatible': ['fsl,imx95-19x19-evk-aud-io'], 'gpio-controller': True, '#gpio-cells': 2, 'gpio-map': [[0, 0, 4294967295, 8, 1]], 'gpio-map-mask': [65535, 0], 'gpio-map-pass-thru': [0, 1], '#clock-cells': 1, 'clock-map': [0, 4294967295, 1], 'clock-map-mask': [255], '#address-cells': 0, 'interrupt-controller': True, '#interrupt-cells': 2, 'interrupt-map-mask': [65535, 0], 'interrupt-map': [[0, 0, 4294967295, 27, 8]], '$nodename': ['connector']}
	from schema $id: http://devicetree.org/schemas/connector/fsl,aud-io-slot.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260629074734.3643227-2-chancel.liu@oss.nxp.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



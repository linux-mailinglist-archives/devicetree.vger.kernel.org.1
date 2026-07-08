Return-Path: <devicetree+bounces-322639-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o6qUCZATTmqJCgIAu9opvQ
	(envelope-from <devicetree+bounces-322639-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:08:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E755C72377C
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:08:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=g0gssUXp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322639-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322639-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F14F73012CFC
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 09:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4782B4071CE;
	Wed,  8 Jul 2026 09:06:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087AF3E63B7;
	Wed,  8 Jul 2026 09:06:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783501564; cv=none; b=TXigLJcy8zxsaNHURBOHJz8ijqkesHpmO/YPFG1X1z9zshe8L07meFhPMwaHH36nb/MU/46tTwsjjplTono5STYJDXg7RIK0IiqsMZctySuF7jcxixwI8qbbMuDP+Xq0ZV+FJCSzhAFLJgHkPGmqSo0AMuiXmJ8WkSF+3gYBb1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783501564; c=relaxed/simple;
	bh=PoUJnzPX4dOmxMBSKZmCYJ6F3rHOxpsYaFkQlf3IC8A=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=UpNV0VVb2wCcVlpF2WCX905s7lR0cHVwwUpa75NqgInyobDcFAwpcXMUFV/KVo9+2H9YgBj2FNllGqI489S6kOvOhVllyKmxzutA2A/KK/YgIbDXVqRGLGo1yc6akweTssaRPdev0bfQCWH+irRHchuVG5xFa44YksaewdiC/nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0gssUXp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C23811F00A3A;
	Wed,  8 Jul 2026 09:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783501562;
	bh=X8nQPHPZF9ibSe2QeM2g0Ll1JIPfuYfJWJiXYgzvRV0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=g0gssUXp7OyJJqvrtvPi4K+Z9iWCxIGmlPRlBsE+BlGzJEKnSLO2YNOpGTb9E5UZt
	 6wEDiSxrXYjYpeFK+edzadnyt5XU07XyGOWBiayOatzAFKOjd7+hRrR0wyXOYXAqQJ
	 eHlJAsexKCot+mTBw46/eGNT0bE4GEYUAGIGmebt+bXXuCnJ/lT6lJFjiDL+TojMGi
	 qRg7nwhxaOeLPZALfaOKDw2hFvAVDM5H5jvLoNOnjdAub40crtxFoK820s5YmVpGMl
	 G6HriwohKaO+vW4Pa8Df8fc+/CvYPIg2vI7Fc/Iy/HnHFFD1VaHzZz5pWVwfG2QGIf
	 sITPE3MI8XTag==
Date: Wed, 08 Jul 2026 04:06:02 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, monstr@monstr.eu, 
 linux-kernel@vger.kernel.org, Brian Masney <bmasney@redhat.com>, 
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>, 
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
 kishore Manne <nava.kishore.manne@amd.com>, git@amd.com, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Michal Simek <michal.simek@amd.com>
In-Reply-To: <f6fc3f65475888cd5726e3f2795a110e9f7a79c3.1783495122.git.michal.simek@amd.com>
References: <cover.1783495122.git.michal.simek@amd.com>
 <f6fc3f65475888cd5726e3f2795a110e9f7a79c3.1783495122.git.michal.simek@amd.com>
Message-Id: <178350156210.1961721.11862849242704458553.robh@kernel.org>
Subject: Re: [PATCH v4 3/5] dt-bindings: clock: Move xlnx,zynqmp-clk to its
 own schema
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322639-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:conor.dooley@microchip.com,m:monstr@monstr.eu,m:linux-kernel@vger.kernel.org,m:bmasney@redhat.com,m:linux-clk@vger.kernel.org,m:mturquette@baylibre.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:sboyd@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:nava.kishore.manne@amd.com,m:git@amd.com,m:krzk+dt@kernel.org,m:michal.simek@amd.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,amd.com:email,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E755C72377C


On Wed, 08 Jul 2026 09:18:50 +0200, Michal Simek wrote:
> The ZynqMP clock controller binding shares only #clock-cells with the
> Versal bindings. Move it to a dedicated xlnx,zynqmp-clk.yaml schema.
> Also remove "(Optional clock)" from clock description because it is visible
> from schema itself.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> 
> Changes in v4:
> - Update regex from previous patch
> 
> Changes in v3:
> - Cover change in zynqmp-firmware.yaml
> - Move clock-cells to be the last in the example
> - Remove comment around (Optional clock) which is obvious from schema
>   itself
> 
> Changes in v2:
> - New patch in series
> - Split zynqmp-clk from versal-clk
> 
>  .../bindings/clock/xlnx,versal-clk.yaml       | 50 +-------------
>  .../bindings/clock/xlnx,zynqmp-clk.yaml       | 68 +++++++++++++++++++
>  .../firmware/xilinx/xlnx,zynqmp-firmware.yaml |  7 +-
>  3 files changed, 76 insertions(+), 49 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/xlnx,versal-clk.example.dtb: zynqmp-firmware (xlnx,zynqmp-firmware): clock-controller:clock-names:0: 'pss_ref_clk' was expected
	from schema $id: http://devicetree.org/schemas/firmware/xilinx/xlnx,zynqmp-firmware.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/xlnx,versal-clk.example.dtb: zynqmp-firmware (xlnx,zynqmp-firmware): clock-controller:clock-names:1: 'video_clk' was expected
	from schema $id: http://devicetree.org/schemas/firmware/xilinx/xlnx,zynqmp-firmware.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/xlnx,versal-clk.example.dtb: zynqmp-firmware (xlnx,zynqmp-firmware): clock-controller:clock-names: ['ref', 'pl_alt_ref'] is too short
	from schema $id: http://devicetree.org/schemas/firmware/xilinx/xlnx,zynqmp-firmware.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/xlnx,versal-clk.example.dtb: zynqmp-firmware (xlnx,zynqmp-firmware): clock-controller:clocks: [[4294967295], [4294967295]] is too short
	from schema $id: http://devicetree.org/schemas/firmware/xilinx/xlnx,zynqmp-firmware.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/xlnx,versal-clk.example.dtb: zynqmp-firmware (xlnx,zynqmp-firmware): clock-controller:compatible:0: 'xlnx,zynqmp-clk' was expected
	from schema $id: http://devicetree.org/schemas/firmware/xilinx/xlnx,zynqmp-firmware.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/f6fc3f65475888cd5726e3f2795a110e9f7a79c3.1783495122.git.michal.simek@amd.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



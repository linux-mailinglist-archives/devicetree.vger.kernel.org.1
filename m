Return-Path: <devicetree+bounces-306916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DfFmOxqQIWrLIwEAu9opvQ
	(envelope-from <devicetree+bounces-306916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:47:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A368C64107A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:47:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EIDJZA7l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306916-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306916-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5355C30EF644
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 14:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF3331F9AB;
	Thu,  4 Jun 2026 14:37:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49186421A0A;
	Thu,  4 Jun 2026 14:37:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780583868; cv=none; b=gZgboCh9PnklSj2XccEMHsyyKw8aolxNGwVjPUEOyohObW16o1k3sx0XyzVr8MP6uIzQtUl5Gh/hNvdnBhYPBgBBPUV67pdbWtAxRkyMHKf3KOHz9CrtKwNX1kTODSluPD0mIGTZnGBngf/t81BM4cMsJmr6UTUSItqk1oEvILA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780583868; c=relaxed/simple;
	bh=6rpNKwEWirGe4zw+hchD5zm3isud23TmbdZq31HbjmM=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=cniRYFZu77/4H9JoXa6bKKeYnpEZdvRNHy9QW/OhGvdVJ33fv85GO9ZGVToceQX7TyvmDZe860+sNMXh4qwIcq+GBn3dSCaphbSmnzBQcePT24/9u7CKf0Pm33Oq7eHZR+2t6mGEwvTq/te/o7oZhgDcg4HNhXlOeUqm1kBvdvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIDJZA7l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 025C71F00893;
	Thu,  4 Jun 2026 14:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780583867;
	bh=mal6PLuH3+nCvKz9UQzGUlPZGIlcU127254AslQXThs=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=EIDJZA7lhILwNwkAQHRsNjfTAyGJnS8RFeIloHAhu9e9nLvQFQg6/XYzwesm69vmp
	 dNxxSSERpa4pBzk0Zps2J8GPPXezylj4oAJ0Qxrit8HDwjMcxZ8WGzmPDfiJZ/Kqtb
	 r3ncursllB8gI5iEporMtawRMTt7bXySi2PxzQJdnCwWLI88QuyqHzfryHr/q0ReTC
	 tQSemYO1l+26xYQAFhuEgB1H9S905su9ravfK9TF7G0kdh0G7KVUKiJBUSiZ6UL731
	 0LXBg1Z2UHW3gXvafyq7byeOcIwxgP7mK+ajztbzFVf26hdlPsm4lFcNR7+z29DWip
	 PV0bobrlR6fjg==
Date: Thu, 04 Jun 2026 09:37:46 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, shihpei_hsu@novatek.com.tw, conor+dt@kernel.org, 
 toby_chui@novatek.com.tw, devicetree@vger.kernel.org, 
 ben_huang@novatek.com.tw, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, andi.shyti@kernel.org
To: SP_ISW1_AT@novatek.com.tw
In-Reply-To: <20260604060430.355733-1-SP_ISW1_AT@novatek.com.tw>
References: <20260604060411.355675-1-SP_ISW1_AT@novatek.com.tw>
 <20260604060430.355733-1-SP_ISW1_AT@novatek.com.tw>
Message-Id: <178058386530.470828.9428918291987591263.robh@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: i2c: add Novatek NT726xx SoC i2c
 controller
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306916-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk+dt@kernel.org,m:shihpei_hsu@novatek.com.tw,m:conor+dt@kernel.org,m:toby_chui@novatek.com.tw,m:devicetree@vger.kernel.org,m:ben_huang@novatek.com.tw,m:linux-i2c@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andi.shyti@kernel.org,m:SP_ISW1_AT@novatek.com.tw,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A368C64107A


On Thu, 04 Jun 2026 14:04:30 +0800, SP_ISW1_AT@novatek.com.tw wrote:
> From: Ben Huang <Ben_Huang@novatek.com.tw>
> 
> Add device tree documentation for Novatek NT726xx SoC i2c controller.
> 
> Signed-off-by: Ben Huang <Ben_Huang@novatek.com.tw>
> ---
>  .../bindings/i2c/novatek,nt726xx-i2c.yaml     | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.yaml: nvt,hwmods: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.yaml: bus-enable: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.yaml: properties:clock-frequency: 'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	from schema $id: http://devicetree.org/meta-schemas/cell.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260604060430.355733-1-SP_ISW1_AT@novatek.com.tw

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



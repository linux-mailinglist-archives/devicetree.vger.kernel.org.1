Return-Path: <devicetree+bounces-260341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CODiBx/yeWnT1AEAu9opvQ
	(envelope-from <devicetree+bounces-260341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:25:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E1A04B0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D9A03039EC0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51D033FE0A;
	Wed, 28 Jan 2026 11:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVGC1dS4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C8B3314AE;
	Wed, 28 Jan 2026 11:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599356; cv=none; b=iHIhGHb+B1T4TZ/xiArTTJXtvsDis58tECfidB2LIVK2QB8BeTWzRrjGEKxAn2/q8DZz+TzAuxUVwS46zhZc80y2b5S+mZLqZrsN5juQN1truqMvqNUYLfavJS5n1cGJI0Xf1cQeXH6+GIEgBhj8tAEvBBaAt0JNFHmfGJtiiTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599356; c=relaxed/simple;
	bh=SNl3JdvfWmRGGK6KLY9mNIhIDAZMrCCfZgN9ekGju9A=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=ME+X+C+0uhP9iHqI8LfDrkoo6YPyvHcP31vdRE7We6SvtcaMWOBH7dnGCqgw4++OkAeyHG0TTaztBESEcG7dfdr4FRQsWQU9QLuA9IFP3zbz6lNVAyZ+iEGR8/OfhkqVRfd0sCSCn3sHdLnoQ0WWG2vs2IKqjH5g+uczCIrBPNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVGC1dS4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20287C4CEF1;
	Wed, 28 Jan 2026 11:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769599356;
	bh=SNl3JdvfWmRGGK6KLY9mNIhIDAZMrCCfZgN9ekGju9A=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=tVGC1dS4tJKiMtblu4E4K4bzGaKfN2CbtvcisX7n9PrkxaN+lSxPUFpErR0UAMs9l
	 1twOazGt9wVkZshFU/9KMWwYmL509JVFotH2hKrX9CDnGeJ9V7ZZ1ljRll1mwqDygU
	 uTtJN38dCZe45GT+eRPMu+wLx+fBP1t2z+hKOB0Z610jAW4Zf24GYrThCYzb8Vu7Ix
	 25Q6Lqqx2RZE3sDk2eMmILhcv3jmM+QjoRyIfqGTMDRAqyg9aD7PBz1cILLq9nn/M9
	 ktmrvDTux3bKQcEOmNqUuTh92Arqfncyuh/oKJgDx2P0Gq72CBYgksY2v0POnD9GPo
	 QkSLTWP09cx7w==
Date: Wed, 28 Jan 2026 05:22:35 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: cix-kernel-upstream@cixtech.com, devicetree@vger.kernel.org, 
 krzk+dt@kernel.org, p.zabel@pengutronix.de, peter.chen@cixtech.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 lee@kernel.org, conor+dt@kernel.org
To: Gary Yang <gary.yang@cixtech.com>
In-Reply-To: <20260128093611.1932770-2-gary.yang@cixtech.com>
References: <20260128093611.1932770-1-gary.yang@cixtech.com>
 <20260128093611.1932770-2-gary.yang@cixtech.com>
Message-Id: <176959935538.776071.11378547409870368509.robh@kernel.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: add sky1 reset controller
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260341-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cixtech.com:email]
X-Rspamd-Queue-Id: 932E1A04B0
X-Rspamd-Action: no action


On Wed, 28 Jan 2026 17:36:09 +0800, Gary Yang wrote:
> There are two reset controllers on Cix sky1 Soc.
> One is located in S0 domain, and the other is located
> in S0 and S5 domain.
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> Link: https://lore.kernel.org/r/20251124063235.952136-2-gary.yang@cixtech.com
> Signed-off-by: Peter Chen <peter.chen@cixtech.com>
> ---
>  .../devicetree/bindings/mfd/syscon.yaml       |   7 +
>  .../bindings/reset/cix,sky1-rst.yaml          |  46 +++++
>  .../soc/cix/cix,sky1-system-controller.yaml   |  48 +++++
>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
>  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
>  5 files changed, 307 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: ignoring, error in schema: properties: compatible: oneOf: 0: contains
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: properties:compatible:oneOf:0:contains: [{'enum': ['cix,sky1-system-controller', 'cix,sky1-s5-system-controller']}, {'const': 'syscon'}, {'const': 'simple-mfd'}] is not of type 'object', 'boolean'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: properties:compatible:oneOf:0:contains: [{'enum': ['cix,sky1-system-controller', 'cix,sky1-s5-system-controller']}, {'const': 'syscon'}, {'const': 'simple-mfd'}] is not of type 'object', 'boolean'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: properties:compatible:oneOf:0:contains: [{'enum': ['cix,sky1-system-controller', 'cix,sky1-s5-system-controller']}, {'const': 'syscon'}, {'const': 'simple-mfd'}] is not of type 'object', 'boolean'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: properties:compatible:oneOf:0:contains: [{'enum': ['cix,sky1-system-controller', 'cix,sky1-s5-system-controller']}, {'const': 'syscon'}, {'const': 'simple-mfd'}] is not of type 'object', 'boolean'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: properties:compatible:oneOf:0:contains: [{'enum': ['cix,sky1-system-controller', 'cix,sky1-s5-system-controller']}, {'const': 'syscon'}, {'const': 'simple-mfd'}] is not of type 'object', 'boolean'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: properties:compatible:oneOf:0:contains: [{'enum': ['cix,sky1-system-controller', 'cix,sky1-s5-system-controller']}, {'const': 'syscon'}, {'const': 'simple-mfd'}] is not of type 'object', 'boolean'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml: properties:compatible:oneOf:0:contains: [{'enum': ['cix,sky1-system-controller', 'cix,sky1-s5-system-controller']}, {'const': 'syscon'}, {'const': 'simple-mfd'}] is not of type 'object', 'boolean'
Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 8, in <module>
    sys.exit(main())
             ~~~~^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/doc_validate.py", line 66, in main
    ret |= check_doc(f)
           ~~~~~~~~~^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/doc_validate.py", line 37, in check_doc
    dtsch.check_schema_refs()
    ~~~~~~~~~~~~~~~~~~~~~~~^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 241, in check_schema_refs
    self._check_schema_refs(resolver, self)
    ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 212, in _check_schema_refs
    self._check_schema_refs(resolver, v, parent=k, is_common=is_common,
    ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                            has_constraint=has_constraint)
                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 216, in _check_schema_refs
    self._check_schema_refs(resolver, schema[i], parent=parent, is_common=is_common,
    ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                            has_constraint=has_constraint)
                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 203, in _check_schema_refs
    ref_sch = resolver.lookup(schema['$ref']).contents
              ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 682, in lookup
    retrieved = self._registry.get_or_retrieve(uri)
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 422, in get_or_retrieve
    registry = self.crawl()
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 500, in crawl
    id = resource.id()
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 231, in id
    id = self._specification.id_of(self.contents)
  File "/usr/local/lib/python3.13/dist-packages/referencing/jsonschema.py", line 50, in _dollar_id
    return contents.get("$id")
           ^^^^^^^^^^^^
AttributeError: 'list' object has no attribute 'get'

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260128093611.1932770-2-gary.yang@cixtech.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



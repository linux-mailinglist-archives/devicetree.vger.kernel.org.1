Return-Path: <devicetree+bounces-318821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zf/xHEhHRWrW9woAu9opvQ
	(envelope-from <devicetree+bounces-318821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 18:58:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D76856F0127
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 18:58:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=foSZak7+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318821-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318821-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41F823016B9C
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 16:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D76C36C9D5;
	Wed,  1 Jul 2026 16:53:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04B074C14;
	Wed,  1 Jul 2026 16:53:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782924815; cv=none; b=fl3B1pgK39MZv1bfMn+AQ/AFJZ0qajtpJ3NfPqFYPSPvek5boeDdgQhpErBElB5pnEHLH7UsjIoa+ka3FP91gBRClqOMK7QnQHewXy2z9wottU0BPClKhf/oK5ZGwLIX9+8aQoIdXH0muZI6DpyJlUU7e5s8NEHPdtb0H0fF+8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782924815; c=relaxed/simple;
	bh=F3uHPVS1XECBg+1FJgBsfQzbfVfb5e4T+gqzbMq2A5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Da5ZrtDVOhZT8t0BLc+lIjnc4fcY1ltVHnn4PCVrou2sIOnbJbDlYHFiKcEHpnhZTMQ6lpHnEGOcPWTayKaPEjkMdzp+T3Tpr4YE8YxNBeDWA/Y1woGx2KDfEebwhNjSM0RbaGaNYzvnkF/IS8Xi+9BWTkB/3fgwRFKnzEvfMtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=foSZak7+; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782924811;
	bh=F3uHPVS1XECBg+1FJgBsfQzbfVfb5e4T+gqzbMq2A5Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=foSZak7+BxtLEwRYgivu+0IOUXwZ3OQ04aj+NCtX/mR7oZk0d2+9TLw6JHLv9hqvH
	 gD+XAmcBQwF9Oo0c9klBThjh/SCCPAsGPNYZvpyVx+o+lBUT9/m3TPgWlvBT64AESc
	 1VYYtkRp2dAH/mYKaR93afRjTL1tHfoNvFgEK3LH0j/n6D8lm89ZeViVFCEzORlOM+
	 NO6a2s0LYpYd1YW3iAgo9LPKspHAlUFw/CVSibbOudHrMQUoG3fqEVt3205ewyFn69
	 a+j72Ht3QSFWjtbjkcndWh+WwsAmy/6BqWzY3mmuyvE8chms1hnDugSMwuCq/S4Le6
	 LfnTMMuWfCOpQ==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A56B317E0CA2;
	Wed,  1 Jul 2026 18:53:30 +0200 (CEST)
Message-ID: <f56fcbae-3ff5-46c3-bbe7-7eac462f7dd2@collabora.com>
Date: Wed, 1 Jul 2026 18:53:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 23/42] dt-bindings: display: mediatek: Introduce Digital
 Video Output HW
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, kernel@collabora.com,
 tzimmermann@suse.de, chunkuang.hu@kernel.org, simona@ffwll.ch,
 linux-arm-kernel@lists.infradead.org, jason-jh.lin@mediatek.com,
 airlied@gmail.com, conor+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 mripard@kernel.org, devicetree@vger.kernel.org, justin.yeh@mediatek.com
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
 <20260701122057.19648-24-angelogioacchino.delregno@collabora.com>
 <178291581273.4115171.8214844308967079622.robh@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <178291581273.4115171.8214844308967079622.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318821-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,vger.kernel.org,pengutronix.de,collabora.com,suse.de,ffwll.ch,lists.infradead.org,mediatek.com,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:p.zabel@pengutronix.de,m:kernel@collabora.com,m:tzimmermann@suse.de,m:chunkuang.hu@kernel.org,m:simona@ffwll.ch,m:linux-arm-kernel@lists.infradead.org,m:jason-jh.lin@mediatek.com,m:airlied@gmail.com,m:conor+dt@kernel.org,m:maarten.lankhorst@linux.intel.com,m:linux-mediatek@lists.infradead.org,m:matthias.bgg@gmail.com,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:justin.yeh@mediatek.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D76856F0127

On 7/1/26 16:23, Rob Herring (Arm) wrote:
> 
> On Wed, 01 Jul 2026 14:20:38 +0200, AngeloGioacchino Del Regno wrote:
>> Add documentation for the Digital Video Output (DVO) IP found in
>> the newer generation SoCs MT8196, MT8189 and their variants.
>>
>> This is effectively a more capable block replacing the DisplayPort
>> Interface (DPI/DP_INTF) one found in older SoCs.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   .../display/mediatek/mediatek,mt8196-dvo.yaml | 142 ++++++++++++++++++
>>   1 file changed, 142 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 

Those errors on literally all bindings are quite embarassing. Oops.

Already fixed locally, but since this is a huge series, I will allow some time
for reviews before compulsively pushing a v2.

Cheers,
Angelo

> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: ignoring, error in schema: properties: compatible
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> 	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.yaml: properties:compatible: [{'const': 'mediatek,mt8189-dp-dvo'}, {'const': 'mediatek,mt8189-edp-dvo'}, {'const': 'mediatek,mt8196-edp-dvo'}] is not of type 'object', 'boolean'
> Traceback (most recent call last):
>    File "/usr/local/bin/dt-doc-validate", line 8, in <module>
>      sys.exit(main())
>               ~~~~^^
>    File "/usr/local/lib/python3.13/dist-packages/dtschema/doc_validate.py", line 66, in main
>      ret |= check_doc(f)
>             ~~~~~~~~~^^^
>    File "/usr/local/lib/python3.13/dist-packages/dtschema/doc_validate.py", line 37, in check_doc
>      dtsch.check_schema_refs()
>      ~~~~~~~~~~~~~~~~~~~~~~~^^
>    File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 242, in check_schema_refs
>      self._check_schema_refs(resolver, self)
>      ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^
>    File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 212, in _check_schema_refs
>      self._check_schema_refs(resolver, v, parent=k, is_common=is_common,
>      ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>                              has_constraint=has_constraint)
>                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>    File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 212, in _check_schema_refs
>      self._check_schema_refs(resolver, v, parent=k, is_common=is_common,
>      ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>                              has_constraint=has_constraint)
>                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>    File "/usr/local/lib/python3.13/dist-packages/dtschema/schema.py", line 203, in _check_schema_refs
>      ref_sch = resolver.lookup(schema['$ref']).contents
>                ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^
>    File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 682, in lookup
>      retrieved = self._registry.get_or_retrieve(uri)
>    File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 422, in get_or_retrieve
>      registry = self.crawl()
>    File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 500, in crawl
>      id = resource.id()
>    File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 231, in id
>      id = self._specification.id_of(self.contents)
>    File "/usr/local/lib/python3.13/dist-packages/referencing/jsonschema.py", line 50, in _dollar_id
>      return contents.get("$id")
>             ^^^^^^^^^^^^
> AttributeError: 'list' object has no attribute 'get'
> Documentation/devicetree/bindings/display/mediatek/mediatek,mt8196-dvo.example.dtb: /example-0/dvo@324c0000: failed to match any schema with compatible: ['mediatek,mt8196-edp-dvo']
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.kernel.org/project/devicetree/patch/20260701122057.19648-24-angelogioacchino.delregno@collabora.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 



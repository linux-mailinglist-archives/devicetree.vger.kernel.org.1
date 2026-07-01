Return-Path: <devicetree+bounces-318611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0L7qD/EZRWoD7AoAu9opvQ
	(envelope-from <devicetree+bounces-318611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:45:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAE06EE49C
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:45:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=WwMS5IBn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318611-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318611-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B421B312C389
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F06481254;
	Wed,  1 Jul 2026 13:07:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD16D21257F
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:07:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782911239; cv=none; b=tMHq2H46+NFZ3OJPomK7Ge0x2occVIl8Dck2puTo5QKCuzCGXoJcTukM/S9LIgsq5FeVlr8ZqU6hUZ4KUSnBpW6archya6Uc0Y/OGXjldvFH/8InUMjn21yz9PW5uynCjo3ePXRRy+hGrpGQA7Ap6tP19sf1lD0m5Hz5ntVepIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782911239; c=relaxed/simple;
	bh=egO+P7S6yZj5BJWfitgoiKOxhPzV42iE+OehiNwLm2s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pXtO9zizZq/nKSTFuO45KlMUnxFA/cQEfz10PuRNZV+W24KQxBJ8FRdTyd0yq8xJlJ3WalHTP3ScDNDEK77ZsuzrbI4OBB7AhshWF640Z7yVmmlW08uqC0FTnsM/3x9YEAjU4QDdyxrrlYeBW9ChJWg/hTaXhkMBdgVn9/e5Png=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=WwMS5IBn; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782911236;
	bh=egO+P7S6yZj5BJWfitgoiKOxhPzV42iE+OehiNwLm2s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WwMS5IBngxFJJs/3LwWc49EYO4C7SimfxbyxeN9GQAEZLtqtwk18ZhuBGXcBdp07K
	 BgoQFcsmgqNBkMdukII1kqMfanABYxDAf2i5K49cAb0gDerEa2jlSbeet4vxGEIuQJ
	 Xupr0D1WCv+lzdM/vP9l8xLLhTPtpDfhxFSbMm3uRiLbjyKC5CcnOGxm2/7u1efI52
	 FkJbFrtrSR1C6c5nPU0wBM+joqJTkgvt+601gYjpum3WTxus1KRDvt8/3rmiM0XYVy
	 b886YntTtHRyIAwGB0DJOS8zHQ0foIqFTxNIApXwgns7xS7OHlNztB6OUS+DBwk7kj
	 h8nkBfLNaIjwA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EC83D17E0909;
	Wed,  1 Jul 2026 15:07:15 +0200 (CEST)
Message-ID: <f1a7844c-76dc-4170-84e7-c6116c2f4194@collabora.com>
Date: Wed, 1 Jul 2026 15:07:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, vkoul@kernel.org, olteanv@gmail.com
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-2-angelogioacchino.delregno@collabora.com>
 <20260701122755.D031B1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260701122755.D031B1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,lists.infradead.org,vger.kernel.org,kernel.org,lists.freedesktop.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-318611-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCAE06EE49C

On 7/1/26 14:27, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] The device tree example will fail `make dt_binding_check` validation due to a 64-bit `reg` property at the root level without `#address-cells = <2>` and `#size-cells = <2>`.

That's not "Low", that should be "High" - failing dt_binding_check validation is
critical enough here.

Anyway, will allow some time for reviews before fixing that.

> --
> 
> commit c7b476cde050e045aaa56bae9dd7ecc7b3d34ced
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> dt-bindings: phy: Document MT8195 and MT8196 DisplayPort PHYs
> 
> This adds bindings for the DisplayPort and Embedded DisplayPort PHYs found in
> the MediaTek MT8195 and MT8196 SoCs. The PHY supports varying impedance
> calibrations for the signals to reach an optimal EYE signal pattern.
> 
>> diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml
>> new file mode 100644
>> index 0000000000000..5847963a7085e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml
> 
> [ ... ]
> 
>> +examples:
>> +  - |
>> +    phy@1c500000 {
>> +        compatible = "mediatek,mt8195-dp-phy";
>> +        reg = <0 0x1c500000 0 0x2000>;
> 
> [Severity: Low]
> Looking at the examples section in mediatek,mt8195-dp-phy.yaml, will this
> example pass make dt_binding_check validation? The reg property contains 4
> cells, but since the example node is at the root level without a parent node
> explicitly defining #address-cells = <2> and #size-cells = <2>, the dummy
> root node defaults to 1 for both. This causes the 4 cells to be parsed as 2
> separate items, which violates the schema's maxItems: 1 constraint.
> 
>> +        #phy-cells = <0>;
>> +        nvmem-cells = <&edp_glb_bias_trim>, <&edp_clktx_impsel>,
>> +                      <&edp_imp_ln0_pmos>, <&edp_imp_ln0_nmos>,
>> +                      <&edp_imp_ln1_pmos>, <&edp_imp_ln1_nmos>,
>> +                      <&edp_imp_ln2_pmos>, <&edp_imp_ln2_nmos>,
>> +                      <&edp_imp_ln3_pmos>, <&edp_imp_ln3_nmos>;
>> +        nvmem-cell-names = "rbias-trim", "impedance-txclk",
>> +                           "impedance-lane0p", "impedance-lane0n",
>> +                           "impedance-lane1p", "impedance-lane1n",
>> +                           "impedance-lane2p", "impedance-lane2n",
>> +                           "impedance-lane3p", "impedance-lane3n";
>> +    };
> 



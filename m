Return-Path: <devicetree+bounces-267545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFSWJVmKnGlWJQQAu9opvQ
	(envelope-from <devicetree+bounces-267545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:11:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E37E417A73E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:11:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32E40300A62A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF8D328B53;
	Mon, 23 Feb 2026 17:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NkX5yRnH"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C1C32ABF1;
	Mon, 23 Feb 2026 17:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771866474; cv=none; b=P8JkUbD6h+sLnsTvpnNEzIiiMBmT/oXIeZ2RoPONvKwneydT1M5k8PBqRzJEoiII7bRdCbfXWBePuEwIQaSiIGEuX8Tttf3KPgXfMwQunOBJW7AMBrQwbMNP2lC6PaDUjASQmHS8ZtpgJ92Qf7DqNkl+Pc7/JVwhWvcvsoegowo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771866474; c=relaxed/simple;
	bh=A6xnEFdr8reueLge6TPzjj/7mjnCn9LUEyXj3tdfcH0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TmQYXKopSEeHm/o97x3Lr0NopaReda3OiBQZIbDfNj6Vh2Z45fBD+00znlKrsMxbXVH9n1N5pHTePdb6GlXC3GSDTLhTlaoQ0QbO59jQw88iL1DQJtRyPEV6JQUEMxsrI2LQjfsRHbUXxOqmASPopSx+BJVNpl59GoZsS80tfJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NkX5yRnH; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771866464;
	bh=A6xnEFdr8reueLge6TPzjj/7mjnCn9LUEyXj3tdfcH0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NkX5yRnHWIe56qhSahvA9hfs/eeL3XAMkDAfj4yH5+V7lbpmnmRT9NZ37rmY82jbT
	 ED2gAQarwg+/A2mUr8/r5O/To64gctxlKFh+mNju9sDpTEyJb8EJTV78djOydRtR+y
	 52Uww8ZVbsfh3oy3qhU3Fgmk2cM4Qnrhnh8InPaAKVzCoC7+tDcydj9a4SeN16mwSu
	 snLRBYrBWBkY9L5c2wVmbFcscpNkjvcx/LPbx3JP5ibB2UHTwkV+vAtih3NVpfanrz
	 8B6FKcVrlCXaXDpHuQi5aAmspjX/bq7NuczZeMsaVdifaUfwUewyPGS1jsJ35O0Gxd
	 hAn7rgm5USCWQ==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B9D6017E06CA;
	Mon, 23 Feb 2026 18:07:43 +0100 (CET)
Message-ID: <b4eb3031-69e8-4a73-b4f1-91dd4192bb21@collabora.com>
Date: Mon, 23 Feb 2026 19:07:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
To: Diederik de Haas <diederik@cknow-tech.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
 <aZxkDGzEQCCLKR-M@venus> <DGMF3IX3J3BP.1XT41P0G8P5OD@cknow-tech.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <DGMF3IX3J3BP.1XT41P0G8P5OD@cknow-tech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267545-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim,collabora.com:email,27b00000:email]
X-Rspamd-Queue-Id: E37E417A73E
X-Rspamd-Action: no action

On 2/23/26 4:39 PM, Diederik de Haas wrote:
> On Mon Feb 23, 2026 at 3:31 PM CET, Sebastian Reichel wrote:
>> On Mon, Feb 23, 2026 at 02:25:05PM +0200, Cristian Ciocaltea wrote:
>>> When building device trees for the RK3576 based boards, DTC shows the
>>> following complaint:
>>>
>>>   rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg): /soc/video-codec@27b00000: simple-bus unit address format error, expected "27b00100"
>>>
>>> Provide the register blocks in the expected address-based order.
>>>
>>> Fixes: da0de806d8b4 ("arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576")
>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> ---
>>
>> This fixes this warning, but instead creates a new one, because the
>> reg-names order is fixed in the DT binding:
>>
>>    reg:
>>      minItems: 1
>>      items:
>>        - description: The function configuration registers base
>>        - description: The link table configuration registers base
>>        - description: The cache configuration registers base
>>   
>>    reg-names:
>>      items:
>>        - const: function
>>        - const: link
>>        - const: cache

Oh, right, missed to check the binding.. :-(

> 
> See also the prior discussion wrt this:
> https://lore.kernel.org/linux-rockchip/edabca63-594e-44ae-8a3d-0f60987a8664@collabora.com/

That's interesting, I'm also not able to trigger the warning on RK3588.

Regardless, the binding can be easily adjusted with the patch below.  Hence I'm
going to handle this in v2, unless there's a reason against moving further.

Thanks,
Cristian


--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -34,10 +34,12 @@ properties:
       - description: The cache configuration registers base

   reg-names:
-    items:
+    oneOf:
       - const: function
-      - const: link
-      - const: cache
+      - items:
+          - const: link
+          - const: function
+          - const: cache

   interrupts:
     maxItems: 1



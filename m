Return-Path: <devicetree+bounces-316073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CjrCN7FlPmorFQkAu9opvQ
	(envelope-from <devicetree+bounces-316073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 13:42:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4563E6CC95B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 13:42:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=dp3NNdvW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316073-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316073-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=ideasonboard.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14B703021732
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 11:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78DFD3DBD55;
	Fri, 26 Jun 2026 11:42:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F233DA7F2;
	Fri, 26 Jun 2026 11:42:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782474159; cv=none; b=R9PKjH5bLu0Dkf4QaIEoAUyYZN9MGZ+ysmeXz8/XcUy/IlV1JFfPIRTJhhd+9o7XFL6I/A07gnYtcEpnOb+tuCPg2WNAzW2TQm2Gxo0oUEFhnURKVs9A8hNE+8Hnj+4My7drR7Xq2mKvxG8y5xTnyDb80nxEXctWd4C1V4/y0rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782474159; c=relaxed/simple;
	bh=BM4hFHiFsObK0LIS+fIVKgawCpiGQpH+mXX2lBxwRJs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tGRiGt772shb60B6Zk62UMg4rFfVfP3s1TOfA3119CzgF1QLOmfePxxnDgohOuD5uKKOhyJK3caxuC/myKCXGwjn/QlyS9FIdq9jJCzUjXRMg5kysX+mi4ZGkpoBXwhNUvRpHqEYKAvwy/F2AfbL++yCQaotT1zW4J0l6xBoax0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=dp3NNdvW; arc=none smtp.client-ip=213.167.242.64
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B5C911E6;
	Fri, 26 Jun 2026 13:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782474114;
	bh=BM4hFHiFsObK0LIS+fIVKgawCpiGQpH+mXX2lBxwRJs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dp3NNdvW1pGAEnSKWCxg2578oLJ6i0AisKoebBSSrScvuDG0WEWSdGx/Wj8MHWwOQ
	 P6WeNBn/2U4LN/5Vbsuc7XrYurGyDkqHrnEFiEQVXDNd0NhxnXHWUl5xdy5YWePj4x
	 Dd6NfsJJjmNzoUiy3kIbQQrZ08/1qFbUZ7SGcI/E=
Message-ID: <15d76a14-4deb-4f4e-a14e-2094df75bf75@ideasonboard.com>
Date: Fri, 26 Jun 2026 14:42:31 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] arm64: ti: Use syscon for the Control Module
To: Andrew Davis <afd@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Abraham I <kishon@kernel.org>, Roger Quadros <rogerq@kernel.org>,
 Devarsh Thakkar <devarsht@ti.com>, Swamil Jain <s-jain1@ti.com>
References: <20260528-ti-main-conf-v1-0-a54ac5c8d081@ideasonboard.com>
 <29c9bd27-df32-4c56-8df2-987722d02b9a@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Content-Language: en-US
In-Reply-To: <29c9bd27-df32-4c56-8df2-987722d02b9a@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:afd@ti.com,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:kishon@kernel.org,m:rogerq@kernel.org,m:devarsht@ti.com,m:s-jain1@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-316073-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,ideasonboard.com:dkim,ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4563E6CC95B

Hi Andrew, Krzysztof,

On 29/05/2026 01:59, Andrew Davis wrote:
> On 5/28/26 7:53 AM, Tomi Valkeinen wrote:
>> I have been trying to get BeagleY-AI display support to upstream:
>>
>> 20260513-beagley-ai-display-v2-0-9e9bcefde6bc@ideasonboard.com
>>
>> One difficulty has been the handling of the Control Module region, as
>> we need access to a single in that region, surrounded by registers for
>> other subsystems. In my series I made the related node a syscon, thus
>> allowing versatile access to the registers:
>>
>> https://lore.kernel.org/all/20260513-beagley-ai-display- 
>> v2-14-9e9bcefde6bc@ideasonboard.com/
>>
>> However, that's not a correct way to handle it. I realized we already
>> have ti,j721e-system-controller.yaml binding for older SoCs, which has
>> syscon but it's not used for the newer TI SoCs. This series takes the
>> same binding into use for the newer SoCs.
>>
> 
> We moved away from this system-controller thing because it was always
> a hack to allow us to poke into random control registers from nodes
> throughout the DT. This was a mess and also caused issues with multiple
> mappings to the same registers (some sub nodes inside the control space
> also make their own mappings). If you need access to registers then make
> a node with those registers in the `reg` property.
> 
> The only reason we didn't get rid of `ti,j721e-system-controller.yaml`
> completely from the older SoCs was we were told it would be an ABI
> break to correct those DT files. Let's not spread that problem to
> new SoCs.
I'm still stuck on this issue.

So, to summarize, we have the big control module memory region from 
which various drivers need "random" registers. In my particular case, 
the display subsystem (DSS) driver needs to access a single register 
from the control module, but as the control module contains a lot of 
registers, there are other similar cases too (I've seen at least one 
other series, trying to add access to control module registers).

Taking AM62 SoC as an example, we have this in upstream:

https://github.com/torvalds/linux/blob/4edcdefd4083ae04b1a5656f4be6cd83ae919ef4/arch/arm64/boot/dts/ti/k3-am62-main.dtsi#L44

"main_conf" (simple-bus) node representing the control module, and nodes 
under that representing either small things like clocks or, in 
dss_oldi_io_ctrl case, a syscon.

I'm aware of three options on how to handle this.

1) Adding small syscon nodes under the main_conf, similar to the 
existing dss_oldi_io_ctrl.

I did this in the earlier series: 
https://lore.kernel.org/all/20260420-beagley-ai-display-v1-3-f628543dfd14%40ideasonboard.com/ 


2) Making the whole control module a syscon, as I do in this series.

3) Adding the required registers as a new 'reg' block under the dss' DT 
node.

Both 1) and 2) have been nacked or at least very strongly questioned. 3) 
doesn't feel right, the register is not a register for the IP but an 
external SoC integration register.

Is there an option 4)? In your opinion, is one of the above the one 
clear choice?

  Tomi



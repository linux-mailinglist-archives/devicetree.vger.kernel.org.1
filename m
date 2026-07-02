Return-Path: <devicetree+bounces-319012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rukVM6T4RWr0HAsAu9opvQ
	(envelope-from <devicetree+bounces-319012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 07:35:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9306F3954
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 07:35:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ultrarisc.com header.s=dkim header.b="WuzXtBN/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319012-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319012-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=ultrarisc.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 91E0B30241C5
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 05:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD4736402A;
	Thu,  2 Jul 2026 05:34:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9208433B6EF;
	Thu,  2 Jul 2026 05:34:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782970491; cv=none; b=bxUpopIs3kMv+X3aU2czODEz/OlPB7nCLxTGbdjB5wgLpmoqnQ2QV3MdulTp9PMI2pWnKMmw4GEJwAs/yd7uDwBLhYQVWXZn3ENdNrITzemFZnzZn3DOPOwdvfC80XTBZaUnbLGdWgkyhkYAIdxIJUYqMzQP/QbipDMhhTLiNUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782970491; c=relaxed/simple;
	bh=VROx4UNHpouW8fr4aaiSqX4i8MowYxEzhLMqqRSl1Zc=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=Akb0iIU5P3rj4hoRwgOuCmsMVPoUyb4fDS29d/B9iPbRsVaiB67Ag+TvfV5g39fqqUqRAvzgHBuaEqT20DS276iYyVILH6aEkc7TFlbu1i3YM9q6WBvZ0VtpXdTFkLS/WB9hPeOC6HPv8e10nkL6K47/Xn+4sz/5+p4Jyv+eHOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=none smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=WuzXtBN/; arc=none smtp.client-ip=218.76.62.146
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:
	References:Date:Message-Id; bh=nvXrvmnXXqNldJyOx7EZECCIGfEQxkabt
	waPOi8tNh4=; b=WuzXtBN/t7dkWDL01vmOznAVNkV5yZZvRqoN65f5iW8i2N0fn
	y9UT/IRVWJxFSLGmuxbDAfMKUTnC3RlYLn5anlKDnGCu9Lrh2OlJzRuYKd/tx0SK
	VMsI0foLvwuF6IiRA6CEX9Fvhyv1Or+5B7aHcskScFTHlX+NydYdrjyr/0=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwDXEEKM+EVqOpYOAA--.14792S2;
	Thu, 02 Jul 2026 13:35:08 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH 1/2] dt-bindings: pci: ultrarisc: add required DP1000
 PCIe clocks
From: Jia Wang <wangjia@ultrarisc.com>
To: Conor Dooley <conor@kernel.org>
Cc: wangjia@ultrarisc.com, Xincheng Zhang <zhangxincheng@ultrarisc.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260629-caboose-outpour-6e1df34112ef@spud>
References: <20260629-ultrarisc-pci-clk-v1-0-5ea3308fdab3@ultrarisc.com>
 <20260629-ultrarisc-pci-clk-v1-1-5ea3308fdab3@ultrarisc.com>
 <20260629-caboose-outpour-6e1df34112ef@spud>
Date: Thu, 02 Jul 2026 13:34:35 +0800
Message-Id: <178297047541.1082377.2444224045999313609.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782970475; l=2479;
 i=wangjia@ultrarisc.com; s=20260515; h=from:subject:message-id;
 bh=VROx4UNHpouW8fr4aaiSqX4i8MowYxEzhLMqqRSl1Zc=;
 b=p1J13cGbI19FzOi+1qjcrOy8zvXYB18rPgdNggmPvk4uTg47lcXc1o1d/bE7EE03FPWa9WbQI
 VJrVP2Zki/dB/FyAXJfP4M0BEYorKwKGbzJ5RQAgcqSOx9AwRJBZqJT
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=wGVm18siRScehKOkOz0WKxgxDy7IezHEszhnN4/TUCY=
X-CM-TRANSID:AQAAfwDXEEKM+EVqOpYOAA--.14792S2
X-Coremail-Antispam: 1UD129KBjvJXoW7tF4rWryfuryrKrWDZw4xZwb_yoW8try5pF
	W3C3W5CF4ftr13Zwnaq3WUtF15Jr4IkFy5tr18Gr1UtFs0gr1vqFsxK343Ga45Zr47ZFyj
	vF45uw17tw4UC3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9l14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r
	4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCY02Avz4vE-syl42xK82IYc2Ij64vIr41l4I
	8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AK
	xVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcV
	AFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8I
	cIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r
	4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUonmRUUUUU
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQAPEWpEjs0AFwAKsv
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:wangjia@ultrarisc.com,m:zhangxincheng@ultrarisc.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-319012-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,ultrarisc.com:dkim,ultrarisc.com:email,ultrarisc.com:from_mime,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA9306F3954

On 2026-06-29 16:27 +0100, Conor Dooley wrote:
> On Mon, Jun 29, 2026 at 01:59:50PM +0800, Jia Wang via B4 Relay wrote:
> > From: Jia Wang <wangjia@ultrarisc.com>
> > 
> > Require the DP1000 PCIe controller nodes to provide clocks and
> > clock-names, using the standard DesignWare clock names "core",
> > "dbi", and "aux".
> > 
> > Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> 
> Probably should have a fixes tag here because the clocks are mandatory
> and were missing.
> With one,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable
>

Thanks, Conor.

I'll add the `Fixes:` tag in v2.
Thanks for the Acked-by!
 
> Thanks,
> Conor.
> 

Best regards,
Jia Wang

> > ---
> >  .../devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml   | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml b/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> > index 512b935bf5d1..d9d1488e915a 100644
> > --- a/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> > @@ -43,6 +43,18 @@ properties:
> >        - description: Legacy INTC interrupt
> >        - description: Legacy INTD interrupt
> >  
> > +  clocks:
> > +    items:
> > +      - description: PCIe core clock
> > +      - description: Data Bus Interface (DBI) clock
> > +      - description: Auxiliary clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: core
> > +      - const: dbi
> > +      - const: aux
> > +
> >    interrupt-names:
> >      items:
> >        - const: msi
> > @@ -55,6 +67,8 @@ required:
> >    - compatible
> >    - reg
> >    - reg-names
> > +  - clocks
> > +  - clock-names
> >    - interrupts
> >    - interrupt-names
> >  
> > @@ -71,6 +85,8 @@ examples:
> >          reg = <0x0 0x21000000 0x0 0x01000000>,
> >                <0x0 0x4fff0000 0x0 0x00010000>;
> >          reg-names = "dbi", "config";
> > +        clocks = <&clkc 9>, <&clkc 7>, <&clkc 10>;
> > +        clock-names = "core", "dbi", "aux";
> >          ranges = <0x81000000 0x0 0x4fbf0000 0x0 0x4fbf0000 0x0 0x00400000>,
> >                   <0x82000000 0x0 0x40000000 0x0 0x40000000 0x0 0x0fbf0000>,
> >                   <0xc3000000 0x40 0x00000000 0x40 0x00000000 0xd 0x00000000>;
> > 
> > -- 
> > 2.34.1
> > 
> > 




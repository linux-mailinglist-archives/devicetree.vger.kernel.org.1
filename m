Return-Path: <devicetree+bounces-325324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KZwtC1asVGrTpAMAu9opvQ
	(envelope-from <devicetree+bounces-325324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:13:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF57492B3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:13:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ultrarisc.com header.s=dkim header.b=IUuGB3GK;
	dmarc=pass (policy=none) header.from=ultrarisc.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325324-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325324-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61C75301DEED
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730183911CE;
	Mon, 13 Jul 2026 09:13:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828F7145B3F;
	Mon, 13 Jul 2026 09:13:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783934034; cv=none; b=gfZMQYqtoSSGejpiRxyuhph0+ng9LEdbq33jwN7hcKmBiyX6id8Y+rMF2L7Rm8WvxwyoERGDB/fYHD9FE95wnrCuQ4fdK5OYvwn+BKxNflVJ/Vks8yMSfPR6OG3U/MWk89XWyrm/Vfazhj+6Hpq8zlzyzUUJzJ1mCwbcXblxRD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783934034; c=relaxed/simple;
	bh=dcCDLxbyJUIXwfhBT64SAsExYyiIGV2LF8cYyZrekEI=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=IKyHRJr0uwX+wLnnwg2EhkdQMPiSxxRJEgFkWScz0b/lOQWIqTLm4XgoAkYTtrYvHlBWOMhW0X+lWzvhbSDiiSosWeWoB5WCasGCnDd43mY+uoy41UB0c+nykSvZcXrE/rVlEw8UkaKsY2soLDcYc9WCEvt+79RYjS8RReBF8ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=none smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=IUuGB3GK; arc=none smtp.client-ip=218.76.62.146
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:
	References:Date:Message-Id; bh=VPrIFSTxqSlGbcvuQoKbhlpKcFEI6JaSI
	349NQx+Zgk=; b=IUuGB3GKPqgYvkjowh7DX5Zzu4C3USSYRQjbvO1VX9f9DDCI0
	oi/fbYjO093ziDVtCiTG7iQmizpBk+AhCXBUmFTZ9w6bJH/COQVze/uJQVj5kSEg
	xinhwYaEDv5LKc7lhvcXh7abbxhjjDnfTuXGhMg2IhSblKdTxGHtCDLSKc=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwAnYUJcrFRqA48QAA--.16585S2;
	Mon, 13 Jul 2026 17:14:05 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v2 2/2] clk: ultrarisc: add DP1000 clock driver
From: Jia Wang <wangjia@ultrarisc.com>
To: Brian Masney <bmasney@redhat.com>
Cc: Jia Wang <wangjia@ultrarisc.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <ak5fGAp2NMPgW77M@redhat.com>
References: <20260617-ultrarisc-clock-v2-0-9cb16083e15e@ultrarisc.com>
 <20260617-ultrarisc-clock-v2-2-9cb16083e15e@ultrarisc.com>
 <ak1Zc7uSoqx-F_7Q@redhat.com>
 <178349718662.2043299.5991323028483371285.b4-reply@b4>
 <ak5fGAp2NMPgW77M@redhat.com>
Date: Mon, 13 Jul 2026 17:13:33 +0800
Message-Id: <178393401383.3197075.7283325660001879501.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783934014; l=1815;
 i=wangjia@ultrarisc.com; s=20260515; h=from:subject:message-id;
 bh=dcCDLxbyJUIXwfhBT64SAsExYyiIGV2LF8cYyZrekEI=;
 b=mPIF9TaQ0styqNJX6Lj462n06oarXZ44l+TmRuyZeJLmhi2BOM5OAcjSiPW90B1wbclFFBNYM
 UtV9cdLSWemBz5fAFFeuYa96UwhAVlE/aKxEvQqU1efVY+jIdfbaItU
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=wGVm18siRScehKOkOz0WKxgxDy7IezHEszhnN4/TUCY=
X-CM-TRANSID:AQAAfwAnYUJcrFRqA48QAA--.16585S2
X-Coremail-Antispam: 1UD129KBjvJXoW7trWDWr4UCw13WF15tw4kXrb_yoW8WrWfpF
	WrGa4jkrW0qF13Zw42v3WqyF9xtw18tayjk3srJw1SvrnIqrySka1fJas8CF1rZry8WFyj
	vF4jvFyxWw1FyFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9G14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4UJV
	WxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc7CjxVAaw2AFwI0_Jw0_GFylc2xSY4AK6svPMxAIw28IcxkI7VAKI48JMx
	C20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAF
	wI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20x
	vE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v2
	0xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb8hL5UUUUU==
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQAHEWpUYNAAJgAMsz
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:bmasney@redhat.com,m:wangjia@ultrarisc.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325324-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ultrarisc.com:from_mime,ultrarisc.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56DF57492B3

On 2026-07-08 10:30 -0400, Brian Masney wrote:
> On Wed, Jul 08, 2026 at 03:53:06PM +0800, Jia Wang wrote:
> > On 2026-07-07 15:54 -0400, Brian Masney wrote:
> > > On Wed, Jun 17, 2026 at 02:02:55PM +0800, Jia Wang wrote:
> > > > +static struct clk_hw *
> > > > +ultrarisc_clk_hw_register_composite(struct device *dev, const char *name,
> > > > +				    const char * const *parent_names,
> > > > +				    int num_parents, struct clk_hw *mux_hw,
> > > > +				    const struct clk_ops *mux_ops,
> > > > +				    struct clk_hw *rate_hw,
> > > > +				    const struct clk_ops *rate_ops,
> > > > +				    struct clk_hw *gate_hw,
> > > > +				    const struct clk_ops *gate_ops,
> > > > +				    unsigned long flags)
> > > > +{
> > > > +	struct clk_hw *hw;
> > > > +	int ret;
> > > > +
> > > > +	hw = clk_hw_register_composite(dev, name, parent_names, num_parents,
> > > > +				       mux_hw, mux_ops, rate_hw, rate_ops,
> > > > +				       gate_hw, gate_ops, flags);
> > > > +	if (IS_ERR(hw))
> > > > +		return hw;
> > > > +
> > > > +	ret = devm_add_action_or_reset(dev, ultrarisc_clk_unregister_composite,
> > > > +				       hw);
> > > 
> > > Use devm_clk_hw_register_composite_pdata()
> > > 
> > 
> > I originally used clk_hw_register_composite() together with
> > devm_add_action_or_reset() because devm_clk_hw_register_composite_pdata()
> > is not currently exported, while this driver can be built as a module.
> > 
> > If exporting it is acceptable, I can add a preparatory patch in this series
> > to export it and then switch the driver to use that helper.
> 
> Yes, I think that exporting this makes sense.
>

Thanks. I'll add a preparatory patch to export the helper and update the
driver to use it in the next version.
 
> Brian
> 
>

Best regards,
Jia Wang 




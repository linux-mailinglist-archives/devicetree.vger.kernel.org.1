Return-Path: <devicetree+bounces-270575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLTuCn34pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:04:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 812C91F1FD4
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAA7B3134453
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FD93CF66C;
	Tue,  3 Mar 2026 14:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="Dj6VtwQ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF8A63CB;
	Tue,  3 Mar 2026 14:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772549774; cv=none; b=KiGMqpj0xEQI5201mlao+/q1RTHHoG9uqbIh2YNQe4cl4h71DyAfbjpVYM7GfI3ZyTlf69ChhjaPAeYGNzd4uM+GRyD8P3cZcNQnVye97WHiuR4U8edg7/5bO4Y/hzlRgseCngS/xlM973x6H2dboEsL+jiKiEsDcseeulXgIpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772549774; c=relaxed/simple;
	bh=QeieHzJfWDKmuoAxOflh+pN/RkUk+FjrKgWD9Z04g50=;
	h=Date:From:To:Cc:Message-Id:In-Reply-To:References:Mime-Version:
	 Content-Type:Subject; b=uzJ6UtBp/FmNkL6M1OrTOSuWGmZc9JTOohVn2ZW9a+fOvhpxKJV6d6Rir4GpPvTkpXaMENoYwoMqyz+fx5JQ0sP6ftY/n7hOrmNTtsluYglakEvuo4Ad03Edf4NG2H+5X9XxcePDRLIZycS5BUPimZ9vTyfm0PZM/lzxg+XQYlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=Dj6VtwQ/; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=cTIgmgb/ImQ+v4+VhZg8vRmsZhPrw5oDndGDTm3rYyU=; b=Dj6VtwQ/vo5l9HiQZuUUD75aA3
	Vh/txUhdj0g+wsjdCXC/Kiz35j6z4cLxYbwnDvT5NZAH6DyyTFFxF1B7t+uW8+XBJROxShyx50ZTa
	JwGmkaHJkyrGMQqcsBuxBVRtgxrtxOC9bT60v4kp233ssO1FI4Zwd25niUMiNVzbsTvs=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:38300 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1vxR9q-0000YP-RN; Tue, 03 Mar 2026 09:55:35 -0500
Date: Tue, 3 Mar 2026 09:55:33 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shawnguo@kernel.org,
 laurent.pinchart+renesas@ideasonboard.com, antonin.godard@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>
Message-Id: <20260303095533.1c6dff174f6c9d162d3e3303@hugovil.com>
In-Reply-To: <20260303-rational-thundering-firefly-9dcaa9@quoll>
References: <20260302190953.669325-1-hugo@hugovil.com>
	<20260302190953.669325-5-hugo@hugovil.com>
	<20260303-rational-thundering-firefly-9dcaa9@quoll>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.8 NICE_REPLY_A Looks like a legit reply (A)
Subject: Re: [PATCH 04/14] dt-bindings: arm: fsl: change incorrect
 VAR-SOM-6UL model name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)
X-Rspamd-Queue-Id: 812C91F1FD4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=x];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270575-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[hugovil.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,nxp.com,pengutronix.de,bootlin.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,dimonoff.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[hugovil.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,variscite.com:url,phycore-i.mx:url,hugovil.com:dkim,hugovil.com:mid,dimonoff.com:email]
X-Rspamd-Action: no action

Hi Krzysztof,

On Tue, 3 Mar 2026 08:10:51 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Mon, Mar 02, 2026 at 02:03:40PM -0500, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > There is no Variscite module named VAR-SOM-MX6UL.
> 
> VAR-SOM-MX6? And there is.
> https://dev.variscite.com/var-som-mx6/

Ok,
I was confused by the "const: variscite,var-som-imx6ul" and thought the
description was not matching.

But there is still no module named "VAR-SOM-MX6UL", but "VAR-SOM-MX6",
with different CPU variants like UL, ULL, etc. So I will modify the
patch to reflect that.

In fact, I will modify the description to reflect that it supports both
VAR-SOM-MX6 and VAR-SOM-6UL modules.


> 
> > 
> > The official name from the manufacturer is VAR-SOM-6UL.
> > 
> > Change SOM model name to VAR-SOM-6UL to reduce confusion.
> 
> That's just one paragraph. Please write concise commit msgs so reading
> them will be fast and easy.

Ok, no problem.


> 
> Not a sentence.
> 
> By a sentence.
> 
> In multiple steps.
> 
> > 
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 5716d701292cf..99dc1b3f1ba92 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -688,7 +688,7 @@ properties:
> >            - const: phytec,imx6ul-pcl063   # PHYTEC phyCORE-i.MX 6UL
> >            - const: fsl,imx6ul
> >  
> > -      - description: i.MX6UL Variscite VAR-SOM-MX6 Boards
> > +      - description: i.MX6UL Variscite VAR-SOM-6UL Boards
> >          items:
> >            - const: variscite,mx6ulconcerto
> >            - const: variscite,var-som-imx6ul
> > -- 
> > 2.47.3
> > 
> 


-- 
Hugo Villeneuve


Return-Path: <devicetree+bounces-272292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJ7fKSMJq2k/ZgEAu9opvQ
	(envelope-from <devicetree+bounces-272292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:04:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A40225A24
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF91F301AB94
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 16:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D3836A01B;
	Fri,  6 Mar 2026 16:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="dVEqJoFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8536C5A4;
	Fri,  6 Mar 2026 16:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772816398; cv=none; b=dclplRkxsGlPXh8liGM8xZk4yL0lxvK8UOFKcxLibjFOIRxetCvleZJ1JKb8hMfoukI69cTYu13XznApaQs5PuB1XIvY33G8mlJiR1tUJ6EXctGUMgBRj5HCmyt+OjO3svjIaRjVACDKMz8ZmrsNqm1weFiOHhXY9D0M70/iDFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772816398; c=relaxed/simple;
	bh=BaUIFqnOqBcDUjCktswit6PgkVFlQ7jl1n+54BMqJFQ=;
	h=Date:From:To:Cc:Message-Id:In-Reply-To:References:Mime-Version:
	 Content-Type:Subject; b=EN/kSPZj6DF2yb5rKpbU2SntPCvTjN/Vb5kVNJ2EQVlkouJIk/r730k8CeXrV3dytcAH3s+8rNDnOa4KlDUI3nOmUXg64jQE9gXwXsG5w2oRNZYo3NXhTrrpIfPsn6JJkAViSVWJvvEwBXQY5nGrZ3+INovICBt+0sddPQUKk08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=dVEqJoFp; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=uDPQ4R78d4QAe2vNvQqZ27IjqiJla9qhDYNsRAF5LJc=; b=dVEqJoFp0qDkeVMViNGKW524dJ
	A6o5M5b6Omq4k1mD9ARkDhKxbGgz+815e+Yi++SOM7C+2Okbh4f464HKGgrI8n0/3UIH5nROyUAaY
	zfcei1G/cDprZ68MrTHYkU4acA8qrBirOxx5glxoD2pw8d2uXHSDFImtHqC6UIvsIEeg=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:48162 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1vyYWH-0002UD-Qt; Fri, 06 Mar 2026 11:59:22 -0500
Date: Fri, 6 Mar 2026 11:59:20 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, Frank.Li@nxp.com, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, shawnguo@kernel.org,
 laurent.pinchart+renesas@ideasonboard.com, antonin.godard@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>
Message-Id: <20260306115920.422ea4dc455cebafa8127194@hugovil.com>
In-Reply-To: <20260306-observant-banana-wapiti-90adef@quoll>
References: <20260305180651.1827087-1-hugo@hugovil.com>
	<20260305180651.1827087-5-hugo@hugovil.com>
	<20260306-observant-banana-wapiti-90adef@quoll>
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
	* -0.2 NICE_REPLY_A Looks like a legit reply (A)
Subject: Re: [PATCH v2 04/15] dt-bindings: arm: fsl: change incorrect
 VAR-SOM-MX6UL references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)
X-Rspamd-Queue-Id: 09A40225A24
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
	TAGGED_FROM(0.00)[bounces-272292-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[hugovil.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,nxp.com,pengutronix.de,bootlin.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,dimonoff.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[hugovil.com:+];
	NEURAL_HAM(-0.00)[-0.983];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hugovil.com:dkim,hugovil.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,variscite.com:url]
X-Rspamd-Action: no action

Hi Krzysztof,

On Fri, 6 Mar 2026 09:00:18 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Thu, Mar 05, 2026 at 01:06:19PM -0500, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > There is no Variscite module named VAR-SOM-MX6UL, but there is VAR-SOM-MX6
> 
> And binding does not speak about VAR-SOM-MX6UL, so I find your commit
> msg extra confusing. It took me way too much time to decipher why you
> are doing this and this should be just simple correction of name to
> match the product expressed by compatible.

Yes you are absolutely right. The origin of the confusion is that at first
this patch was included with patch #3 of this serie:

Link: https://lore.kernel.org/all/20260305180651.1827087-4-hugo@hugovil.com/ [1]

I split them to satisfy checkpatch for separate bindings patches, and copied the
commit message from [1].

I will simplify the commit title and message in the next version to:

---------------
dt-bindings: arm: fsl: fix SOM name description to match compatible

Fix SOM name description to VAR-SOM-6UL to match the product expressed by
compatible.
---------------


> 
> BTW, the DTSI also has wrong name.

This was fixed in patch #3 [1] just before this one.

 
> > and also VAR-SOM-6UL, so it is confusing at first to know to which one it
> > refers to. The imx6ul-var-som* dts/dtsi supports only the VAR-SOM-6UL [1],
> > not VAR-SOM-MX6 [2], so modify comments and model descriptions accordingly.
> > 
> > Link  https://dev.variscite.com/var-som-6ul [1]
> > Link: https://dev.variscite.com/var-som-mx6 [2]
> > 
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 


-- 
Hugo Villeneuve


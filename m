Return-Path: <devicetree+bounces-270639-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNnpEGULp2kDcgAAu9opvQ
	(envelope-from <devicetree+bounces-270639-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:25:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 038FB1F3BD2
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B9F53045934
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 16:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3734DB561;
	Tue,  3 Mar 2026 16:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="pg6KN0dJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87274D991F;
	Tue,  3 Mar 2026 16:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772554994; cv=none; b=lw026KHirLiLAidKKN7/BobnFMIpn5hHabZuqUqyuRPzFXadFdFbZT4c9MjfJfZkKOM+0u6+vt4kyMownL8WzyN89O65Oj4HDoHTSX5UWqFTL0Kuo0IMksXCxgnrGYjlQWusHiyeD7/u34JuRPCixRicFH6lrUN9en/LSnJqF58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772554994; c=relaxed/simple;
	bh=DLu3q9o3XmmE0oW7F+z6Mc4THjhnJnjhOxFhA8FxFEU=;
	h=Date:From:To:Cc:Message-Id:In-Reply-To:References:Mime-Version:
	 Content-Type:Subject; b=ao0jKiIF/PbpeXBz4yBikckX8BEmh0biRYEYPpnsE9wBLvLjJfKJXnSljyuAgRGKnv074WjAWPw702iWe6llhv19tte1bIaZRKjgdN8RWtpYnZDSjF/qmGMThvwg7AorUO6hPkKhcz/XMipb9pbBj5Q+jfwmdKrDfpwBmPDHPiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=pg6KN0dJ; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=dIABMziNLvW0jGN8kMlgpZrAq89Imgr046x+DRl4Rp0=; b=pg6KN0dJ5ZW2AM6cCDdSSbnuh8
	PhW6AkE7BgkA004hNmbRR18mGBAQhSx99q5o9AAXWurQ7v8cqZw4Sy816/wAn7HandtGwvps2gs9f
	Rqcam9kTr/6hJ0oAXcGwT8kAE04C11Py+CCOXtzokRwkAzZE0Z/Vid+3hcaJR9LmbvjM=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:35704 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1vxSWF-0003Ms-A8; Tue, 03 Mar 2026 11:22:47 -0500
Date: Tue, 3 Mar 2026 11:22:46 -0500
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
Message-Id: <20260303112246.0bd6238aba7489b6de499299@hugovil.com>
In-Reply-To: <920740e1-5bbb-4632-a62d-325715cd8043@kernel.org>
References: <20260302190953.669325-1-hugo@hugovil.com>
	<20260302190953.669325-5-hugo@hugovil.com>
	<20260303-rational-thundering-firefly-9dcaa9@quoll>
	<20260303095533.1c6dff174f6c9d162d3e3303@hugovil.com>
	<920740e1-5bbb-4632-a62d-325715cd8043@kernel.org>
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
X-Rspamd-Queue-Id: 038FB1F3BD2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=x];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270639-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[hugovil.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,nxp.com,pengutronix.de,bootlin.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,dimonoff.com];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[hugovil.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	HAS_WP_URI(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,hugovil.com:dkim,hugovil.com:mid,variscite.com:url]
X-Rspamd-Action: no action

Hi Krzysztof,

On Tue, 3 Mar 2026 16:19:54 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 03/03/2026 15:55, Hugo Villeneuve wrote:
> > Hi Krzysztof,
> > 
> > On Tue, 3 Mar 2026 08:10:51 +0100
> > Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > 
> >> On Mon, Mar 02, 2026 at 02:03:40PM -0500, Hugo Villeneuve wrote:
> >>> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> >>>
> >>> There is no Variscite module named VAR-SOM-MX6UL.
> >>
> >> VAR-SOM-MX6? And there is.
> >> https://dev.variscite.com/var-som-mx6/
> > 
> > Ok,
> > I was confused by the "const: variscite,var-som-imx6ul" and thought the
> > description was not matching.
> > 
> > But there is still no module named "VAR-SOM-MX6UL", but "VAR-SOM-MX6",
> > with different CPU variants like UL, ULL, etc. So I will modify the
> > patch to reflect that.
> 
> I don't understand what you want to reflect/modify.
> 
> Description says: VAR-SOM-MX6
> My link says: VAR-SOM-MX6
> 
> What is incorrect?

VAR-SOM-MX6 is ok, like your link shows, but not VAR-SOM-MX6UL.

If someone looks at VAR-SOM-MX6UL, they may think that the "MX6" part
refers to the VAR-SOM-MX6, or they may think that the "6UL" part refers
to the VAR-SOM-6UL, and it can be extremely confusing. This was my
understanding at first, and the reason why I submitted this patch.

If you look at the associated board entry in the binding, it says
"const: variscite,mx6ulconcerto" but the VAR-SOM-MX6 doesn't use
the concerto board. It uses a board named "VAR-MX6CustomBoard":

https://variscite.com/wp-content/uploads/2017/12/VAR-MX6CustomBoard-Datasheet.pdf

The VAR-SOM-6UL uses the concerto board:

https://variscite.com/wp-content/uploads/2019/07/Concerto-Board_Datasheet.pdf

So the description in the binding "i.MX6UL Variscite VAR-SOM-MX6 Boards"
is wrong, and needs to be replaced with VAR-SOM-6UL.

By the way, support for the VAR-SOM-MX6 is provided by this binding entry:
   - description: i.MX6Q Variscite VAR-SOM-MX6 Boards
    items:
      - const: variscite,mx6customboard
      - const: variscite,var-som-imx6q
      - const: fsl,imx6q


> > 
> > In fact, I will modify the description to reflect that it supports both
> > VAR-SOM-MX6 and VAR-SOM-6UL modules.
> 
> Are you sure that it does?

With my new research, as explained above, this is not the case. I will
modify the description to reflect that it supports VAR-SOM-6UL modules only.

-- 
Hugo Villeneuve


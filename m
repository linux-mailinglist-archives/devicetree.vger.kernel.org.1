Return-Path: <devicetree+bounces-271707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIEkA6fYqWlXGQEAu9opvQ
	(envelope-from <devicetree+bounces-271707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:25:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 164542177A5
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:25:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84532300A24C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43EDE30DEA9;
	Thu,  5 Mar 2026 19:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="FQ/tvoAE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073D430FC1E;
	Thu,  5 Mar 2026 19:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772738638; cv=none; b=mi6pXXMbNVvTB6+Uii525WvOuvnKLZ435kZhytLk91qWAQSdv+X82/hBiQujomwtjcDvDBkaknopte46lQ933qlxPLS84mIGvkbK7kkQ65qkkh9rfPLoC1fpPrcQDrO3PnFDemE1LCN5BALRbxsGSb9W5o3aldXCmmrrOj6L4Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772738638; c=relaxed/simple;
	bh=nvp719tYC967D+fO5wFgApFhr2z6APK2AIc9WPkJLNU=;
	h=Date:From:To:Cc:Message-Id:In-Reply-To:References:Mime-Version:
	 Content-Type:Subject; b=OZirTTMDhxbnWg/30ueIf4CfT570Y25iA4ObGnpym9Ury4VTCNiGvtmd4klr79x2CbfrL7pXWBsYKUOADTl98zgmrOL4uDoEdQq9ySWCMuHjo6S6UZ52VV+LA6iGjCmWDHGeWVqNIPqeRQht7JLgKEqApCPLZN35xlLi9JTOLrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=FQ/tvoAE; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=T/6FQsMLnCGkibjJw9JyQAihdbLawYlk2aY7GuhBV/I=; b=FQ/tvoAE3+CW29cdkBlkTr+ymc
	u+GZKHBdVaRp8zLyuciuoQad+jje36JbHkBjzMKldzouBa+MRr8HoApvDQqA+Cl8xzsU3l0MxWz9f
	HU/zCz6c5n+qLIYAkobroWWRfecuD6W5ZSBtzEPmXgFdrLExYuR9vzu3zYXfsePDeV1Q=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:40032 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1vyEIZ-0003Lc-Kv; Thu, 05 Mar 2026 14:23:52 -0500
Date: Thu, 5 Mar 2026 14:23:50 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: robin@protonic.nl, andy@kernel.org, geert@linux-m68k.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dmitry.torokhov@gmail.com, hvilleneuve@dimonoff.com,
 mkorpershoek@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, lee@kernel.org,
 alexander.sverdlin@gmail.com, marek.vasut@gmail.com, akurz@blala.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Message-Id: <20260305142350.fbc6e19c89215c3a7da2a6c0@hugovil.com>
In-Reply-To: <20260305192101.2125660-1-hugo@hugovil.com>
References: <20260305192101.2125660-1-hugo@hugovil.com>
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
	* -3.3 NICE_REPLY_A Looks like a legit reply (A)
Subject: Re: [PATCH v4 0/4] input: add GPIO-based charlieplex keypad
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)
X-Rspamd-Queue-Id: 164542177A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=x];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271707-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[hugovil.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[protonic.nl,kernel.org,linux-m68k.org,gmail.com,dimonoff.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[hugovil.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dimonoff.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,hugovil.com:dkim,hugovil.com:email,hugovil.com:mid]
X-Rspamd-Action: no action

On Thu,  5 Mar 2026 14:20:46 -0500
Hugo Villeneuve <hugo@hugovil.com> wrote:

> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Hello,
> this patch series add a new GPIO charlieplex keypad driver.
> 
> The first two patches simply commonize two properties that are present in
> a few bindings, so that the actual patches for the charlieplex keypad driver
> can reuse them instead of also redefining them.
> 
> I have tested the driver on a custom board with a Solidrun RZ/G2LC SOM
> with three charlieplex keyboards, all connected thru a single PCAL6416 I2C GPIO
> expander.
> 
> Link: [v1] https://lore.kernel.org/all/20260203155023.536103-1-hugo@hugovil.com/
> Link: [v2] https://lore.kernel.org/all/20260213171431.2228814-1-hugo@hugovil.com/
> Link: [v3] https://lore.kernel.org/all/20260225155409.612478-1-hugo@hugovil.com/
> 
> Changes for v4:
> - Fix indentation in comments (Andy)
> - Add missing includes (Andy)
> - Remove OF dependency (Andy/Dmitry)
> - Uniformize return code variables to "err" (Andy/Dmitry)
> - Change signed iterator to unsigned and move within loop (Andy)
> - Remove unused platform_set_drvdata() (Andy)
> - Fixed typo in cover letter PCAL6416 (Geert)
> - Changed name in bindings example (Geert)
> - Added pull resistors to bindings doc and example (Geert)
> - Add debounce-delay-ms common property
> - Add settling-time-us common property

Please ignore the last two lines that were already mentioned for V3.

Hugo.


> 
> Changes for v3:
> - Add ASCII diagram in bindings, and reference to it in example
> - Reorder properties alphabetically
> - Add patch to define common input settling-time-us property
> - Add patch to define common input debounce-delay-ms property
> 
> Changes for v2:
> - Fix yamllint error for example
> - Remove unused debug variable (nkeys)
> - Remove support for custom linux,no-autorepeat DT property
> - Remove support for custom gpio-activelow DT property
> 
> Thank you.
> 
> Hugo Villeneuve (4):
>   dt-bindings: input: add debounce-delay-ms common property
>   dt-bindings: input: add settling-time-us common property
>   dt-bindings: input: add GPIO charlieplex keypad
>   Input: charlieplex_keypad: add GPIO charlieplex keypad
> 
>  .../bindings/auxdisplay/holtek,ht16k33.yaml   |   5 +-
>  .../bindings/input/cirrus,ep9307-keypad.yaml  |   7 +-
>  .../input/gpio-charlieplex-keypad.yaml        | 108 +++++++++
>  .../bindings/input/gpio-matrix-keypad.yaml    |   5 +-
>  .../devicetree/bindings/input/input.yaml      |  16 ++
>  .../input/mediatek,mt6779-keypad.yaml         |   1 +
>  .../devicetree/bindings/mfd/fsl,mc13xxx.yaml  |   2 -
>  MAINTAINERS                                   |   7 +
>  drivers/input/keyboard/Kconfig                |  14 ++
>  drivers/input/keyboard/Makefile               |   1 +
>  drivers/input/keyboard/charlieplex_keypad.c   | 214 ++++++++++++++++++
>  11 files changed, 368 insertions(+), 12 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
>  create mode 100644 drivers/input/keyboard/charlieplex_keypad.c
> 
> 
> base-commit: 3bf5404fc93825ddde89992acad095a297ed9a31
> -- 
> 2.47.3
> 
> 


-- 
Hugo Villeneuve


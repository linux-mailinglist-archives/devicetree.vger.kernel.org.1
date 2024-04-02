Return-Path: <devicetree+bounces-55340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01877894E15
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AF74B22B34
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 08:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62D851C4A;
	Tue,  2 Apr 2024 08:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="xUMedfTN";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="QAFhLlt5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3E15674A
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 08:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712048311; cv=none; b=PxQ4IxIKbmu0LuICAZSU6e7bEwtw5qMZTYTgoQKCT3tLUJjVMNmYtjw5+dcAE9rDMvjyNgnlcDZ4GcKBw9qOHdk+/jQ8Rf86DXdr6GVZsQN7g5UPbEqPqNRl5jsFIwYzoj5GyGmNnKnf4RvEqtdHnKjRiLW5TGNBZ5DtnIJ2fWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712048311; c=relaxed/simple;
	bh=ysxBLxjxOOwBO3pJn21wopXM/NJVD5xz7ZpyIwW6yHs=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=PGE87NaPpEcCPTSnVR4I7CsU3tewltC5M5nHLPgP8Zqk+mT74gryAi8dqQhyTEmjHsjSC/exca4BJncX3pI8LX2u9jNkzKUJNhILXH1pB4w5Mw+PzIHY6MtOdAzHjdmrPDRz4nQf61B4DDMCOiRlh1NYFT/JrTpF6gqvYHzNoFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=xUMedfTN; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=QAFhLlt5; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 56D90344A3;
	Tue,  2 Apr 2024 08:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1712048308; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zPekTSsqKbOOUYd7W01+StsjbXrhxyZVbWO8hjsLTjM=;
	b=xUMedfTNuREx6tMGBTf6fBNUqFyx5bO6yIFebiZhFAnqrIoKmYoaXbbmQzCV/U4DD1pnBm
	wxW1wHGIoNE+KgYlKQWqBa2qFcdX44VSIEMj0acT1OImOY/7ZN6ZG2AUAcribsW2Ynu9ZX
	bPkGV1f7PAMaL+8Ojiw9V+LCuFt9jdA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1712048308;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zPekTSsqKbOOUYd7W01+StsjbXrhxyZVbWO8hjsLTjM=;
	b=QAFhLlt5MWXVIqQHgq/bryRDMWVaLAdQpbBEUMkyEko8mVtpmxrIvW56SHP/OyTPLBNWFp
	yFLB05NxdETX6iAA==
Authentication-Results: smtp-out1.suse.de;
	none
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 4B66E13357;
	Tue,  2 Apr 2024 08:58:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap2.dmz-prg2.suse.org with ESMTPSA
	id UYtQErTIC2bOcQAAn2gu4w
	(envelope-from <iivanov@suse.de>); Tue, 02 Apr 2024 08:58:28 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Tue, 02 Apr 2024 11:58:28 +0300
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Stefan Wahren <wahrenst@gmx.net>, Peter Robinson <pbrobinson@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, Naushir Patuck
 <naush@raspberrypi.com>, Bartosz Golaszewski <brgl@bgdev.pl>, Broadcom
 internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Conor
 Dooley <conor+dt@kernel.org>, Florian Fainelli
 <florian.fainelli@broadcom.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Linus Walleij
 <linus.walleij@linaro.org>, Nicolas Saenz Julienne <nsaenz@kernel.org>, Ray
 Jui <rjui@broadcom.com>, Rob Herring <robh@kernel.org>, Scott Branden
 <sbranden@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 u-boot@lists.denx.de
Subject: Re: [PATCH v2 0/3] dt-bindings: arm: bcm:
 raspberrypi,bcm2835-firmware: Drive-by fixes
In-Reply-To: <20240327233700.GA21080@pendragon.ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
 <b044eec1-ae64-4de7-9ab0-e3fe756131ef@gmx.net>
 <20240327233700.GA21080@pendragon.ideasonboard.com>
User-Agent: Roundcube Webmail
Message-ID: <bcf8093ab0ea6f3738bf4a4623de700a@suse.de>
X-Sender: iivanov@suse.de
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.79 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_ENVRCPT(0.00)[gmail.com,gmx.net];
	FREEMAIL_CC(0.00)[gmx.net,gmail.com,raspberrypi.com,bgdev.pl,broadcom.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org,lists.denx.de];
	RCVD_TLS_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap2.dmz-prg2.suse.org:rdns,imap2.dmz-prg2.suse.org:helo]
X-Spam-Score: -1.79
X-Spam-Level: 
X-Spam-Flag: NO


Hi,

On 2024-03-28 01:37, Laurent Pinchart wrote:
> On Wed, Mar 27, 2024 at 07:49:38AM +0100, Stefan Wahren wrote:
>> Hi,
>> 
>> [add Peter and Ivan]
>> 
>> Am 26.03.24 um 20:58 schrieb Laurent Pinchart:
>> > Hello,
>> >
>> > This small series includes a few drive-by fixes for DT validation
>> > errors.
>> >
>> > The first patch has been posted previously in v1 ([1], and now addresses
>> > a small review comment. I think it's good to go.
>> >
>> > The next two patches address the same issue as "[PATCH 1/2] dt-bindings:
>> > arm: bcm: raspberrypi,bcm2835-firmware: Add missing properties" ([2]),
>> > but this time with a (hopefully) correct approach. Patch 2/3 starts by
>> > fixing the raspberrypi-bcm2835-firmware driver, removing the need for DT
>> > properties that are specified in bcm2835-rpi.dtsi but not documented in
>> > the corresponding bindings. Patch 3/3 can then drop those properties,
>> > getting rid of the warnings.
>> 
>> since this series drops properties from the device tree, does anyone
>> have the chance to test it with a recent U-Boot?
> 
> I don't have U-Boot running with my RPi, so I would appreciate if
> someone could help :-)

Sorry for taking me so long to verify this.

I think on RPi U-Boot side we are fine. API used when accessing Mbox
device do not follow DM model and do not use DMA, but just access
device directly using this nice macros phys_to_bus/bus_to_phys.

I build new DTB files with this patch included and U-Boot build
from the latest sources. No obvious issues on RPi3 and RPi4.
Devices boot fine.

Regards,
Ivan


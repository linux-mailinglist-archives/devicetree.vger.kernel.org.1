Return-Path: <devicetree+bounces-274681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MM6JIHgsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:49:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7ED274D91
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0264930117A0
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748DC3EF664;
	Thu, 12 Mar 2026 15:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Bj9mgZwf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE7A3CD8B1
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330558; cv=none; b=kUWR9/P+Mvc2IyS5V44s19ZfG8KrqZxXGuE5jkPhHxt6ZZcGkKYu7YSBWHpKAkjWoAtI/T66LnLzLm2uLgFHeDfJB2t3ryar6ZtgCNaOz3NzLU8cq2VRoTL7zzTtHzhE92wCRd95GxbpoGW/YkqwrDUz2TL/Td+EOrZKqzL4YBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330558; c=relaxed/simple;
	bh=mB3iCm12ycpL97uwPkYdKAsW7D8BBbA2KbGasFs2hWY=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=MdxMMKBxbvC/GLIxdXJinpvAi+PP3bApG7LJZsy10WDvigWJ5X1xrM45y487Z5eDfimmhLYWkFm72JAuDNaIWSoTqSFZkUYr3sDBb1ChEoLRcxjNll6H+y/qZFJGIIqqe9u6nt7MfVMGxxCRz24K//H9NjAXxsiLU2EGbw7WVCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Bj9mgZwf; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 851B1C415AB;
	Thu, 12 Mar 2026 15:49:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BCC076001B;
	Thu, 12 Mar 2026 15:49:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D6D3210369DD8;
	Thu, 12 Mar 2026 16:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773330552; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LWft2IuDuq3gWj7vHiAqmXg5tz6QNXv13e3vbAmAOiM=;
	b=Bj9mgZwfwTd8BGWw8lxI6srPI6WRdeU9r0c6qdFKrIp+X9t3BXdkzGufQLd3GIugrcO1n1
	hUeBAO9Hg2qaxgsbaUmkNzb0F/CLcVCluhYcJBHppdQBNIe0uIJ6bPCnsZbX1HlEuMMZen
	mhXYZIveFcHhmC7dH8cpNoQQsU0uWO20+wsoA4vIOPGiTzfSt7fd9uVeDuyuGexHGr6Zu2
	0KQgocSIi6LxBlRjAKy7A1LeGLbIucE9/f1rQ3bSiHaV3ENLDTVf2jsqmJvkLwXJNEnYuz
	9ep17E4UbOzEnsY7U1RC6Xu4JHGjC4msKJHT+HbGRoxBM/dyfjK+m7sc5EkVFw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Mar 2026 16:49:07 +0100
Message-Id: <DH0X7QW3AH3C.PRNRA8CRSSKA@bootlin.com>
Subject: Re: [PATCH v2 0/2] drm: bridge: ti-sn65dsi83: Improve dual-link
 LVDS support
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <valentin@compulab.co.il>,
 <philippe.schenker@toradex.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
To: <tessolveupstream@gmail.com>, "Marek Vasut" <marex@nabladev.com>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <9f694b2d-44bc-46ad-8aa3-b464c2f0da13@nabladev.com>
 <176ed865-11a6-42de-89e0-06951b59a430@gmail.com>
In-Reply-To: <176ed865-11a6-42de-89e0-06951b59a430@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,nabladev.com,intel.com,linaro.org,kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: 0A7ED274D91
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Sudarshan,

and thanks Marek for copying me, I hadn't noticed this series.

On Thu Mar 12, 2026 at 1:35 PM CET, tessolveupstream wrote:

[...]

>> +CC Luca
>>
>> You might want to look at recently posted:
>>
>> [PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual LV=
DS output
>
> Thanks for pointing this out.
> I tried applying the patch =E2=80=9C[PATCH 2/3] drm/bridge: ti-sn65dsi83:=
 halve horizontal syncs for dual LVDS output=E2=80=9D on top of the current=
 tree and
> removed the changes that I had previously added in the driver.
> However, with this patch applied, I am currently seeing only the backligh=
t turning on and no image on the LVDS panel.
> For reference, the LVDS panel used on our platform is G133HAN01.1 and the
> DSI-to-dual-link LVDS bridge is SN65DSI84ZXHR.

Thanks for having tried.

Can you please test with both the fixes in the series applied + the test
pattern feature and report the results you get with and without test
pattern enabled?

The patches to apply are:

 - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and-te=
st-pattern-v1-1-2e15f5a9a6a0@bootlin.com/
 - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and-te=
st-pattern-v1-2-2e15f5a9a6a0@bootlin.com/
 - https://lore.kernel.org/lkml/20260309-ti-sn65dsi83-dual-lvds-fixes-and-t=
est-pattern-v2-1-e6aaa7e1d181@bootlin.com/

> During our earlier debugging, we went through several trial-and-error
> iterations and also received support from TI. According to TI, when
> operating in dual-link mode the horizontal timing parameters must be
> divided by two before being written to the device. Without this
> adjustment, the panel either does not light up or shows corrupted output.
>
> TI also shared a set of recommended register settings for dual-link mode,
> which were derived using the TI DSI-Tuner tool. These settings helped us
> get the panel working on our hardware during testing.
> For reference, the register configuration suggested by TI is as follows:
>
> 	regmap_write(ctx->regmap, REG_RC_LVDS_PLL, 0x05);
> 	regmap_write(ctx->regmap, REG_RC_PLL_EN, 0x00);
> 	regmap_write(ctx->regmap, REG_DSI_CLK, 0x53);
> 	regmap_write(ctx->regmap, REG_LVDS_FMT, 0x6f);
> 	regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x00);
> 	regmap_write(ctx->regmap,
> 		     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_LOW, 0x00);
> 	regmap_write(ctx->regmap,
> 		     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_HIGH, 0x00);
> 	regmap_write(ctx->regmap,
> 		     REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW, 0x10);
> 	regmap_write(ctx->regmap,
> 		     REG_VID_CHA_HORIZONTAL_BACK_PORCH, 0x28);
> 	regmap_write(ctx->regmap,
> 		     REG_VID_CHA_VERTICAL_BACK_PORCH, 0x00);
> 	regmap_write(ctx->regmap,
> 		     REG_VID_CHA_HORIZONTAL_FRONT_PORCH, 0x00);
> 	regmap_write(ctx->regmap,
> 		     REG_VID_CHA_VERTICAL_FRONT_PORCH, 0x00);
>
> If it would help, we can test any proposed changes on our hardware.

The first thing I suggest doing on your side is testing with the 3 patches
mentioned above.

If you display works, good! Let us know (you can also add your Tested-by /
Reviewed-by tags to the test_pattern patch too if applicable).

If it doesn't work, compare the individual register values to find the
differences, try to figure out why the working setting works and how to
apply that change to the driver in away that keeps other boards
working. You're welcome to come back here to discuss it in case you can't
find out on your own.

Hope this helps,
Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


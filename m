Return-Path: <devicetree+bounces-302941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KNQCmBnFWqtUwcAu9opvQ
	(envelope-from <devicetree+bounces-302941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:26:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4E85D344F
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68B6E3003326
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC6D23AC0FF;
	Tue, 26 May 2026 09:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b="MbXe9j8A"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com [136.143.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379F734AAE9;
	Tue, 26 May 2026 09:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787206; cv=pass; b=g14BdsZ5Buba2QiIjUawfE0Ji40CU6BCIAHXGtqnz1W7GRUjP7AUhbyBD++LBTUIX0vl0gcWCsaPiJkp7d2JwX7i6VLjb/MKOzQKkT5bm1RDQ3BOkfdJbStrDMFvHvv8U7lSqSzJt7v9Cf+LMRGYxaI6Pb5Z90M19iIjxwkahHg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787206; c=relaxed/simple;
	bh=nCqhwy+2ujGt6hAMaw92uzGrsq61xTHnymvFNK/1HWc=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=VDLEzAaa2NlPPZYdXCiCU0QHzj1AsWYrsQG17+XVtpotoZr+sIi/x3eBWI6Ui/aC0ey4120uB5KIhRYPRwDv2sy8GTOYI83JXOB9dQXA4SkGAM5aN7AC6qAUN1qruZGYymcjPIcmAiTJaGPR8DYA8ic1jwuyIKEjbCdof/y81mY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech; spf=pass smtp.mailfrom=pigmoral.tech; dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b=MbXe9j8A; arc=pass smtp.client-ip=136.143.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pigmoral.tech
ARC-Seal: i=1; a=rsa-sha256; t=1779787168; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=JIrEVqJ0TMbi0HtAi0k5V+51uQCyo2vmQ9PKNOfSQtrHNYPTeFAcAiBABel03mgbMQjwxoGoWikHE5yABgRVvfx7Ee12bPZ42+YHzsfbuu8r5bi7tROZptsKuCVlSFdMRiZKMPXFuMMp2pk3rC+XS8Pzq7n8niiYaZBpusJn3u0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1779787168; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ywuraUoobG5iXyRju55nMkUCMQe8hLMWoiieILN/9+Y=; 
	b=l1lAVHamrrefVTmM0MHl6njbyTFyjb/1QunIro9rEijAosUxCVTf6l3GYIMvaEas/7cmEQmyx2mlptWfnhTSkEnoD67tjjnwPOTcCu1OMPVwkdwC5aaxTKQPIjEU7uueUjhLsEMusoVuZC03YwfZiX6tCrdNUDC+QO30bzXNZsw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pigmoral.tech;
	spf=pass  smtp.mailfrom=junhui.liu@pigmoral.tech;
	dmarc=pass header.from=<junhui.liu@pigmoral.tech>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779787168;
	s=zmail; d=pigmoral.tech; i=junhui.liu@pigmoral.tech;
	h=Mime-Version:Content-Transfer-Encoding:Content-Type:Date:Date:Message-Id:Message-Id:From:From:To:To:Cc:Cc:Subject:Subject:References:In-Reply-To:Reply-To;
	bh=ywuraUoobG5iXyRju55nMkUCMQe8hLMWoiieILN/9+Y=;
	b=MbXe9j8AZm5LEtY1vZiSmrOe/H/ptnBsC4rQ08l7O0GlUi4GTvGcVOlYDEhXSoDZ
	T3tjeBb+EbTjx9NPvuJaj+EklyunZR/ihV3Hc7JKe7T9Eoz50zv1kz0iD8lkjOf4Rhv
	loa7g/XsebwtQXeZ4KSEM3NnDCCrIrjqh9euFkUM=
Received: by mx.zohomail.com with SMTPS id 1779787165669872.6342516749677;
	Tue, 26 May 2026 02:19:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 26 May 2026 17:19:10 +0800
Message-Id: <DISHW1IU3XJB.2WPBE8JXZUO54@pigmoral.tech>
From: "Junhui Liu" <junhui.liu@pigmoral.tech>
To: "Yixun Lan" <dlan@kernel.org>, "Junhui Liu" <junhui.liu@pigmoral.tech>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Paul Walmsley"
 <pjw@kernel.org>, "Palmer Dabbelt" <palmer@dabbelt.com>, "Albert Ou"
 <aou@eecs.berkeley.edu>, "Alexandre Ghiti" <alex@ghiti.fr>, "Vivian Wang"
 <wangruikang@iscas.ac.cn>, "Paolo Abeni" <pabeni@redhat.com>, "Guodong Xu"
 <guodong@riscstar.com>, "Yangyu Chen" <cyy@cyyself.name>,
 <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
 <spacemit@lists.linux.dev>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] riscv: dts: spacemit: k1: Split gmac_clk_ref into
 independent pinctrl groups
X-Mailer: aerc 0.21.0
References: <20260522-bpi-cm6-v1-0-707ef1917a30@pigmoral.tech>
 <20260522-bpi-cm6-v1-2-707ef1917a30@pigmoral.tech>
 <20260526044808-GKA3727415@kernel.org>
In-Reply-To: <20260526044808-GKA3727415@kernel.org>
X-ZohoMailClient: External
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[pigmoral.tech:s=zmail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302941-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pigmoral.tech];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[junhui.liu@pigmoral.tech,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pigmoral.tech:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.941];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pigmoral.tech:email,pigmoral.tech:mid,pigmoral.tech:dkim]
X-Rspamd-Queue-Id: 2C4E85D344F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Yixun,

On Tue May 26, 2026 at 12:48 PM CST, Yixun Lan wrote:
> Hi Junhui,
>
> On 18:01 Fri 22 May     , Junhui Liu wrote:
>> The gmac_clk_ref signal is optional for the GMAC controller and is not
>> strictly required for all hardware designs. In several already
>> upstreamed K1 boards, this signal remains unconnected or the
>> corresponding resistor is marked as NC.
>>=20
> I've not checked all exist boards which already accepted by mainline,
> but just ask, to be sure, none of them actually used clk ref pin?
> otherwise we will result with a broken GMAC/Ethernet driver..

I've checked the schematics of the already mainlined boards where the
schematics are publicly available. All of them use on-board 25 MHz
crystals for the GMAC PHYs, and the GMAC clk ref pins are either left
unconnected or routed only through NC/0R option resistors.

I could not find the schematic for the OrangePi R2S. However, the
board picture [1] shows on-board 25 MHz crystals near the Ethernet
PHY area.

To avoid changing the existing pinmux behavior unnecessarily, I think
it is safer to keep referencing the gmac*_clk_ref_cfg groups on BPI-F3,
Jupiter and MusePi Pro. On these boards, the pins are physically routed
to the PHY through NC/0R option resistors and cannot be repurposed
for other functions anyway. Keeping this configuration preserves the
previous behavior and ensures the optional hardware path remains usable
if those option resistors are populated.

For OrangePi R2S, since I could not verify the schematic, I will also
keep the clk-ref groups to preserve the previous behavior. I will only
omit the clk-ref groups on OrangePi RV2 and BPI-CM6, where the pins are
not connected to the PHY refclk path and are used for other purposes.

I will update this in v2.

[1] http://www.orangepi.org/img/r2s/details/1.png

>
>> Furthermore, the pins for gmac0_clk_ref (GPIO 45) and gmac1_clk_ref
>> (GPIO 46) may be used as GPIOs for other functions even when the
>> Ethernet controller is active. Splitting these into independent groups
>> avoids pinmux conflicts and allows boards to use the reference clock
>> signal only when it is actually needed.
>>=20
>
>> Fixes: 60775f28cfb7 ("riscv: dts: spacemit: Add Ethernet support for K1"=
)
>> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>

--=20
Best regards,
Junhui Liu



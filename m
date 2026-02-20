Return-Path: <devicetree+bounces-266944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFHUEFNemGmOHAMAu9opvQ
	(envelope-from <devicetree+bounces-266944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:14:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EF7167B85
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:14:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 292B7307E0BD
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DB9346798;
	Fri, 20 Feb 2026 13:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="CwUB66o7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934BC346763
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771593290; cv=pass; b=lHniOfVO+ixhdVfpWrMTYmkWvLMYGnZWTorsnhEv52za69NCmf7QtpFtfUVrC236XnQiP6Q/dS7dEEnaZlAI/R9boCKMFXc3f7x4fmmBwsUwT6AEOFIGT7piKivS11w9JYmBvS/af28ILwzofFzhKyULF2l1fAEJLF7VG0ZVkQw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771593290; c=relaxed/simple;
	bh=qM+yIWyw0RFaLdOwB/33YpLqhLZR8QofbkQnw3Dellc=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Peh18NmTHdo28rfZMnjXlyyFsh8eKGKI869r30SRoagUtT45SGbOFry/TVhezbDdOISpbptK+i2t34Sad5ZaMuSz8qUHW39RuDmYwmryTx8lX0FXZ9+gCef9SaUjEPb6iYFR/zEUgsqXpgQgLHSI/cpAfGchWCSwl1U5KA7axoU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=CwUB66o7; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=2MjKH69EZTy6SNbmhiR8H7qrxFI437dSH1xWPtNSfHA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771593262;
 b=SuCh+wENVX2U47fyaoA0YgqhBJDjUB+nEQ7TLmgqVrRGQAJ5EvgIizEjkyx4A0GQt5nHOMyr
 Dax8aFraxaeZhFudWcNIXuLlxJGzCJ2DnwIOAdAPKo8INTNfdK4xtxGG63WulPHdvgCCAfQNUgs
 9MHx0k5cv7wmh69q+ep49UeamGf7/jamn7E1XGb1fJfXxB96Tv/4M1w7udMOWZGLpkDI+PFbz1E
 qa42GseoT4dSpKf164so/mf/aLUK3xGFr8gRKmsFlnXT4z76kuPTQ2KjwYcsM+iUHxxlhtFD8bL
 Wb6SrfYoosUk33IHheSSRr66Pm1jRQa9pL9W+DZX3nUSA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771593262;
 b=jqCzFfxu9LiSbY3Jz4jIzkSDhr7SV8c9EZ3qZ8HZQ2o4a1wo49+v0VRJgpd3T6zHMNQMEb6E
 v4aOj2K3/l4o8W3UeReAqB6LL85Qj3rHkhbM0tuSLVnS3/PHIdD9cra1v9jvWJ4//iF9XxomQH0
 87KoRccOGEhjd4WUzVaKvVNGGUKxPcGWFO5Ida7Ryjb105Gf+AcNp5P5GeTGXxHWUXXd3+AWkQl
 8HxGaWQnzBb4lMyE0H8b9jbKOIMeFdkR5ulUOsgSYUKIgUEw6KRvxw0Rj9Ty1GAl0hlUa0BZr5j
 w7wuIv//jHWogqREDWyz8q1roM6FP/2G1yVOxCxomvzCA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Fri, 20 Feb 2026 14:14:22 +0100
Received: from [10.123.75.134] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 0DBFDCC0E8B;
	Fri, 20 Feb 2026 14:14:15 +0100 (CET)
Message-ID: <d1a87e01-f887-44ad-9b95-08c0e29be6ee@ew.tq-group.com>
Date: Fri, 20 Feb 2026 14:14:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: imx6ul/imx6ull: add boot phase properties
From: Max Merchel <max.merchel@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>, Fabio Estevam <festevam@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux@ew.tq-group.com,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
 <20260218132339.32157-2-Max.Merchel@ew.tq-group.com>
 <CAOMZO5B5k_i_q4cd7SMNAkicF4WfEYNVUSrg8AamQHNpGys5mA@mail.gmail.com>
 <be39b302-a29b-4dcd-a3f1-1f3781476951@ew.tq-group.com>
Content-Language: en-US
In-Reply-To: <be39b302-a29b-4dcd-a3f1-1f3781476951@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4fHW1358Myz1kNt4C
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:7ee22832e241a6dc12898e584eefa700
X-cloud-security:scantime:2.706
DKIM-Signature: a=rsa-sha256;
 bh=2MjKH69EZTy6SNbmhiR8H7qrxFI437dSH1xWPtNSfHA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771593261; v=1;
 b=CwUB66o7LjpTO1ofD8E1Wf2ewhAoHUSyOAMUUkojSUIdR/26n0o02G0VCXkayKR+iIOXGNa/
 weeJUWEjN67aoU4o9bebd8q0j4Q4uBlFwFX6GW307dOgxDAJeL2MWAbR8jeKHjhH0WGVJ8DsJaq
 tpPVJjd5MSwmdUwH9mvW94rYClHjQcRuqxR9jvGcqnTmTYa/Axd8yKUodMhEpMVdwq9XpalkRol
 KTqyOiN6syuiXot/saVgPgspRYqEKAb1uT9ducrklxMCO1YtHrkF8s/qAlr21IvT5dwqKzEcOyE
 O+I6Zvg+5EOc1Mx7XVNGF42b5x5bDXycp30ovKfaDMtdg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266944-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1EF7167B85
X-Rspamd-Action: no action

Hi Frank,

I forgot the boot property for the spba-bus in imx6ul.dtsi.

If Fabio gives me feedback on my suggestion to improved the comment 
messages, I will send a V2 at the beginning of next week.

Am 20.02.26 um 13:10 schrieb Max Merchel:
> 
> 
> Am 18.02.26 um 19:14 schrieb Fabio Estevam:
>> Hi Max,
>>
>> On Wed, Feb 18, 2026 at 10:24 AM Max Merchel
>> <Max.Merchel@ew.tq-group.com> wrote:
>>>
>>> Add boot phase properties from U-Boot device tree.
>>
>> The commit logs of this series could be improved. Please take a look
>> at these examples:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ 
>> commit/?h=v6.19&id=256feb5be482315a91c1bd1a1808276f57ef76dd
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ 
>> commit/?h=v6.19&id=2285ea3f8065f47a6a1b62e6fcfa85105c8c261b
> 
> Hi Fabio,
> 
> I can add sentences to the commits, including the properties, for example:
> 
> dtschema/schemas/bootph.yaml describe various node usage during
> boot phases with DT.
> 
> All SoCs require buses (aips and spba), clock, iomuxc and SOC access 
> during boot process.
> 
> 

-- 
Best regards,
Max

TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
http://www.tq-group.com/



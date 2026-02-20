Return-Path: <devicetree+bounces-266933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLAiI5xPmGkBGAMAu9opvQ
	(envelope-from <devicetree+bounces-266933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:12:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D8216770C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 13:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B4143052893
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B23E342C8B;
	Fri, 20 Feb 2026 12:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="cTkKjOOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay10-hz2.antispameurope.com (mx-relay10-hz2.antispameurope.com [83.246.65.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E8631AAAF
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 12:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771589529; cv=pass; b=kqw7v+fZkgKXndTnXwKZO8JKDbGFVnERn30BId6cZemY4V2vtX/ub6cl/DrMWxsU4R4WuueeLwlAXtho4CWcpDwsC3W+sL09ckHFX3I6lqcwpQ0vh0lNylTMmWvKqXO+y4MBrqXTB56l9CuFB+w0ve5Upuem/CPqrhSNKLFtiGc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771589529; c=relaxed/simple;
	bh=3jSdrfj2eKFqoMZBF1XMq/DvR8ejwwKX90MQN/7vRKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ip4X3AGXqV4qDsWOHMIHUbs3qTCjAxpbDJXpbcpl8vJotz1xBXgmMHzURdZjpJhHejkJa8Drus9+52yE3HZA4NDEO3+p4USlMoP1er14uwEwIPmJazcL0RbBn6XGRDguxvB4IU7Ty55m4pFhQ0UGPPt/G3V+XNztRkc1eJj0WxM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=cTkKjOOl; arc=pass smtp.client-ip=83.246.65.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate10-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Y8euMMd7ovn1uCyxnqZ+G2FrrL0KvzYCdQUy11Pfe3E=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771589435;
 b=joVhI1Y3Kd+y5716NqQCgTPJf1Wux8lNei0aNNs2MW7FptGbSjMgH+jk1W28RWQNH+YHXYZC
 hwX/Dk0DWXLAQdzfdb8yqQ3LR9dlLmbR5UVad6GVPL6mZOQKrYw22WvZiqs1Z6ngMhSrKuF7sqa
 iY2nrMueQdKACGjF0pD9FueJRMaeR2eDLVJdERvW5Cz6ZiQ9Ff3sWUD48xdt3L/faQUPRzGoCZU
 T1H27aXVcZXL5AIooQVqZRrj1MfFXsvhNZ355MxaS/5C7/oIE2KHUnZiZdGV1MxEqPQHnKhgiiR
 T/MztIaD1DV7wT+SNtA9vFp8ARaNL32tQIzbC0QRh06Ow==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771589435;
 b=AlzPw7wV3Z+7xgYeeIDhfdEdf1zEApgMfmi0ALZb9u/73zJotKeFRv2EF/gK48kkLmftuwas
 PnHnqLTxm+aQTJEy/nJe+9EjmDCju3dZI1SC7Mf2p9qb/Vj6j29om2WTBhnM2A33Ofi98Vj4TyT
 ugcN9xXipibxTffX/XEHDpgcEl5yOJ4n2+rjYdd2ckIQlMw7sOT+oHomh9scDkz7AweWO6hd2rt
 Ny2+qq6M0mviupSPbCvIXbj3hV8wdRsbaqZ/qaHyArpiGceOGKaT5dWq6fBGOtb13MgVhUFOSyo
 HweyiNc+X+AExDw6n133Ei9KidftfI79vYtSd49KKEQ7Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay10-hz2.antispameurope.com;
 Fri, 20 Feb 2026 13:10:35 +0100
Received: from [10.123.75.134] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id ADD93CC0CB6;
	Fri, 20 Feb 2026 13:10:23 +0100 (CET)
Message-ID: <be39b302-a29b-4dcd-a3f1-1f3781476951@ew.tq-group.com>
Date: Fri, 20 Feb 2026 13:10:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: imx6ul/imx6ull: add boot phase properties
To: Fabio Estevam <festevam@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux@ew.tq-group.com,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
 <20260218132339.32157-2-Max.Merchel@ew.tq-group.com>
 <CAOMZO5B5k_i_q4cd7SMNAkicF4WfEYNVUSrg8AamQHNpGys5mA@mail.gmail.com>
Content-Language: en-US
From: Max Merchel <max.merchel@ew.tq-group.com>
In-Reply-To: <CAOMZO5B5k_i_q4cd7SMNAkicF4WfEYNVUSrg8AamQHNpGys5mA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay10-hz2.antispameurope.com with 4fHTbN2hRzz4FJRR
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ecebb1631c20b4aa5b2d1e856db1193a
X-cloud-security:scantime:5.080
DKIM-Signature: a=rsa-sha256;
 bh=Y8euMMd7ovn1uCyxnqZ+G2FrrL0KvzYCdQUy11Pfe3E=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771589434; v=1;
 b=cTkKjOOlKL55+2rR77bC+KT/OhXQupFVkbVnr4OQLjt6MaOKFGiRq8sSNpeJFTqNkchUG8Xs
 4L6Zo+3DziKUMZEnBystlc5DyHk+uAh+NBdjAAtpeb7/X8L1Y8IgPKz/U7S5iSpHElh6gW2yR0D
 0n0jz+JsNr7vRXWlX2q0KuAh4nYe/st5nA5mA94WZzyGUdDjCDwdvVbo9gGV1C90J1BjLkRii8A
 MudCmvwhCD+BY5o5J+3A7MDygUjFMCAb/4K1B48fwXxAHwvuersOiyj+asK1tDyLupveXrsYbYZ
 TW77kiEeyeWrYVPPginxGcnLdpZf99YleK6n4JYsYJVig==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266933-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:url,tq-group.com:email]
X-Rspamd-Queue-Id: E1D8216770C
X-Rspamd-Action: no action



Am 18.02.26 um 19:14 schrieb Fabio Estevam:
> Hi Max,
> 
> On Wed, Feb 18, 2026 at 10:24 AM Max Merchel
> <Max.Merchel@ew.tq-group.com> wrote:
>>
>> Add boot phase properties from U-Boot device tree.
> 
> The commit logs of this series could be improved. Please take a look
> at these examples:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?h=v6.19&id=256feb5be482315a91c1bd1a1808276f57ef76dd
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?h=v6.19&id=2285ea3f8065f47a6a1b62e6fcfa85105c8c261b

Hi Fabio,

I can add sentences to the commits, including the properties, for example:

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

All SoCs require buses (aips and spba), clock, iomuxc and SOC access 
during boot process.


-- 
Best regards,
Max

TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
http://www.tq-group.com/



Return-Path: <devicetree+bounces-312617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gqEELlZuMWqbjAUAu9opvQ
	(envelope-from <devicetree+bounces-312617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:40:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19815691426
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:40:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Onak4tcL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312617-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312617-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20CDA31F5852
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2EAA44BCB0;
	Tue, 16 Jun 2026 15:32:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958EC449EAB
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 15:32:56 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781623977; cv=pass; b=gQarf6DZiHxe8gQl+Bnh0JdNoRnU0ueU6ehmUE04g6WfjtsH7a411R0Ukz0kpzHoCVTIjcCYG63pcFqpcoiSL4sUQOyuGDmNjNKBCPJK9YcHbI0aFo8rmNfLjUjJXaPG3pGjwUe6Cbp4+v4PmV2zMxqFSAo5apxDvjtDpK/ExAg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781623977; c=relaxed/simple;
	bh=9ryEeEKN34qoxZ5iOwtkmdOLrQqqwl0md2Lu6yLAkww=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZuvRuqqpxDvzpxnECpy1DrFhGR+Mul5gIP87mo3HhLBCpknLQ2vV8FafqDRXj6BNZq1vxO9DfqSBKVwJqbM0EyVSegBhPvDZjjXjVbUJXzKAXLRyh1ZlnVz0P31UFa5iC3wBEv16XLk/ZZR7b7DLcF8reW4G2c2o6UoqT/3O604=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Onak4tcL; arc=pass smtp.client-ip=209.85.208.53
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-68bfcf11050so7953786a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 08:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781623975; cv=none;
        d=google.com; s=arc-20240605;
        b=FAH72CbSE8FxfIsDLcZ6jxXLZ/K+lO8T2Zls/WYocTGmbuFR3K68tJOhPPyJpoYxOR
         vegL3cWnnAyNhIBy/a60SO2tYqd7eg6nnXif1p4g+gq6i46o5timnY922s7SyQalGFyp
         XZk+1C/tDIk2KoMBngHxZuJUMB/JFv7HeaUSHf4c2TCRnMbcVZfqasE/L1VYE/irkvPG
         HoEfHrsaFC4OLHIccBFOfQnu5n5cYRWV3XVmgZFu5T172my3RessFQzx3E6PyN6kKgNh
         UzwYq4y+lqxUgqw+YsUkbGROdbVyq7P4w8I7DIyyMn0/ilzv5yiwClYL8x1Bq+/SXcmO
         C0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pfw1ICkm7+kbiLyNwGHlM24bHrY+azb4TocUjKCxBR0=;
        fh=dEaiBz/DNwAFWJa7Cd2+mV2jgpwvpUDbXndS7Ggr7b8=;
        b=Al2xgqSG27qQyqPanHgyfkf/W3P/UbGeQwIpG9+X3J8RpXlvBDsCHuuH1gMSdjMxvt
         an5U6F4fqaKRs5aZVWdjr1TxAFO9UO06ATWXe2+qSawKAsQgt4XuaZqw7VxFkimus3xu
         7HusJPS4OBS2jmHKJu/X3BtQ+2CRG/aaWUE6UHkhsI0UTKL2cW9B3a+lobpQvgW+Nw2K
         E7xXol/hVK9ed0HeaHCE62LWpoe32KD7YLEI23WChuoHuAA4hb/bKULbuclRNvGk+Lc6
         Do5fcZserZtnVGViu77hxmpyzuSasDKfFuSgC4fNFfH9vCTpeR5Mhgs6sjspwIN9vv/u
         X/sw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781623975; x=1782228775; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pfw1ICkm7+kbiLyNwGHlM24bHrY+azb4TocUjKCxBR0=;
        b=Onak4tcL5vSFVX9zbAMb5EL2enSwZMolN7dPWdBSvZ1YfGpRrRAmfSvARvhFef6wof
         cC1Y57VJB8c+fnIbL1ggRxC/ShwE7AfDkiBBgip58TToDiFW3fA3wUAG661aMIgBZy5E
         SvYJygCDWsbciA7gnkRjAf0+6qbp5J+oDrUfJJ5CuV89vaDeClKgzEYShVIN39M5na9F
         MtV6ZOalGVHYMCzSzsjn8b7nV/wOPpSRMDIDsiqHMOOnPd5gw80xGoQ7oxiDqIn59UeP
         HaACvImgUJGUu0jZ1c9ookZx7k8MQ1W9qy14X226sVAmTI1chWtEuNtxtyZhbUXP+Wvc
         exyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781623975; x=1782228775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pfw1ICkm7+kbiLyNwGHlM24bHrY+azb4TocUjKCxBR0=;
        b=qa/eL5ds+FqUG/ZuuibmCZ6aAWT3zJYoNd+OLd9vTMpURw/ysX6wcMmCtxzizxrSxy
         zQFuZqKlx0dfZchsPIleFIqlb9UAd/VkuCWtGI/g0RHqVC3EA8TgvMMaOFtqw3ZjZwFh
         GNKZfUy1nu7SVadCuR1neAVb1RnUrTPb8Th+OzFoE9A+NJXF35HaWX603Ra9mU+I5U6+
         1Yienh7Br8rAG4VQgbfQ43av1WFujTjLP1xesC6xYFB2sqLEyEf1mvPFKN2dNvjWxXsO
         kjF1QBzP7F5z0Z0t/aoQcdsSE8TGfspGi/Jbqa7BBueelD7XHai1zmZPV5BpwSyJ5pgf
         Oh7g==
X-Forwarded-Encrypted: i=1; AFNElJ+5jwGMiFzW9R8FabH9slTtRv2ZXJcrmp+cYoR0YaQfvqXF2hwNcXPkKmTHyW5TAJrgdyZgqib5Fsle@vger.kernel.org
X-Gm-Message-State: AOJu0YwHlEE6n3QzjCzVD8edngl/3Ah+VBo+TzG8jUNDnkC8ph3UOwmf
	oandWEyXlYFVxzHDviUY2L+uc/RnddCAC02wzWQmKPoeyX5CUankfyRhhwUZITTNDY9tc3fGxGL
	2dj12EnYEkz9e4aPXyRCJHB5j50rF2SM=
X-Gm-Gg: Acq92OEnVpdh9hw//FoIYncPXIMY3pCJGKjao8gswvzpOjsV8H9p5x3gOk8EC5DM0jh
	+KKHoucUzjd0IlGi6AmRebDdcnkWWZAE3BH/ywdy3eivh1+B9hFDcBSpogcsqF+gqAwdNmgOzu4
	OqOJjIHXAXSzWX3dFL4ZXnAdfPJxvlsx8q6GDKhX/0KxtpQ7GQ5VelyNzjpmgji6+TCwd7J98jj
	iuBi6LnUCgGvlyrsk2+Jr7MV3jhDdTWrmfYyBb6dILIiRA63zf9+r/j/W5nsecO2P5CmrSCp/I2
	e5zb0A==
X-Received: by 2002:a05:6402:3488:b0:68a:c8c8:bf70 with SMTP id
 4fb4d7f45d1cf-6950875d069mr2423072a12.26.1781623973864; Tue, 16 Jun 2026
 08:32:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615071836.362883-1-l.scorcia@gmail.com> <20260615071836.362883-10-l.scorcia@gmail.com>
 <20260616133918.GA2335264-robh@kernel.org>
In-Reply-To: <20260616133918.GA2335264-robh@kernel.org>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Tue, 16 Jun 2026 17:32:43 +0200
X-Gm-Features: AVVi8CcxGgSJDcwyWDi8AM7eUTYUD6802ufCx2_1yb4EtV-skFio6HexhMd5f18
Message-ID: <CAORyz2LiMHnaTK6QnsLxJDtw0fZ_N9LELw0iCorOZwHuWXus0g@mail.gmail.com>
Subject: Re: [PATCH v7 9/9] arm64: dts: mediatek: Add MediaTek MT6392 PMIC dtsi
To: Rob Herring <robh@kernel.org>
Cc: linux-mediatek@lists.infradead.org, Val Packett <val@packett.cool>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sen Chu <sen.chu@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
	Julien Massot <julien.massot@collabora.com>, Fabien Parent <parent.f@gmail.com>, 
	Akari Tsuyukusa <akkun11.open@gmail.com>, Chen Zhong <chen.zhong@mediatek.com>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312617-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:linux-mediatek@lists.infradead.org,m:val@packett.cool,m:dmitry.torokhov@gmail.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sen.chu@mediatek.com,m:sean.wang@mediatek.com,m:macpaul.lin@mediatek.com,m:lee@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:linusw@kernel.org,m:louisalexis.eyraud@collabora.com,m:julien.massot@collabora.com,m:parent.f@gmail.com,m:akkun11.open@gmail.com,m:chen.zhong@mediatek.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-gpio@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:parentf@gmail.com,m:akkun11open@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,packett.cool,gmail.com,kernel.org,mediatek.com,collabora.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19815691426

> >  arch/arm64/boot/dts/mediatek/mt6392.dtsi | 75 ++++++++++++++++++++++++
>
> Nothing is using this so it is a dead file that doesn't get tested.

Hi, it's not referenced as the dtsi inclusion was removed in the
original patch from 2019 for an easier merging of support for mt8516
pumpkin boards [1][2].
If you prefer in the next revision I can add another patch to readd it
to the existing pumpkin board.

I am working on a few boards with MT8167 (Xiaomi Mi Smart Clock,
Lenovo Smart Clock 2, Sony Playstation Classic) that reference it and
these have been used to test it locally too.

[1] https://lore.kernel.org/linux-mediatek/20190323211612.860-25-fparent@baylibre.com/
[2] https://lore.kernel.org/linux-mediatek/20200229170401.1287324-2-fparent@baylibre.com/

Thank you
Luca


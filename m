Return-Path: <devicetree+bounces-82307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D81923D56
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:12:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5627B2214E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 12:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0431615CD75;
	Tue,  2 Jul 2024 12:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TAv7+JpL"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DED15D5AB
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 12:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719922360; cv=none; b=kAObQoVHb+eWJOUrnIZhL5qGkFFf1O+qg0m8isoHVsm0zUXJFEP2gv0LbbN2yRfWLE0Ts4allRjJtzlXnTxTEI7BEre8Fds1aLFhsOfriV2yJogotAwTypEYTVqhZ6OihJGYoTSTqatq1b2rleIufciu+76G5+0ACEQwFZfruh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719922360; c=relaxed/simple;
	bh=qecD3oTzye18Eqo4/G5hS4HY/xXuOOD8C5cYy7HghNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=nbwcirRNFu8HEcxRlWY8uCOvRC2O/SwjXU74wxpnIdjWRkMQA+xjmiIyYKCN2lRMYdvrlfCeWeafTnez8HEzR+hJlvbpByOwbo7TZeGBNNxL0sgG++is1LueNiV3oLthNX2D1NdygYTmZLuu3Wm8RW5b/wY7CqR8DKkU+rxLry8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=TAv7+JpL; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719922357;
	bh=qecD3oTzye18Eqo4/G5hS4HY/xXuOOD8C5cYy7HghNA=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=TAv7+JpLRE7MMNaDnPSmHii+WoswkDSLhkBMlxDh7Uqx56u8cycBkDYOI9aq3UqxW
	 nGfDHHWKzjywaZzOvVvjUhfijzb+pqqEHV8bvNdaty05ORG7gocih8UW8Sp75wZ/0o
	 xbZ7fpRhMVXmiilQHP3n2pIqeH3bKhDezVTIDdaecmSE7Ck91N9iOTSN15Nrdsvi1V
	 Eed2dpEqQqkIc22ramtqJMk7lLx53Eyd1FTPT+dE6lW1NUw8SX6AMlLYucBwrkE3iS
	 KwFPGpMPUv1nzzJs9kOSZqPYj3XiyrWJslAHyaYKIiHqFTZLdwK1/WC2wiyLZy81Rg
	 YAP860Njs5HdQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DA23B37820A7;
	Tue,  2 Jul 2024 12:12:36 +0000 (UTC)
Message-ID: <ae8f3014-0260-4e22-91e1-77d61e2c2d09@collabora.com>
Date: Tue, 2 Jul 2024 14:12:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Duplicated bindings for mediatek,mt8173-scpsys
To: =?UTF-8?B?VGluZ0hhbiBTaGVuICjmsojlu7fnv7Ap?= <TingHan.Shen@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sean Wang <Sean.Wang@mediatek.com>, "zajec5@gmail.com" <zajec5@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>,
 =?UTF-8?B?RmFuIENoZW4gKOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <7614ed44-7613-4912-9b4b-62c92abbc9bd@gmail.com>
 <faa4a9a8a3f0416f3e2ebe5ecf3b3afff5f490d1.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <faa4a9a8a3f0416f3e2ebe5ecf3b3afff5f490d1.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 02/07/24 03:58, TingHan Shen (沈廷翰) ha scritto:
> On Fri, 2024-06-28 at 09:57 +0200, Rafał Miłecki wrote:
>> I noticed that "mediatek,mt8173-scpsys" compatible is specified in two
>> places:
>> Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
>> Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml
>>
>> The first one seems to be "real" hardware block. It also has a Linux
>> driver at drivers/pmdomain/mediatek/mtk-scpsys.c . It also seems that
>> scpsys.txt was first added explicitly for MT8173.
>>
>> The later one seems to be "just" an MFD with no real driver but it
>> seems to be actually used in arch/arm64/boot/dts/mediatek/mt8173.dtsi .
>>
>> Can I ask for some assistance sorting this out?
>>
>> Relevant kernel commits:
>>
>> commit 26331d261f49949bff6477fc9c844b17076fa245
>> Author: Tinghan Shen <tinghan.shen@mediatek.com>
>> Date:   Thu Aug 11 10:57:59 2022 +0800
>>
>>       dt-bindings: mfd: mt8195: Add bindings for MediaTek SCPSYS
>>
>> commit c84e358718a66f76ac0de1681d15d8d0c68fcdab
>> Author: Sascha Hauer <s.hauer@pengutronix.de>
>> Date:   Wed Jun 24 08:17:04 2015 +0200
>>
>>       soc: Mediatek: Add SCPSYS power domain driver
>>
>> commit 859e42800bcfc4db9cefaa2c24d6e3a203fe961d
>> Author: Sascha Hauer <s.hauer@pengutronix.de>
>> Date:   Wed Jun 24 08:17:03 2015 +0200
>>
>>       dt-bindings: soc: Add documentation for the MediaTek SCPSYS unit
> 
> Loop MTK members.
> 

Rafał, I suggest "out with the old, in with the new".

The old binding was referring to the mtk-scpsys power domain driver, which MT8173
has been migrated away from (years ago), as it now uses mtk-pm-domains instead.

I'd be happy if you could also actually remove the MT8173 support from the
mtk-scpsys.c driver too, as that has been, again, unused for more than 2 years now.

Honestly, I'd be even happier if we could even move MT27xx, 6797, 7622/23a from
mtk-scpsys to mtk-pm-domains, but I don't have any HW with any of these, I don't
expect you to have any either, so there's no way we can remove the old driver
entirely.

So....

Please go on and remove MT8173 from mtk-scpsys.c; you'll be able to resolve the
duplicated bindings accordingly to that change.

Cheers,
Angelo


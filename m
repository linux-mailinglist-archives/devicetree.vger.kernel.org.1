Return-Path: <devicetree+bounces-154066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7B4A4EABC
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 19:11:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 998ED1892B61
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF4629DB86;
	Tue,  4 Mar 2025 17:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KNt5cB6E"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ADD28D049
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 17:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=160.75.25.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741110343; cv=fail; b=g9tXMoRHOxvpnNhJJsaanM+GFk9njDPcZVFwNgvSLrhHt6GPjBk6mmixCf9DjFz5NjivmPZA6y5hP8t4TTJ0lch+fD2y8x/Gp/PeZ36W79GS+DDgs5GSBp03WOJ4UgooBCKrNpdtQNTUUc90n12DOel3FtuzehoiI0WScnPiPlg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741110343; c=relaxed/simple;
	bh=39QbOhKHfcJQty3g7AwKqxqCVPXoVMkJ9U4MBC16Vdw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=teF+ylmgMbEM/30/ZU3O0gnxs9vvl+sAxwV6xKveqw0f/ruKcoPR4W3cZNFbPGuBriPOGlt8dg8j557vKoz+j2V9SJ94J5GQfBtOhNlFijsF4drbEM+1P4eL7dNBphKo9CgDY+WtfcoC6fnJoJiiNb1WzdEgaS4JLXleK5EX2h0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=fail (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KNt5cB6E reason="signature verification failed"; arc=none smtp.client-ip=148.251.105.195; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; arc=fail smtp.client-ip=160.75.25.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id E3CC440CF9D2
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 20:45:39 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6f973mzJzFyHJ
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:04:27 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 1592742755; Tue,  4 Mar 2025 18:04:10 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KNt5cB6E
X-Envelope-From: <linux-kernel+bounces-541497-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KNt5cB6E
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
	by le2 (Postfix) with ESMTP id 4E2AD41C05
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 14:10:16 +0300 (+03)
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by fgw2.itu.edu.tr (Postfix) with SMTP id 027AE2DCE0
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 14:10:15 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23D06161219
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 11:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A406B1F4735;
	Mon,  3 Mar 2025 11:07:07 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D7E1F4261;
	Mon,  3 Mar 2025 11:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741000024; cv=none; b=O7SRFjRA1cgK33piFoslljgbnkRzcpN9G2OGevN/KxPTk3PiJOe/UEnsY4csO8/D/veQXlCAaHFVvhZpY+t52iAdMNbw7oidBbONlHHUrnr/1ysbH0xWA8x4+lXX/sE6YZtZFp2LhiUb4C6h8lwvV8wGAqf7zpGBkWTNYMGr0Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741000024; c=relaxed/simple;
	bh=CuLBO8WEfBYQo9g1568escIyXpzN1KWlf5T5E7ZWKe0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gJkKUzsMA8Lh2VdEuTtwHbIlOZP6AdVdbXlGibyB/Z9WA+Kf9RrYsiTAOGsDWRG6UAPiwx1xYxbxK9btQrfo78SpnXS7E15QmRUyKtPWMnmizLYieT9Sec3im0u0y0nAaIkn/47n3MCKwyNFYpGSOygJoXGicyGrl+dX6JNRfTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KNt5cB6E; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741000021;
	bh=CuLBO8WEfBYQo9g1568escIyXpzN1KWlf5T5E7ZWKe0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KNt5cB6E3tkRk+KKq5J3Wa/5X0IpYAsoezW4HlQh4DGPzZv5msphj0aJ25cZ+FC42
	 YfXxZ8N/aZEyhL2QCYB8Q4seia6L1TOdC7Hx+jjukIAjt84SKAMOLXUWsTjEeJjVNe
	 GV2exr4OBpRnWotJOqs7uTK9mULIc3wigF3uxPtpJyluKe5FlVz10Sb2olWnpyWY1z
	 05DBQ83fmv2tQg1JBVhqDWfWGohD5PRTbASI31pfFcLZPFeh0cy/wgTTbZcsGV3rWc
	 DrpNZnK7pPLCiv7uaKXpqzm8DwiTN8T7oHHJxE2+UcfJ63UaVjIGj5Fq/2ErIru1h+
	 aVvnltR/+o4Ag==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D3BDC17E0F3D;
	Mon,  3 Mar 2025 12:06:59 +0100 (CET)
Message-ID: <8af68114-82cd-45b3-a0a9-baa46d64c936@collabora.com>
Date: Mon, 3 Mar 2025 12:06:59 +0100
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/20] ASoC: mediatek: mt6359-accdet: Always use
 internal resistor
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Sen Chu <sen.chu@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>
Cc: kernel@collabora.com, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <20250302-mt6359-accdet-dts-v2-0-5bd633ee0d47@collabora.com>
 <20250302-mt6359-accdet-dts-v2-12-5bd633ee0d47@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250302-mt6359-accdet-dts-v2-12-5bd633ee0d47@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6f973mzJzFyHJ
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741715049.56059@8lxmcb6eECk7TQlAikS5qg
X-ITU-MailScanner-SpamCheck: not spam

Il 02/03/25 17:30, N=C3=ADcolas F. R. A. Prado ha scritto:
> The code currently reads a property mediatek,eint-use-ext-res with
> values ranging between 0 and 4. Not only should this be a boolean
> property, but there's no need for it to even be a DT property, seeing a=
s
> all current boards will use the internal resistor anyway. Since there's
> no current dt-binding or Devicetree user of this property, remove its
> handling and make the driver always configure the internal resistor.
>=20
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>

Adding up to this - I even checked a few downstream smartphone devicetree=
s, and
not even those are ever using external resistor. This won't ever be neede=
d.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>





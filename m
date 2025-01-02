Return-Path: <devicetree+bounces-135061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E756D9FF978
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 13:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B9D73A34EB
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 12:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7971B0F29;
	Thu,  2 Jan 2025 12:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Pomt4eUa"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3121AB530;
	Thu,  2 Jan 2025 12:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735821993; cv=none; b=SS+RofJyjudOTVTZKNxEI1jafCwdd8oYbWTw/UHC/7RLF4Yg0YgW0ylLrRVaxO/toM6ktL1YWCzFe805aX+jHpMSLGJfZHh32TOx+GrhgjEmo8SD1ducxCNxXJxcFtliFOeGVtiBvjpDpRTHSjX/mmwFUGZzuhqF8lwYXu3S7Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735821993; c=relaxed/simple;
	bh=sNS3yO4duFHIJRGQLLIdmw3fGnjbVp3Puh6hUmcVeLk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ng1FwjCI73J/ejZ+4pGMWoS37U0BsG1rmI7SO7Ss9e02BINREoFxMEFFLbkYEWPCXKQQDdOJPgq1qw+1mDtbjlZzFOgZ6IhNxWhFjTJ88c1fX/H/PeyRF91cXZ1Qcf+X4HdCDOzN3OM8Cjfkwag39o1JaDPGm6VUM0gVRvrH5Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Pomt4eUa; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1735821988;
	bh=sNS3yO4duFHIJRGQLLIdmw3fGnjbVp3Puh6hUmcVeLk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Pomt4eUa/WHnuD2B2I+BFseG7nzSeZyxrXCk+zoGdYWDHFfQ22aCQCJj5O0MDuXvF
	 f3cWCSkIGrZ6Zrw9/6EoQFA8Oab/gKk+z3aqX4T30VeVRnpORu0l+b2kwHlQQVRH8E
	 jtN+RfccmX7et3iRNxM4a5SFYbrD/D7lt2RjypmK/OBSMUTF77aUOrck/om3Yl+Gjc
	 zWvTcCgvnbMP3TyMfKOE50OTBcswYSTsKoPHBE6AO5UKdWMY8M1mgZqTrwlMxAG2vx
	 TWDsjbauB9RgHos/O4DQZOSeeBwtTSQdOwttQT9gaco8qk2RrorYRRaZfZhDMI1193
	 AyW4/SSusDiew==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5F47317E1570;
	Thu,  2 Jan 2025 13:46:28 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20241220163838.114786-1-linux@fw-web.de>
References: <20241220163838.114786-1-linux@fw-web.de>
Subject: Re: [PATCH v8 0/2] Add Pmic to Bpi-R4
Message-Id: <173582198832.163596.11661703686589074708.b4-ty@collabora.com>
Date: Thu, 02 Jan 2025 13:46:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Fri, 20 Dec 2024 17:38:34 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> After these 2 Patches are dropped from my dts-series [1] i verified these
> with mtk and changed based on this.
> 
> The problem was that voltages from BUCK4 and LDO were not matching the
> voltages from schematic.
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[1/2] arm64: dts: mediatek: mt7988a-bpi-r4: Add MediaTek MT6682A/RT5190A PMIC
      commit: 32dfd25b2f7b8073d016aea12e9c1b7612aa3daa
[2/2] arm64: dts: mediatek: mt7988a-bpi-r4: Add proc-supply for cpus
      commit: 2798f51df86eefd8584557c9b9ee10f92c674849

Cheers,
Angelo




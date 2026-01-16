Return-Path: <devicetree+bounces-255967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E903ED2F08D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 613A6305DCCE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FFD935C1AB;
	Fri, 16 Jan 2026 09:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="JflKDW3y"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D8031B832
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768556974; cv=none; b=SGOHxnGR57jqEdbdMe9YeIeQ0l0WXDgRlqF6GJJ1vrXAJZIUQbrqDflpKfO0HRHV9yDVDb4CC+N2CsR9/z7b4DtXtrOBEd4xd9tXoLAhuX7JRVGr5NYsdhuWrrdOLJGPZouwAPvvSKVOsy4CZepx71PdJSQZWMy7gY26/4J3zHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768556974; c=relaxed/simple;
	bh=bNp5wcw1YrPDFoWkv3s8dZ1LMocl4kgI5q6R0zQdPHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F3+cVuvdYBWC/UBPIgAXc1Q+ih7MWCwvZNuEjHGRlF1wdO/CUWDDVdoATRb52fOEq5I7et9GHu1yBX3qEmChiOEc5UYPj+zyOPSYTZLZ3azsO6PeDsveBdciEuweq16tvG4GQ9Be0nv095WMokdHf6D4XHSEHI38ePJU49gOLW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=JflKDW3y; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cqCixF2Pc5MhdaJsgpzo2YJbIZacc7IssS0kDdn60Ns=; b=JflKDW3ySyVhq3WARCThhQnbfT
	F6rL0N6RJ6Oi/s3IWHZLTs9mS1bGK5B6YDeUQNjBteA1rNHqKsVB2W4VZU3BUwyxiQ5N3QKi0IRNk
	EOrorwfYyIP7SgRuVq8fsDzL8mOF7C6Jg12ow5sJqGQF8DY1sIoSJxTtNpeLSIg2lBSqBhob1Fml8
	bB+xpxrMRskBooncfxzEDj7Ro0NIJO2hgun+OyncWZuVhg8k1Nb0q+yVjjiihf4MT0diSQNzMCeDA
	WckDLy2jUecf2mwT+ZvN/7aidht/PPBxuWdlEol9AgfM2Cbs26izPUtFKlhBmM8NB0JNP/xA8jP/z
	tMDFXoTQ==;
Received: from i53875a97.versanet.de ([83.135.90.151] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vggSL-002bWj-Jy; Fri, 16 Jan 2026 10:49:26 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>,
 dmitry.torokhov@gmail.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
 neil.armstrong@linaro.org, jagan@edgeble.ai, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, aweinzerl13@yahoo.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 5/6] dt-bindings: input: touchscreen: goodix: Add "panel" property
Date: Fri, 16 Jan 2026 10:49:25 +0100
Message-ID: <7863194.oDFzTOozpa@diego>
In-Reply-To: <20260113195721.151205-6-macroalpha82@gmail.com>
References:
 <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-6-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Chris,

Am Dienstag, 13. Januar 2026, 20:57:20 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add a "panel" property to define a relationship between a touchscreen
> and an associated panel when more than one of each exist in a device.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 2 ++

This patch is part of a diverse series right now (drm-panel, input, dts)
and therefore possibly could be overlooked by Dmitry, as the patch should
likely go through the input subsystem (or would at least need an Ack from
Dmitry, for me to take it along) .

Best way would probably be to pick Rob's Ack and resend it separately
(pointing to this series as user).


Heiko




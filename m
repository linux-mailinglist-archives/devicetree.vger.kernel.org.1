Return-Path: <devicetree+bounces-252299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7BCCFD592
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:13:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4824B301D5B8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BA9302149;
	Wed,  7 Jan 2026 11:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OY3xygw5"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9302FD1B5;
	Wed,  7 Jan 2026 11:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784374; cv=none; b=apQpxRAsBOUZR7JBA5lpc1njG6Rs7yASy6fPHhWSaPKJyDEJeFrbFdQA1pWp1d68Ou5eTifPC7a3M02rFACJ8ibbVzvWEoQDeEE7167omz8VPuc5DrGwyUNt9oepnKIjAnvDsN2fgO699X+LX7acQda9UaKUx2Fat3/UJ6BBMtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784374; c=relaxed/simple;
	bh=NpznBBUs1p1Pi9cSELkptVrvzbeU/wyXKScPVQ4IH3Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=IzJV8U12mselwoz/Qk7VNmP7MUevVAckxNI3Fv3cBeNlOoI4WWbGDbG5L+2Yewaqks3jLu5J8KKifh7Eyb+R8vl0YYFzuQQaceP3N7E1ceJoMSFYeWFwGb7JhnG8mslmzmjBBxW/AAIJSZCZOF8+Fi3mknMy1l/JVOf/LI08RyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OY3xygw5; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767784370;
	bh=NpznBBUs1p1Pi9cSELkptVrvzbeU/wyXKScPVQ4IH3Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OY3xygw57/hKPpm/n4FttZDKEm38ZfY4lU+P1hhBYDndEuuFUVZz81E798FcnklbM
	 XkPmiShY9Q42OV6GBLPDqmBKlj/okVAWld56mjOwkxfH/r6jb+mVsxfzbDXh2CezT8
	 1SB/dIqxF7V1ZUaMWQLpeLsC0/8nR9fmDniyerBMEpYm7NobZhcdfF63eglmwagMuF
	 tTMY+i3urU9eSAHvuA7RDd7pLJ72jUWez2bnf0wLoq3WzuGtsPMY0WrpsS8oybXczy
	 6bgM+tHW9hjM9w0oHmsBJxjJksoqpnleDX0sfY0y61pTcpDFUnUx6zEh0wBVnhXvGS
	 q1TmDVzz90Dyg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5A9B617E13F6;
	Wed,  7 Jan 2026 12:12:50 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Wunderlich <linux@fw-web.de>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Frank Wunderlich <frank-w@public-files.de>
In-Reply-To: <20251205215940.19287-1-linux@fw-web.de>
References: <20251205215940.19287-1-linux@fw-web.de>
Subject: Re: [PATCH] arm64: dts: mediatek: Apply mt8395-radxa DT overlay at
 build time
Message-Id: <176778437030.39195.12846683317432811759.b4-ty@collabora.com>
Date: Wed, 07 Jan 2026 12:12:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Fri, 05 Dec 2025 22:59:38 +0100, Frank Wunderlich wrote:
> It's a requirement that DT overlays be applied at build time in order to
> validate them as overlays are not validated on their own.
> 
> Add missing target for mt8395-radxa hd panel overlay.
> 
> 

Applied to v6.19-next/dts64, thanks!

[1/1] arm64: dts: mediatek: Apply mt8395-radxa DT overlay at build time
      commit: 34e7595912cfffdbca8c34d7c321d9937e0201ee

Cheers,
Angelo




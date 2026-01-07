Return-Path: <devicetree+bounces-252297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B043CFD57D
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DBAB9300183E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315E93002A5;
	Wed,  7 Jan 2026 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LZssPx5y"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB702E9ED6;
	Wed,  7 Jan 2026 11:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784373; cv=none; b=i/Jqm/7S3oNHTBLNr5UoS/d9ts9jrjx9SOVQKfikXiGm1w5proOGliLmPNTLnlPFaxNFgvgcg7qXMcz32GP749SrPomyI80ERagY0pqp/7o8Mati0m75H0GjeGAt0XK/QYsCDgwobRZlZEVDxg09RIvvSCBD2YHLiFuXqTszfz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784373; c=relaxed/simple;
	bh=U0pEX+LelAq23mmJLFCvPYrRtCMIXpGEMNsR7cPAe1g=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=X3VyvufVr0R7g+h0gzZwfL5+Ou6IqBU14+ILgTSLWyA4zmi+3CCSDXlyltqtxLphKFqLbsUCJJcm/xfd+9Xj0bFUnLeRm9xCjEyA5djpCMYFWqEMkM8RDBNyc3yHuCrk3oy0o/uph8YgyQKLdyyfCqYsLQjQ10uKJvaIe++5HSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=LZssPx5y; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767784369;
	bh=U0pEX+LelAq23mmJLFCvPYrRtCMIXpGEMNsR7cPAe1g=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=LZssPx5ytjvdAP1hY1asW0B/erJMT3v++ngxlrIxHAFmNzjDsh1U4tN0TfCXvlwqz
	 dqGbWEXNH+BkTE7bBwL4EVWTaQBtvKbRQz/5XuUKx9be1hmeuFQDGkfPxhV3h/rPV4
	 BD2Oo6AhaFelVZtR474ThdxqQYGen3+UQXVbNskvVpEBAewsug48CPzLp6DOA5rsPI
	 2IqphSf/NhMFSxEydzcnFbyucFbObJ38yZ2iA70SVpOvysG1tHwpxI4MNzRfRT8vnV
	 aS+04J3P0aS+6vMhcTXLJdX1sxEkWTEFKXjbWpTNuSsx1VNiz0gbrSz8e5wgqrV761
	 uHrC8RM5NdWrA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 249C517E1340;
	Wed,  7 Jan 2026 12:12:49 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251223152523.155523-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251223152523.155523-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: airoha: Use hyphen in node names
Message-Id: <176778436908.39195.12833861892642524328.b4-ty@collabora.com>
Date: Wed, 07 Jan 2026 12:12:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Tue, 23 Dec 2025 16:25:24 +0100, Krzysztof Kozlowski wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
> 
> 

Applied to v6.19-next/dts64, thanks!

[1/1] arm64: dts: airoha: Use hyphen in node names
      commit: eaada4f56ab366f4c198291aa9d04b8a3348e291

Cheers,
Angelo




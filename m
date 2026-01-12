Return-Path: <devicetree+bounces-253694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E60F7D109AF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 06:04:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09EAC301A1C9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 05:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCEF630BB83;
	Mon, 12 Jan 2026 05:04:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo11.lge.com (lgeamrelo11.lge.com [156.147.23.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89AA91FFC59
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768194260; cv=none; b=V/w3SmPDnD4NC0Y9pDsUP5XYbxrwNkrtwAauB+TgOZOSt7EC+qIa3co6SGB/Wwn392ULzD/c9fi7R38kFqf3TOEsqU96tydXonVSkN1e8oM8vjG2+HC61DFfFdlx+JPmU9k6qJsuTAZYVHqe9xl0g2XEyaLnheEqlZzrZGHTs2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768194260; c=relaxed/simple;
	bh=L/zidKODgtQRX+fgmuAnvxPu32z8rzSK4bstWhV735M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CfPBwrO4Tefc6MW5JoU6Gk/tUJDi0gvoyVRNetHGiLbKQIByRLZzv9fgUMxcNSrcWd/8zl4mvZnKfyq4yiwHPJ834V0xq5Z0WWNBU3dz9kpumR9AdKRjmJy47pI1B2L9XysSpnOE49lin6u9Psy9V9ma9rv8w4OTz0WeuauJQUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo01.lge.com) (156.147.1.125)
	by 156.147.23.51 with ESMTP; 12 Jan 2026 14:04:08 +0900
X-Original-SENDERIP: 156.147.1.125
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.125 with ESMTP; 12 Jan 2026 14:04:08 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Mon, 12 Jan 2026 14:04:08 +0900
From: Chanho Min <chanho.min@lge.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Gunho Lee <gunho.lee@lge.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add 'lge,*' for LG
 Electronics
Message-ID: <aWSAyGx0KU7HyW6h@BRUNHILD>
References: <20260108082213.6545-1-chanho.min@lge.com>
 <20260108082213.6545-2-chanho.min@lge.com>
 <49d28c7d-a08c-4543-b3bd-a23d36785c28@kernel.org>
 <0b80d046-6141-4389-b666-592859468b8f@kernel.org>
 <aWBaYUTp8dOTIEGz@BRUNHILD>
 <2770a98f-ce6f-48c7-9bb1-45f9286de371@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2770a98f-ce6f-48c7-9bb1-45f9286de371@kernel.org>

On Fri, Jan 09, 2026 at 08:33:43AM +0100, Krzysztof Kozlowski wrote:
> > 
> > Existing "lge," → "lg," conversion will be sent separately soon.
> 
> If you have existing compatibles released as ABI then they should stay
> and you can document a deprecated lge prefix. But not for new devices.
OK, I'll send the deprecated "lge," prefix documentation as a separate
follow-up patch.

Thanks,
Chanho

> 
> One of many previous threads:
> https://lore.kernel.org/all/9942f964-442e-e782-3926-6d7d1123418a@canonical.com/
> 
> Best regards,
> Krzysztof




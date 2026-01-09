Return-Path: <devicetree+bounces-253231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA62D08BB3
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 11:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5D3F23013D46
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 10:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CCB433AD9F;
	Fri,  9 Jan 2026 10:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwVfFtBg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0531D33AD82;
	Fri,  9 Jan 2026 10:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767956156; cv=none; b=aXisaPRzbvy0wsF2PLISJf0dia7b7QA9pfjRkc6Nau3CTaCHiZ/AYuKoVeny95O6NhREydLHdKkVBcGqTOfVFanwyy5x5mcXthm3dQGJNOv9AOjTIdWDi0Sj1zNLHAKy+KWT5JEXaOkgvOD6jkEG7s6LAm0H9Y1B6XLJYjmiQMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767956156; c=relaxed/simple;
	bh=jSsdAsuMK4AyU9vZfxLT0k9quVeP0qbf7NiuoqNtX/E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BYrCqdrjjFfm+xWYJlComynqpy7Uv1FBm8iXNVdY02Ec6zp6wgOY68e8OSj3h8o7cbyC/6UMH2uX5wPHKzu7wg0zsSZmncuJTrngkbAleoKDFsxgy8K3vqAU+Nhvs4bmJgA2M2wT/P45Kj6Rxch9ZCJUP+HBCxekeWguUYWKvWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwVfFtBg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ABD4C4CEF1;
	Fri,  9 Jan 2026 10:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767956155;
	bh=jSsdAsuMK4AyU9vZfxLT0k9quVeP0qbf7NiuoqNtX/E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WwVfFtBgVNDhNZr8A5KrkACFPzarvIAA+JDvRqzoT7iSBrRGqviv3pIkQhgk/fdIX
	 W9MtuvtFkMCHnJMK9Vp4jYONhtYnD8JfH2W09VqdZGkpf7I84O9mNPATTCPU3fJKPe
	 ZsODbcr/BpuX4zm212qvWr0iIxbOKKf+ht0X/eZnzLgCNshI8L7k9ABpr2tjh/kBHw
	 rQ2ekYmJeQm4K/TWPXDDvMW5t8IqKTcwGIc+P4Pd901JjrGMFdEsrSwZsQKj68o1fc
	 DvGnM5gtXEV2Fz2AvGVVEwiZhZQ/Cco/qBvjXvWQKAX/0C4dtaTF65KMfSnm3xguro
	 IfEZfSQdNLDoQ==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, nicolas.ferre@microchip.com, 
 alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev, 
 dharma.b@microchip.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 Manikandan Muralidharan <manikandan.m@microchip.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251218040521.463937-1-manikandan.m@microchip.com>
References: <20251218040521.463937-1-manikandan.m@microchip.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: mfd: atmel,hlcdc: Add
 sama7d65 compatible string
Message-Id: <176795615103.1641584.16279123145525426075.b4-ty@kernel.org>
Date: Fri, 09 Jan 2026 10:55:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38

On Thu, 18 Dec 2025 09:35:19 +0530, Manikandan Muralidharan wrote:
> Add LCD compatible string for sama7d65.
> 
> 

Applied, thanks!

[1/3] dt-bindings: mfd: atmel,hlcdc: Add sama7d65 compatible string
      commit: 9efacd6c2fdde4fe1919034ef1b0ed666458c275
[2/3] mfd: atmel-hlcdc: Add compatible for sama7d65 XLCD controller
      commit: b323fbb6f6237fe030ac9391319b32353a4b0e68

--
Lee Jones [李琼斯]



Return-Path: <devicetree+bounces-223446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F97BB4FC8
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 21:25:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BF0F171613
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 19:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA08283FCB;
	Thu,  2 Oct 2025 19:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NUJDuyj2"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654B12367B5
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 19:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759433107; cv=none; b=dTyiWQD9pPaCuqKRq96SUGnIGlQQ4A26x0iAt5wKknX4mYVLc3w0OGYZdxnoWGhrSATbYGmfIZ7W3AFq8ncLP1GllUKn+4EMsGwsb9jtHC0iglvp63fRvQsvtJN8mdMXoOXTbpHy/Y0aOPiZgEeck8tLGfIYV1j+oZ7is4Eej88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759433107; c=relaxed/simple;
	bh=7dyLoe6PQosf1e6cw6Y05vwLtzGzEVNzwP6YK46yvf8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZaCK2rVN3L4NqsgtLrr5PjCVmVNTgoAC0dEct3C8DA0b1sP73DPDKlEoxWnB/pmbbH3uWRB1AxGCiJCJDAR05sg1gEhE3P9xEw1K/xHoVuxweh4oTS7hATzS/qVZ/bbkuEC+OTHHS0Y+b1xJnzQ/Npb6Hgwek2QxTpcWqqFOQ5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NUJDuyj2; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1759433101;
	bh=7dyLoe6PQosf1e6cw6Y05vwLtzGzEVNzwP6YK46yvf8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NUJDuyj2mc5Lq9RKXPVNApVDUt4W4sJzsni6xixG0psfHI0M8XftkNGrY4GrYUEpE
	 9rVm4AMTWxUAAuKWgpi90y1Ge5dzxPWRDF7C1JESNNqhPyKDyuTCDtuFOL9i66DKHA
	 qlxo5Nh/NWrIb/rYiZ9aJT/w8m0X9gMmDYkQHSLIGoyt/EUSa2R6y/xhNZYyUK+Bli
	 yQwZMIkznz/877t7sr/9m6o3cWPL30msnJJlSqpRYMMdmXuiqroSJfxwTZin9C8Ahg
	 pV5BW95IimcwdnEuuuMz2h2JY7tSVYUbP/KN0wH4b8BD3FeWkoX5AihXDKBgh2Rgx5
	 Uy+pVuEci+p7Q==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 729B217E12BB;
	Thu,  2 Oct 2025 21:25:00 +0200 (CEST)
Message-ID: <1964913f-8323-4714-a061-5fa09ce0983c@collabora.com>
Date: Thu, 2 Oct 2025 22:24:59 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add device tree for the Orange
 Pi CM5 Base board
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Algea Cao <algea.cao@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard
 <mripard@kernel.org>, Muhammed Efe Cetin <efectn@6tel.net>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Laurent,

On 10/2/25 6:47 AM, Laurent Pinchart wrote:
> Hello,
> 
> This patch series adds a device tree for the Orange Pi CM5 Base board
> from Xunlong. This is a combination of a compute module and a carrier
> board, so the device tree is split in two files.
> 
> The work is based on a combination of upstream device trees for other
> RK3588-based Orange Pi boards and the downstream device tree, all
> checked against the available schematics for the carrier board. The
> compute module schematics is unfortunately not available.
> 
> The series starts by adding a new compatible for the board to
> arm/rockchip.yaml. The next patch documents a missing property in the
> rk3588-dw-hdmi-qp bindings that the device tree needs. Finally, the last
> patch adds the device tree.
> 
> Patch 2/3 may be slightly controversial as the new DT property could be
> better named. 

Indeed :-). As a matter of fact I've already planned to introduce it as
"tmds-enable-gpios" [1], during my recent FRL related work.

> It has been supported in the driver for a year now, so
> there could be users in the wild. I have therefore decided to keep the
> current name. I am open to alternative solutions.

As mentioned in [2], this was "inherited" from downstream and hasn't been
really in use so far.  I intended to do some more testing before attempting
to send those patches upstream, as for now I couldn't notice any (obvious)
change in behavior when switching between TMDS and FRL, with or without
making use of it in DT.

Regards,
Cristian

[1] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/5a32a84ee3e801daaeb974f967f6e213983feeb4
[2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/df4d94fdb94463dd4175338bf7044b40c5e559e4


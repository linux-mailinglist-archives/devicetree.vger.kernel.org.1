Return-Path: <devicetree+bounces-223459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E65BB54CE
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 22:56:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3A704220A3
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 20:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAB12C11CA;
	Thu,  2 Oct 2025 20:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="nkrZ1dyY"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AB722DF95
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 20:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438371; cv=none; b=occdWnCjGRgzrXk4XQSbDfnYhgRoh/s0g3JvmEZGt/sIcdG+lStm5Y1nTEKtw/wAk4TnCNBRUQtj90DiPKdu3Ye8dCwDrNs4ZbCvciCKU2/C3RPed9XXNgX0l8tCEeK/vELdamOAdjlMFTiE5dL9Zcw1ImBx3fxT9F6N5J9mNvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438371; c=relaxed/simple;
	bh=DgFpKOW+hWlaCg08U/RBp/FCxL6mGQtQM2kTf8GNnhE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B11NVn6iF/nrpyDpISdw46/1UguCCVqSJ0EeOF48pK9hLzj7VR+QD6riICaqp2dbCnWyizbcOFSQExAPN+Tl7tgn6NfAxL7mOAgsOVuNxH1zfiORiejm82Y3hLh3FAZwtLg3kbzDTOD9GeYwKmY8gZFIeUmk5DYed89CPvCQxtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=nkrZ1dyY; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 4ECA41118;
	Thu,  2 Oct 2025 22:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759438276;
	bh=DgFpKOW+hWlaCg08U/RBp/FCxL6mGQtQM2kTf8GNnhE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nkrZ1dyY8K2J79Viiy1hEnfBtCZupBIIM9TgQK0ofWMArAO8Ur7TeqfgAC20aNXrx
	 8FhPe6wfAKKCsNJ5J5ThXDTxT26uFEe5o/x6kBBEueVgPuFTE00e9SamEKTgXUCS0l
	 9R1pr3Ripo7w4PjyNLyFr9/mlcf7WwLgEQmuzWIk=
Date: Thu, 2 Oct 2025 23:52:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add device tree for the Orange
 Pi CM5 Base board
Message-ID: <20251002205240.GF16185@pendragon.ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <1964913f-8323-4714-a061-5fa09ce0983c@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1964913f-8323-4714-a061-5fa09ce0983c@collabora.com>

Hi Cristian,

On Thu, Oct 02, 2025 at 10:24:59PM +0300, Cristian Ciocaltea wrote:
> On 10/2/25 6:47 AM, Laurent Pinchart wrote:
> > Hello,
> > 
> > This patch series adds a device tree for the Orange Pi CM5 Base board
> > from Xunlong. This is a combination of a compute module and a carrier
> > board, so the device tree is split in two files.
> > 
> > The work is based on a combination of upstream device trees for other
> > RK3588-based Orange Pi boards and the downstream device tree, all
> > checked against the available schematics for the carrier board. The
> > compute module schematics is unfortunately not available.
> > 
> > The series starts by adding a new compatible for the board to
> > arm/rockchip.yaml. The next patch documents a missing property in the
> > rk3588-dw-hdmi-qp bindings that the device tree needs. Finally, the last
> > patch adds the device tree.
> > 
> > Patch 2/3 may be slightly controversial as the new DT property could be
> > better named. 
> 
> Indeed :-). As a matter of fact I've already planned to introduce it as
> "tmds-enable-gpios" [1], during my recent FRL related work.
> 
> > It has been supported in the driver for a year now, so
> > there could be users in the wild. I have therefore decided to keep the
> > current name. I am open to alternative solutions.
> 
> As mentioned in [2], this was "inherited" from downstream and hasn't been
> really in use so far.  I intended to do some more testing before attempting
> to send those patches upstream, as for now I couldn't notice any (obvious)
> change in behavior when switching between TMDS and FRL, with or without
> making use of it in DT.

Thanks for the links. The new property name is better. We may need to
preserve backward compatibility though, how confident are you that the
enabled-gpios property isn't used in the wild ?

I'd like to get the device tree for the Orange Pi CM5 merged sooner than
later. Would you post those two patches, or should I take them in the v2
of my series ?

> [1] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/5a32a84ee3e801daaeb974f967f6e213983feeb4
> [2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/df4d94fdb94463dd4175338bf7044b40c5e559e4

-- 
Regards,

Laurent Pinchart


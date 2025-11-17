Return-Path: <devicetree+bounces-239556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 725A6C66603
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:59:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 426504E1951
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A19324B22;
	Mon, 17 Nov 2025 21:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="JOPgBi/G"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E4F321421;
	Mon, 17 Nov 2025 21:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416783; cv=none; b=YJufcjjpMUgOFnLTqlLQ9NtWrhu1nbDOA+N2txMxpCY7mCIxGSEczj3Z7/r0wsTnDR0BgXBML66oBtaNkpaWg+nN41Jqr8GUO6R6P8hEPSQUaMru8RtxfURi2m7f3qUPAwpmsAWC3UebrMfFRvRIlqYV/zOpur2hHQqnnkz7X5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416783; c=relaxed/simple;
	bh=fpIYJXMhuIaexmWWG8Kky84C5zjTQ38PZxxGTMsqOm4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=O7Yz/tdlRuhBCuoXHj6WZRDxnWLuPc1qGpOdWeBEsz3eduDvaLmModQqXpbXwW/vCjnIAXoUFduH01ieCxghhGHG/ov+Mxl5D6kbBvo8bF6jaNgf7+c4w/XMe2zKKTRLLiDdU7EEx8l6s2NpQaOk7qARJ3HSEKnByfD+f1JHfio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=JOPgBi/G; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jQoqXyszkPiSBiq+rU2orebDLuZROYRw4j6EhNzg7rM=; b=JOPgBi/GEewTXo2hRxi6cycLfR
	zTKaPBBvqlGCHGgFcKD+s3r5y7pPj9gEEmOjeeRIi3KMEPXHr9tWJkPFkEtJ8BJf8KkhbimYGeyQs
	m/KvIMXiJWBB3OxFW6OGYmhAFZe28YdcN8DcRvWmnvoio8OnpZY4kgUWcQbRT2rNNrIbOF3jWeqkG
	hr/4G7EpeGcvgMB65Hqx9QG/A4aTnLF59gLF0odGPgBQxYbAxQy3uHXjGtrPoHINZ6fUN9d7PgjCA
	hWjf7rKn4Y+0mxtweIMTIEL7QxW1dDVrNGVfxwaymqaMxV1X2nWenOx2cinwpV6nZMNOws9PCMixE
	2bhR+AQQ==;
Received: from [31.12.4.86] (helo=phil.schlosswilhelminenberg.local)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vL7Fb-00018K-3L; Mon, 17 Nov 2025 22:59:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com
Subject: Re: (subset) [PATCH v2 0/9] General RK3368 HDMI support and 2 outputs for RK3368-Lion
Date: Mon, 17 Nov 2025 22:59:04 +0100
Message-ID: <176341673264.751370.3773925290539740879.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021074254.87065-1-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 21 Oct 2025 09:42:45 +0200, Heiko Stuebner wrote:
> This series adds the necessary bits for HDMI output on RK3368 and enables
> this on RK3368-Lion. At the same time, use the recently added DSI support
> to enable the generic Video-Demo-adapter as an overlay on Lion as well.
> 
> 
> The reason I'm shaving this Yak is that the recently added DSI support
> created DTC warnings about a single endpoint with an address.
> 
> [...]

Applied, thanks!

[3/9] soc: rockchip: grf: Add select correct PWM implementation on RK3368
      commit: 048213a38e7ac1591f725e370c152cc80dd84105

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


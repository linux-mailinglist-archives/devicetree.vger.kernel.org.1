Return-Path: <devicetree+bounces-172705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0784CAA5F33
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 15:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C79CC7AA944
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 13:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6764819F420;
	Thu,  1 May 2025 13:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="mhB7DIOa"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51E1171CD
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 13:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746106191; cv=none; b=lPqkJsGHP7XdSBp5Njsmp8nKjVv5EMnx1d/76fLLm3S2UTIwVXwN9gJV+nzEg9h2EP6NlvUVrsMdrI/KZFAaKIdmydPSzMwSPU5V2qhFptbuXAULK0j+dsjZS7k3BQBbZczwiWhwdhNoH1ed1UYPK1R1kF7zfAgDFuLuhQVgUP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746106191; c=relaxed/simple;
	bh=mcSDD3IHvaZaFGHyoL7hvD21uro6qCjFf2pdU6K3Kng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=j2S7J64dKk06y2YheKhIyDz/2iB0qXTkv3ixzyauQ+JkbofuLvwWxeViAJ3E3Vq0wHzVkJ8H5XyAl2stZPjvRwOE2nXge6JvqRfArfyiHzZBH3z3aVC9CSsPatrPu3reAYgrfqy9z2OCFadRblBiw0xlCnnmKnug9+ZA/y/pqPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=mhB7DIOa; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=D1o1hEI9ehFzjcmFIjKLUxGqLLuWtSgWzjdJQmZ5TVU=; b=mhB7DIOajWNSMuUcbfvMHL7kB8
	un6M7OMns1VYgULwqEMU0qZeYMnfGsiWTyUvRF/yDynCr0WQvA/JCVXjz6VFAUJ04l9bf6WopKwGt
	wG7SJ2F2yszv9CeyTwzAUD1UBs9hyPlOxMFTtuoeMbxcNHqM35fZLEe2KJg1KiEI0mdGgifwYlz8Q
	WXIH2k1yVgQ8TfTNlmEG513/1GtuYbPLtHf4dQfhteST54RF3GudkWTQ+/4Oe8m+PdaKI5HFNJ2fz
	44VfLxqqD5yltUBpaYkFx/IfgVmorXr4oF2/LEZIv1yiQLYSx4ovd+f8H7Xc5NVHbQmyfVu/FdLKF
	nae3z9WQ==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uATyz-0001xd-6X; Thu, 01 May 2025 15:29:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk@kernel.org,
	John Clark <inindev@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sigmaris@gmail.com
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3588-nanopc-t6: fix usb-c port functionality
Date: Thu,  1 May 2025 15:29:34 +0200
Message-ID: <174610616060.401554.9572972965046310319.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250422210345.196050-1-inindev@gmail.com>
References: <20250419023715.16811-1-inindev@gmail.com> <20250422210345.196050-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 22 Apr 2025 17:03:45 -0400, John Clark wrote:
> The USB-C port on the NanoPC-T6 was not providing VBUS (vbus5v0_typec
> regulator disabled, gpio-58 out lo) due to misconfiguration. The
> original setup with regulator-always-on and regulator-boot-on forced
> the port on, masking the issue, but removing these properties revealed
> that the fusb302 driver was not enabling the regulator dynamically.
> 
> Changes:
> - Removed regulator-always-on and regulator-boot-on from vbus5v0_typec
>   and vbus5v0_usb to allow driver control.
> - Changed power-role from "source" to "dual" in the usb-c-connector to
>   support OTG functionality.
> - Added pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2> to the FUSB302MPX
>   node to specify USB Power Delivery (PD) Revision 2.0, Version 1.2,
>   ensuring the driver correctly advertises PD capabilities and
>   negotiates power roles (source/sink).
> - Added op-sink-microwatt and sink-pdos for proper sink mode
>   configuration (1W min, 15W max).
> - Added typec-power-opmode = "1.5A" to enable 1.5A fallback for non-PD
>   USB-C devices, aligning with the 5V/2A hardware limit.
> - Set try-power-role to "source" to prioritize VBUS enablement.
> - Adjusted usb_host0_xhci dr_mode from "host" to "otg" and added
>   usb-role-switch for dual-role support.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588-nanopc-t6: fix usb-c port functionality
      commit: 60087bcbd1206a546c570c453dee5f5d961ef5b3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


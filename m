Return-Path: <devicetree+bounces-159918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B96D8A6CFCA
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 15:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF2903B5ED4
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 14:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD4D14012;
	Sun, 23 Mar 2025 14:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="dlH2wyFN"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19B417E
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 14:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742741148; cv=none; b=Ll2JVlwJ8oPE7ysSjmKvD60keJ3+vXcAOxkB4NC5JGcF0Q4F9PHQxqKK0g2IfXH04+r/ihEDf//fiYgueb9RnaKW6kuword1uJ//B2vybGoXDGlbRnaEwJAe9OjOwqbvc0gR+GUjrC2fP0Mnzdp2KGJAKgAfq5x/+KUdQxPkgJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742741148; c=relaxed/simple;
	bh=CkO85VrKEjXajV2OzrpAsIm6hq+6xq8kZncFffUN3WQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X4bG/zxvEAs9ZsjDgQhmZfCD1rkJljxJ5uwBi6uAil49vGVePd1Mvfac9w/ON/eu9DK3mPRLBsspaFuC9p/YbgW62fozXcjHhc/lLZ7KwUWZp2W6+MJdl4ww0vBox2EKVJFY0hSSeaA6rGw9sJhkxLC6ApbiWrMgmG+iQB/qT38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=dlH2wyFN; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4c/0JfJqZsDrgnrmW86o9lGfPb20uB1PxBnL2vaKse4=; b=dlH2wyFNWO0t9GmXrHGcyS5cVG
	96of4WZicc97HnBBG2VY3oDe1/xWUXa0YDYdqhcG0gwc7LsgBRYdjTrMxXE3EZn8G+v21lPRsP/6k
	l8MAXeW99JdPWKI8WSlDpCJBE2WviR428ZAG0e2mS+zbYFC+CtR2Gql19AnGUd7IjNigDViD/119o
	6MgG3QYyVdAXVAUDmQDCzjg43TfyUgjPwhNIV8xFuiP1djFMrhmzS/miXPs6QvEzufWwb+6uNWoMH
	/Z/Iw9AVTkH9Gowt1W/gNLjLon9cu5BeuVoLfjxd4G4wtcQ93hu+7GGX0Yq8KBuUn+gvBTQX3k2o2
	+jFqCTLQ==;
Received: from [189.7.87.178] (helo=[192.168.0.224])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1twMZk-005Gyo-F1; Sun, 23 Mar 2025 15:45:20 +0100
Message-ID: <f66fe250-8452-423f-aa0f-6f589e566e16@igalia.com>
Date: Sun, 23 Mar 2025 11:45:12 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/5] drm/v3d: Fix GPU reset issues on the Raspberry Pi
 5
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Stefan Wahren <wahrenst@gmx.net>,
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Emma Anholt <emma@anholt.net>, "Rob Herring (Arm)" <robh@kernel.org>
References: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 17/03/25 22:01, Maíra Canal wrote:
> This series addresses GPU reset issues reported in [1], where running a
> long compute job would trigger repeated GPU resets, leading to a UI
> freeze.
> 
> The patches that prevent the same faulty job from being resubmitted in a
> loop were merged in drm-misc/drm-misc-fixes in v4.
> 
> However, those patches don't solve the issue entirely. Even with a single
> GPU reset, the UI still freezes on the Raspberry Pi 5, indicating a GPU
> hang. Patches #1, #3, and #5 address this by properly configuring the
> V3D_SMS registers, which are required for power management and resets
> in V3D 7.1.
> 
> Patches #2 and #4 are associated changes related to the robustness
> of the DT bindings. Patch #3 added a new register bank to the DT binding
> and during the reviewing process, we identified points that could to be
> improved in the DT binding.
> 
> Patch #2 started by adding per-compatible register restrictions to ensure
> that the DTB accurately reflects the hardware design and #5 updates the DT
> maintainership, replacing Emma with the current v3d driver maintainer.
> 
> [1] https://github.com/raspberrypi/linux/issues/6660
> 
> Best Regards,
> - Maíra
> 

[...]

Applied to misc/kernel.git (drm-misc-next). Before applying PATCH 1/5, I
fixed the W=1 warning reported by the kernel test robot with the
following diff:

-       gen = (enum v3d_gen)of_device_get_match_data(dev);
+       gen = (uintptr_t)of_device_get_match_data(dev);

Thanks for all involved in the reviewing process!

Best Regards,
- Maíra

> ---
> Maíra Canal (5):
>        drm/v3d: Associate a V3D tech revision to all supported devices
>        dt-bindings: gpu: v3d: Add per-compatible register restrictions
>        dt-bindings: gpu: v3d: Add SMS register to BCM2712 compatible
>        dt-bindings: gpu: v3d: Add V3D driver maintainer as DT maintainer
>        drm/v3d: Use V3D_SMS registers for power on/off and reset on V3D 7.x
> 
>   .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      |  90 ++++++++++++---
>   drivers/gpu/drm/v3d/v3d_debugfs.c                  | 126 ++++++++++-----------
>   drivers/gpu/drm/v3d/v3d_drv.c                      |  62 +++++++++-
>   drivers/gpu/drm/v3d/v3d_drv.h                      |  22 +++-
>   drivers/gpu/drm/v3d/v3d_gem.c                      |  27 ++++-
>   drivers/gpu/drm/v3d/v3d_irq.c                      |   6 +-
>   drivers/gpu/drm/v3d/v3d_perfmon.c                  |   4 +-
>   drivers/gpu/drm/v3d/v3d_regs.h                     |  26 +++++
>   drivers/gpu/drm/v3d/v3d_sched.c                    |   6 +-
>   9 files changed, 271 insertions(+), 98 deletions(-)
> ---
> base-commit: 83a0237859bc5a9e0a716e1db8e7fd3cafd63259
> change-id: 20250224-v3d-gpu-reset-fixes-2d21fc70711d
> 



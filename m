Return-Path: <devicetree+bounces-82346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED88923F1D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:38:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFCF8288246
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 13:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A1E1B5811;
	Tue,  2 Jul 2024 13:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6wXdR5T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8524E1B4C2C
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 13:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719927385; cv=none; b=i+RxGykf2pm4mXzRK60G6NoAM+PyZFxF0KJ+wkCo4GAVJjbemKvArxi82LIh/CJeP+LAURHG702D6jUkEzLgeN60yWRP8l67V0AEO7KCYFR7RWlzoMbHMDmjEZdtuq1G3+5Yz0RtNPBAAfj5zwPnEjCzwabpl7uUeHBBXrxY3wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719927385; c=relaxed/simple;
	bh=HknsU8WwUKZqagKR9KNNTTxKbEJAn5qGk/RSvr/NWVY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=V07ak07o2MdJZvO93eLZVP/4QZCNNCKcT+svtbiUdIQNW8l6ggyXqP3LD8LiIKaY3oL18A59kAxiXEfrn1M00WjVw0ET4iBMtJzviYaH0Fj8pWm14WWP4FagvgH3trIV9ShXYDqsQvh6bLgxsAHTm02q2Xc7hFbX2/3daY1Icq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6wXdR5T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A917EC116B1;
	Tue,  2 Jul 2024 13:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927385;
	bh=HknsU8WwUKZqagKR9KNNTTxKbEJAn5qGk/RSvr/NWVY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=O6wXdR5TV241y4FfFjaal25QZYZ3TzvCkxVg5yze72ZTpON6J6YkjGd1apJDiHRQT
	 URJjfhal5XJ3SJDIAIPXUJ/XeFoRGss92nhnnkUXKLGlFQ7MFFs7w2K5kVhji3OEEk
	 tY9iHT6iXOS1qTaFVZT6KTqQYZ0SjqImOITS35wXeNnulXpXlGzyIg5E9IKp2X7ILp
	 pFz67S02HQ/yWTUhfiX/cRj6r9FV0o3WXPFfntya/G9oqWn80DCi7ctAE8oxCBLyot
	 YUCa8VFv6jZgEoGFrBrITWYz+u+ceVHoUldkC9AwrulKiPbqcs2rmDgHn04s8bu1O9
	 +BifWJnF5By0g==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: kishon@kernel.org, lorenzo.bianconi83@gmail.com, conor@kernel.org, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com, 
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com, 
 angelogioacchino.delregno@collabora.com
In-Reply-To: <cover.1719682943.git.lorenzo@kernel.org>
References: <cover.1719682943.git.lorenzo@kernel.org>
Subject: Re: [PATCH 0/2] Add dtime and Rx AEQ IO registers to
 phy-airoha-pcie driver
Message-Id: <171992738030.699169.10416915810808814993.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:06:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Sat, 29 Jun 2024 19:51:47 +0200, Lorenzo Bianconi wrote:
> Introduce Tx-Rx detection Time and Rx AEQ training mappings to
> phy-airoha-pcie driver. This is a preliminary patch to introduce PCIe
> support to En7581 SoC through the mediatek-gen3 PCIe driver.
> 
> Lorenzo Bianconi (2):
>   dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
>   phy: airoha: Add dtime and Rx AEQ IO registers
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
      commit: 5854d0aa5226816575d2323e95bffdc9267d78b1
[2/2] phy: airoha: Add dtime and Rx AEQ IO registers
      commit: 2a011c3c12e8de461fb1fdce85fa38d308c4eb8b

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>



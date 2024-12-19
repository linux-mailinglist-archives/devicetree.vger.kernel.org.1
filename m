Return-Path: <devicetree+bounces-132641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD579F7AB2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6A3D18951DD
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1AE6223710;
	Thu, 19 Dec 2024 11:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="eT0koG4G"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A5C223327;
	Thu, 19 Dec 2024 11:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734609084; cv=none; b=GFCoQBa+TSF6W/LkemHNYCwnFGe0/FDkm3YQEGwW/U74nLfShkbcBov9YPE1fsW46B8qfgYHoyGedtmNRGN6E+E1tRyM2wCy6fLldO2fdW3uocoDHwkM88+Nb4knDEpkiaZ27dwRSjWQqFsbuwpmCpcI3FJXGL/zOzLLBKem6KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734609084; c=relaxed/simple;
	bh=alevm6nONFx1W8mEJCqPhCyvf7gfMJozxAUbfdxdfbU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BL5AXRFyP7L2FdXZUqjr+KaJrIpIn4QCashP8SqTe8e6yt2wkObhQ4HClk0K5759aihbjB10K1kJd4tQwQtAZNYG7Xm0nyJcCQO6YluZV43v+HSosqdvTDXZDMLinXvbNOkMptHOZjcPIBtR3vWt57+f9tqSLwfDLTmZBZ+0LeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=eT0koG4G; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734609081;
	bh=alevm6nONFx1W8mEJCqPhCyvf7gfMJozxAUbfdxdfbU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=eT0koG4GHdQpnxWTe47StLj47weqr9q2EubmqLp9hGXopQ3Zfm9Dhqq2rDyIVO/7H
	 HG0vDb0vhJWpkE7OQqjzFVN3WY2zj7QDbJ7fG4xEIneuRjCPAqe2XnkYvs2ZGOz8JA
	 6wrd/0Mx57BenQXsV8yXMIBB4nS9nXMrl40GxBQCFMU0kPiYPyVtKPAR4dPLsyKM+J
	 5bKo4OwcuVcyVRNxJ17PpUpj5fj6DP0hZeE71+wxAbo8ed6qRM+Iwuqizs52RqU+U9
	 CmNZ0mJephvlhNYJjxacn18GZ8MFvCAxopyy4YZQFbXTh5fg/7umbvgQnFaAMkSzyL
	 IFa2aGO2u7OlA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 977D817E1524;
	Thu, 19 Dec 2024 12:51:20 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20241206132401.70259-1-linux@fw-web.de>
References: <20241206132401.70259-1-linux@fw-web.de>
Subject: Re: [PATCH v4] arm64: dts: mt7986: add overlay for SATA power
 socket on BPI-R3
Message-Id: <173460908054.53645.11475281075607913939.b4-ty@collabora.com>
Date: Thu, 19 Dec 2024 12:51:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Fri, 06 Dec 2024 14:23:59 +0100, Frank Wunderlich wrote:
> Bananapi R3 has a Power socket entended for using external SATA drives.
> This Socket is off by default but can be switched with gpio 8.
> 
> Add an overlay to activate it.
> 
> 

Applied to v6.13-next/dts64, thanks!

[1/1] arm64: dts: mt7986: add overlay for SATA power socket on BPI-R3
      commit: 312189ebb802a0242639a9c628cfdc6e532d8e11

Cheers,
Angelo




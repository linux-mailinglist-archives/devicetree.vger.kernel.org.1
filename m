Return-Path: <devicetree+bounces-135304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA8BA00729
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 502A31884200
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D572E1D3576;
	Fri,  3 Jan 2025 09:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Vd/fojMU"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41BA1B87E9;
	Fri,  3 Jan 2025 09:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735897157; cv=none; b=oK0iFjDFiEiRoClQNLSZNEu+7koAgeougeK0AmY4igVLDT2HvKtJSmWOlL5d63pm7/rkf78kpMxB+x1hD2QAFmklh7Fdn81RIEZSSlX9bcSPItWwdFP4ATeNN8RHR98t9almg8KLN/fqEonjwZUIF71iMf3JCRPvWqNgCGav1Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735897157; c=relaxed/simple;
	bh=9Msm7urfWmNv8ZxyLygweTvb0f3GK8S+lwILMU1gONo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Ake74EhGuHJFzoBtWD1UleU5WZ3apHj/MA88DYzR3V/dl6/nnYdUIFWs1wQoaVtmwvnKzTXrZcgg/Bhmrhh+4qleXkyq4hLEMSOrBeS/2Q+MrKekQV74I6edU0P3db1QZBmmu9bki4NsgLqVRtCmotBRpRZZPiBgg0ndV5XAEUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Vd/fojMU; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1735897154;
	bh=9Msm7urfWmNv8ZxyLygweTvb0f3GK8S+lwILMU1gONo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Vd/fojMUkqc3pci9V0p9a4e5ZypBAIKFt21Hi47vWe9WwmW8DE8NBjngcvRJ2Pq2B
	 0lZNOWQayr3GNIo2vOkLMOhM3iIZalo++KKetQXTqIX1Md2gZd77vitCLq0pzNiAAg
	 iJDf7yp2DRFDlLFDZo4lDxvvMlCdulEWdf/sorYH1mH0gCNfbvamzpAeOqg9w9wdW2
	 Rx0Ysx/PNvy45qw7j3FHkOrvlCRkLBv6Kf2jJK3lHvv9vvPQ1fD10HTcIYUFZ04Frf
	 EFQXrFJhxX+M9IZksTC3fr3yxRNSp7Ehj734v4InxiZs9UcEsA2rDrycu1HX3/iIzq
	 10ko8r2dcm5HQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8B71117E1543;
	Fri,  3 Jan 2025 10:39:13 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20241224084839.2904335-1-wenst@chromium.org>
References: <20241224084839.2904335-1-wenst@chromium.org>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: arm: mediatek: Drop
 MT8192 Chromebook variants that never shipped
Message-Id: <173589715347.61173.1219826071003156854.b4-ty@collabora.com>
Date: Fri, 03 Jan 2025 10:39:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Tue, 24 Dec 2024 16:48:37 +0800, Chen-Yu Tsai wrote:
> The Hayato rev5 sku2 and Spherion rev4 variants were designed in
> anticipation of shortages of the headphone codec. This never happened.
> As far as our records show: the variants were never produced or
> shipped, and no such devices were deployed to any lab.
> 
> Drop them.
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[1/2] dt-bindings: arm: mediatek: Drop MT8192 Chromebook variants that never shipped
      commit: e43525fc7eb90eb8e12acb2e82729827023f77d5
[2/2] arm64: dts: mediatek: mt8192: Drop Chromebook variants that never shipped
      commit: cb6450fe891c892253f9b835b378f53d0a39fc7d

Cheers,
Angelo




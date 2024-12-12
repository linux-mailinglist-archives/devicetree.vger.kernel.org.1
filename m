Return-Path: <devicetree+bounces-130194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E159EE3A7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 11:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7C05287297
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 10:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A44211272;
	Thu, 12 Dec 2024 10:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KceayNH6"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50466210F49;
	Thu, 12 Dec 2024 10:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733997897; cv=none; b=Ggnerk49Q74Bv07V/sh9rerJ7czKIiZyJ17Msjdr8mSK0w933TbzjZbEjX+xlJyx5xmGgpdsNV6//7ZpciClaspdbU3osp/Mj6o0jxsbSy3cVb6YlOpFuAH07Vu2hJFKrtMvh5Dx2SSiRtswIY5c4HLXrakfTMeFXP55Z+0IeX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733997897; c=relaxed/simple;
	bh=4imzcdqytTqZaeyZyRJF4wFBv511nhafaA/Ho1Wo49Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FZzzZ6juJgWSGidcNBGjPC1MZ4z8kd/gu5lpeNiSLqzkPuFtztPfTtWonoybVofJDhC1IcB/8OtotqxTOpE1VIpdn+D/dLKBSd4RwWeXyaFmjFWwQ4hrFj2HA1XLNNfuKrUE1WEE/n+argM1Tadi8MYHcAij2EjZHUSdrzBAg5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KceayNH6; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733997893;
	bh=4imzcdqytTqZaeyZyRJF4wFBv511nhafaA/Ho1Wo49Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KceayNH6dmyR2Gd3zsxk5Jc5A17Igi68zq07Ii2zXXwyEnZkWd1gCBCcwLmysCs6Z
	 JS6EhPiiDYmVxAKZ2pXCUSQnhV4LsDylNzoes9n8WkhyqUXKWAUSvFW8YlGGYLTkfs
	 K5ODka/3TEgEoktrjx7z5psfsiPgbz5Ha1CbQmyT34tDJUgkD9EhVAdkLN5l+vlnMH
	 A9jdiTbDIvEvZKcZJE2gsTcSLRLj0nlj9ChgpguVzrFWWTBoNYIQy4urjT1ZH3S1cj
	 sCpHuR/ZfFt4VwPh65kZW/ZJFEAqfWPOR+WtGbbjIDWJGV/jNFHroPNpn2MSMhjpLo
	 nUjiDa8x5nr9Q==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3DA0717E35F4;
	Thu, 12 Dec 2024 11:04:53 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Chen-Yu Tsai <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241210092614.3951748-1-wenst@chromium.org>
References: <20241210092614.3951748-1-wenst@chromium.org>
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: mt8173-elm: Fix MT6397 PMIC
 sub-node names
Message-Id: <173399789318.41280.12144237345151657264.b4-ty@collabora.com>
Date: Thu, 12 Dec 2024 11:04:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Tue, 10 Dec 2024 17:26:12 +0800, Chen-Yu Tsai wrote:
> The MT6397 PMIC bindings specify exact names for its sub-nodes. The
> names used in the current dts don't match, causing a validation error.
> 
> Fix up the names. Also drop the label for the regulators node, since
> any reference should be against the individual regulator sub-nodes.
> 
> 
> [...]

Applied to v6.13-next/dts64, thanks!

[1/2] arm64: dts: mediatek: mt8173-elm: Fix MT6397 PMIC sub-node names
      commit: beb06b727194f68b0a4b5183e50c88265ce185af
[2/2] arm64: dts: mediatek: mt8173-evb: Fix MT6397 PMIC sub-node names
      commit: 9545ba142865b9099d43c972b9ebcf463606499a

Cheers,
Angelo




Return-Path: <devicetree+bounces-70465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CFA8D367A
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96CA31C21448
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20A0180A9E;
	Wed, 29 May 2024 12:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="AiSYD2DX"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5749113F45C
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 12:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716986016; cv=none; b=aTihk0/sH1F/NUqt5GXNORtRxqk1Ynd22TVnroGwLxC/YPgfTM4a5B2AgxV2KoVOiRhVagE2c2WaO2EwDehtSbnl3D9rA0OCvwOlYSEiCdLYxzJBgcmFwJm520Pueah8Gox3MGH61Nz/PLwVhX/fExhuqGgdq4hNV1JeSLv7Mls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716986016; c=relaxed/simple;
	bh=TtvIqDj/cbzytXl+BfyEW3QVw8j1n3TE8MYTau3IeMw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QWGMspBN5Qu67NSU6RGkTieSROzBgLUdnvJy3lRAjCyq2O6dqPkm84a636M/MNk6osRXBuequoz0fEfSmI+7y5dkrdKfkzJaoMOH6jYCwb8w/236n/132CsnweK3u3kYaFlSuzfUNtXlbNbBRA4Ct2g3bdCv5WUCpnQ3YofR248=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AiSYD2DX; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716986013;
	bh=TtvIqDj/cbzytXl+BfyEW3QVw8j1n3TE8MYTau3IeMw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AiSYD2DXNs8yMYs+HBIGlGChfRvsZOtVsR3myGqnAZp1gIDiHIs3fbhOe95eNqbR5
	 jEdJBqgAiIqi+eVNi3krsoukFHlO5fzImkYaBbFT/4gPRegP0kqMWskMp4/47Cgj9x
	 WGzwjLQaPazqOlAgvfHE1PBCD5U0Y7YO5VZV/9pUt3k73LFeEDlRn8HANrLb41qURo
	 z5BXDFjdQfEeCo4EK2M6IEbL3GL185BpfohtP+augqH/W99UxcfbalJb2wN8lV/DC0
	 2nFhSYu7klwd14olAN3Xbs1UkswoSz3Ye6G2bpUNIeOxbUVyUQzl+rA7L8mE+5aeo8
	 ZB6iymg6yRUrQ==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3429E378000A;
	Wed, 29 May 2024 12:33:33 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: soc@kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <2fd900a30b5a0f7de4ea68f60bac250794b8cdb4.1716984213.git.geert+renesas@glider.be>
References: <2fd900a30b5a0f7de4ea68f60bac250794b8cdb4.1716984213.git.geert+renesas@glider.be>
Subject: Re: [PATCH resend v3] arm64: dts: mediatek: mt7986a: bpi-r3:
 Convert to sugar syntax
Message-Id: <171698601313.527285.15364047983482006077.b4-ty@collabora.com>
Date: Wed, 29 May 2024 14:33:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

On Wed, 29 May 2024 14:06:14 +0200, Geert Uytterhoeven wrote:
> Overlay syntactic sugar for generating target-path fragments is
> supported by the version of dtc supplied with the kernel since commit
> 50aafd60898a8b3e ("scripts/dtc: Update to upstream version
> v1.4.6-21-g84e414b0b5bc").  Hence convert the Bananapi R3 overlay
> devicetree source files to sugar syntax, improving readability.
> 
> 
> [...]

Applied to v6.10-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt7986a: bpi-r3: Convert to sugar syntax
      commit: 01738dc14a7eb3cec7c7f3c804d88a9a4e38a3e8

Cheers,
Angelo




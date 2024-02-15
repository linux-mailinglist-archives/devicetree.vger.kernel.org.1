Return-Path: <devicetree+bounces-42003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B89856105
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B2301C2120A
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 11:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F01612BEB6;
	Thu, 15 Feb 2024 11:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="yFHEg2MV"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D07C76C8C
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 11:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707995403; cv=none; b=IjEvOZp4qfE90ac4ZhWobzP5m+2vqEGerY3OcSsX686YYbCZH36ftWVwh60jTbToZwL6oIPQIA+2tm2L9Mru1JXZXzKu0y7ZlQnbpajnqPTiFGvvjF4zyJHMfgAAFFpHT3ycowjPVhJWSGHYEB29DBUBtq5fD94mifCfF6gnM24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707995403; c=relaxed/simple;
	bh=qLaeWFYuaGvcsGY9wAMhtanjA7Ti2wE73XC80nfLXTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UQUJsECkGXgSfj2FB6356c2iSQlr3IzFUeztHvYCwqlvsANMS08nF23DL7Gci6GtNk3MHWZL8BX+1fpYJrAvNyrWIxvRwmugZhZcdoJaY3DnYNRgrmLT8FP7EfC56YNuQ/SuPj1v3kD91H2cs78aKpedUqVyHPPX1qCHxzxq11I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=yFHEg2MV; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707995400;
	bh=qLaeWFYuaGvcsGY9wAMhtanjA7Ti2wE73XC80nfLXTs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=yFHEg2MVgz8mRq96/Z7YcdbZl+S2mPzUzzl2HFWL1f88aXDsi1D19Dl6Unvci9xxK
	 Gv+LOBc0OlTCR37vTOg3AJsN4WH2x1KZ1tYADIHppgSXdzuUt1L4yye4t8K7p9/pPc
	 LgB4Cm01tToEcPs/4XanFPgkDt3WQfNWFzCRe8Szq9tyPaCvV8PCNa3jJtSbvHcdvr
	 cDXpkBZ5m9TrLXBMZVWxcWbxDDPatBjJ5TsbKpM8yH2kCjbrujlgWSMox7SrSGymCa
	 aT/1d9Bv8Uo2YW4Urx+FlZrSkIybvC3AiQvWdcvkjc7Esc1uh0Dgw9sux+jFE9LJ0F
	 c1vvjEZXIb7xQ==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 680D937820B1;
	Thu, 15 Feb 2024 11:09:59 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: (subset) [PATCH v5 0/2] extcon-usb-gpio YAML conversion
Date: Thu, 15 Feb 2024 12:09:56 +0100
Message-ID: <170799536802.115820.17735258763796183400.b4-ty@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215093214.796821-1-alexander.stein@ew.tq-group.com>
References: <20240215093214.796821-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 15 Feb 2024 10:32:12 +0100, Alexander Stein wrote:
> it seems these two patches got missed from v4[1]. So v5 is a new version only
> containing the patches not applied yet. The rebase also includes a slight
> change to the mediatek patch.
> 
> Changes in v5:
> * rebased to next-20240215
> 
> [...]

Applied to v6.8-next/dts64, thanks!

[2/2] arm64: dts: mediatek: Replace deprecated extcon-usb-gpio id-gpio/vbus-gpio properties
      https://git.kernel.org/mediatek/c/5b6df373

Cheers,
Angelo



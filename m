Return-Path: <devicetree+bounces-38398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A34B4848D3D
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 12:50:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 403BE1F221B1
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 11:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5052621A19;
	Sun,  4 Feb 2024 11:50:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AA52233A
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 11:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707047404; cv=none; b=ZFq5I3/CpegwlG/GWCQ5GM5tnCWpUITD3fA3X3ckW83IyAdNZ4gV+uR/TFE/SHxmpGjBvZ5PADsoXiwWG7GfDrzOjzA1P8hQeu8n0U6k/FSTtsU22+G5lmDtThRIjGnWLPO9vHyp1wDvAkDifV5BDUOURhREf92Erb3XKU+DddE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707047404; c=relaxed/simple;
	bh=se/97nbjksI2JNpWnhXggvyCF7g7F7KAIah+dsq5Q98=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=W7wtVmYA1KAOk98NUVdZP7mGrK53faedgNSlSHJWkCdIl+dto5qSC1KdE0k40SNOxh278lGqXprH3JQuReGRA2Xg0yLAxHuOkyrQ/JQy5W3WHc1oOe4QNAYs69aZ5pM8Zv2xI92hN1fd3WHFy9VnaZ/BYDWVIKRhr4oAta29P2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [185.175.219.2] (helo=phil.fosdem.net)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rWaUp-00051V-FN; Sun, 04 Feb 2024 12:17:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	Trooper_Max <troopermax@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Touch to Anbernic RG-ARC D
Date: Sun,  4 Feb 2024 12:17:07 +0100
Message-Id: <170704542188.2517832.12838935433827901522.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240201150620.886786-1-macroalpha82@gmail.com>
References: <20240201150620.886786-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 1 Feb 2024 09:06:20 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the Goodix GT927 touchscreen to the Anbernic RG-ARC D.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add Touch to Anbernic RG-ARC D
      commit: 2ec7d42918f0170331cb4206d36d10837c815549

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


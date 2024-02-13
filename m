Return-Path: <devicetree+bounces-41448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE9F853B44
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 20:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A4CF2883BE
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 19:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B46160B80;
	Tue, 13 Feb 2024 19:38:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779B060878
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 19:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707853084; cv=none; b=bhIADwtQsxmsLA2MOZga7GpqlDNNPVh1iqGNJa5J5V7scFI4lgDk5aD1CKjPDI7318C9qU/REWiXVFtQBHx6RCp9l+4+365wkmTIbnUVmhzMwO7GRjAo49vfNck2YOJreIbbLZuwhkqK1ubAf8AvojKI1uHlWr9oxsfImqrw0fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707853084; c=relaxed/simple;
	bh=VU0EjeKUOxI7RO5u2rI1oQKykIaEKf+Z5aUEmOmJvjw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qYkbVcRYA0QLSMVK/siWC21AnIawGuWnVlDt+BPBDvNnA1lp1wMqUtz7NlL+E/VU24hpl7eVElPNT0+vAVddhcaAKDKp16BWdJ2FtPRVdYOMjEpVCUwX3szLmxk34vGuym+0lAHJ/EYJUNnAmo4XHxbi+7W2mfIDhuYbNIt5370=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZybL-0008Re-Kh; Tue, 13 Feb 2024 20:37:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Updates for Indiedroid Nova
Date: Tue, 13 Feb 2024 20:37:52 +0100
Message-Id: <170785305476.3362031.18397699265683418315.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240125201943.90476-1-macroalpha82@gmail.com>
References: <20240125201943.90476-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 25 Jan 2024 14:19:41 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Correct a problem with the GPIO names on the Indiedroid Nova, activate
> the full size USB 3.0 ports.
> 
> Chris Morgan (2):
>   arm64: dts: rockchip: Correct Indiedroid GPIO Names
>   arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Correct Indiedroid GPIO Names
      commit: c22d03a95b0d815cd186302fdd93f74d99f1c914
[2/2] arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova
      commit: 4622485f005aaf0f7a684b69280d0494e0ea301e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


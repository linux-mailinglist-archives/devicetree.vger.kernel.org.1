Return-Path: <devicetree+bounces-145141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB16A30715
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 10:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C66FB165BAA
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5811F1516;
	Tue, 11 Feb 2025 09:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="HnhRfVxX"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976E91F1510
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 09:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739266148; cv=none; b=KldJMAYKhvHrZfDCJ8GCcSIsAFoGtvrvNocKvW80Ll0uz1/hiAOja8mVTd1PO5gI0oYf1JoGOuEC541znfTu8mzx6PKQ+/SB9Jk4cIdZ18U0BU0qRBibjYQaTgs8nnfpSSK/zgShLpZxV2psV0JwlytLUj0T136kY/UbGR55Gao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739266148; c=relaxed/simple;
	bh=N9UNDVBawGVkNtUEG8tbq9bbLkO+5AMSmdkU68X3/Bw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HbKxPrOLlo3/UcJFtz49C6xsIL/gJ/k/npBiPee/lQTmUyva5SDIFckj3acKPPIiCId8g7QxdnZyYeNjA1jxMuLcAJ41P6nEm0wo/JLmNbTVZdsowB8KVi/+rZQO5a8jxnqIJ5dkcR7pV7PUGXtxENUDDSoIwjwlWFVhDPgMLhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=HnhRfVxX; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZtkuubS5pI3CbYDGv6UEmPir7ur7so+Ig6XN12YRWsA=; b=HnhRfVxXnjp2QFI1MYkeV/fyHc
	B1F/Qoqz7PVTS2QqcNwXyxosWsVXIDKYy49CS83+n1tSHEnPjNPLkmWY7f2xoVf9fuhefk4HxwmqZ
	2WjubP3u8B6d7SRj4FTAy2GdMOcYB+YnOi7vzavLwZFchxL+6iacqWdABGZvyeSIQ7fFh/Z9D53AH
	a8kGhS5eSy0X4P41wD++80E+weCMAUNM9jcyxLljg8j+Z8sQfBFl/rRLW/LcfIzZOvfiu7SJvUTFb
	f8hEh5de3MUfASW2YgzBtmQhRWE/hDaA6cnBtD00tjehVStrC3Wi0fq6tX75EKstBwRMsQJ0pbjI/
	igbp6o/A==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thmZj-0005mx-U8; Tue, 11 Feb 2025 10:29:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH V2] arm64: dts: rockchip: Enable HDMI1 out for Edgeble-6TOPS Modules
Date: Tue, 11 Feb 2025 10:28:52 +0100
Message-ID: <173926612576.1219038.12843944709919002623.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20241227132936.168100-1-jagan@edgeble.ai>
References: <20241227132936.168100-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 27 Dec 2024 18:59:36 +0530, Jagan Teki wrote:
> Edgeble-6TOPS modules configure HDMI1 for HDMI Out from RK3588.
> 
> Enable it on Edgeble-6TOPS IO Board dtsi.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI1 out for Edgeble-6TOPS Modules
      commit: 4a2fdf91e1239d9659d0317f3e8e37681ac555a4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


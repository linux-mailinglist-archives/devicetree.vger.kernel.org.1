Return-Path: <devicetree+bounces-145483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A5DA316C5
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 21:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 156DA167743
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 20:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C07264F95;
	Tue, 11 Feb 2025 20:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="IaVrAjGa"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2242A264626
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739306156; cv=none; b=gZCFViEw7TVBnr9Ub9DFbDxfmcB9MbIygLWBD9OJUAzdXPA4wP94l2IDFYWb5Er93Ra500XhNC/ENr5j+yRKHOaYLw6AlgFyQ7UYBP1qTI7BAER2XnsdKsJ2HVhnsThQFV8upuaAE5l52LdrxrX0c6I+JWeuUCsHQz6Oy2XUdnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739306156; c=relaxed/simple;
	bh=AnzWCVDuwWjG48Q6L/y3KdCmwZ20tPwsoetsjU42jqs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dSxvoCg+5OiEaTaydo3L2LOUlHI6CKP067HqWYf8LlZyqhvVrDicmsfO8FjL4i35z0xHEphBs9625oQeX0A+gkIDNoa8S9Stqt9NGspDti26LB3qRctUNXBnnVLNarrwG75LXGPuDwwiRpLhKMg+rs1Pu7JIOJSAxffvdheaQ80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=IaVrAjGa; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nzpzQg7exvrKsqBLdbyzVvbOq8XvFl+0SBT4HKJsj2k=; b=IaVrAjGaDOUlG0LBU+woojiRem
	73JINbkdn3LZVV4VkRy8RXjrT2k3BDnlCLpOwSUeQi5mEqsDCtqxjkUJWJtnUDoo8GjtmMs3Xohl4
	Qcm+Psf67mhoQeVoPw5ZYFs7UVuH9tRxsooMk6rADKTwChooqmX5tdNOIRwI6sR42j03OiK1W7n6g
	pc18Mrl42L7a7mWw3zE9iF+TXpKn7w9uWcU5XCSValxEf1puWEpfiVbjlOuywYwVCw7MkZH7xuiBz
	jz0Lij/dAr9s0BevDU0JB41QCGYRe0ltvENBqA8+KHM3SP1ryPc8nFtynJGT9ONSyl2/z4rBCWIbj
	9iJNaaNQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thwz1-0003OL-6m; Tue, 11 Feb 2025 21:35:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Date: Tue, 11 Feb 2025 21:35:38 +0100
Message-ID: <173930613282.1358259.17638255312158240919.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250130181005.6319-1-macroalpha82@gmail.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 30 Jan 2025 12:10:04 -0600, Chris Morgan wrote:
> Remove Optee node from rk3588 devicetree. When Optee is present and
> used the node will be added automatically by U-Boot when
> CONFIG_OPTEE_LIB=y and CONFIG_SPL_ATF_NO_PLATFORM_PARAM is not set.
> When Optee is not present or used, the node will trigger a probe
> that generates a (harmless) message on the kernel log.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: remove rk3588 optee node
      commit: b3dc2a9315c4046b330a784c0527c671fd236414

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


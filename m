Return-Path: <devicetree+bounces-183767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B3FAD1B74
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:23:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FC9B16A6B7
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6D4253347;
	Mon,  9 Jun 2025 10:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="mmtWCiyQ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD943ABC
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464620; cv=none; b=L38yOOX7zG4qKRMp1UT8IKbIdq86oQJQOwaAOR3btsxBscLl2F65V1BLZ81ysXN619qBchG8z9uA3d0NApgMlCKSra6n2lX00czSEMKlxmq4GlP4p3HR2Sy6BzbUOoKYbVkFQdMbq4NuHs2q/FWAniXLWIvS3WLnc09x3eSfb6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464620; c=relaxed/simple;
	bh=yW+Ed4a5laoD7DeG86koBomBaLqerZVGX3kwhYhPlLE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oloNvEvPrXGFAKu1jHemCs5zKFQsNVBv6bnmEDDY7ECPckkLeLJ69sPZ9/PaPI5cjMGYEzpTFZGODytR9tveo33SEu1qQlek/Jpf84VxhYC402+cMPX7EzbAM2PLb0a5bJQUVhYZlmVwr7iccGgFT2AO78FNDGXxeGG4n6eWYJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=mmtWCiyQ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=O85487cc+HkcizYivV1a5Ltotr4IOnLhTDzIts8SmWg=; b=mmtWCiyQKM2vzTCmNo+xPyTPTf
	ZwHckg7Ev3dgOahhtlrORWsxT99WMsc85jj6rdDIOyTsuE49dtsMDMspQpkAhhb7MoJkgNSz0Pt3a
	nPCLOX0VtHAxbFtWG8z9INHTQcFddmztP3kw3akPPT562GM1zjPfr4FO2Ombp5yuW4sOt1PoxrrlW
	E8Nmz9JwyD0wX1e+1zIS13d5Mc1EQZ6+0PF2LCPw7A3IKjbppMtICgjGqG+VjIL9ypslLlzrh7xX1
	4SiFPqM3hfA8j0Gt3qwRbpC5XCGa7tKazJYPWqQhavDLqHezmwQZD6IkOiQgxfMA9nPQBI/peJza1
	maUk+Hdw==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfF-0006Av-Bf; Mon, 09 Jun 2025 12:23:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Document unused device on i2c1
Date: Mon,  9 Jun 2025 12:23:04 +0200
Message-ID: <174946455533.762051.4952162483933707577.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250604024119.381337-1-macroalpha82@gmail.com>
References: <20250604024119.381337-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 03 Jun 2025 21:41:19 -0500, Chris Morgan wrote:
> Update the i2c1 bus noting that the unknown/unused device at 0x3c is an
> iSmartWare SW2001 "encryption IC".
> 
> Based on the documentation I was able to find, this IC appears to be
> used to authenticate a device for certain programs to ensure they only
> run on authorized devices as a form of digital rights management.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Document unused device on i2c1
      commit: e0d47ff478fa549aeb168d921b66011f0397007d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


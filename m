Return-Path: <devicetree+bounces-83284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B41927CC1
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 20:01:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36B271C232EE
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 18:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C952C73476;
	Thu,  4 Jul 2024 18:01:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7253A8F0
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 18:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720116098; cv=none; b=BwgKGvqvMV0i4VSjkBvYZaDadWUgQqO1CMlNNpU6lH3A1hvXvd7uozFp413lnfY9nAO+qqig6/cxGWydCEsVYFGrJ7nbggUSQSUzMZzupCEgCWRkPbxfvE8pOy4F5bXetO1sadS1wA0/JfSYuLUHRpp9Mz/nS23XeyKVVEeL5p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720116098; c=relaxed/simple;
	bh=9isSOK6n6L4uPomqnxRWyl+97ROyux2sEzZgh4mAmYY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EUPNtPo290PQZdQPGdNQwUcBb2McLkiGseZgwn9G9uurzbjIkyEf51B9bOxZaWjvFq/5xCZR+wy76QFcvM4V2nYPbY2bGvLCjQp9OydzUPiD16ndacEJ4Yn7taJl0zArNnwT+BBOji6V2AINad+LOSYZzIedlqmqkh9wQpt8jWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPQlu-00049m-Aa; Thu, 04 Jul 2024 20:01:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	Marek Vasut <marex@denx.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Sam Edwards <cfsworks@gmail.com>,
	kernel@dh-electronics.com,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	devicetree@vger.kernel.org,
	andrew@lunn.ch,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	kernel test robot <lkp@intel.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2
Date: Thu,  4 Jul 2024 20:01:26 +0200
Message-Id: <172011606368.897267.15049642504598741819.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240630034910.173552-1-marex@denx.de>
References: <20240630034910.173552-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 30 Jun 2024 05:48:41 +0200, Marek Vasut wrote:
> The rtl82xx DT bindings do not require ethernet-phy-ieee802.3-c22
> as the fallback compatible string. There are fewer users of the
> Realtek PHY compatible string with fallback compatible string than
> there are users without fallback compatible string, so drop the
> fallback compatible string from the few remaining users:
> 
> $ git grep -ho ethernet-phy-id001c....... | sort | uniq -c
>       1 ethernet-phy-id001c.c816",
>       2 ethernet-phy-id001c.c915",
>       2 ethernet-phy-id001c.c915";
>       5 ethernet-phy-id001c.c916",
>      13 ethernet-phy-id001c.c916";
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2
      commit: 9c29e5d7a2d1d91c29976c0c8aa7f42780e4a254
[2/2] arm64: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on all RK3588 boards
      commit: 3573653dcf29a254a274b50f699af14e987b1925

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


Return-Path: <devicetree+bounces-52782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FA08881CF
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 00:30:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB2921C21F77
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 23:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B256A16F8E7;
	Sun, 24 Mar 2024 22:39:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C744A16F26D
	for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 22:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711319951; cv=none; b=YHcm4vfgBgXXGgrjDFOfS594lhGUsmaMPiSK+rI64fxb33EwutZhUDpOThcGtlOK8kMgesaxnc9BCcd8zj+WObQBsnB1YmeneFnq0x4SnVCEKgs1QQ50csA6yk4a+zog+lzYPGxSvlfibcSmo3qMS849n4yWUlpWJjgkFKsHnxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711319951; c=relaxed/simple;
	bh=q51FpN/YhGgDulGMPtMkI19D1A5aYX3ZOwORUREHhSE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IDUMQ8ja2zq6iF6/Alq3VS4Hcd6DDltJGDYyBX2eIQdHgxhuwE3CN0CL6cR1oa16gVLSFvwEwxyCVs04A1HdQFMligIQI/hccBRIRKieULShJHLlMR7Ei3V3jCJxzKZUFjYAn3RALzGpv7jzlqDYaZU5lehXKnZg6FGHV7Zuev8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUW-0007sn-2T; Sun, 24 Mar 2024 23:39:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	Anand Moon <linux.amoon@gmail.com>,
	conor+dt@kernel.org,
	didi.debian@cknow.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
Date: Sun, 24 Mar 2024 23:38:53 +0100
Message-Id: <171131986742.918919.14220098959078401116.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <a681b3c6dbf7b25b1527b11cea5ae0d6d1733714.1709958234.git.dsimic@manjaro.org>
References: <a681b3c6dbf7b25b1527b11cea5ae0d6d1733714.1709958234.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 9 Mar 2024 05:24:42 +0100, Dragan Simic wrote:
> Add missing cache information to the Rockchip RK3328 SoC dtsi, to allow
> the userspace, which includes lscpu(1) that uses the virtual files provided
> by the kernel under the /sys/devices/system/cpu directory, to display the
> proper RK3328 cache information.
> 
> While there, use a more self-descriptive label for the L2 cache node, which
> also makes it more consistent with other SoC dtsi files.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
      commit: 67a6a98575974416834c2294853b3814376a7ce7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


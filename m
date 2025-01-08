Return-Path: <devicetree+bounces-136640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F046FA05B8E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CFBA165F06
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C4041FCCEA;
	Wed,  8 Jan 2025 12:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="weF/wZSF"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F191FC7F1;
	Wed,  8 Jan 2025 12:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736339137; cv=none; b=A/k6g3s8YNtMBPrCD2Zh5DwmQaRfs3/d9KUy1TnYzX9czy3iig2VJc1xsSaupEICtcGSE4RKyU3ZCL311jBOCKqT/UxXWpiD2+VKZFNanPh4HfqhBIKBjf9y2yAeUD5EBDgF1h+rdypkLYzHPVORDh6/rRSzaWf1OQdtlY4wPt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736339137; c=relaxed/simple;
	bh=OFbzXqg50axMCOXKEthnVmcTD8QfFpXZHgmojFeCC0w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oA0nClAv+4c1o1aeXpqyzha2cLYlbEA7QiQdZCnqlaZqWcvbOb8hAm9bG7nFcaIC+RefdAVmjjOtvPOyKe+Tbpw3CBnZh3co6YkCHP5b8PLv/AEi48GHOhyeAdgFyR7Q0qomg6bS338JkPbmL8KZj4iNNDpx35oI4bQ2yzcMCt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=weF/wZSF; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wAtYy/sN1+0JW6hDJCMsQQ7upfH2nvSdIQBirWnML24=; b=weF/wZSFpopwFxnBPdClG7lcFK
	d5jcJpgUuI5pwlbPMqmntwuJyl8MNRoyn3Pz096nX0888Ye2F5Xn7linw0ux+lyKZpsdx3nzlZrcm
	e4CWOIae6jIKSadka7WG4z22fbPl5xcR18ptPXRMY6Vlg0tPHjmOF0+sfkoF9kR+cRt4TENeK292T
	PnaLTDjwqKK7Xl2KtjBEqWJh1mxY/WL/n6oX17occKWsmEIS1QcXQIp5YXaP9n31Bbc2z7HkuNi+S
	kV6loFN0zti2X1f8izaMUkD/t4I4zvajec8QAovqAqd5+FbvxUtJ+DbhHk02QcHmO+B7WeycVGM2v
	XiXQop2w==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7p-0005gn-Ke; Wed, 08 Jan 2025 13:25:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: update wolfvision pf5 mainboard
Date: Wed,  8 Jan 2025 13:25:17 +0100
Message-ID: <173633908213.2779821.11342120037203795124.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241218-b4-wolfvision-pf5-update-v1-0-1d1959858708@wolfvision.net>
References: <20241218-b4-wolfvision-pf5-update-v1-0-1d1959858708@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 18 Dec 2024 11:43:10 +0100, Michael Riesch wrote:
> Habidere,
> 
> Two updates for the WolfVision PF5 mainboard:
>  - The onboard microphone is mono, but needs to be treated as stereo
>    microphone due to restrictions of the RK3568 PDM block. Fix this.
>  - Enable the HDMI TX audio.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: fix num-channels property of wolfvision pf5 mic
      commit: 11d07966c83f5eccf6b927cb32862aef58488e23
[2/2] arm64: dts: rockchip: enable hdmi out audio on wolfvision pf5
      commit: 2859e1ac3110f2d428a794bda26ea0d90b2254c6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


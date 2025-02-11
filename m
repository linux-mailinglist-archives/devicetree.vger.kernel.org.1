Return-Path: <devicetree+bounces-145485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1822FA316C8
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 21:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAC611677C7
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 20:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1B5E26462B;
	Tue, 11 Feb 2025 20:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Q5Eg2Pjs"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4B6264F88
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 20:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739306156; cv=none; b=Su/vN31R46Ka4PbsFN7HGSGYm5xV46bBQNRwg3AVkPpdbcn2C1njY7CFCxm73/D+cyvyt2SmhyvfNIvRChmJqb81K9sZ2asyvbpOXVBHAlD621prI2n13Y398VVRbv5/ujJzOvu6MEzNv+/hmH4XKH+9UTfdE/Lsx74XCPbXL2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739306156; c=relaxed/simple;
	bh=WSHBL8zldbBu/uD4Nii/UoNk334dEX7o6anT0QKiDzE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sTJPe3xMRdn7f+Vc+V4HrN/dOs2ei9if2BdR2HgqWrtlWHYB1/gGUa5JApTBF1OQSWUKAFqjL+zumi61eJ/lx0tw64RfSrgajQ2B1Ewskyg4h0pmXBB+T1U847tu9eyAyfiu0wWmIrSnwXtBFFL8kBEbLv2xaga0CCxN22cPwzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Q5Eg2Pjs; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bnsQBWqEuRRtpC1o8f5ipeZHrP7bQA6G/kVoZZiFqMM=; b=Q5Eg2Pjs/DTW2jdvYcurVmy6Fn
	CFBxdt8iHp3NcSP5Qg79D1DjTMW15CBi4fMiokU85KIDbLeEG2x3wScqazNE3pA0guVOquui0daTW
	9wgWKrZCCo8x9gAsIVunJGq+tpfbiCsPIGAGl959RPa/43XepCLgrbKjQFCgeWSvUPofJCVikXBAA
	UdhmDULuP/agL6A5bhDbMM8iBNpd5ko0YPIo4q84ljFUXXqI0HSFcQhFTVpzqmQTpGYdQjk7SuZ84
	xpmehYI29gKr22g/d1jBdjH+SaQ3uZDARlHgr4pqkAoHLRk2naytcVnerYaiKZjb3P4rtMKK446Su
	3cT0O4Uw==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thwz1-0003OL-KE; Tue, 11 Feb 2025 21:35:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Patrick Wildt <patrick@blueri.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
Date: Tue, 11 Feb 2025 21:35:39 +0100
Message-ID: <173930613281.1358259.10855559235361885923.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <Z6pxme2Chmf3d3uK@windev.fritz.box>
References: <Z6pxme2Chmf3d3uK@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 10 Feb 2025 22:37:29 +0100, Patrick Wildt wrote:
> The SMMU architecture requires wired interrupts to be edge triggered,
> which does not align with the DT description for the RK3588.  This leads
> to interrupt storms, as the SMMU continues to hold the pin high and only
> pulls it down for a short amount when issuing an IRQ.  Update the DT
> description to be in line with the spec and perceived reality.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: adjust SMMU interrupt type
      commit: 8546cfd08aa4b982acd2357403a1f15495d622ec

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


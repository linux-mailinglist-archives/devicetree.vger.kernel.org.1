Return-Path: <devicetree+bounces-154887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 634C5A54C88
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 14:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B6E63AFEAF
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 13:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10DD13D52B;
	Thu,  6 Mar 2025 13:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Nopt0ve+"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71C878F58
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 13:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741268758; cv=none; b=CjnzZCX4E2rAI7o9U2kn+MwtmPyV/i4QcX/yoY5s6ugHxxiaHkGi4AcyyGn2v1lAdAFaN1x3OIXTL2oIcKYT1JsJnLJ7s8LjiSDB1UGldf7ND37BMllCcY+ryuc6HgKGkUAOFBxhiEmKPSpoc8uljhVP7fjdW1UBDZbRHHH2c+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741268758; c=relaxed/simple;
	bh=2xYDpR5DaT1rpUjfC4/cHoZ5EnWcIV6pQfNcZwzwIOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u40OVT8DthMMvU9v2oSPgeEQD4/Nj44fNRSvMGquUwHjxrk8JjpbtV/5630sIoxsKrCDkkLYhbi1PG0pBmsP1Bpvx8ta/yC0BZZK/kMaF5Idz/TDbq988CK3E0VrYn2/xd74Hvg+HjbmjLftd4tY3yyBDIgmHtLXDJD27rjSUGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Nopt0ve+; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4LF7oF/vPY4sjxZRfSGkbpkJkGWRlWaUOeLFBkhithM=; b=Nopt0ve+Jk3Xa6M4wqTO4zsWoC
	nLChYlD+UHvbIEYJR9lk4u1rHHxfleX5fJtkFIPtd8CDLHCDg1Byxu5o+Poit54/xtLXV9Ah7accO
	QqguKAzwgHSs7DVGhAm5nRI+gYb3/nDCxqnvESz7vmnbdq2zBSyiTN1zNPdk+w8vNgZA+jXJLRNDg
	n4vwAPXgZP340Pb8qDR8UrE+onQVamuopFPVXkfsJJ7oI9qFAKGEoZ5Gn0SnQAPDO8exE7EZns7jH
	J7UaWIyWKg/UEoqYyAS25qFN11b6DP1f+ndFjVIXOcHcBDfYBT4DPQXcmGTdYKQneGaJHeGgp9kg8
	RfyCOeow==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqBXn-0003Tn-Pu; Thu, 06 Mar 2025 14:45:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Patrick Wildt <patrick@blueri.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Date: Thu,  6 Mar 2025 14:45:45 +0100
Message-ID: <174126874161.670332.12638948694058332407.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <Z8S5SHqUqKYiT6Wd@windev.fritz.box>
References: <Z8S5SHqUqKYiT6Wd@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 02 Mar 2025 21:02:16 +0100, Patrick Wildt wrote:
> Document board compatible bindings for the MNT Reform 2 with it's RCORE
> SoM, which is based on Firefly's iCore-3588Q.
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
      commit: 3bf4fc44c6544f994237d8475bf56548a62011f5
[2/2] arm64: dts: rockchip: add MNT Reform 2
      commit: 5324af2d029d47a39ce22ae1613e2753e5e372a2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


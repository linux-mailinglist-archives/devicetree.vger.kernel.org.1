Return-Path: <devicetree+bounces-136637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 877AAA05B8A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:26:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 965B57A1AE5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C071FBE8B;
	Wed,  8 Jan 2025 12:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="xBu7aTtV"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A691FBC85;
	Wed,  8 Jan 2025 12:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736339132; cv=none; b=iMe/qNSvYv9XDrbm5mucSIbn1Lprpj01Wv7nWzSl1L8MOxKAAd9yEkTeRDjMz+cV+2DD263+2MkHPJB2WpQgLROuZ72H0AhIwqt2TLrJ4uimPJKJkiNy8Jga8qbyPf3ebXZGZMSwx1M5P+uSls4cXnvjrgtQoBdlSVzUQyBEbkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736339132; c=relaxed/simple;
	bh=0UUgEEbAOqCBq3tTq87h5aTyhE06VOGm37Rx30+Jofc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jqGF0ZGj6oxanGjZO/ZU2eqXHQX0WeorWHlu2MMTm4ocqi4Lv03WH7jVvsGPXQ6m6QRXXECvNbGFiE0V6BO5dXLt+Dr7OCV7T9XDaZkdtOrU0KoxC2nkH3c2mCJX72jU9EwLYEfarJaTcAArjg0TCjUvqq+bvk8YZl5wrzVEivg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=xBu7aTtV; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=y1nGZRsdGmqVUL1npTJ8LurygNK86mgh5TM5QfJtPsQ=; b=xBu7aTtVOAVDd5SQ5o8zbWQX7+
	Dblc24NyX6lBrscMsgnEHkE5t3tdLWlNLuWLUhLay3HB71/4h6NCgOrOC5q53ARwWg3kXu2ZbWIWB
	jtKYql+xbRIn85Y1WXZk+KhGBImNQmAOqkHslPAKu5N6kIe6utAwYsPATwly7PmWXb+od6D/1jD2r
	Ckjk0WKeQvWzAUe/IazBwUygv7wU/k+fPJdCNROFA3sfpsSeABwRiRYSXVJIn/d/uW1KfbB7QEhcr
	fMJMBUHnXs9dNwZ1fWxiY/NbI1tE71hc7yBp755PKg13PY6tKs0UdykTLywdqQ9nSqz09QCrnTU1A
	Nh4niR2w==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7o-0005gn-7p; Wed, 08 Jan 2025 13:25:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: anton.kirilov@arm.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	nd@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the SD card detection on NanoPi R6C/R6S
Date: Wed,  8 Jan 2025 13:25:14 +0100
Message-ID: <173633908212.2779821.7921893226618386547.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219113145.483205-1-anton.kirilov@arm.com>
References: <20241219113145.483205-1-anton.kirilov@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 19 Dec 2024 11:31:45 +0000, anton.kirilov@arm.com wrote:
> Fix the SD card detection on FriendlyElec NanoPi R6C/R6S boards.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix the SD card detection on NanoPi R6C/R6S
      commit: 95147bb42bc163866fc103c957820345fefa96cd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


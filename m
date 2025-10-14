Return-Path: <devicetree+bounces-226734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5497BDAE4E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 20:06:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2DE03E64B7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 18:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5C42301702;
	Tue, 14 Oct 2025 18:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="VwNm4AZd"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278062741B3
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 18:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760465213; cv=none; b=abP8HeUJFkyQJ/ObMBAL9dXmL1xI6ZP9Jk0TWYXWPiX2EkTtwfgblXXjYWLFk/69U024fkfIhb6KQZFsjzuXWsDfyw3Htbieky9b3xOvrK26LC9o0Kmh6CY3Ljj7tB++ifikSxSiMqkXrQeSpmIXcJbdvqDNORHxifRGAGAoTTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760465213; c=relaxed/simple;
	bh=u5RJC8XhDUdLfiml+1HTfWsVx2fR+VhJFhnA2VBFqf8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Zr3+qqzLJ6lCRX+EdlIt9DMVYy0NB5P08B34sRrYQmjLeQZ9TrMRFYMILPI0/+76YdneAFt5toGUbqWC6zLzdzK5Q5T5G2hjhwwKw8sZQ5WBhWukHUyYmoM5g+JsgVVFBMKKnX2lkpO+l5WkOkKjJxfR7ZGTu+DJ9znLD5tdlnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=VwNm4AZd; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JZQaTp5dpiFS59beowRGw1f34kfsMqratSv3mdigDF0=; b=VwNm4AZdtwfNiYMqLVaEFrqfz6
	1i9VJITIVHw7aQLbS456E/MRnf4dWGQAvFgfNFAPyOAQ/shrojPOBqI7jZyzQC9UsHGcl+GOCpkKV
	831QxOOMcJ8Ki1wHlyF3BlL05KBlDm2gW3XivlLEnSy+U259HpDFh0poDpnLk2zNKk/lSnf8LTrEG
	aeijyFY+w8HI7SCa8r4tsj4Oi0jlP+Py02DY13DSHq0KUYMPYN4XOWJW5yr1CSmijI7eTRBZ//EVd
	8smZWQrAPGchWrMrtOJryHBgJtvLPc0mPjVHHybE6X+PK2DleXt2zZ1DaaD3jTOkJ+xRjG7DCEtGf
	+2Usih0A==;
Received: from i53875b75.versanet.de ([83.135.91.117] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v8jQ8-0001Gj-Oi; Tue, 14 Oct 2025 20:06:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andrey Leonchikov <andreil499@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix PCIe power enable pin for BTT CB2 and Pi2
Date: Tue, 14 Oct 2025 20:06:31 +0200
Message-ID: <176046473172.1662867.5782306342643102691.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251012123338.344271-1-andreil499@gmail.com>
References: <20251012123338.344271-1-andreil499@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 12 Oct 2025 14:33:36 +0200, Andrey Leonchikov wrote:
> Fix typo into regulator GPIO definition. With current
>  definition - PCIe don't up. Valid definition have on
>  "pinctrl" section, "pcie_drv" (gpio4, RK_PB1).
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix PCIe power enable pin for BTT CB2 and Pi2
      commit: e179de737d13ad99bd19ea0fafab759d4074a425

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


Return-Path: <devicetree+bounces-170783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A045BA9C48C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 12:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10BA63B1D3C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99AE123312D;
	Fri, 25 Apr 2025 10:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="VU/+XGW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B381EA7CA
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745575304; cv=none; b=MGhGaE4MmDU3CnTp19tya3ZGLvnY5iJ3Q8YDAxchZ38KPtq8zPz2rtFLMP0Rn4p46/R9RcyatNhNTfTwcL1lcRra5er95y+oeqU1Wqx2NkxXeSHY40im0hPpWhGmkgVU8mlNyPmhWRxfvz059f6rQZbr5TYwlrY85IWyCpy08o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745575304; c=relaxed/simple;
	bh=oA4GlUeowK0BqVGAogmMJIMEU+UZUaxor0PoMKsdVKk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bf0tWTC3GupZ0Yl9OWuBddtTFcs2ieUTnArpftZm5RkLrOKebDDfvaLhJkCM074wb/t/dGOyNzO61tSUJ8DECVKDJHcGjefkBgBDfRVFA/ILCsQOUUovmIUfz4Wsn/GzKOmz8gcEoYKvUF0PuK9Lzf6o/vyzfMegXxwiKmEbjfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=VU/+XGW/; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=mzizZ9vspSaLN0
	0l6KthT8dwqKCrQW9f7LKMkPQ7zHM=; b=VU/+XGW/d9wV7K4MWm25Oi5VosbIdu
	B1qSi2FcUTyYzZKdavBqeommlbU8i4q+FNO99Hu8+eMNXcyxPAg/v1ljSI8Q38sQ
	VZxe1okax1mLZK6r2VB63GEyTbWktoRb/qZHDgSllm9+w12nWo+ut7kjT1hEjJuv
	809uC5yTNeP5aErVF5u6cBl1x++NZV90qi5bwMMQgZmhbjdiDMZkCA+H4hzBWd+F
	X9ej5Aza2yaLdVX+OZU81UGCcAoMj6CEaEfg+XLI0iNw/nOue3l+BbPv3X5m0HBp
	EKUY+RkF9vMisbr/OMfnIyUpEHrcUk48u7Ho1geOlGoreTx6zE6qo5wA==
Received: (qmail 3778882 invoked from network); 25 Apr 2025 12:01:39 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 25 Apr 2025 12:01:39 +0200
X-UD-Smtp-Session: l3s3148p1@t/Cea5czVuMgAwDPXx6JAAunYj8Nf7DC
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/2] ARM: dts: renesas: r9a06g032-rzn1d400: enable USB
Date: Fri, 25 Apr 2025 12:01:30 +0200
Message-ID: <20250425100129.11942-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This mini series enables USB on the RZ/N1D development board. Noteworthy
is only that the device port is on the module board. And the host port
is on the extension board. Otherwise, it is basic enablement. Depends on
the patches enabling GMAC1 and UART2. Not on the Debug-LED patches as
those still need discussion. A branch is here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/n1d/enablement

Happy hacking!


Wolfram Sang (2):
  ARM: dts: renesas: r9a06g032-rzn1d400-db: enable USB device port
  ARM: dts: renesas: r9a06g032-rzn1d400-eb: enable USB host port

 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts |  4 ++++
 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts | 13 +++++++++++++
 2 files changed, 17 insertions(+)

-- 
2.47.2



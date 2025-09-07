Return-Path: <devicetree+bounces-213979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A79D0B47AED
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:24:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA3DE3BB79B
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58164261B8D;
	Sun,  7 Sep 2025 11:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="FGGf95dW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62196238140
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244268; cv=none; b=n/fhmxFXJaztd1HEKcMhKTWPF5cvEvrFu5nsIYOt8eLiafKcNnw4cwD9YSiz7iNbJ6wo8MdUrxshF+fLQNWplmsslpGzBUCYYwunLUZp+B60Pmzaa94zQtgXiLfi+4Q1wm+DMwC08fjT9OU/K1/wsX3d9MpgUaFI5uVUBXjx8Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244268; c=relaxed/simple;
	bh=i37falYOvVlIyAhz1tVSHUsoPTrsnapM3we3OMUVtAU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hqHih38ZsIyI4/dRlrfKtWABPetfl/JsrrMAC2Uco61VhN/agdkmk4G8Vlc4CKE+8gz8S/cxN5ZYVXch5mY9VHcJ9uyZCuuNG5pAg78/76jgtj0Lq0rgWcsBag0OHrkYwcyohCsWD8SgRzLCVSIl7N0HhDNwDHFgjMuYOEbvjb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=FGGf95dW; arc=none smtp.client-ip=212.77.101.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 23296 invoked from network); 7 Sep 2025 13:17:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1757243864; bh=1uFYBfk49jDUAm/by0hYFCKYa+C76V3J04xouJr9lM8=;
          h=From:To:Cc:Subject;
          b=FGGf95dW8h8wVbogJVZzP85XsvhO4eDgnG6YgHqfJgNREZWDVfB7XdgyBnBpnAbbV
           ErHwt0/A/94VP2oAytkz4H1XdHeeCypOHfm83XMkcj6m9anl0nrJ5PcNUsE67o2Xv0
           M84j3mDdBHHKBrjr950HeroM/Oibaxyc7zI2Wm0iD6oB7RLU5dWfEPgB4eRwWdtGhl
           joF98jAYxlyLYq+hmrOeZuUfhRlbLOCl/vC/mrdAUIDuR5GGgz3KKzxg9EuyFh3/zn
           Ckyi4xDvIU/CUf2qx+zr5L38PP4f6iyKSVvaYsTWxug/375OJKLpgXe0otXiZa3SPx
           h8WLJjQlNT/BA==
Received: from 83.24.123.254.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.123.254])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <robh@kernel.org>; 7 Sep 2025 13:17:44 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Aleksander Jan Bajkowski <olek2@wp.pl>
Subject: [PATCH v5 0/1] Add thermal sensors support for MT7981
Date: Sun,  7 Sep 2025 13:15:08 +0200
Message-ID: <20250907111742.23195-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-DKIM-Status: good (id: wp.pl)                                                      
X-WP-MailID: 463d3484e28a789ae0e3ac03bd89cba5
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [gTPk]                               

This patch adds support for the temperature sensor in the MT7981 SoC.
This sensor is exactly the same as the one in the MT7986.

Changes in v5:
 - dropped another accepted patch

Changes in v4:
 - sorted bindings by fallback names
 - dropped accepted patch

Changes in v3:
 - added fallback in bindings

Changes in v2:
 - added fallback to an existing compatible string
 - removed second patch as obsolete

Aleksander Jan Bajkowski (1):
  arm64: dts: mediatek: add thermal sensor support on mt7981

 arch/arm64/boot/dts/mediatek/mt7981b.dtsi | 31 ++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

-- 
2.47.3



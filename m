Return-Path: <devicetree+bounces-239995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E98AC6BDFD
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:34:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D504F4E8C6A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63DA7262FD0;
	Tue, 18 Nov 2025 22:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R64P+Kpf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5793262FC0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505194; cv=none; b=Xedanj2XU9b0jqUQ7U7cbhemNIHjgpLWBJOnUHy7WKdgMmju2GjSmpnL8cjGsjVmeCxPdOifmabhkBCAXEFtM7u90mshiRh7qe78tNYYcRmUwID6XPBseFqQlaVF7jnlKM2PETNByDIm1Nl1kgWQjjSJsPQkdbvdgns/J7b7kK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505194; c=relaxed/simple;
	bh=WsQvSronndKoPPYrwg9JqfEzIyUKEpLARflcGs4fzVs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XOS7bZhRuLOTu+7Z38UerNPAOz88Qvm8HuqparLckhENWPapg1ny3bGjjVn+Yu2tNQB+mbBnrC1rCmx6COk5MMZsAkru6R3plXfgsKikccOaArB659apuqs3Kbc3zZKK0TCiQngLpvnOAcPUkmLstB42cE0+LgVLEA4NAS6p5mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R64P+Kpf; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c75dd36b1bso1779554a34.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505192; x=1764109992; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PKPZYyCOv9wy9mxzsJvlZBNgV+UDfSoSPQVdRg8sG5k=;
        b=R64P+Kpfm1rmoVIJvFR7JhAfjAdw1TZX5/fTzPjF7iuwzpkZl3TwzlEMgWLsCqCSx9
         bXVNfRlZUuXuxSi77o+MXelgLH+NBzU4LAZD7g5X+ijT+YJyH/rELO7dETWxAskhEYTj
         +tazovgOJ12AhG946VLeGyRfWQ4mIJajrv10VTjdObImOejlSoi07fxVTP103AG4MeqN
         69yE/r5xs+9YQm6PYCF903Q00Jp0Mr44w5YXbN1Aa9heEkzBm8duIWk3SEbWHsWF8oxB
         5jgZ9O99FoUahEF6nAUeI/P5DztkqFyAl2PJhUExf93uVJ6OhGmSuEMJP0BoJ6+D7gyz
         NS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505192; x=1764109992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKPZYyCOv9wy9mxzsJvlZBNgV+UDfSoSPQVdRg8sG5k=;
        b=u+hgNfSjdCy51OKsy3LvdSVXC6VrMmN4sAfenzaLWFzCSuC027TO9isagaSt1nlOAT
         rKKtEQL/2MdxlTp48cn4a09Cd+Yc6Y/buU8zhAw76KDMvpNhtppafdXDsG2iR9deE8+g
         JQCTmWaKhknnZbvr9a0YpaSPSCImWyFJ9NcpH0EGRcBvvo6oNR92Eo0VyjezaJCRQlk4
         C44xoYYm4xFYqB0nyp8LBbX1H70ahSAPtCwJrfZnkYL4Ox+iKMz6qs2HjG7A7t2Xn1SH
         NsecO3sDQwejTXjLTSXSRjxtFadP9cFzBR0/6Otn1ys5gh+buSkHN5aPWpVYUIa9oiZS
         CKnQ==
X-Gm-Message-State: AOJu0Yx5U4Ce5rHYR2DkCIc7JYo7AjRl4Sz49U23VAviOpzDAl53Lqky
	4UJi1wnpC5a3IhKYA7fD6fsixwFVmCoFkwRR2DIxc2hK0cSJQDCNJAUDuwyAKQ==
X-Gm-Gg: ASbGncvNp4oI1slN9l7X1Aj6qdYwjt8gHVDNuV4J0Rx71BMPynb1RCjHejvZggRMAHN
	4QdvGBoLcDNpuABFXBmHGQKU1D5tCA+1UveFebPCAGlWTyzYRgNhY+OSd6PdslDbMR2ndghDJEy
	45T/0zkK3TBEygOYX2MpMyxReJ9hRtfMkIe7UYhCNoRNkTFISl5bClwkiqbJ9u8WHHGHo7A/xr+
	chmUdf+XaOQP4wIrteKEcePKASa24+zTohNI0g76hUP+Ug8sS9xpwubZiXFchLHklzo1QUf0MdI
	2Lo9dB+U4GXxc6KLPFHINXGuXyk5quZTAnuLs7FtsR8jH/fRsoeYZ5r/NuGeVsRkWu9vQ74RkdE
	P3sCjZGZZkzU4gOuFI3dpbpAOubpaSaGCftVpFOuA+7ydERl02IeDOrQh0Av3QU9pKyoIrdqBfs
	FKUP1TuWQRqiDxapRX/U0=
X-Google-Smtp-Source: AGHT+IEhrJAXNmlcH8Y/gTHsN/suJ+iAjI8ewe/T5Ev4mk/LOdn5DJFBDHNd4wis+moO1kB+imwoMg==
X-Received: by 2002:a05:6830:34a1:b0:7c7:60aa:6496 with SMTP id 46e09a7af769-7c760aa685emr6353386a34.4.1763505191848;
        Tue, 18 Nov 2025 14:33:11 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:10 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/4] Indiedroid Nova Devicetree Updates
Date: Tue, 18 Nov 2025 16:30:44 -0600
Message-ID: <20251118223048.4531-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

This series fixes up a few remaining issues with the devicetree for the
Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
it removes a few workarounds that no longer appear to be necessary for
eMMC and bluetooth, it adds support for the NPU, and it sets the device
type as embedded.

Changes since V1:
 - The device type addition, NPU enablement, HS400 enablement, and DMA
   fixes for bluetooth were accepted as a subset and have been removed
   from this series.
 - The individual changes from the pinctrl fixes have been broken out
   into a series of separate patches.

Chris Morgan (4):
  arm64: dts: rockchip: Add clk32k_in for Indiedroid Nova
  arm64: dts: rockchip: Define regulator for pcie2x1l2
  arm64: dts: rockchip: Correct pinctrl for pcie for Indiedroid Nova
  arm64: dts: rockchip: Add host wake pin for wifi on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 43 ++++++++++++-------
 1 file changed, 28 insertions(+), 15 deletions(-)

-- 
2.43.0



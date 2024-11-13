Return-Path: <devicetree+bounces-121422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4505E9C6B48
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 10:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 033A128402D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBC81CEE92;
	Wed, 13 Nov 2024 09:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LZFSvwpO"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FFE1CDFC9
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731489356; cv=none; b=qfCZJka6HCvIuBx9ZUJnutVheHH0LxR+c0Yjco4dCc6+z55M8vGD/Y7rYf1AnlcuXa40GrkXFo4StnMaDzVGU4Ho93/o7OjZAKMChYxu6CMCPRdZ2Op8frj1LqOOpnkhPMh3B3jmPLLcsmSsgtpoDLub+eRX54jzoxOVJRPS58A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731489356; c=relaxed/simple;
	bh=SB7Bfgqn58f7pGUarYoQdJJz2+RISn4Ut5lwKQbEXC8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Fkc7UD5TE5zSvfRbsKrACU/HRzigpjITZ5eDPn/eoEwR/+xCJTvfwWC8XfsrmZkyKNLo70vB2TUu5Yflrwjl6CSmN/3Hz09YtK2g/SheFkZvy1UpB9KXrx7gFtQp9A2tG9DuJZdSa57/1HhLB4V2auu4AHeMTg1zwghFJ3QOLFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LZFSvwpO; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731489352;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=quTAJEdlmLiz3O8wMhr6p5bbf6+58IEExsR/WOQUwf0=;
	b=LZFSvwpO07ggnjydWC7U91iVQTdEpCBSkDPiYWCzZIYwrxevA6QW9e1P5VLXfJdRtNs5pD
	MUzzLJT31ShX1dA6f8UH4b3hlyB98jCAcVc87riMFoSF+2ZBzSc9uNzVAtoSNROw3ILZei
	xccdq9KeWSVYUT02UoRwXY2IyeQXx4w=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-108-2bXx2FH0NUKDA0_YcwHXEg-1; Wed, 13 Nov 2024 04:15:51 -0500
X-MC-Unique: 2bXx2FH0NUKDA0_YcwHXEg-1
X-Mimecast-MFC-AGG-ID: 2bXx2FH0NUKDA0_YcwHXEg
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d3742af01eso5146836d6.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 01:15:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731489351; x=1732094151;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=quTAJEdlmLiz3O8wMhr6p5bbf6+58IEExsR/WOQUwf0=;
        b=iMtJNMXb3Vwab7ycdbYXV2JNHnnNvsz1cy7rlZpVCwP0dDcaeOJlliHpVaRw/olFCn
         21mW4NLyNLqLOKsuXK/yQ41McCay1wc709FDJwGaidZp40L1fley3e7WUXShlpSafCdO
         Bw5ol87up3w9G/BZy4L/MQsWdlvqzaZqZCSwaN+d4pFh1WXqwcLHa6xeK7nrHPQpWj2X
         xvP2qmD+evVDwRM6fy38VpLJCMHKYkBDQ1pTwyNZTH/7ArnPoEvtK1/WUms/oFHTzSPi
         Ry8HeUUUQJc+ZouwirCEn5K2aFw4npEclo0NDJR2B3lHT0cp+2Z4bi70cafkaavs8m0P
         8l2w==
X-Forwarded-Encrypted: i=1; AJvYcCXoEVIJLTZ2/hr+ZW5qwnIfq4FhkfPDPL7uzmTgr/Ap6n2+PBQEcAvgnwxHwlD8pbzk2MkYVl/ta0+F@vger.kernel.org
X-Gm-Message-State: AOJu0YweXzDk/khDiYRXtb455VEESRl+HXMYvBXossrOn6J3sU/4NlSk
	Y9zlojw/Q/a0MC6RUfZw8y6bWMmTP3Cy+xOdF11xf1uwtcmDoRW99FnQYcEuNuUdUryicIGIWch
	ecalNclAWSf5Z+fy5UjMNtH1K071OqDicRdHe2hnsPZ7t/3YVQXUzR2YLzcg=
X-Received: by 2002:a05:6214:5081:b0:6cb:1fad:82b2 with SMTP id 6a1803df08f44-6d39e1125bdmr116776176d6.3.1731489350604;
        Wed, 13 Nov 2024 01:15:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDwDRfyzmSF24P4AFU+yndsPh2v9vVvenuKF0R+CHcbHTyMz4BPrKKIgvxXN3lhC47OZ8I4A==
X-Received: by 2002:a05:6214:5081:b0:6cb:1fad:82b2 with SMTP id 6a1803df08f44-6d39e1125bdmr116776076d6.3.1731489350269;
        Wed, 13 Nov 2024 01:15:50 -0800 (PST)
Received: from [192.168.1.51] (207.red-83-46-1.dynamicip.rima-tde.net. [83.46.1.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d396630ec5sm81599036d6.101.2024.11.13.01.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 01:15:50 -0800 (PST)
From: Enric Balletbo i Serra <eballetb@redhat.com>
Subject: [PATCH v4 0/2] arm64: dts: ti: k3-j784s4: Mark tps659413
Date: Wed, 13 Nov 2024 10:15:15 +0100
Message-Id: <20241113-b4-j784s4-tps6594-bootph-v4-0-102ddaa1bdc6@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACNuNGcC/x3MMQ6DMAxA0asgz1gi4NKEq1QdEjDFHUgUR1Ulx
 N2JGN/w/wHKWVhhag7I/BOVuFdQ28C8+f3DKEs19F1PxpgBA+H3aUkJS9Lx4QhDjCVtOJDl1dn
 Ojt5BzVPmVf73+vU+zwvgTedNagAAAA==
X-Change-ID: 20241113-b4-j784s4-tps6594-bootph-348ef98086a9
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andrew Halaney <ajhalaney@gmail.com>, 
 Andrew Halaney <ahalaney@redhat.com>, 
 Enric Balletbo i Serra <eballetb@redhat.com>, Udit Kumar <u-kumar1@ti.com>, 
 Beleswar Padhi <b-padhi@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731489348; l=2452;
 i=eballetb@redhat.com; s=20241113; h=from:subject:message-id;
 bh=SB7Bfgqn58f7pGUarYoQdJJz2+RISn4Ut5lwKQbEXC8=;
 b=HIPKdQzzrXuLuysgHfF7ppw9TUp59s2Aq+m8hqdoYVFBygJxdrz0L3t+09pfJVK5VzLhnkrxS
 O0rrpwWx/6qDpMWqjAaulpOfII1MTHgoVLOOBPrIk7aXUlZAlB80Xev
X-Developer-Key: i=eballetb@redhat.com; a=ed25519;
 pk=xAM6APjLnjm98JkE7JdP1GytrxFUrcDLr+fvzW1Dlyw=

This series marks tps659413's regulators as bootph-all in order for
the nodes (and parent nodes) to be accessible during MCU's u-boot SPL.

This in turn is desired since the tps659413 needs its MCU ESM
state machine setup in order for the watchdog to reset the board.

This took me a little while to track down, as enabling the ESM, TPS6594,
etc in u-boot would result in the below boot failure:

    U-Boot SPL 2024.10-rc4-00007-g44b12cbcd1b3-dirty (Sep 06 2024 - 14:25:52 -0500)
    SYSFW ABI: 3.1 (firmware rev 0x0009 '9.2.4--v09.02.04 (Kool Koala)')
    Initialized 4 DRAM controllers
    SPL initial stack usage: 13408 bytes
    ### ERROR ### Please RESET the board ###

Which turns out to actually have failed far earlier in spl_early_init(),
due to these nodes not being accessible in u-boot. That's hard to tell
though since console isn't setup until later (and for that reason I
think spl_early_init()'s return value in j784s4_init.c isn't
evaluated since a panic() at that point would leave a user with *no*
information at all).

I've tested this in conjunction with a u-boot series which I'll link in
a follow-up response on the k3-j784s4-evm. I'd appreciate someone testing
on the k3-am69-sk at a minimum, as it should suffer the same fate if things
aren't setup appropriately.

Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
Signed-off-by: Enric Balletbo i Serra <eballetb@redhat.com>
---
Changes in v4:
- Rebased on top of ti-k3-dts-next branch

Changes in v3:
- Added Udit's Tested-by tags
- Reordered bootph-all to align with dts-coding-style (Beleswar)
- Link to v2: https://lore.kernel.org/r/20240911-j784s4-tps6594-bootph-v2-0-a83526264ab1@redhat.com

Changes in v2:
- Only mark the regulator nodes as bootph-all since parents are implied
- Link to v1: https://lore.kernel.org/r/20240906-j784s4-tps6594-bootph-v1-0-c5b58d43bf04@redhat.com

---
Andrew Halaney (2):
      arm64: dts: ti: k3-j784s4-evm: Mark tps659413 regulators as bootph-all
      arm64: dts: ti: k3-am69-sk: Mark tps659413 regulators as bootph-all

 arch/arm64/boot/dts/ti/k3-am69-sk.dts                   | 8 ++++++++
 arch/arm64/boot/dts/ti/k3-j784s4-j742s2-evm-common.dtsi | 8 ++++++++
 2 files changed, 16 insertions(+)
---
base-commit: 767b6a0d0900c951e8b42306bd636268481a97ae
change-id: 20241113-b4-j784s4-tps6594-bootph-348ef98086a9

Best regards,
-- 
Enric Balletbo i Serra <eballetb@redhat.com>



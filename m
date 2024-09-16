Return-Path: <devicetree+bounces-103337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA29D97A68C
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 19:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3311CB2386B
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 17:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB32215921D;
	Mon, 16 Sep 2024 17:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XEXs5QTh"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CA11591F0
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 17:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726506901; cv=none; b=fKlo7WdGWoqsxoNgMGl5U99McSvsbHL6OBzYinE5j/pd5xJGRu9tDPcPka4/EE+0UA4iDI+iFmFBr5aG2FqXApgifOSWzQb6eZM1xd4K7incenp9FXu6hcrjid4cGQXsWzL/SyWMRWj6Wzu1AfL7h6BKmY4vgaXMmm3sjawR2FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726506901; c=relaxed/simple;
	bh=XAEw1O4ypXbNAeQ8bJrLgeWVtDK++9rbiKHcfGsc+W4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=naUcpi2hDVDjZuodkYxBOu8ES9Yiq3Jz7ofE/sGu96Hlelu/1ws65rA3DMqqfS+F8jTIs23K8PEyBxwkEW/L4bQZ1wPn+AShsA80DP1qsZ2RoNCrqbFyR0sUYuyONkh4lCo9FulYT3o5TWPCfEV9IxJG5Nz+SuRjFP5oSJs3SoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=XEXs5QTh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726506898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=MD/gbR/K562HjYAqjBfv2TN8nj9GE34IYQno6KvPYbo=;
	b=XEXs5QThZ0KZvNaN/PUwR3r/eyYAu6rfItgyYSIxCBHZCAqcYzho5CuvpTUw/ei4Nz1Q0H
	PbyXT9WqYBhAX1nep5YiFHxS5+7ZbtLAai+HHTfF5BrQD5b4kkUAlnQ7f2TL/fGiDP9rfm
	X7BqKNSXkyz8cB+wdUvFLhE+VxjQSXc=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-515-MPgjruuuNGuz7yDRJJQYug-1; Mon, 16 Sep 2024 13:14:57 -0400
X-MC-Unique: MPgjruuuNGuz7yDRJJQYug-1
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-45826823bb0so75459131cf.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 10:14:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726506894; x=1727111694;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MD/gbR/K562HjYAqjBfv2TN8nj9GE34IYQno6KvPYbo=;
        b=i2oBGZi31rDIfMOBNSbBgqSLd+x1zEGFU+UhAXbGG3XW+trJPBCO4Kre03MFBsKiDW
         4f8f3cnyOf8/Q5HkrF3QkrNekx8eOo75H6y1iX0FHJ30TJGbF+4K+zlD/XLveQa9dUss
         UH7uTm6pTzv3uUtJHrzy+fUOsxFh+KuvvXbFGTEAoVRTYbvpPOyO0FOEk97kbOPydJTu
         Wjwxek9sbZBID988J9tp5crDpoMUWFRo/dsMDUV+AegkWJGg6XN3eyLZsBOol7GIXUM1
         +Z+g5xn9+mEJZ3k95eO5tVbGlaldka2Rah/gMRXPGvJSr2+L8h70IPpEwSoZs+DdcUpw
         LBQA==
X-Forwarded-Encrypted: i=1; AJvYcCWVVpYKicVW5zixsCIBLbPefAfIONRyEA7OyXn8nFurZRGmzfkMz/oHSt2zLbOQwo8Xopr2RQWruoKQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx8yLLJl7YQiMoft7wKlduarQvsanNkhB0/jfILpCaVXPagMsX
	KTl0ND0gwSRsHTmm/PjYm2MptMecWh7gG0EsxC0PMEyrsEiuz383NZ2OBqYHGO7KuCFR9AYoyTb
	v1rCqYFG6V2J+wBNebcQWJdPOJufzkuGg/EpRx2kdHQUSHsDKmi/nXhJ+xqi6OtIPreELz7u1bi
	7Bc6+C0RCNp8PLUPUdurlJqkyw1gNlmyUA0J/i/YVWgqM=
X-Received: by 2002:a05:6214:498a:b0:6c5:2797:f4c0 with SMTP id 6a1803df08f44-6c57df9ad48mr200405626d6.20.1726506894544;
        Mon, 16 Sep 2024 10:14:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUfaeTxKssYTRqsixAXgs3eyrhnP6I6P7WPKLanNFYrSeTBYWKtg5eW/HG9SepEUdICcRnPg==
X-Received: by 2002:a05:6214:498a:b0:6c5:2797:f4c0 with SMTP id 6a1803df08f44-6c57df9ad48mr200405096d6.20.1726506894061;
        Mon, 16 Sep 2024 10:14:54 -0700 (PDT)
Received: from x1gen2nano.local ([2600:1700:1ff0:d0e0::43])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c58c6262d9sm26342046d6.28.2024.09.16.10.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 10:14:53 -0700 (PDT)
From: Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v3 0/2] arm64: dts: ti: k3-j784s4: Mark tps659413
 regulators as bootph-all
Date: Mon, 16 Sep 2024 12:14:50 -0500
Message-Id: <20240916-j784s4-tps6594-bootph-v3-0-ab70da0de7bd@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIpn6GYC/4XNvQ7CIBSG4VtpmMXwLzh5H8YBCggmSgOEaJreu
 7STDsbx/ZLznBkUl6Mr4DjMILsWS0yPHnQ3gDHox9XBaHsDgghDCgl4O0hWGKxTEVwxaFKqU4B
 YWeoR8kZJDfrtlJ2Pz809X3qHWGrKr+1Nw+v6T2wYIjhyw6Vl1HjETtnZoOt+THewko18MBj/Y
 khntKScCCKYNviLWZblDbqQJKYCAQAA
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Keerthy <j-keerthy@ti.com>, Neha Malcom Francis <n-francis@ti.com>, 
 Eric Chanudet <echanude@redhat.com>, Enric Balletbo <eballetb@redhat.com>, 
 Udit Kumar <u-kumar1@ti.com>, Beleswar Prasad Padhi <b-padhi@ti.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>
X-Mailer: b4 0.14.1

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
---
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
      arm64: dts: ti: k3-am69-sk:  Mark tps659413 regulators as bootph-all

 arch/arm64/boot/dts/ti/k3-am69-sk.dts    | 8 ++++++++
 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 8 ++++++++
 2 files changed, 16 insertions(+)
---
base-commit: 7083504315d64199a329de322fce989e1e10f4f7
change-id: 20240906-j784s4-tps6594-bootph-19d3f00fb98a

Best regards,
-- 
Andrew Halaney <ahalaney@redhat.com>



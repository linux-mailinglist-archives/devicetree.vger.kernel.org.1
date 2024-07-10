Return-Path: <devicetree+bounces-84732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A3892D51E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59DF21C211A1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD918194A65;
	Wed, 10 Jul 2024 15:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WFGQcGil"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555C91946CD
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720625808; cv=none; b=HWXzbSDovntv/DHPXXDmngsRgjCjod54DRPEetqjJ96G/ba5bGWc7Fhn+zLHehGhtBXiXkCYih34Qn1b+q28p5I1yOEC0Tv+BnKpZX57YUuKPenNDddlOuNhJ51k0fiFX0Ubs6XF/C1+NtflkCjcMKDtiM2ke3v/x6/PQRR+reY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720625808; c=relaxed/simple;
	bh=QOlGEjG6fe8bchNVtMBv9s4auVk1QxHifUB7L6evv18=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HSJrlwy56cqr8LpQsHOf+7YJCGayCjyZnzgfLX7y60l70xk2IxUyJtJsGBfaFTdBWtCDLsgKmsOfYN32yhawxEFDFYB2UhpW7aX31NpDPHoU8Scq2T63t8t6pE2hTx0p9dkTAAvIYcvajXL1gokS1Z8bfzyHwA/DnSE58SI6a50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WFGQcGil; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720625806;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s64RA7czZjoxKqdjU5coO4Q/NqOYJDpUbBArTWbAtjU=;
	b=WFGQcGilxUiDHejQfiCjMVhzfyLdtBcfO8dO1d8hgi2drMj9UWKsc7P4vTN5kkgAxAYffk
	+h3JwVMN5AxCNAhyeTVJpjDSNQLZo3igjmnmTlfXHn8zT3moR7U4gmsfw9gF+eHGafx/PR
	YXdZwjc3sJpkbZMW+j03X1LaYtart2Y=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-674-Mh8cNC6YOiu1y3JlIlKB3g-1; Wed, 10 Jul 2024 11:36:44 -0400
X-MC-Unique: Mh8cNC6YOiu1y3JlIlKB3g-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b61dbb0005so25811396d6.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720625803; x=1721230603;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s64RA7czZjoxKqdjU5coO4Q/NqOYJDpUbBArTWbAtjU=;
        b=n1zMefB0OTj/nDG+1agRamHc885Ye2nNP0mhzbQMvg8DiBhNUjbfnwPbyl1xWXJ1lO
         W7wvdM3QPHD+edFZqb6aDFAWoo5fKunI78Vogi+P8kpfXqNMYSLs4fhlfvQwaesvqrmW
         zAmBRk07Zr2pZDcbIizSdnAZQm+9F24H5BywTc861G8lwhEp35yvnxAR3S9ps6FlAhQy
         TrQ2+tCJdOUSRam5zaa+qHBV0Hi2+TEI4UKs7pXlNyqjgi3nhGpPU2vj4AOm907rfWxL
         VZvaHHMobLoMqVCV2NwNpncg3YyC8XylLtpTENElyXtbDJ4A6vFHsGb5jcBCyk40JOrc
         RHxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtNY3R9HChRG0B7OT/pr7EwTqmrEnzge1BjQNj4Ygy8PBS31WL4WkXtCj7wmHG4TmSJZgEpZ4rS76IbK88ZRu8l7VSAeEZD5vV8g==
X-Gm-Message-State: AOJu0YzGjdGxDaH2Q0luhsW8Fc3dmAPG0yqBIjYsFY7/w/ZYFStmUTTM
	HBIPETkdkyKegpMziTiiRoqnR290mV1zW59k0dUbGIt1p5Wi3cjxt5UlKAmTfy8ODtoLE/Sh7bX
	G2IYyi8WUnm+QZnP+rt7Vb3nbfST440AzFFktfEQMtBLbag8fwKXGeXSjoP0=
X-Received: by 2002:a05:6214:1cc1:b0:6b5:dca9:675c with SMTP id 6a1803df08f44-6b61bc7ef93mr77770466d6.4.1720625803522;
        Wed, 10 Jul 2024 08:36:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHB/GdF4nMtnZWIqpj1bOX+NMDeXUNW4j07PUySuL9OsO7VkDuRhctdh8i+I5JTRQjusLsnqA==
X-Received: by 2002:a05:6214:1cc1:b0:6b5:dca9:675c with SMTP id 6a1803df08f44-6b61bc7ef93mr77770346d6.4.1720625803239;
        Wed, 10 Jul 2024 08:36:43 -0700 (PDT)
Received: from [192.168.1.111] ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba74d8esm17970576d6.94.2024.07.10.08.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 08:36:42 -0700 (PDT)
From: Andrew Halaney <ahalaney@redhat.com>
Date: Wed, 10 Jul 2024 10:36:14 -0500
Subject: [PATCH 2/2] arm64: dts: ti: k3-j784s4-evm: Consolidate serdes0
 references
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240710-k3-j784s4-evm-serdes0-cleanup-v1-2-03850fe33922@redhat.com>
References: <20240710-k3-j784s4-evm-serdes0-cleanup-v1-0-03850fe33922@redhat.com>
In-Reply-To: <20240710-k3-j784s4-evm-serdes0-cleanup-v1-0-03850fe33922@redhat.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, mranostay@ti.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>
X-Mailer: b4 0.13.0

Subnodes were added to serdes0 in two different spots (due to independent
development of their consumer usage). Let's go ahead and combine those
into one reference for readability's sake.

Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
index e54ccf4f37955..ffa38f41679d8 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
@@ -1262,6 +1262,14 @@ &dss {
 &serdes0 {
 	status = "okay";
 
+	serdes0_pcie1_link: phy@0 {
+		reg = <0>;
+		cdns,num-lanes = <2>;
+		#phy-cells = <0>;
+		cdns,phy-type = <PHY_TYPE_PCIE>;
+		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>;
+	};
+
 	serdes0_usb_link: phy@3 {
 		reg = <3>;
 		cdns,num-lanes = <1>;
@@ -1386,22 +1394,6 @@ &main_mcan4 {
 	phys = <&transceiver3>;
 };
 
-&serdes0 {
-	status = "okay";
-
-	serdes0_pcie1_link: phy@0 {
-		reg = <0>;
-		cdns,num-lanes = <2>;
-		#phy-cells = <0>;
-		cdns,phy-type = <PHY_TYPE_PCIE>;
-		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>;
-	};
-};
-
-&serdes_wiz0 {
-	status = "okay";
-};
-
 &pcie1_rc {
 	status = "okay";
 	num-lanes = <2>;

-- 
2.45.2



Return-Path: <devicetree+bounces-213361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF38B4538C
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 11:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0936458208D
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEBC2820CB;
	Fri,  5 Sep 2025 09:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Xjoj2vRI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A846543147
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 09:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757065253; cv=none; b=VFUKDKyRao/V6npuVG/0dAOzl3oc4HG8cYjUmyI9epppKA76IMbRQ7n9UrzlOSURFKRVKMG7eJStWPeLQHw4IKopNZ9m/eflrrg2CiNaAP/fhsMxZD2GzgOoOOumfn4qPmCy/BtFQ+holW0S47p7+E73d89JNv7x91hyb8BEuQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757065253; c=relaxed/simple;
	bh=EDIb3s8WJz3IT6jQ4AIZWqSmKNckUnK9mEaJyhV+Zzc=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=vA0NFskTRuA8mmk+pG7sVuomDmeeaAmKNwvG1i53q1GmLQfWJqEdNGEbGJS/5WH4wNzXUKclwRFpM4FejM/1P68fNZ+Wqd0Bge06cKTveBUxTixXgQT8yYihqUWBt/xWhvbdM/JEfQigeWim3LGA/N7Xlg9CtHgQ8nrnYVaJIsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Xjoj2vRI; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afcb7ace3baso358725066b.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 02:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1757065249; x=1757670049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=J/4ivpOE8qtitd/efpLlMj5E5YlfY95TXIstr7HGuK0=;
        b=Xjoj2vRI8nYgcZEYHL+vOezLuSylXFKNcdTok2cuAkdvFQYraTvtsfctPrcSyw/xCf
         XzrDQON7KEsJ3W+sUGspybeaoIBC2gYelINGJB8aBNiO7fvhB3bvRe0ym+CSF4Vb7vB2
         TgAkibK1VbIs8JXr2zcN+qfdGO+TKbJuF2+ZeFGeq3bhN9m2Z0T+d8E/rKdRCRwX5C5n
         7pFOl5+tYLps/Fmr7uQxn3KS+7C6CbJjUiUygrZ0LKNt3DBIKQy1Kl7AITiCsJKr929y
         jsb6o8LPdhu59LCvSezsYcCTJZo7dQPVdMC9lFWwaHhylly/x1XOsq5D9mDw1CoMVbqN
         TdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757065249; x=1757670049;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J/4ivpOE8qtitd/efpLlMj5E5YlfY95TXIstr7HGuK0=;
        b=sMpZmHFQZRcEKYl/0mZ7v7IOT1zyoOSjmEoaUNipijUmYmSOD9mD6lboFJ+Ncrq7UI
         OhzKJhXjpEoHn4tHKJgs0NQQWPqzP7t2Li6mG92uYMuHl4jLwLj+RQFvcPtlUcff3JeJ
         zyWhfNB3D+bBVxFxgYBzBfObm44Uu3eSuRs9caAs7QkrfdL57eexeg42u/W7Jdb/3mPC
         glmG9eL//aZcugExJcIyshgDXkSCowvX63ue6E6JyO80HFtoX3LsNd804ntwUYPCOqN6
         osz8vY6pz5TUETaW7TKaFbOc0kl06ozByt+Tvu1dXdOAyPJ4uqFxWXvYltwraOM8L5cQ
         aTOA==
X-Forwarded-Encrypted: i=1; AJvYcCUohN/2FqmZkfeSMcvJ2oMdMoUczlIzchIORvuitSCWEK4j9YpdF+dZSos9R+UMFEFGUWhxSYLKWMU4@vger.kernel.org
X-Gm-Message-State: AOJu0YxQdH3WUUQi+RezFvqlE15qo7NqNotbfe3IJxke3egQdpTmuUqK
	IB6JcoIejRaGSkAgVUD/c7TqCz13t6bn0BLmFd7g1Hh46flSlfQXDUVWaTacrqDDo+E=
X-Gm-Gg: ASbGncvKPcBmqChIkGdD2GZoKK5IkHu56po9a3qwqUd5QyPNaGebTMR470tJTCRg/l2
	I8Xwz5cOjSQuH9aKme9XLWd003Jq8Lj7fI3EqNxy3XFgzBh01oIANlwt9Hj51Q03/Xkty2Kf+ru
	yx7CXYm4d3CHcMqKtdhzsHPSrGV1NbJcSB04DDMEfmjr1TNT4teLaW1hGB5KitYysH+Dthap7jC
	Dv1F04Jr0KqfSATSRmMT6iPpC0Khv04DNFdSzXmWog50aKuOq7UDRwV7GegDjObXcazQ4J7Fub+
	AZyKQvrp17AYHLJqAHYeLYHS6iADJtlbSMjk1kTOQI4vdFfEylDzEp1GC90ncdadAJ1FP4TPjO1
	nY4Omgv1bfL0VoyHdfV9lUYZ7wiBzE71RdTp7NvOtMFRBsGvob4io/C2zosp5cYXKKQSYt388db
	er92B7q+Buu0prjbVM0lXr3Uthz1uxkW9o
X-Google-Smtp-Source: AGHT+IHUDHuJjsleRsQTk/qSu97rV3jdhcfaODQkbUhAaumpEvisyB/1lzmWlJnkChbNYC6NWWQ7mQ==
X-Received: by 2002:a17:907:1ca8:b0:aff:321:c31d with SMTP id a640c23a62f3a-b01d8a277c5mr2226502466b.7.1757065248826;
        Fri, 05 Sep 2025 02:40:48 -0700 (PDT)
Received: from localhost (host-79-31-194-29.retail.telecomitalia.it. [79.31.194.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm1228257466b.60.2025.09.05.02.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 02:40:48 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH v2 1/2] arm64: dts: broadcom: rp1: Add USB nodes
Date: Fri,  5 Sep 2025 11:42:39 +0200
Message-ID: <16d753cb4bf37beb5e9c6f0e03576cf13708f27d.1757065053.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RaspberryPi 5 has RP1 chipset containing two USB host controller,
while presenting two USB 2.0 and two USB 3.0 ports to the outside.

Add the relevant USB nodes to the devicetree.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 28 ++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
index 5002a375eb0b..3be14ac53c81 100644
--- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
+++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
@@ -39,4 +39,32 @@ rp1_gpio: pinctrl@400d0000 {
 			     <1 IRQ_TYPE_LEVEL_HIGH>,
 			     <2 IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	rp1_usb0: usb@40200000 {
+		compatible = "snps,dwc3";
+		reg = <0x00 0x40200000  0x0 0x100000>;
+		interrupts = <31 IRQ_TYPE_EDGE_RISING>;
+		dr_mode = "host";
+		usb3-lpm-capable;
+		snps,dis_rxdet_inp3_quirk;
+		snps,parkmode-disable-hs-quirk;
+		snps,parkmode-disable-ss-quirk;
+		snps,tx-max-burst = /bits/ 8 <8>;
+		snps,tx-thr-num-pkt = /bits/ 8 <2>;
+		status = "disabled";
+	};
+
+	rp1_usb1: usb@40300000 {
+		compatible = "snps,dwc3";
+		reg = <0x00 0x40300000  0x0 0x100000>;
+		interrupts = <36 IRQ_TYPE_EDGE_RISING>;
+		dr_mode = "host";
+		usb3-lpm-capable;
+		snps,dis_rxdet_inp3_quirk;
+		snps,parkmode-disable-hs-quirk;
+		snps,parkmode-disable-ss-quirk;
+		snps,tx-max-burst = /bits/ 8 <8>;
+		snps,tx-thr-num-pkt = /bits/ 8 <2>;
+		status = "disabled";
+	};
 };
-- 
2.35.3



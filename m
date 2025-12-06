Return-Path: <devicetree+bounces-244956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4FFCAA764
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 14:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 39AB43012743
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 13:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AEB2FDC52;
	Sat,  6 Dec 2025 13:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LkVCef9i";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="BIDH52Fk"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E752FD691
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 13:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765028751; cv=none; b=rm6Dts+gIoGVJWb7fnlCmudjlU5MbSTNeXUVcTwvZ/QFViHXe1lTnJeiX2dGJpf1JSFxKYTkOx0girKsYNbEd3tPfsTKhhdOIqxZoz4mpnk1Fr1Bf6x94iMaXrcPfjFYZbK7prRcEv8z7KuJIJJVYsMvuomKfUMK4s6ore3an7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765028751; c=relaxed/simple;
	bh=E74khYf4eC1cSEfdnSoFBPUDpz1eFC5QMvu4ZgC/14M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nMilnF9smJ6AhP9rONXoiKiqFc/C3NQYtbrlOOnhyMd1MJ8W77hQzgYrmg9BLNukHtPz1oHbBOx6gZoLJdGLu2kh7miOAiE0vAEgOLtam3JgY6bBlWAsN5nAAyRAdYblvPTO9DMsSN+Q5uPrlkrhplwf9meytycxsqm0FO/BDfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LkVCef9i; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=BIDH52Fk; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765028749;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zQ4xZKnyp8sg87QxSnLd/hZTKRSMrQkq8mkt/rnJ6PU=;
	b=LkVCef9i1AFm590N7Sgxei7R11hYRSF/lWBsXUaZ5o3LQAzWgw96453yW6HlFEmHG7cB0w
	L5fnuzjgXSO8AwU9XR5Ot0O4fGZ6osIDEC/PVsjniflBLICV/1gBoQ00BdTC3otTAw0H8A
	dWVjfX77UBD0v4HM6TaT8GRD69MWdV0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-691-s9cWDvd_PtCigMT3aEsHCA-1; Sat, 06 Dec 2025 08:45:47 -0500
X-MC-Unique: s9cWDvd_PtCigMT3aEsHCA-1
X-Mimecast-MFC-AGG-ID: s9cWDvd_PtCigMT3aEsHCA_1765028746
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-477964c22e0so19238945e9.0
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 05:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765028746; x=1765633546; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQ4xZKnyp8sg87QxSnLd/hZTKRSMrQkq8mkt/rnJ6PU=;
        b=BIDH52FkIOOXIqeEnCxmkKQiYGV7XOqhvHCCiPw+c35kYu2VAtV9NWuciZhQYs9Goa
         /FZ3QmCqtR/O3ha62vcTKDXd10UzG5pqkbFeNxX4x4cQC6JZmtb4BBpoK6jJlVWdOPEu
         NVlFP/AtT8eUQMBd+vY8e/lbiJUqgYoFZwlfMjmVFRCuAEeSrOCOQdKYrv9hm+TdUoPj
         xSz/iB7ba0/aw5smh8P3R3MKPf7Nib+OcvI+FLPxKUngaXah1b06KNeke+XqFIQODLVI
         2oE9NepkX9HCVx1erVTuHNB54GYLCv+UdTEq4Sg3rp99J5v5WHIotXFVv8nMLjLnuesI
         XeVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765028746; x=1765633546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zQ4xZKnyp8sg87QxSnLd/hZTKRSMrQkq8mkt/rnJ6PU=;
        b=OoS+X5g1AqD4ErbuCDwKIYByWTFx3S+a1KB3Ilx8TRbdIEocxjtBwLh7u46Dy7PYSu
         PN71eBYEuSc6RSBKqYWGAlg2NpVLnNBpdularGTRhWW2wUODMLeLdAqd9hA3NhWWH0tJ
         4EkqWsR1VWr06/K1JR5/AwYGiaU0pql3FZsUzeXmjjUkYdDpQrWSQPjkE63FVICrbAmP
         x/wBDajejnKGfQAt+tR3hc5PuInlaTHG8DVprByml343IrVu8zgD1dqnyjX5dIZC5VG9
         irYnpl67oAYys623x7psxPHHGNUJJUHe0hQA9hWnFyzJgF2fzbzcvDpzEk4K8P39Z8Uc
         mXZg==
X-Forwarded-Encrypted: i=1; AJvYcCUHD+NjNBwcWZpMtrMbdsycSRR8g5Pc52omDSI73KQ+KHam5k6y3RuwXxUSpQbrmbkcDL0LJcKDwFu1@vger.kernel.org
X-Gm-Message-State: AOJu0YxEGHPdpzxwrEEfSS6JlvisVEYO6b+O0QMLoAXwvXUi7raQ4x0M
	MoQYwaw2fYP5mUwput9DVl4UwedGc4eMP7gwbbegaizl3hP88OP6KHYJFI218Useuror1sj+qga
	9wNo+iBtxCjOAmWlIHkxVPPYKLw0gggucJCKt9pX48bzHM5jAgQFeNpdHbw6Rlyc=
X-Gm-Gg: ASbGncsTMPit7dECDFs095OOv0hUrtlsfdvUG4MbwM0W/kHsXXGk4Yl/TtI6M/7/QAG
	NlA5400cnth7XEkvhRJ6UJ1pleuc4xXnuHpnlKQYiUS67awl50zjTrRW7rKHc+diM6isaal6IhS
	Cwn4/Elqj3daJil0eRDSdw1RstM+H6T53COD4pHE8QOozTXdo6KAw+TFk6k/RZg6vaPZcsW7/zx
	yhTbh7tGnsWPwGvFEmw3k0UJ2xDjLE3YVuMlITXDAuNt+9cBxht+KrqJgsOC+9AbmFXF94RODc7
	434UQtzJxjdLjrFf081POR/Ut8Wfkpv5RtSp/+L3AJBJEDy2mV/C/q+wBkHxbSnudYwF+JnnVaC
	oMcSfLD+Xnz7buzAiQgYk8/Lc/8GZf2BUhWk=
X-Received: by 2002:a05:600c:1388:b0:477:9890:9ab8 with SMTP id 5b1f17b1804b1-47939df12a9mr26315075e9.3.1765028746413;
        Sat, 06 Dec 2025 05:45:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBRzGilJnm+Z21pEmUUbYTk3gTJ9mW20e4RvI9FI44VoB+qQW6Xulgk1I7L3r+5rqwRgnb7g==
X-Received: by 2002:a05:600c:1388:b0:477:9890:9ab8 with SMTP id 5b1f17b1804b1-47939df12a9mr26314745e9.3.1765028745989;
        Sat, 06 Dec 2025 05:45:45 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4793092ba4fsm143337315e9.4.2025.12.06.05.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 05:45:45 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Alex Elder <elder@riscstar.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 3/3] riscv: dts: spacemit: Define the P1 PMIC regulators for Milk-V Jupiter
Date: Sat,  6 Dec 2025 14:44:55 +0100
Message-ID: <20251206134532.1741648-4-javierm@redhat.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251206134532.1741648-1-javierm@redhat.com>
References: <20251206134532.1741648-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the SpacemiT P1 PMIC voltage regulators and their constraints.

The power management hardware design on the Milk-V Jupiter is identical to
the Banana Pi BPI-F3, so the DT Nodes were taken from k1-bananapi-f3.dts.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../boot/dts/spacemit/k1-milkv-jupiter.dts    | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 5babed4d7094..800a112d5d70 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -95,6 +95,116 @@ &i2c8 {
 	pinctrl-0 = <&i2c8_cfg>;
 	pinctrl-names = "default";
 	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+		vin-supply = <&reg_vcc_4v>;
+
+		regulators {
+			buck1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck3_1v8: buck3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck5 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck6 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			aldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+			};
+
+			aldo2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			aldo3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			aldo4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+			};
+
+			dldo2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-always-on;
+			};
+
+			dldo5 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo6 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-always-on;
+			};
+
+			dldo7 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+		};
+	};
 };
 
 &uart0 {
-- 
2.52.0



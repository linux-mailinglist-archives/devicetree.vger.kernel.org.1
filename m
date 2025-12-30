Return-Path: <devicetree+bounces-250535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E99CE9C70
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:23:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFEC03010AAB
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD3612253A0;
	Tue, 30 Dec 2025 13:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bUaF9zax"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7FB22D7B5
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 13:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767101028; cv=none; b=CinUX2PGekSp4x/tbgDDGOMud3lDK2dqCjVCYwv/lzjJT+qNJweF+7phLpJcly3BMFqoxA8G6xoicsKvrT2ETmdETKDYfx/jIYhfTAFMKbZrEL8WkgjjPaY/cD9f6SHiMTFerT02E/9DeT/iLxLrdooWjfMFXLMxwpjsfLMdkaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767101028; c=relaxed/simple;
	bh=UQ5DWsXFkrEb/TWPrQyCX2bixd/4Ob5s+086Cxhqs8I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=NxKmuT9cVjXkcISjYM2yPj2rwuTPMBLr7rHyQ4+nMjmoeZpMULCQQg+reQP9XYflwArc5IiA/Yh5FVTQztVyEIpDrHcnXNhuQQ0qWJo81EPUbWUARgnKYxbrfSPxRc56f1ujQch4FbFpClefZ1tLZ50pfODdNsfyao25cuJoERI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bUaF9zax; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42e2e77f519so5941553f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 05:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767101025; x=1767705825; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bzWnrkrlR5q++h42uLlncPmWAMWNl0rJ9nbD7WUwTfQ=;
        b=bUaF9zaxVuPCLQILUH5e6H0Hd2Pavpr3FNnxOyqOH9Hh9uqbz/YTNcg+RS+nPVoklH
         F3YIc63Ezs7B/na1yuJHVBXjyYgxT8z5H4VgQ6/f261XUrBkLJH73Scci6lgAkq00lVs
         pVGmBurnQ6wHXuGQNOIOj4ABalybe1nPzfhkC5KJoDUJgPBjdH5q+36r3SNDZqlOVOIh
         zK/veZ+gGaq2INGd+heAruudkvRKZwbxbc7V9hs3C9inxJ+JbLiDIHfDR2MUn81fz91R
         BAYD9fbLLQ+9EU1ysqAQLevxMqJoV0jXzpaWZ7edlm6hpWjip9xAMmfWboWxCbh7002f
         1jiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767101025; x=1767705825;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzWnrkrlR5q++h42uLlncPmWAMWNl0rJ9nbD7WUwTfQ=;
        b=VL4JZvzT7ohKsDf01PJOCtil8UfncMGHx2yPAhBGRRNgfJdF8nME0d1Z+TBSt7NgnM
         na5WstKCNaTHU83rqgXf9UXl8bh1Jk7vLspyer4yVDoArU6SG9+TsqCTst6VVNWWep8a
         BlFOouiKekk0qzyYhV3D8mKs48WRHdFC3Wskwf7b+qAGqpZN+OP3idgQaHxfj8pesB0+
         167YkXfM6pYRlZPyvc9ek3C9VHJoJFBJQMOuc/HmI+LtUWp7pScwB0HKSptcxu59XMya
         C2r+mCGvRBr5s/aTAUfZVkRznUcLryIM+ePAlrq5+Zf7wl1dByf8AGJ9WHWXcTGwm2+h
         MD8w==
X-Gm-Message-State: AOJu0Yx/UJmsvMC4WPEEFx9iwOeredX81qG4EbiIU6XVAb6bSewXgeqM
	iHHloAkhU9cTupeiDI/inQ9ZUioNJv8xo4KQq4ufJ4sbMpIjIQVnN6+M
X-Gm-Gg: AY/fxX7eerEhpTDiM15opannY7Knb6N2JufYMq0NnG90m/OKcEowB8AAl5ZnZviKs+7
	pHSQ4Q0f82U+5X/kBbU1AXVQgWymeXMq/8dAAvYRBs21tZl7wl5i/t/i4d2xksohV/82abjPwcD
	GPKDkxVKEgloOF7H0OAh/Q/0PkWJTUjdPsxbo3Xp3Mi0P9U6yRbj2aBeVxBkjSBoV7QKtN50Nby
	N+rq7KLDFKRs5UDrPJWfb1RHFYSVbcdDX/vg6m/b9PviBy5rgquW1nFhUTz7vOChy/7+RuRlViw
	UbMhcVvpT/Z8sGrl0+fqjrUitdK5MDtFZCRIYqsRU0dUyq1vceskbZprRcdVUgbOJPx/ebqSFYF
	ZGGUsTyhTZlz0LSlDDszS/itqj9+nJ3GTEKPw4d2h5ez2qXG9kr/D+aiCuH2ucI39+BjdDmEE87
	hbj6DL9xTbEjDJieldmNEPUQLbxkMvDmKoUxeQN9+4BylmHNJTzXEsMlIHGARYHx9h2UydC0g=
X-Google-Smtp-Source: AGHT+IFUxDCYOfLilQ6lfBDnwhOcL2E6VOHW1djgaGHT1hjypUZN67hw/Qlj7b7P8zYClnV8NZsXzg==
X-Received: by 2002:a05:6000:1844:b0:430:fa58:a03d with SMTP id ffacd0b85a97d-4324e70ef05mr36872432f8f.63.1767101025060;
        Tue, 30 Dec 2025 05:23:45 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea830fesm69332312f8f.20.2025.12.30.05.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 05:23:44 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 30 Dec 2025 17:23:34 +0400
Subject: [PATCH v3] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-nanopi-m5-ufs-v3-1-ed188ae34fdb@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFXSU2kC/3XMQQrCMBCF4atI1o5kRmPUlfcQFyWdtgM2KYkGp
 fTupt0ogsv34PtHlTgKJ3VajSpyliTBl7Fdr5TrKt8ySF22Ik0GkSz4yodBoDfwaBIYasgZbTX
 urSpmiNzIc+ldrmV3ku4hvpZ8xvn9V8oICLqmQ43GWiR3bvtKbhsXejWXMn00afzVVDQ7PjrNj
 NbtvvU0TW9ja/Pf6AAAAA==
X-Change-ID: 20251127-nanopi-m5-ufs-52f2c5070167
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2289; i=alchark@gmail.com;
 h=from:subject:message-id; bh=UQ5DWsXFkrEb/TWPrQyCX2bixd/4Ob5s+086Cxhqs8I=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGX4o7EtZ/bd/e2hyd6JaNJy59lZ/Wbv6rJ3NDHmfK/
 N6LE5/N75jIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCqL1sw/A9aqLEx9z6DTEq9eoCSQcfu/7Z/dS9uFT0Y5dVywlFes4Lhn21rzdx
 1P7fMDpo+M6TPeeYdefaco9pvbG7Jn/m16mCVOQsA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

The NanoPi M5 board supports pluggable UFS modules using the UFSHC
inside its Rockchip RK3576 SoC.

Enable the respective devicetree node and add its supply regulators.

Link: https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_2411_SCH.pdf
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v3:
- Dropped 'en-supply' from fixed regulators, as it's not envisaged by the
  fixed regulator driver and seems like more trouble than its worth
- Link to v2: https://lore.kernel.org/r/20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com

Changes in v2:
- Describe UFS supply regulators
- Add link to schematic
- Link to v1: https://lore.kernel.org/r/20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 25 +++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index cce34c541f7c..c5b34069a443 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -110,6 +110,22 @@ vcc12v_dcin: regulator-vcc12v-dcin {
 		regulator-name = "vcc12v_dcin";
 	};
 
+	vcc1v2_ufs_vccq: regulator-vcc1v2-ufs-vccq {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-name = "vcc1v2_ufs_vccq";
+		vin-supply = <&vcc5v0_sys_s5>;
+	};
+
+	vcc1v8_ufs_vccq2: regulator-vcc1v8-ufs-vccq2 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcc1v8_ufs_vccq2";
+		vin-supply = <&vcc_1v8_s3>;
+	};
+
 	vcc3v3_m2_keym: regulator-vcc3v3-m2-keym {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -906,6 +922,15 @@ &uart0 {
 	status = "okay";
 };
 
+&ufshc {
+	vcc-supply = <&vcc_3v3_s3>;
+	vccq-supply = <&vcc1v2_ufs_vccq>;
+	vccq2-supply = <&vcc1v8_ufs_vccq2>;
+	vdd-hba-supply = <&vdda_1v2_s0>;
+
+	status = "okay";
+};
+
 &usbdp_phy {
 	status = "okay";
 };

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251127-nanopi-m5-ufs-52f2c5070167

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>



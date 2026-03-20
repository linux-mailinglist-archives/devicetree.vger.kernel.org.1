Return-Path: <devicetree+bounces-278121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLqQISEJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EBB2D764F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 777D9303A4A3
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B4F377012;
	Fri, 20 Mar 2026 08:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fjiZs8Lz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C64E375AA6
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996248; cv=none; b=YOO8BycLASFc44jAvcRPYHfRYbNgb0tr1hzmERImLskSTAuKr+E/5ekjYIOodmP91snM/a/ror/XNlggC4EddKdoUZ8EQlkmiVEucPnLcCbznIRv9xVmr8uHAiJOrSsqenOyU1H7hvUtJMRDIevlUo3ZupjR3gOvnDD1e95okjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996248; c=relaxed/simple;
	bh=1aybWFywNiFd5Es2CRfiNJz9knTkBeXij2mTwzHypOM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IWYGDx6ZeqYdh/NCnj8m3K2+tLO6xWnjIWeliiv6b6u8xdIqQxPEytYfyESYDxbg+sABhEY/uv6RaT2UeqgTv+Xs9BvglHapacDEJWAWHz4ZeqnbdnzG82rrG561hfFB9YgjXq+/pTISx4bHPQfRxwCgOcje290nW/8eltxpVnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fjiZs8Lz; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2b04fc8851cso17199855ad.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996246; x=1774601046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ri/BYxZDRrhTzmVjBatU57hJrsLsmd1gL4sNMRhZY8E=;
        b=fjiZs8Lz2fUXsZ9MVuFA99yjmGvembvdnNBERSMSu71OtHRnTH9NtGETavzBBi7/8M
         FvF0nY1GHst5k++5X4UGDSj/ZbkTxkM6IabCvQHX8847Vx4ZSyOfrgxPcFhOPeVv3h32
         RI1MiRuKuo0lxigki/ZKYuGk2cQ2BMskJR5Yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996246; x=1774601046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ri/BYxZDRrhTzmVjBatU57hJrsLsmd1gL4sNMRhZY8E=;
        b=PfeDSxTM2uc9/tvCyvsB9ucivZOM3G68MbL8SYAcSi9/X6BKBevg49v83hrj4okP28
         cYMXebIYZT2aNa2GXo3ef2KmPnJlrrmV9cM17aD2r4SiOnNER7T3JCGRXNzmvrWmI2ub
         GYbeazW+Bi9DQY0Z28dRYYLOfbS27bZt1gLcf2bb+g98qUJPTUNwWNlwUAJH2SUwFrKS
         3WwLYvjnjeHXs7rOZbAONczYstxts31wV8TNWSovZn358geqz9vMgOO2prDTuENYoyxl
         oDkeF1Z/OxmhXk28i7BlmICkG8L3XhrhCCBrj9K+jHPFsoe+ichTYIcp2GKEuN+JtWwT
         hOYg==
X-Forwarded-Encrypted: i=1; AJvYcCVyHESkqbEhGOpNe1A6psTD/gCvxkwbXhPbnfhkx/RS8hnvjzbVVtc9C9uevXytl6lljU3yBl9qeHwt@vger.kernel.org
X-Gm-Message-State: AOJu0YzE22qmqUKRg3KZxQDk33Eq8eUflmEvoEBo+fVPULdlm4JE7bU0
	TG/6KdpiwM4fuo8lBbvDNa0JEAxroqyonWQcC7L2xUQ11u8STT7OKiBo4AP26GN4Ew==
X-Gm-Gg: ATEYQzzEX+l0EMENT3+4UM1YrUbxm3ePTi3rU9OigrM9JUF7MJDpOwuW9ZSDov74lGE
	9mxwzqMoZsPPXo63iMQ3hv+gUgVn811Dhm2eb8gKwBlROhEal9ABuJpLFwYO/zNywt8a7vh/cCr
	npwrubDwufbEvE8GW33Jz4c++t8QOqKY7QJAbr1WV9g8w2EuSPtt66kb+g/zjJTrzrX8Nmlgul6
	m2HwA70J+F5y5oHQTNJNfxUfTot303AVvGCgyKSK7Da+5NSegao8Td1jsoXhRItKp6PEnXYRgxH
	CV0HjxLdGnmUuM1YVPbt27EJZHAl4jWJf/LyjfXKFmHjPJVx8yUR+5/vHwpqhYVs9bZh+zj8KpF
	OckLHBeFDMv9mFSsdOH5fSoPJL56j/MYQO6esS2O5+fOMHA8qlKDrieNCRFX5V4k92qgMeRRaH8
	TDFw5lE2zStgBluTJuxFB0/Ynps+a4EU3glSaRBgdo1I6NjjoC83MwMHRB2qjYuQCh9BN6Ur+Kz
	7e6B5HlPA6WFybXi7k=
X-Received: by 2002:a17:902:d4d2:b0:2b0:5923:515f with SMTP id d9443c01a7336-2b0827a905emr20186985ad.35.1773996246423;
        Fri, 20 Mar 2026 01:44:06 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:06 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 03/13] arm64: dts: mediatek: mt8192-asurada: Add MT6359 PMIC supplies
Date: Fri, 20 Mar 2026 16:43:35 +0800
Message-ID: <20260320084351.2461060-4-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320084351.2461060-1-wenst@chromium.org>
References: <20260320084351.2461060-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278121-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 24EBB2D764F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The MT6359 PMIC has a number of power inputs for its various buck and
LDO regulators. The binding recently gained property definitions for
them.

Add the supplies for the PMIC regulators to the common design dtsi file.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8192-asurada.dtsi     | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index d22c55c3abe0..d16634e9f342 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -550,6 +550,27 @@ &mmc1 {
 	no-mmc;
 };
 
+&mt6359regulators {
+	vsys-smps-supply = <&pp4200_g>;
+	vsys-vcore-supply = <&pp4200_g>;
+	vsys-vgpu11-supply = <&pp4200_g>;
+	vsys-vgpu12-supply = <&pp4200_g>;
+	vsys-vpa-supply = <&pp4200_g>;
+	vsys-vproc1-supply = <&pp4200_g>;
+	vsys-vproc2-supply = <&pp4200_g>;
+	vsys-vpu-supply = <&pp4200_g>;
+	vsys-vs1-supply = <&pp4200_g>;
+	vsys-vs2-supply = <&pp4200_g>;
+	vsys-vmodem-supply = <&pp4200_g>;
+	vsys-ldo1-supply = <&pp4200_g>;
+	vsys-ldo2-supply = <&pp4200_g>;
+	vs1-ldo1-supply = <&mt6359_vs1_buck_reg>;
+	vs1-ldo2-supply = <&mt6359_vs1_buck_reg>;
+	vs2-ldo1-supply = <&mt6359_vs2_buck_reg>;
+	vs2-ldo2-supply = <&mt6359_vs2_buck_reg>;
+	vio18-supply = <&mt6359_vio18_ldo_reg>;
+};
+
 /* for CORE */
 &mt6359_vgpu11_buck_reg {
 	regulator-always-on;
-- 
2.53.0.959.g497ff81fa9-goog



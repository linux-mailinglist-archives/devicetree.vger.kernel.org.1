Return-Path: <devicetree+bounces-277978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOmjDXFBvGm7vwIAu9opvQ
	(envelope-from <devicetree+bounces-277978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:33:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F63B2D10F0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4182304AC23
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A70313C141B;
	Thu, 19 Mar 2026 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DxO86JH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7FC3D6CB7
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945153; cv=none; b=GHyB/i5cV2gIXSjkJWzaynH+NxomPHD9GMwgR7m3BfBgngJwPz3wdp1rBPQLxEEa/5Qys+yfqdSaxloxKubAog7Soln46qw0SwW8pT6a/4AAXDlIKpyavIrWjPSLVPbewmsqVjUuFijgzg5UpgMlSc7Xpfc9/AIYpIeEouBd1Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945153; c=relaxed/simple;
	bh=YigxfMcUM7F7wDTso5bAXadDsaOG75M8ya7KhfWn3JY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bBRfpIRX1s2jyuccT7q5dOZ3MUl+invZxbp4lmqTjP+1MZJ7JUTsas5W07hr2CUgg7GL/okkBTeo3bSIFUR3/DUxidjqwEh6s+qGurxoiF6OoZBV55RSfqVLsdACyGTsvn6dU1n025hc2m2vcgO0+uGVznsH2lIIrUbGQShiWHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DxO86JH+; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7d77b179b52so999362a34.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945149; x=1774549949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=DxO86JH+8iYKPqyAIEek9guoY84PO1h5c0e5QWkz6VrwyN+ozRhrulcuoF+YI4sDU3
         Fm4OoFpY+zqegnSBIQN18p6nUtdQYmS/VghA+AYXbSPnPpQbBFXvW927QM7skEV/mIrd
         mou7kt4pNQbBPr0+x6tWby3t75gGW0QQCbCyxYPEsw+CW4y+GAEmCW/WiD2DqxrMcgyu
         7Lkn7Plam1g8Sspn9xJkuvFOikdRfUHjHK9gCxJwK8ApTgUpsMGfoj7/wt8pCe1h6YLz
         pSEa3urOFs1hNLB2hwZsp42/FxHzHGipiMFn608K3X+kStxnc7YAgmZC5jZCo8qTuuHz
         K4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945149; x=1774549949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=YES6z1jW7MShwSMspb9Y0kVFcWZp9Hdbyd9CbM91XynJUJngIlGqsDOd5sz9Fj2xKk
         XVsnxEhWe+lXCzPLGvkS2plwgbylFZsx5q8uNSy3i4Iyt/6N3vsm4uAGjh9U5loWsuui
         YaQiWSIsk/WtmPWGLw2mEX5s0DYvdWhvhOaT4R39MeEoJuyBxskGz58L+SXCxqIY7EGA
         OotJwEBGkD3tbJyPGk1moPk97SaM4FC5rMljOnRPWL1RbDUPhRhUxfreQzt35WWQJhjU
         yGL87HcQMDUMb8DUlS/VU+jUKvxjJ79X0w7uxm1F79Fn+J7GKSgbuWiSv9Wcggq1R5F1
         Hr6A==
X-Forwarded-Encrypted: i=1; AJvYcCVVyUoRCh0+47be80E/fl1LMv2GsNHprgzGGd98aMMaT/5BxY/axnpx5UC9/E6V+gW4cTShH5whRR/A@vger.kernel.org
X-Gm-Message-State: AOJu0YxGF2Q37x2zULCgsHzH9HoClPqlgQ8dRsfsHU9arCWEQbuNyO8a
	MBh42GrjpoIjzw+0/8MnvS5sd0wBK7ukMVX7q/Pf8kVug/+rZSZmtrGS
X-Gm-Gg: ATEYQzzzowsvWslVpXCvpkXBzSF01q9yJKrD+W2h+v/SeZtPjMKbs2whUdzYqrTuT1m
	BdHyHyuyVzh0mvUiiTtR9eD8MXankUeJ5k8DZaxcxmUTc6tT2oddk9qRXDPK47c+/82RdJ3zM8B
	JccixMhM1DB4PCk9IT7+/0ev94i1xDjPDM48kdlbCKp0lgQgGaOK+9Fh73++9bU2iP01k1jhoL8
	efdg1uOLv0n+LbzwHyu0LiXH27oheJyHaz2NO0p+Z2lwaLYsgipROQpnALermT4a9Iq8dhbxXar
	1Mr6LOH6SD1pBr0mNDUe2uynIYeNn0tMs7HqNoO2tHjjSnj6zC8aAUTUUQ0UvFV9MFa3ltv5yE1
	8y8QxIPDHCmeKimCwHyoEpKSJzTptk8qUi9lwY+8QA/RulwVJIdz7xYg/kKMLLALET9MVu6647g
	Crl1UvcFVpSJS32W1VVXRy
X-Received: by 2002:a05:6830:82e1:b0:7d7:c985:3a39 with SMTP id 46e09a7af769-7d7eae9634emr171528a34.10.1773945148951;
        Thu, 19 Mar 2026 11:32:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 5/5] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Thu, 19 Mar 2026 13:29:41 -0500
Message-ID: <20260319182956.146976-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319182956.146976-1-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,intel.com,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-277978-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.68:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.825];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9F63B2D10F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chris Morgan <macromorgan@hotmail.com>

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..dca270abc475 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,18 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		interrupt-names = "INT1";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD6 IRQ_TYPE_EDGE_FALLING>;
+		mount-matrix = "-1", "0", "0",
+				"0", "1", "0",
+				"0", "0", "-1";
+		pinctrl-0 = <&accel_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c3 {
@@ -932,6 +943,13 @@ &i2s1_8ch {
 };
 
 &pinctrl {
+	accel {
+		accel_irq: accel-irq {
+			rockchip,pins =
+				<0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpio-keys {
 		vol_keys_l: vol-keys_l {
 			rockchip,pins =
-- 
2.43.0



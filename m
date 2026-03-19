Return-Path: <devicetree+bounces-277605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA5yAZWwu2k8mgIAu9opvQ
	(envelope-from <devicetree+bounces-277605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:15:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 184B82C7BA5
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CF8C3068145
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF3B3A872E;
	Thu, 19 Mar 2026 08:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="yut/IJQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F3A3A5438
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773907975; cv=none; b=uoYzpYm8hWrCeRWWE6BVm1aK6+nu3dF8J9MIRWb/HoVnp+dasWj/p8neVpPEb5ptl6BdQOxGpA9z16LdOV4A2fXennXqzeurCHxWMH3sgvhEjsg4LPbHTIV01qu6vEQaaa5HhN5mtj4/D3kflD6AVxAZavC+PM2KDCeHN+udPeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773907975; c=relaxed/simple;
	bh=8w/E078ryHouVBIkDM5VDxMyqIuPpnQJBxohdYMpZzM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=geRolJvb47QyQke58m00adlNqX5+nSZqYo4M4NvjHzqzxvJmp5D+zFxGC83uU6v2fmqgrhjLk6oQnROFo9uuQVDTMvTke8BRnEMTKFNf1hZqzxklJWiSml5yLnvluTXLbM4lsj8EHjqyObi6lNMTuI/66c+iEjfUQqGrw41opB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=yut/IJQF; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b980785a0bfso80474266b.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773907973; x=1774512773; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iN6KKsEF4bWiFrFM9ysSK8lwY6F3e56lREb03czgqC8=;
        b=yut/IJQFZ+BZ0WBfIbDWLFFrQY0lgzLIZK1YGrdVcKLKtpe6ePFJqBL0CsCMSbZmb6
         OP/xp0U0llVclFLJEI/X5qhiCG5zMPLbWuL4GHp9pzIcVzn27EjCUrwPvHIK3QYV2Se3
         3r+E6AuzwOw2OEkV8wA3nMb1XRUNCmD25/cFRJEYpfWVZFvgiyE4CHmZN4SvdXTQtfGd
         WzxMExn5S0bJREV1Xntq4I5tnPsGWsdGtJJq+A89BBmKmA9JIw+eUdsVOv0AgMmNDk8g
         VWLtMY4fUSvxBwdHMaH59Htn6/QKUIwQSg11Vr7WakuKPsR93fd/3kjx3Rovd4X07d4G
         MiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773907973; x=1774512773;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iN6KKsEF4bWiFrFM9ysSK8lwY6F3e56lREb03czgqC8=;
        b=on4E1eSNs/949yRCUIfv+BOXa/uT0cP2F/pXoR4mTcD4Jr26XSsDpAKaik0Ov4NaX/
         3eObiEN4EXE8ThIrpzJMBoUJHkISgzM9xy4CUPziVRL137/N9Yqc2YvJ7PDvU+fRoExo
         ExvF5VBMFOWIMOQAI0yhXl4g1mUG4bxteSbwWd0gxwBZYUAMHDXxdA5yERE6XL7KaWLQ
         Rg+/8Xr95zpG8DF3JqLtVFXCX7MC3beYczL1xy+1MR7eZcjhNI7hwEclwB3w/egpRAYD
         qMoBAGU0/ZXyl8OCzi9OSrGwNbcNuTY9N3P53VuC3fPkGcrGLdC8oT/P0Jkl78C9FEmo
         3BIw==
X-Forwarded-Encrypted: i=1; AJvYcCXyoHD2mlkf71R+xV/4VvfMAW8uv1IiDKJxGYJJTw8fQI6FoxEmFAN6XkbRELwuz7rmgZb5p4TlV6lC@vger.kernel.org
X-Gm-Message-State: AOJu0YzsQkMo7Nzd1FIe0yxLRJFi8I8f0sog1p4kGmXskHoImWB+2i/3
	5hQ+/xSTvpNVlZCmFt9ZtSjqShETIMT4TT3ER4XeDZ14kPzVuRM6U8595wLVgdH3IuU=
X-Gm-Gg: ATEYQzyZI8EOx7kpp5bDLJdF2B67KGIKBYdX5b2v+3R7ucTwomGCQtlO9upIUteZNhN
	eb7hpHd30BOINa3kszZEOEPjhLfdIVCv6dVdi2nZfBEk6sCT+MKASiNLfkKl3xSRq1GsDCYWovr
	tO/J7XB8gQm/sdqBBiK3CAglH8nzQbNI6Y+gw+32nZLDCGFUW/Qm4C62PFIYMGZOfLAyzHYQkfi
	gHWY27lqot1GGKPSwM/kX/wbD4H91Zgqfvx9X7OZRoW4qnj4OeO1jpaUj2/OmIOrqEaKpRKmk0x
	WhuhKc1Qd0MFSKi2B78gnzq15C7dTIQrbyjXWStzi6uUIksXHBdsScL6nwyJBKbxcsQLEBqpoxf
	PUa/WxQXpy3nS6muM7ZmK5Hn/hSi8QXX6yxySNHmnHlW8777tg63aSq1Iw6xofJoXp0YMxTAv/Q
	c+pkwvf6XMS/IrCAnWjsiykjU49GM/dtJJfyfMz9WSUeMww+YOTbo6zCcdrsZgNY3ItqV8fGiVR
	c3mhA==
X-Received: by 2002:a17:907:8dcd:b0:b93:81e7:8454 with SMTP id a640c23a62f3a-b97f4796647mr386603666b.6.1773907972738;
        Thu, 19 Mar 2026 01:12:52 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1751cfesm399884566b.63.2026.03.19.01.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 01:12:52 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 19 Mar 2026 09:12:49 +0100
Subject: [PATCH v2 1/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Sort
 pinctrl nodes by pins
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-fp5-s5kjn1-v2-1-6840da94c574@fairphone.com>
References: <20260319-fp5-s5kjn1-v2-0-6840da94c574@fairphone.com>
In-Reply-To: <20260319-fp5-s5kjn1-v2-0-6840da94c574@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773907970; l=2875;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=8w/E078ryHouVBIkDM5VDxMyqIuPpnQJBxohdYMpZzM=;
 b=zx0AqybwzmnqXtWE4oOwmWuhkEpVqB9I7kNLjZIurmcQZUnGgGVLfMnjI8XTfmo3TIq3GGgc0
 cSiF4YfUE9sCWbHfCjZB4gtqEIRNAOw8yNZo2k4hkzHLo9ouQWsGqga
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277605-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 184B82C7BA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As per DTS Coding Style, sort pinctrl subnodes by the "pins" property,
in preparation to add more pinctrl states.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 74 +++++++++++-----------
 1 file changed, 37 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 455e5c9bb072..c9c24c36ba7e 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -1257,41 +1257,6 @@ &tlmm {
 	 */
 	gpio-reserved-ranges = <32 2>, <56 4>;
 
-	bluetooth_enable_default: bluetooth-enable-default-state {
-		pins = "gpio85";
-		function = "gpio";
-		output-low;
-		bias-disable;
-	};
-
-	disp_reset_n_active: disp-reset-n-active-state {
-		pins = "gpio44";
-		function = "gpio";
-		drive-strength = <8>;
-		bias-disable;
-	};
-
-	disp_reset_n_suspend: disp-reset-n-suspend-state {
-		pins = "gpio44";
-		function = "gpio";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	hall_sensor_default: hall-sensor-default-state {
-		pins = "gpio155";
-		function = "gpio";
-		drive-strength = <2>;
-		bias-pull-up;
-	};
-
-	mdp_vsync: mdp-vsync-state {
-		pins = "gpio80";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
 	pm8008_int_default: pm8008-int-default-state {
 		pins = "gpio25";
 		function = "gpio";
@@ -1345,9 +1310,17 @@ qup_uart7_sleep_rx: qup-uart7-sleep-rx-state {
 		bias-pull-up;
 	};
 
-	sw_ctrl_default: sw-ctrl-default-state {
-		pins = "gpio86";
+	disp_reset_n_active: disp-reset-n-active-state {
+		pins = "gpio44";
 		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	disp_reset_n_suspend: disp-reset-n-suspend-state {
+		pins = "gpio44";
+		function = "gpio";
+		drive-strength = <2>;
 		bias-pull-down;
 	};
 
@@ -1359,12 +1332,39 @@ usb_redrive_1v8_en_default: usb-redrive-1v8-en-default-state {
 		output-high;
 	};
 
+	mdp_vsync: mdp-vsync-state {
+		pins = "gpio80";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	bluetooth_enable_default: bluetooth-enable-default-state {
+		pins = "gpio85";
+		function = "gpio";
+		output-low;
+		bias-disable;
+	};
+
+	sw_ctrl_default: sw-ctrl-default-state {
+		pins = "gpio86";
+		function = "gpio";
+		bias-pull-down;
+	};
+
 	aw86927_int_default: aw86927-int-default-state {
 		pins = "gpio101";
 		function = "gpio";
 		drive-strength = <2>;
 		bias-pull-up;
 	};
+
+	hall_sensor_default: hall-sensor-default-state {
+		pins = "gpio155";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
 };
 
 &uart5 {

-- 
2.53.0



Return-Path: <devicetree+bounces-269912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEtUGjZspWk4AgYAu9opvQ
	(envelope-from <devicetree+bounces-269912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:53:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC4D1D6E48
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:53:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 25BDA305A4B4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C03535DA47;
	Mon,  2 Mar 2026 10:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hAT1LYva"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9B235AC23
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448635; cv=none; b=eQuOklumfhk/wFVumk3iO5CQv10+y+Q/AiMEob3zEUVxQ4TZ/r66btPLUcaq5SscfJTMgahW0uPSwU36XwQ82tpt+7TcfU2uOiYl7I++nDuX4PkRHBiD1AAEOFMjO3KjiBXjwKIrAeETl6smGZAmbGk/BfiYbBCC4HPdriBmi8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448635; c=relaxed/simple;
	bh=qfKnEcsoVX06QZzEM7/4cC6HPLmj8y0sO6sxJasyjlw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TpAJzbpUtg6goQQD9pLa1W5MaNsYofIPAv4tUDSl3YapPInwvmTpkQ7lUnVuSyb0kKpnDlPMc4xpcljcbcDvDHi0RWtU/b60QG9ynK6RQgNTM3CBmG4Vj2PUKmaCVWjB/TFIBG52oUAoyn2Rw1nKIcBm3yNCAZVCwGdrztZij6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hAT1LYva; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65f771c6b89so6231161a12.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772448631; x=1773053431; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sQRQHvtqeyxSd6xSuySaBNbpnzY0H4KkdhX34aIrxhU=;
        b=hAT1LYvaTiGkwA1DQLIjiQHG6/W6EeCDkHUdIXcXsnHWmLXCJNC+5EL+AjOQGdPbg6
         T6egcUGhTXMkRxnYwuBZJloG8yEXk8sX8RHc6AuLgzUMIabQfcpjtUe49mFzEoSm3Roz
         6VKMhkJJZ/3g7MMSgJdO2BM0+kkg9Go5h2zvzSBBTqN6LWzKS6qDslKAxBxMMWKiwUsd
         h9JW3M9QH97GY8DxJ5+ndtyZajmMjMtJ34r+oJ+n99uk3zCXlpoTesOrN28IannM5bCc
         jA8FJV/hoswIYx3fiYXVaIILxNfzDuAAq0IUnEYQRcLikmbxWh2pnuZSAjtqzQPZTseE
         GLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448631; x=1773053431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sQRQHvtqeyxSd6xSuySaBNbpnzY0H4KkdhX34aIrxhU=;
        b=Y+JNEHP7KKGR7A+Rrkm0U+hAbrfoNoNXC5ZageZTu2jpSlqFxPUged+hytzZvTFYJ4
         33awbnz5bbnvcuOp6UyT2EGZDUPP9YVOR4i8qg02+7epRI8mib06s8Dx66EAVGG++9+J
         fzw6ojhkzNCG7vheFbHZTtILv8fVZkMk3iTi6pKCG2mCyGxU4u4Z9cd8lcZRsonny4Yv
         c1dYmmuOCDASQqcEHxl+5W/XvX7TKARwHf4XHFEGLj/yb00DT6DV0lDy/JKbWSbuoFPh
         YF/MMjBYJtYBJiG71Z2UZa5WmIg88Ty00vqKld5oymxC2fGwNhnToaji8kL1JFOLobH+
         BwRw==
X-Forwarded-Encrypted: i=1; AJvYcCXDd5Tyjh1nAiFlsbAYhISBwfVNxDzq2DWgpyRI/Fw5eAOUWtTVCj6yaZgpy78gG008AT6o8qXngOFm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7qMgwsXTK1SdH8jQ8D0wmMpqbkIAteCL10WQrkplDZTiWLPJY
	vMFNcZZmH852ba6c7Odryj63LzLLquugqvC8rGIW7dH00MiOHZF5EbeHMVL+eYJUZfs=
X-Gm-Gg: ATEYQzxt3qCNfSP7FsNmOffWaWqXTdPhy7SmRHfD3YmuyakB2lBqLtJpoHakPX7x8Aa
	yEVqIqJjN8FNAmuYuWtTRbze2AXXs+mlNg8WyA1YRRMQbQVmbianeY8pB6lU+amPuKak4ePzGmh
	o4sY+42Npd9/XxKMB1bF6VWIwScMS+2m2uJ2CxgPskyEMZvMqLhhz9IOAMT94TvLaDMNKH1xHld
	UXNpslUsFLTOIYqDI7rFb9trIF79gx37QaF8p6dAE3NIgVRM3fGxsf9kEhP+0I38QV2I91ReiuS
	LIxkOP6tZXMNOKM8C8yED+Wiu8U5ea7c9ipcUHA0d88oIoiotgMlfnYJfYYnPLPxUmykDjRJJKD
	g2ClOOtgAvm92b/y/7jaeh3e4EGvkPBJXG9ELMMi3RWytxg6VacCbiB4PFR9WBA3dAtgNML4WFq
	FwGwevIXxVWrselgMxR8iVBNaKSLoJGynS0F5Qykd8IuSm7G4qttlu+lRzq0NUNh7HRq9Th06JU
	6f5i0V1yg==
X-Received: by 2002:a05:6402:398b:b0:65c:2af1:b7e2 with SMTP id 4fb4d7f45d1cf-65fddee587dmr4742714a12.27.1772448631462;
        Mon, 02 Mar 2026 02:50:31 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabbd98bcsm3511769a12.0.2026.03.02.02.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:50:30 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Mon, 02 Mar 2026 11:50:28 +0100
Subject: [PATCH v4 4/4] arm64: dts: qcom: milos-fairphone-fp6: Add vibrator
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-aw86938-driver-v4-4-92c865df9cca@fairphone.com>
References: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
In-Reply-To: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772448626; l=1662;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=qfKnEcsoVX06QZzEM7/4cC6HPLmj8y0sO6sxJasyjlw=;
 b=CD8MrPX2NaW+cddjb6pIzw4VQffjeV7qC+Jfx7vwUkfptL/drfQGxZeVF0rp/mWLz02lbvFU3
 Zw5SSxZkMpmAfNx8ptsMHqTaGjsmbUkCUtVYYwgEs2Me4gpbRczIfpR
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269912-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,5a:email]
X-Rspamd-Queue-Id: DCC4D1D6E48
X-Rspamd-Action: no action

Add the required node for haptic playback (Awinic AW86938)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 26 +++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 52895dd9e4fa117aef6822df230ebf644e5f02ba..324d18d9900881a840806ada84e33fe9664296a0 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -625,7 +625,17 @@ vreg_l7p: ldo7 {
 	};
 
 	/* VL53L3 ToF @ 0x29 */
-	/* AW86938FCR vibrator @ 0x5a */
+
+	vibrator@5a {
+		compatible = "awinic,aw86938", "awinic,aw86927";
+		reg = <0x5a>;
+
+		interrupts-extended = <&tlmm 80 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&aw86938_int_default>, <&aw86938_reset_default>;
+		pinctrl-names = "default";
+	};
 };
 
 &pm8550vs_c {
@@ -755,6 +765,20 @@ sdc2_card_det_n: sdc2-card-det-state {
 		bias-pull-up;
 	};
 
+	aw86938_reset_default: aw86938-reset-default-state {
+		pins = "gpio78";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	aw86938_int_default: aw86938-int-default-state {
+		pins = "gpio80";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	pm8008_int_default: pm8008-int-default-state {
 		pins = "gpio125";
 		function = "gpio";

-- 
2.43.0



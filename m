Return-Path: <devicetree+bounces-260510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePz0MUIyemlo4gEAu9opvQ
	(envelope-from <devicetree+bounces-260510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BECAA4DD3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B003630E59EF
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44781314A9F;
	Wed, 28 Jan 2026 15:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="vsnzKvfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B7330F816
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615490; cv=none; b=toOQU3oANdZpTfQqh91qmfjytHatb3mbu6gOYM8zkcG1TUgOOYpgFbba97NoY6fLW1GRYLLt1fWAZgLe+RRPTQCvDhlN1wplWzw26t9iSXCJuYgqojSQaGYF2SODus3+AIzhuiQrx3PNEu/fWCTpy0PBZiZq7P8fW7cjELkO2ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615490; c=relaxed/simple;
	bh=OE8Va/qqR+Kr9++NQoSw36y7Yx+kr2GMJCERdWsWQhs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ilTh8UqFB1D6eKhLDigYJnHVcOA5z31Gl50IPeu4lkRggRmBgYUq/K9QeV7alY4kY6Z8RZQTYdapyG0YenRtIN8HrXDMdAJaI1crTqQjX91xnYnScuQ5Hq8Eb1o6ir01mXJpsBjx/ni/gwfjLEVAuNmzbJvzGrf0ybCBxn3onTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=vsnzKvfe; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-658072a4e56so54238a12.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1769615486; x=1770220286; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ldPtKD6ix4w1Qcpvj9OyKIUSGU8VGaicrJuthvpMMWY=;
        b=vsnzKvfeipDs/3LNEQeXGg/I+GFFNnEYs9twFxa/7y2s5shimLQA7sWI0b3PZT0jZP
         0tN+tRIxyLZJ93uCxwll43a9pcdlvJfLZPDYX9RH2C83IgaXXvyxvfQ9LMiIH2YBG1Uq
         uDw2xx1PBcF6KMoi0aQRyD8yKUtuFqCZU5QSPQlsjl0bGG0ALOP0oVFaJlJ8IcnY/0Tb
         pqO05/McLlBQxofqiw1ypOVEI6vLvxrFnOt8/IFUfqg6/DKjCtoAJY8cOAtINrbcxjxT
         vJFA4ODRaSEn7z+EaOC1qC0n1Ww+EVyrKy/zSgf4a4nIH94q8yYTw2Hxtcu79Nvtx/xL
         ZjBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769615486; x=1770220286;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ldPtKD6ix4w1Qcpvj9OyKIUSGU8VGaicrJuthvpMMWY=;
        b=bYxixDxD0edvBgJqSp0TKLQsT0MKiCI9mSc0UVi8gm2XncEFuKpQvxqED0Pc+A/SfF
         W33z5pHjZzeVHFBrsKkvBSc9HtQnl03ZMJQyMSkTKHWjFME4M+pK0GLieW+eCkBFCbgR
         DQH5LnGhGqnJrIF9bGbg3PsKkMDfDMfex1Yf6NibvEeQO2pHwPpF8icgJD/wCnASdq7L
         qLuFYzWagZMyQoGEtX/H7fOqbQr0+zta0IKmYcf9c6th+RaxxN1Tpj+GGj4f96AkE98A
         Z5T6ehkpByiXCUr04nzlGKfsNjduYwkuaml49xpYqHAQTGDz3ivo39oOQ2THezxNMlip
         r8yQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUMNEWWVScpz+TUzsiXXlzuMj4A39mYlE7cH9IAZwOkGbSw7HO4ckUoV/g2UtwjDexQuEXxnYHhOvB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4vVVkMJpJC8YiqOk8fsTLdtiKTNAYqc7cYJtATTqWmvouKS8f
	tXrSoovVODF8pyqPlitduqX9RhLTu7cYxhcR1Wd152aJ9pfvRtrDju00a9K9r2Av4+Y=
X-Gm-Gg: AZuq6aK4h6yKb8A24WQ2oJFhUc6M2yt+8fIQ9cKXl0eYfSTmlD5Uji3K3S4w2jGev+C
	/O3hpI+l2B/3PAK2mXTPqKzKJIfrscFcIdqfuVqqz9Jj89oDSfgecu6/tdD+hQmXI5zx2g2OX4D
	5f2o972xwCfQoQ18Z/6NoweN1EpKzoAaODkwfA5QYIa84Kj6c5DpN7R+ahrf47/7S9b9yt5mQdL
	yirArQBOZbd7qRqDeWVlO6HTUgaOlevMqmXEqABNR4I6VMnxs38r6TGFJL4za32fdMsR6+jFyrH
	nByFENVnAX5zz83r3IOskQxVd/66giV/fhMzTLR0GIA/2OF/q3VsKoaUDXsa608dFYy5vNdEixj
	DBcUHtlqlrQ/gRH6j/xb7JPXUKBGnQpZ12H8e9AbmOXTWGZaNA1mI4jlNJrDvoahC9786XHd6ao
	BB/iz6UrMZVVj+NS1r8g/hLaPOlBrt+K4I0B7zmuPRmJWVK49HcQZUp4hCPtqjXbZmDS0Z
X-Received: by 2002:a50:9ea4:0:b0:658:b535:77d0 with SMTP id 4fb4d7f45d1cf-658b5357977mr1666850a12.34.1769615485687;
        Wed, 28 Jan 2026 07:51:25 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469eb9fsm1727223a12.28.2026.01.28.07.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:51:25 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Wed, 28 Jan 2026 16:51:15 +0100
Subject: [PATCH v2 3/3] arm64: dts: qcom: milos-fairphone-fp6: Add vibrator
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-aw86938-driver-v2-3-b51ee086aaf5@fairphone.com>
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
In-Reply-To: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769615481; l=1330;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=OE8Va/qqR+Kr9++NQoSw36y7Yx+kr2GMJCERdWsWQhs=;
 b=Wz7Wn2eegKWPudoKWK1GhVW4YccbSOgvk4e0Jityiqj7256/xXYqOuzhC7BGfZAfeQIJS/F3J
 6D3dn6u2AeRCVapUoogJ0y2zRUgD/TTfO8LUsgp4hnETv+rC8Gs/Wrs
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260510-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5BECAA4DD3
X-Rspamd-Action: no action

Add the required node for haptic playback (Awinic AW86938)

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 52895dd9e4fa117aef6822df230ebf644e5f02ba..881239d22fa97685206d1fa3a70723c5b77a339c 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -625,7 +625,17 @@ vreg_l7p: ldo7 {
 	};
 
 	/* VL53L3 ToF @ 0x29 */
-	/* AW86938FCR vibrator @ 0x5a */
+
+	vibrator@5a {
+		compatible = "awinic,aw86938";
+		reg = <0x5a>;
+
+		interrupts-extended = <&tlmm 80 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&aw86938_int_default>;
+		pinctrl-names = "default";
+	};
 };
 
 &pm8550vs_c {
@@ -755,6 +765,13 @@ sdc2_card_det_n: sdc2-card-det-state {
 		bias-pull-up;
 	};
 
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



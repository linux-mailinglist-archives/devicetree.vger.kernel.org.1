Return-Path: <devicetree+bounces-264341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EmJNgYLi2kdPQAAu9opvQ
	(envelope-from <devicetree+bounces-264341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:40:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A265119B6E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45E503040200
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF367329E56;
	Tue, 10 Feb 2026 10:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="GsrEUQzX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60000316904
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770720003; cv=none; b=dCv/9cQww927bTzzuV1jPtEgPmAvtdTmImerzDOJyBV9JJF4HhXG6Q0FNdDoSRDE/xIITE6dq7OudVPwZFDPCVX0n27OQgv083rfmeSIRo2t6xuqCg3KxDK6IaEO7OGeiVCrYyHYnr2GB8IvazjzzHjd4TYY//0dxZsMXDvjy0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770720003; c=relaxed/simple;
	bh=d0ljkEDQ1gGGwbbxFybeZxVmLfP8oWfMC9kjAC5355I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HP8iR2+sXncLIjJgbhWdUeSJY09WRMvSK1sHceNFSOJIvZofG8fM9dpKvDaeHeaAI0FggYxXqfkvpUPeNsj6oBRINIXBeK9GrL8W4XqYV7kxRLBX60KoMMQMEEpOF4STzoT56DB9RbaYVuCzAMkgoMNxBfosy+fvacrpcIYB80E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=GsrEUQzX; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso52004255e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1770720000; x=1771324800; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jaXWgPn4mF7i9yaiiPpLBPhR6O1+uuJeQxKfkWKqAJg=;
        b=GsrEUQzXGLKeMAXIePLZf9gxP4OrpMVFXbwfMrDPkOrOlGI81+25YlE01SBU7mqy3n
         rMivtckr6gDsMTCT4tDp2nIq7o/KyLb948JOT41vs6W3i63vR8U8JZNoKrPkNF1hK3AN
         dOY6KhjfHRWKRNnARXptBc1+OFPCcg8v8goLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770720000; x=1771324800;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jaXWgPn4mF7i9yaiiPpLBPhR6O1+uuJeQxKfkWKqAJg=;
        b=uUH1QH7NVBXEXtb1GIgPDft4q/e71ck5Qk4SjjJ2DQURTVMaS4T+ncg+hzWMiPN0jO
         ioB9+UIvqamJm3+ToNpXOiQ/VZ/sVX1yRMs9u2Puw13pknDG6fIkmf7mAKTBSRcwG8yN
         UVLcGp9Q1/3a8SCrG71OL1w/GwWzpthNGm8qIMCUj0yPB0gxkIC5mfXAHAKj6yHHFlRp
         CqCj03i4rxbrVPMeAfgzJmMlTYWir8RtVHGzreN3O9bhtOMNTXO/B+BaI+P7X/z5h094
         a7u5YZdE7cPdyJ68wPFh6nydrFHPuQ3623biALdKtUY1DbYbbL10DEY0DLu3/Hjj33uU
         thGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDAg2PQOReHdL9bp3cKQdxW69PFauWqWin0qFSjBgmfdnXb8lPBWdiIwEy7EuSjAMWPktLHSH5W0wZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxomqNZUuM498ocDDzr4Nd59Af42+cgKQuQxNTiQwi8JFVeAKhn
	TmKuvjU0JaPR8VZkyIHJQ5iX5eOcSC8wiBAN5v4sPKhw2BwMYLF+66MiaBxF838NOsgOnCkctU1
	5Eg1N
X-Gm-Gg: AZuq6aKi0anHj52iqZgCDC60wpftPJXvEYkExlcKwewnf37zP9vZFDvmSdebiSjNNDb
	F3tK75OphrmJBgkswkG11g3Gt8lTHjaMYUYuKQ24C5bc3xFNdf/6+CNMM6Cfl2aZeMG8mfWCDm5
	dufyK6m51v2ECPidSCczzWJ55iieLqC+sa9IcmQEVkbVop2MSyqt3sc25Skk4vqNjQBMwFSm0xR
	Vv+nqm5tpPJ4+Z22xVeWny70Pf5ObkEfyzHV2VYCsaR1p08w06UEsaeMNEOa2+CEr8eIlexuwO/
	bBUdxrzv6fk7mb9R9GaFtjzAGyotT0sXUoxiciTrkcmzSm4bDAaI3u8UZT0ci9qYHyDBrjVVmyV
	eAIT3zCUiAxONQmx08EVM26wIxA5V+Fgww2w3TJ3MMnEX7HUcex1ApoChJGu/Tuh9HZ7L2JeICf
	yOQTrpgauyK+QDH2m3Dkp/NOqR99sR5DXuu2SvxwvXDVwVbJvd4OmMZoTD16hmud74+xLf7vaUV
	Rd28u3G0+mgJjN/KsI=
X-Received: by 2002:a05:600c:12cc:b0:477:3fcf:368c with SMTP id 5b1f17b1804b1-4834fbc8f63mr16251015e9.9.1770720000337;
        Tue, 10 Feb 2026 02:40:00 -0800 (PST)
Received: from riccardo-work.fritz.box (host-79-41-222-66.retail.telecomitalia.it. [79.41.222.66])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d77f9sm54587935e9.3.2026.02.10.02.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:40:00 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alexey.klimov@linaro.org,
	srinivas.kandagatla@oss.qualcomm.com,
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH] arm64: dts: qcom: arduino-imola: fix faulty spidev node
Date: Tue, 10 Feb 2026 11:39:33 +0100
Message-ID: <20260210103933.27228-1-r.mereu.kernel@arduino.cc>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arduino.cc,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[arduino.cc:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264341-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[r.mereu.kernel@arduino.cc,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arduino.cc:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arduino.cc:mid,arduino.cc:dkim,arduino.cc:email]
X-Rspamd-Queue-Id: 8A265119B6E
X-Rspamd-Action: no action

From: Riccardo Mereu <r.mereu@arduino.cc>

CS pin added on pinctrl0 property is causing spidev to return -ENODEV
since that GPIO is already part of spi5 pinmuxing.

Fixes: 3f745bc0f11f ("arm64: dts: qcom: qrb2210: add dts for Arduino unoq")
Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
index 197ab6eb1666..d2c3359dd814 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
@@ -328,18 +328,11 @@ &spi5 {
 	spidev@0 {
 		reg = <0>;
 		compatible = "arduino,unoq-mcu";
-		pinctrl-0 = <&spidev_cs>;
 		pinctrl-names = "default";
 	};
 };
 
 &tlmm {
-	spidev_cs: spidev-cs-state {
-		pins = "gpio17";
-		function = "gpio";
-		drive-strength = <16>;
-	};
-
 	jmisc_gpio18: jmisc-gpio18-state {
 		pins = "gpio18";
 		function = "gpio";
-- 
2.53.0



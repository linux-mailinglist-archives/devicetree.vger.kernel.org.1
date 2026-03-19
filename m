Return-Path: <devicetree+bounces-277626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DsRFYe6u2mtmwIAu9opvQ
	(envelope-from <devicetree+bounces-277626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:57:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC822C82C3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:57:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CEC23137C65
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8980C3AE6EB;
	Thu, 19 Mar 2026 08:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4E40rKP5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6BC2C0F69
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773910513; cv=none; b=Vwau5eOVtiO0qTnwcl8A/YwbLtGtFHUEO43gdpbCINMOOv9QPDonR/I9oI7C6ZdDFXVh4amHJZZQq1l50ul8/0y2Lq+mpo/Zfxa00WE2RfY5wcf1sH1I1lBXkvscp8k6EDlOxdHx/xeL8Seujq3BvxjxV1qaOXsRpX6OWNaUwFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773910513; c=relaxed/simple;
	bh=IzA7DVYs76tgOv9WJWrIsFdXTl5V2IRyQcUpczSkiBE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=UWt9bdSrYWdfkGyqjcyelS9QfzObEh0EaV7lXkcfXh8GA4q/3otrlEpsFAUDgngAsl3idoRTod+eDxbQ8EfK4f0ehfPodjYKfxX2JiI0r70E4Y6rNBA9rml9g8Y+S1WM9pU5J2rO12mCq7Ke97ZWXluTOvggOB/Shzt6UlQn6XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4E40rKP5; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b9813eed77eso74666166b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773910509; x=1774515309; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BHtIJcQ4yOLtdh3EcNfW3X1czpv1TxdBE8D7th0R/gQ=;
        b=4E40rKP561ZGR08+kjOzLmw92B4RAvzpjP0wmeib/6YuKDtmDfR2pUvBTi8q0459ro
         qV55hl03EWp0HWPt8m3PpzEYAq6eP1F/zzmkXwLtl4pG+/mdjaqDPUeUI1SwyjPQ8naR
         1xQ16WFrHIKXXrTodK1RnVApuEw4Eh7aT+H+xVOuRmVlyC9dx1Syq/foPYPUWBT05yBN
         H/I9ynFC+raXKdfYsEiZWpZN+nb2TDpE3wGvenC6QtpHnXETsomMCqOaMqkYVDCWzCvw
         19PpyQCjbg8pxk/ko4eyue1sRoX9IXsBwt52utndRtoIoTWBV0DtIGj8gXMHuXGLZ4J6
         hfGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773910509; x=1774515309;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHtIJcQ4yOLtdh3EcNfW3X1czpv1TxdBE8D7th0R/gQ=;
        b=RZQPrtQ+/bJbBAQAGh4FVQ6KqXP7E3AHf9mVgCirrc7hg4fWVGW6ahL/8bLLrubhC0
         n2Q7mXfGW1K4jRi9++1LiCWVxprnA+OFZ0b2PaTbJquG9bmZn5PDhX+yJ/pZCjhATCF+
         a18thNJ3JoLoL50Hj6SY1Y6X6h1Itr307KxO26u2F2pU9Qh2IT4CELjdlnbkHgWd7hJD
         tSN9lVuOiD49CEQ8v+9EUjikvd0DWTkxn7b3pYh6C217WrR7yeEgjjacviliPZAxBdoe
         0yy4/z3QRDFsdv92Rj0BA635mnvKEX7KNuFmKzJRRFWlEg1gMy4j7oAa1ENLZ/ib97FK
         606A==
X-Forwarded-Encrypted: i=1; AJvYcCVLHMcgY+oZEP3+P+a20RZ5nzDSxv/SPlopdH9eHZ98YQdWzmaxHTzIEKdcQRL2UaNFvuUEoBQqwHJn@vger.kernel.org
X-Gm-Message-State: AOJu0YytKZFOfCV4cFs98KgkHMwunsFfaQ+jNk05PVHSRQJESZ/jgQB4
	Jxb6OB9fom1L8/oQtHTC0Rbo6GKYP7iOMXS2s84L6bhN56THFTJHY7hzhCp3jJPAOFw=
X-Gm-Gg: ATEYQzyTTLqgZZs6XV4NQMkyxT8ghidLgGBhtKcDB3jlgxFLUEoLqptIrMNgK/aRLYR
	CGZJx36DYT40u3TWwD8diMKzHSMxpodp+MIXA630DkDAg+Q7ADTcdq1j8GAlPTp2o4hSn+0tDdT
	mCIfzlwsnM7sZNyJckokQ4MzD13x44ndVVAQPtbd38loQFntHZ1QK/JGtwkJ2y9Wpgg5MSOXPLP
	8La+PcOVWUow6ziRqv+EKeMWn2HI0So+vrPEoqdqEQu81r1tJDgLOe9y+gi0Fgzj7PKofKZuriK
	K1Hw8r/duitxaQ5JaZ4Px7Xp1iEE95kUfJwWGnSJjDr/BonKslxBfGIckxNVbC5dMo4Qy+cM28K
	P/XUITFDDwCNiW7gCs4yfSoGRrQGoG0cAJRomTrrsa7agNI4oBYJBbYk0izONEYVK3OchNsXL8m
	HPhDaU4X/cHxxGJhjaumBV/vsQYklkAvwt4SfuHVlwsdExRbxrRNwDoNI/qVKa2rCe36eKrpoJ4
	qPAcnf7Y6tSecKN
X-Received: by 2002:a17:907:a0e:b0:b97:f28c:fea6 with SMTP id a640c23a62f3a-b97f486677amr382865166b.8.1773910508797;
        Thu, 19 Mar 2026 01:55:08 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d7ddfsm409472566b.44.2026.03.19.01.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 01:55:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 19 Mar 2026 09:55:00 +0100
Subject: [PATCH] arm64: dts: qcom: sm7225-fairphone-fp4: Fix conflicting
 bias pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-fp4-uart1-fix-v1-1-f6b3fedef583@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQqAMAzAviI9W9jmEOpXxINop73o6FSEsb87P
 CaQZEiswgmGJoPyI0nOo4JtG1j2+dgYZa0MzrjedJYwRI/3rJfFIC9S4I6MI++JoDZRuer/N06
 lfFnpZ2NfAAAA
X-Change-ID: 20260319-fp4-uart1-fix-9fe390294499
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773910507; l=1651;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=IzA7DVYs76tgOv9WJWrIsFdXTl5V2IRyQcUpczSkiBE=;
 b=2S1wO6Nl6QAu+Y/oouP1Cgz4PwvApvauSatoiG+hngdXSOZLwdj3C8wvO3LwpUYBu/LBkWGhx
 eQ54Cx0biQRAQo921yxM/935gTwwW2HWLuIN7Ad0iPSXUOJaOfqHfwx
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277626-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Queue-Id: CDC822C82C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The pinctrl nodes from sm6350.dtsi already contain a bias-* property, so
that needs to be deleted, otherwise the dtb will contain two conflicting
bias-* properties.

Reported-by: Conor Dooley <conor@kernel.org>
Closes: https://lore.kernel.org/r/20260310-maritime-silly-05e7b7e03aa6@spud/
Fixes: c4ef464b24c5 ("arm64: dts: qcom: sm7225-fairphone-fp4: Add Bluetooth")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index a3c2b26736f4..3964aae47fd4 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -1019,12 +1019,14 @@ &qup_uart1_cts {
 	 * the Bluetooth module drives the pin in either
 	 * direction or leaves the pin fully unpowered.
 	 */
+	/delete-property/ bias-disable;
 	bias-bus-hold;
 };
 
 &qup_uart1_rts {
 	/* We'll drive RTS, so no pull */
 	drive-strength = <2>;
+	/delete-property/ bias-pull-down;
 	bias-disable;
 };
 
@@ -1035,12 +1037,14 @@ &qup_uart1_rx {
 	 * in tri-state (module powered off or not driving the
 	 * signal yet).
 	 */
+	/delete-property/ bias-disable;
 	bias-pull-up;
 };
 
 &qup_uart1_tx {
 	/* We'll drive TX, so no pull */
 	drive-strength = <2>;
+	/delete-property/ bias-pull-up;
 	bias-disable;
 };
 

---
base-commit: de79886ae0ce739608514f6b1ae91c14c6a9e600
change-id: 20260319-fp4-uart1-fix-9fe390294499

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>



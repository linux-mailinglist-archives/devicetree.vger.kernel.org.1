Return-Path: <devicetree+bounces-287930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOtTLyLp4Gl/nQAAu9opvQ
	(envelope-from <devicetree+bounces-287930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:50:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6232540F2FA
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A27E3146AAF
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 13:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3073CE4B1;
	Thu, 16 Apr 2026 13:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ortdAvMO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352933CF687
	for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 13:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776347081; cv=none; b=HLHOCeC5gZ4fVozo7RCt0EaZUT2sQYSV6B/O19mxGolBwf9f68vFKaTJ112afhS0wNqawYpVx08fqlmPjFGyFNmtM55AAUtvlRdz7spvKlYeD7ELNlyqb3411CtxUku4CJOGVrflqmY6eMqqwcoNJW9hLGxr80QBLoiC89/8iAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776347081; c=relaxed/simple;
	bh=aI25nEi9VQ+DRbhHhvdWFYIwKb2dX/WGA5UFAotTP7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IHscEv9xr4bXw4DpD4Ve/Eb3KZl2STHC/4d5ag37gr1329suOi65KwXNS7Sih8C06EeyQN59nMU8ADcFUuDp3pY9H6dfRTqGbmXYMmSXg6MAssUifBepwFXaeZ9jGRCJ89eUIAWo/2dSuXTLBTTxkY6a0MZzwp7TA2iVGYyzg3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ortdAvMO; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-79ab3e26cceso78589017b3.3
        for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 06:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776347076; x=1776951876; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T5R17ZLDIA+FBJrsZkOSCOpWtAhdlsU3PoFA3MU5Wuo=;
        b=ortdAvMOHjNZzuwXYaOF+MpBmGjA4PYIp+AcueYVu02wYaZndZD8Ac0yiBExervz/e
         r1hbnbLDc18OL9YMEugpCk+bnSWkb8ZKQ2fPOEl6TdDEK35H/4xLWhLExxLKxhxBwR0L
         McY7HLTS2vAAZbtANuL24hb01lXRpWCfagaYvOFTwyiJZLDJX/fVep+fJFWPyWubNIah
         3nv0DeukozxPVWHexBTvDNRGBn4XsM7bN2sU6gvttsoZ9Xn22Z037LyF03qizAESH+Ri
         qHWEORYcpKM3oNHrSUCa0U6XTX5dAdNWfXRROcRwPMlOGOrz/LNfhwgK4i+EO80M9/sv
         ZUDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776347076; x=1776951876;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T5R17ZLDIA+FBJrsZkOSCOpWtAhdlsU3PoFA3MU5Wuo=;
        b=bB5q5tW+ZdURNaoYTDZVvmafx9miR2pILE758h+3VJsBhYrGtOgeYruS6kna8OofUR
         zozurbGVeKTdnSIHk47W6vgl4X8uVPOvrRrLEvUby7MwJdxdMAIAxpeE7BMDHsaEaxxm
         twRSgX3W4N2eqFZI64FyXTfZW09ktStpI5tzc9WedK7Q4tJsHUfxMaZg+UVNlb/JZaj6
         EkqQo1BHa5KMVO4385WLSc3q9r0M6CkTGkbbDSY0EfBIGX/qiRE3xqRASSIjlUKNzMe+
         2E5807HueKg9NxCD0xHgBADqY57UdOiutlUkyWpTZSp1gFCoHvkpEE0tos9J2muQmiY8
         JNpg==
X-Forwarded-Encrypted: i=1; AFNElJ/olAImILgkVXauSUUK9RS9mMLE5HXs/L8JIviic24KWWv5GyKTezbU2kMXhkqp/61jCvRa1uKiS5F+@vger.kernel.org
X-Gm-Message-State: AOJu0YxYzYBG2V+AgG/Ifb3NKTGw+aVE+V8fggJS8qzLDcopu5yCg8I/
	+aD991bYYS6j6F3NU39Mjn/j9B8VSM41V8DoBYnZzq8JSnQ6mRAtKjUT
X-Gm-Gg: AeBDieuXTKY7EkX4tf+BN4ylJArE8WI5EQXtFOOjM++vbB7gES9uMTQh78DzL8SZ7Bs
	0ZBjF6sbREQ/dZfUbeae8xtSjrxWvOrXRI9CW3GxsntaX+igDpohtC6GrSd84lKlHxfXMDQm5QI
	utyI7qNEXu4rJeVeSfcQqS3Pjj42Xq647MBJOddETgKTu+A9pI8G5TLbsesWflmFnyhQxpCpMI5
	/eJrxwujw+0Flo3JVHJHC/KQ58Wet5jQKwRxIy2I3kglqDGEkPULEzUFrc+5fS7bxHpwRmCwRUM
	mcoze53jBy3BVictuU45XlihDhDuEi6H2/N7QdZK2u//Ls2OlxAnVcG9sfHuBAaz64bkWZDc3X/
	vfjXyjNXS/RnBgB8Kb3OuWjDJ9aYPn0LXLn1+xGpY7PS0KeSZLznYBzTWZRknP81WchO219UPg0
	lAKe9g6zOHKSsToXZsXOJuuONCZlgZRORGGyRK
X-Received: by 2002:a05:690c:3481:b0:7b2:6177:2acc with SMTP id 00721157ae682-7b261773862mr189577217b3.46.1776347075855;
        Thu, 16 Apr 2026 06:44:35 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7b76931854esm23363737b3.37.2026.04.16.06.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 06:44:34 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 16 Apr 2026 16:43:53 +0300
Subject: [PATCH RFC 06/10] arm64: dts: qcom: msm8939-asus-z00t: add Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-msm8939-venus-rfc-v1-6-a09fcf2c23df@gmail.com>
References: <20260416-msm8939-venus-rfc-v1-0-a09fcf2c23df@gmail.com>
In-Reply-To: <20260416-msm8939-venus-rfc-v1-0-a09fcf2c23df@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287930-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6232540F2FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable Venus video encoder/decoder for Asus ZenFone 2 Laser/Selfie.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
index 90e966242720..231a3e9c1929 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
@@ -267,6 +267,14 @@ &usb_hs_phy {
 	extcon = <&usb_id>;
 };
 
+&venus {
+	status = "okay";
+};
+
+&venus_mem {
+	status = "okay";
+};
+
 &wcnss {
 	status = "okay";
 };

-- 
2.53.0



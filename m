Return-Path: <devicetree+bounces-257547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GK5kG/rNb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:48:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6F449C56
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 953FC9CA3AF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F63644CAEE;
	Tue, 20 Jan 2026 18:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mkt5Fcel"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2BD4418C1
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768932075; cv=none; b=DY38E6jI29/lryb9XY43FZSmASReeP0bVJKHIvnDUYwi0F6AlHnNHfMuLFnM60wfn38DW0GNyofDsJcuO3R+4/uYoQcPmugXyHdYLcIQfDRUbBg3nrC7cmj8jcjSvxk992A1dXke0ZKw2iTaKsjhiTIK0od4DrwPhXf9hJ4aNck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768932075; c=relaxed/simple;
	bh=oytAi/cqSts5jxBmNCuoIDDDrVXU9dCkEXlreujie8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WjTHJVA4AcCTLwVci6qFOCjbFI3n6Oj4/YRLLzDBfh357ATDfE1WNhb6cIOi5sitv9xNbJhuqkzhc7x/e9gL3M0+M/tfihRX015HFQ9UC22UbV16LUCJtUia7kyARIgqdaPHhv1MxCGyhhwOztNn2hP0c4O8lKFFjg2z2z6TsSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mkt5Fcel; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so53739655e9.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768932071; x=1769536871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9zQfT1I+T3qc4CsTQDm1xVB/Km2AJOgT89fsSmztyLo=;
        b=mkt5Fcelrp7/49MHax+M9bluMAkYFIiFbp/B8yfK5NJMAg7oTD5M6FWjh3/gFp1o7r
         edMohKF9qudI5NCQx+3+CIyC5I1mFVUcyyWSKAMWQm9NADw1uQY3UuDunz+ULXM2JWyb
         o+D0T9yXsKwD2f0+EynMkTK/IhcoNq6NODbZfHjp645TtHNFmYrco177UFnV6VZmIrMA
         1hk7HGzxR3IOg0M9f8c1jjN6V/mTUYeW0Nnjw4T4GtimR+QiZLkJL93Yp2V9K+U8cJEQ
         g+ysUqKlktNmCQH+BfEfcVqiTBa/NTG52xmM0Ei/89LaReC9+0USsPDAASExC68yJov+
         537Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768932071; x=1769536871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9zQfT1I+T3qc4CsTQDm1xVB/Km2AJOgT89fsSmztyLo=;
        b=hYcm1QlV8KPv/EcIiZqzz/udskyXGdJ2rri6y+AyXcnQrh7Tx9WkdpEl9Ia0ENLWbo
         B6sr8emzqFtRDmzWT70r9Kx5k9LWSHujUvSqBOyJh0d8O4dOJW3DAsZa48F+GsV7MCFU
         NAgKS2rzBlTUGN0elTXPaonoPlf98B8szw0sG1T8onyeE1SYsoMU1LMekZ+JenjRTK4c
         REZZN1wpUUfQgI/X1VdLIvpFBuI1uYBUe/NaZHogD4qZcMA5X4z8KEes+PxDOKkhyeyF
         DYHp4hnuJrhKfmvmsnjrFtDfFUKUyXB6QFcFEG3eX2wlqSCF1W4lmkoKc6MwLk7tjnzG
         Queg==
X-Forwarded-Encrypted: i=1; AJvYcCXLHjPdrdoK2fk4PQQ4cJosbAY4y9QEnla1phDuSdMoaZfhZWexK147aQH+y5kWzCY/bhNj5JXK8iY1@vger.kernel.org
X-Gm-Message-State: AOJu0YysqEKhmyEHt6p+xCNiPI/Bgh+TXrXdfkfql8jyO6Hq3kYrNI4J
	Deq7gFbIcNFkCigzBr0THgCkCjQu4RQt3Vyek1x/VMM/XHqTXgxiCkTv
X-Gm-Gg: AY/fxX5sR9FL/l758VlqmuzPNHS1SGTh6XZ3dVX29U3Bn24FZkujTK7ZPRFQQuJkFsO
	ZBOTPv1VuQ3pfdmzvajE3yzdND2DqdYr6Y4HXQp7R3mlV8VG05PexZ9ruu69hvGDg6g5scPWsK+
	CB8YcLapKRaqi0GKLoOTIGiRrmmKxFywfWZ1tlSihMRSFHiQaBnNh4JbcCOy06tXn/aZZfTlwdB
	LcbA6WvghIZfhxjYnjoFN9UqjWhHaIqwg1MgxvuLeKzoCn0dLH0MCAX9wJUgbQT0/op4sVQj7F5
	ksQyoSuGxQydk1dCCpMogQohg3y0Zc6PT01Zqj3IBV+5gbn5jWMnvSqOm1Y5tIX0Q1NGkevryGR
	xkyD/ilISedDAH0TuaNyqRZBOMVu+Mkcaaan5zMHbUNd/sX9HNl988PZQE0GtOeK6ANKrR69nM1
	vSU+FW0q68AacS4RZtXAR5
X-Received: by 2002:a05:600c:4692:b0:47d:3ead:7439 with SMTP id 5b1f17b1804b1-4803f44a19amr31073615e9.37.1768932070597;
        Tue, 20 Jan 2026 10:01:10 -0800 (PST)
Received: from unknown.zextras.com ([78.208.157.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47f429071a2sm312013015e9.11.2026.01.20.10.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 10:01:10 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	david@ixit.cz,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix regulator and SD settings
Date: Tue, 20 Jan 2026 19:00:48 +0100
Message-ID: <20260120180052.1031231-4-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120180052.1031231-1-morf3089@gmail.com>
References: <20260120180052.1031231-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257547-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,ixit.cz,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: CE6F449C56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix regulator configurations to ensure stable operation:
- vreg_l2b_2p95: Increase max voltage from 2696mV to 3100mV to support
  proper SD card voltage signaling
- vreg_l3b_3p3: Add regulator-always-on to keep the regulator enabled
  during boot
- vreg_l10a_1p8: Add regulator-system-load of 14000uA for proper USB PHY
  PLL operation

Also enable the SD card controller (sdhc_2) which was left disabled.

Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
index 6467cb4dfd16..9a6dda47941c 100644
--- a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
+++ b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
@@ -82,7 +82,7 @@ vreg_l1b_0p925: l1 {
 		/* SDHCI 3.3V signal doesn't seem to be supported. */
 		vreg_l2b_2p95: l2 {
 			regulator-min-microvolt = <1648000>;
-			regulator-max-microvolt = <2696000>;
+			regulator-max-microvolt = <3100000>;
 			regulator-enable-ramp-delay = <250>;
 			regulator-allow-set-load;
 		};
@@ -92,6 +92,7 @@ vreg_l3b_3p3: l3 {
 			regulator-max-microvolt = <3300000>;
 			regulator-enable-ramp-delay = <250>;
 			regulator-allow-set-load;
+			regulator-always-on;
 		};
 
 		vreg_l4b_2p95: l4 {
@@ -239,6 +240,7 @@ vreg_l10a_1p8: l10 {
 			regulator-max-microvolt = <1950000>;
 			regulator-enable-ramp-delay = <250>;
 			regulator-allow-set-load;
+			regulator-system-load = <14000>;
 		};
 
 		vreg_l11a_1p8: l11 {
@@ -295,3 +297,7 @@ vreg_l19a_3p3: l19 {
 		};
 	};
 };
+
+&sdhc_2 {
+	status = "okay";
+};
-- 
2.52.0



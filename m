Return-Path: <devicetree+bounces-277557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCvOB3Zzu2kdkQIAu9opvQ
	(envelope-from <devicetree+bounces-277557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 818FF2C5BB2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C231F3034335
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56B4330D43;
	Thu, 19 Mar 2026 03:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nmp5aVx/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428D7338936
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892438; cv=none; b=MtaRv/jirgQNnn1larR/8KANmhATdRaFzCaS2P8PwWu4aUrYeu2o3EPaIzg8+2omQwBFA5uD1c+2AzTX8EIg7YgBiforGp0IGPHG6sd+g6ExBaDCnp+IEt82jv+OGcYKYFzMBcHtRnBmrYY64ii3PfN2FJjPTDw4TIKXGofyP+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892438; c=relaxed/simple;
	bh=qUKEYzqx8HBOnb88x/qxpRpWtcibe86PCsdpFge9J5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lR4soio94u9MENywkE65khr2l6WTCaidwDpTcjgdvAzwyoddCm1M4V9NWRZdRyE0O4de9Do5CIweXlCIWtsV3broUufEEW1fPk/VfJqBsuLbURej+oGtVo6VJkwGM3+lZmgJWOfN2jqinwQbkIFbwNxM7AS4OYJkODyDpqe8Dpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nmp5aVx/; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-35b905a05a8so127919a91.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773892428; x=1774497228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H3As/sXmvTb3Nrb+A3muL5/yG1ULkPfgGgdjrXA9Jlw=;
        b=nmp5aVx/krJhaw16B5nYeY+BXy09HyzOs3pWgiLyzMhav+haT1O/v6P7a1MEm8gDCS
         iWvVotypzVGdcWCE4vx/SCnhbFA1mdlS/tDA0ldU8MOjC/3rut/7wMbr7slPnUacp635
         fwLbfnhk/z7yJ41EblON03nRVoRSQLd90SmAiydvpefDQ8SuodVSkNCSRIB31k+vQpY5
         Prd9faNs5hIokktJvWz3fVhPoOrYEK60GQ7X7Xmfb6N9QLJSyNjEA67iKgeY6QjHY8b8
         K8FQNE98pg8j1YQ5hUjGHGb/6R/7LrfRRMbow721Wbd0dxJTPvItJalqE8+r5aSo/3zj
         asWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892428; x=1774497228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H3As/sXmvTb3Nrb+A3muL5/yG1ULkPfgGgdjrXA9Jlw=;
        b=oVODs1SrHCzX6vo8EuBZ52IhBHAsJttg499eV8SNlEH1COljFDXuY/eglj9CTfcPod
         2JVu/+9tHnEFvM45TlGd8ZeIyyVPsGbLzzvf2IDZImMpEkYmUfDWiqmIzhLT1qOOSZGY
         ZhCofQwhgAm06CiLQqzyzs4di59nC13FKjI8wNL+IN2QyiWmr6iiOWQ3TNX+YtJGQjsa
         n0tQ9GuJSU11xccS98V23To3Gq4Fd01dOMnnZ50uoMr3hNjX5HuFZOdLw/3IUDSuTZbA
         82P1dxD37cuh8/AqIjY2dOMGv2BUQX6AcG+wRORAA7Q8sidbOxZzSCzZtAII9jfUz/QI
         NT7g==
X-Gm-Message-State: AOJu0YwrgCBI3oLjZrWamJzDRYVWsWPPy2zT5yHbWbFNU78BckNQeuII
	BSTJB4t5S8QR1HudZWp9SlGrzC/zDSjt0G+CzItktOZ+3kiHaNBbPLnP4fxCocE6
X-Gm-Gg: ATEYQzzlEn0t1K8ji1M2G/EmFYJY5GaOCAdGt+h7ZJVyiBdLTQEiHKcOfUklSw4mEbR
	gZh5Bj8jrJOuFyvMuvnNh/tsDPuAudEOUzYLBfca0lfsb9W2+xzJ9aTKpyLeHrDZUEKxMmz7/Ml
	peGizMLYPbpUIMG/Fl7TZrzCVExr7LeGsoj2weXOwsnuzd6e0juzdQe9adORimYNnRm2VXHa17a
	j55WhIDGxrNvHgjlJ2Vdw0mhi9Lvmizzx+ZRtOPFJauxfM0pEJCtxbcegodV5zL5aoNsw0JAooa
	SrWy2RMYidozH+wcdViSuUi/FbMoTYfQCx4lxi+MqPc8Bf1K7lmAFnJEilGZOEIIP8oxzCqkBDM
	pvA1O5Vt1s1yB7sHLhJx0LMw4us490sDl5L8tWW9z5oh/4qlBB0nP1FCh5EZ9jMBJQLNRzirZdB
	WjqgXSfZnRwTXBXv48HZGfzq5PdxGOJv/MP0wfurdVP+Yo0VBKb1X6bG0=
X-Received: by 2002:a17:90b:2d10:b0:359:ff8a:ee3c with SMTP id 98e67ed59e1d1-35bb9f11dcbmr4706091a91.23.1773892427775;
        Wed, 18 Mar 2026 20:53:47 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc60ecb30sm1159145a91.12.2026.03.18.20.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:53:47 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 4/6] ARM: dts: BCM5301X: EA9200: add wifi definitions
Date: Wed, 18 Mar 2026 20:53:22 -0700
Message-ID: <20260319035324.269905-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319035324.269905-1-rosenp@gmail.com>
References: <20260319035324.269905-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277557-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.839];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.2:email]
X-Rspamd-Queue-Id: 818FF2C5BB2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

brcm,ccode-map and ieee80211-freq-limit are needed to be specified on
some of them for proper operation.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../dts/broadcom/bcm4709-linksys-ea9200.dts   | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index 617fb55bc52f..7b1363aa1144 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -93,6 +93,56 @@ led-3 {
 	};
 };
 
+&pcie_bridge0 {
+	pcie@0,0 {
+		device_type = "pci';
+		reg = <0x0000 0 0 0 0>;
+		bus-range = <0x01 0xff>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+
+		pcie@1,0 {
+			device_type = "pci';
+			reg = <0x800 0 0 0 0>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			wifi@0,0 {
+				compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+				reg = <0x0000 0 0 0 0>;
+				ieee80211-freq-limit = <5170000 5250000>;
+				brcm,ccode-map = "JP-JP-78", "US-Q2-86";
+			};
+		};
+
+		pcie@2,0 {
+			device_type = "pci';
+			reg = <0x1000 0 0 0 0>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			wifi@0,0 {
+				compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+				reg = <0x0000 0 0 0 0>;
+				brcm,ccode-map = "JP-JP-78", "US-Q2-86";
+			};
+		};
+	};
+};
+
+&pcie_bridge1 {
+	wifi@0,0 {
+		compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
+		reg = <0x0000 0 0 0 0>;
+		ieee80211-freq-limit = <5735000 5835000>;
+		brcm,ccode-map = "JP-JP-78", "US-Q2-86";
+	};
+};
+
 &usb3_phy {
 	status = "okay";
 };
-- 
2.53.0



Return-Path: <devicetree+bounces-269965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GADDEDV/pWl1CgYAu9opvQ
	(envelope-from <devicetree+bounces-269965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:14:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D2C1D81EE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDDCD30465CE
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F252366563;
	Mon,  2 Mar 2026 12:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WMhExMgU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF95365A16
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772453545; cv=none; b=j40FEdGsxqkYLjgLiKxcVTcUtwRqbu+mREGUS7FojseBRh7lGCnhZi/dMsNZGdAynEJR19kF8iL5j6wNb/vQgUFnKLklpOOA2WIVIttHcjD4E6wjPu57nDljJCOtpWp7JPg7zBcaNCX5kcD0UVO+nHXsE3uuNWgCBiN/o1anGKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772453545; c=relaxed/simple;
	bh=W81JHwo98DtnUdaW8I4ravA3RNHN4XNWcIrZGDKOXHg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bgACSnsn6kX8C9Si01oo+210x0/0yOKNZKaThdG0hjbESyj55qF5n7E5eNcb+cP71Lw8gpcRE/mT8rTeZ4F2kcGgDri6DQ442yWzlsFJV9IzIaRp5RKAooFOqTw0ktkIbyN8CLbWK0xa44PhktvthPOwWH9tKcRMXneNEvduu7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WMhExMgU; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-8273eb7798eso1860439b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772453544; x=1773058344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PfF4tOiVLItjb1gfwcr8m37Aukq7zsbax8v7AQsNoAw=;
        b=WMhExMgUBwwdjH2XtpPrVTKBDFrz9JR2FjtzyLebDs6uN2Bw+WDjkGgdgtW87RqaIo
         K6MvIQsujv2ylEb4BVOJQ6xc1NmU3rfQ6+bMlzlToCaHRA8l8JcOFuZ9etQ1BXbMhLcr
         qKCCm4VSqcvqHkvid8J7LK/ZbyNpxG9qcCeLQuy19mV37Hhb7NBSpcCUx4jIpEwnm6Ro
         FOynA1YDfeDVqAriyy56D5dOmRvATIMK9rM9B6JUY+ER4ykE0bU4vIb/3qC2TfaKcxOI
         /ga+hu+b9saev2INh1oTQpEzNbwNXS4qyp3ngzPDuKdEKuC5Z1LqLWbEi8mZhqKuUNbn
         jXmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772453544; x=1773058344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PfF4tOiVLItjb1gfwcr8m37Aukq7zsbax8v7AQsNoAw=;
        b=IgM2KXewQoqZjR+zjlmGk1YMxGZLeDRxkNgaqpgVD9eRRICp2GljzDCpIXj7buu/T+
         0nzwvG7bZ/OGMoaT/GxqxuFUe+6qq/ZgZf0uVznYL3uINHDZKlWhaoqUc+WeTU3nEFCp
         XhW8TX/RCj1kFgbx+3hys+7kmEbiK3MVQaQ3oKE6g0kyF6ybSsdJ8ArOXWl1oN66ZWu8
         b8kNpjuUhR6DI3SRyYHoPRnM6TGzPcvCEpkdAU2ZEOfnKg+7Y/KWYn71JIj7QroywWxy
         JrAo6eMG0YkdMumBWOkoqwDRkAC5Z3ne25oAIsEdlxm+gCEMHDLYHfIvGqI98dvlCboH
         FmiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkp4KpeZqGcojMdif/WPUu2LYFoduyW981qCtTEvdNQfy0jEjNdLAnvMLRbqPTEFAHrEo3VZahCvpK@vger.kernel.org
X-Gm-Message-State: AOJu0YxCrSJ7Sj8gnKtjS507I41EM7lJgtRqj7oBy1Y2uhbGZxZnWwlk
	eFAMtU6590oHCbAWZYPG5jtWzHV5AJXYeFXTSKHRffG69BqxnU9fmHYs
X-Gm-Gg: ATEYQzyD9+3w9ogj2DhgJw952ygthLyAc3tbN4qCHU+5YPhvfVwX4qaQvQVXVFkFcZD
	u4UOFw9vJLH7N5+DMMgWeW+d2muC9IGFpWUk+110FcUhWU3d+U6I6YQr8wnvzM2uW0oeqjA0cix
	Q0fqA8jq3uNV4YwiQcuyn7uWKfc20JC4uight4/mJ2F/VdgoeKtZ1xZL+N5+F8hDuFcOKYdRrxJ
	zh8YrCzlwrfYLEGmeOHQSg/tJfn3FMs/N+Kg6llC8ZBkRJ4WT5UOBHRPdWGb3IcU1Pt7ezZKvQy
	TBAWUZTSkHyKQzSYCLuOnVEQZGBQn22CPcq2CElg4KBCRZspjkPsF1yFopw7uhCxtJ0EHCURSS3
	cDCAhjk+Vt/jyCDebiCSzbbc1wI5HOAW/MSFTlFIcCxESSp8EBpoKPEpvzA9YCbLAOUnVbK+HBE
	t8ivq2msqbBRmUNEqimL0pWwYenwrVhJxIJ7dwucIdpczvGCUh
X-Received: by 2002:a05:6a21:6f0a:b0:38d:ebdc:3555 with SMTP id adf61e73a8af0-395c3b3deadmr10834753637.66.1772453543562;
        Mon, 02 Mar 2026 04:12:23 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa848471sm11454177a12.30.2026.03.02.04.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 04:12:22 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v15 2/3] arm64: dts: qcom: talos/qcs615-ride: Fix inconsistent USB PHY node naming
Date: Mon,  2 Mar 2026 17:41:58 +0530
Message-Id: <20260302121159.1938694-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260302121159.1938694-1-tessolveupstream@gmail.com>
References: <20260302121159.1938694-1-tessolveupstream@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269965-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,88e2000:email]
X-Rspamd-Queue-Id: 83D2C1D81EE
X-Rspamd-Action: no action

The USB PHY nodes has inconsistent labels as 'usb_1_hsphy'
and 'usb_hsphy_2' across talos.dtsi and qcs615-ride.dts.
This patch renames them to follow a consistent naming
scheme.

No functional changes, only label renaming.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 2 +-
 arch/arm64/boot/dts/qcom/talos.dtsi      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 5a24c19c415e..6a052667f096 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -662,7 +662,7 @@ &usb_1_dwc3 {
 	dr_mode = "peripheral";
 };
 
-&usb_hsphy_2 {
+&usb_2_hsphy {
 	vdd-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l12a>;
 	vdda-phy-dpdm-supply = <&vreg_l13a>;
diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 75716b4a58d6..f69a40fb8e28 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -4417,7 +4417,7 @@ usb_1_hsphy: phy@88e2000 {
 			status = "disabled";
 		};
 
-		usb_hsphy_2: phy@88e3000 {
+		usb_2_hsphy: phy@88e3000 {
 			compatible = "qcom,qcs615-qusb2-phy";
 			reg = <0x0 0x088e3000 0x0 0x180>;
 
@@ -4600,7 +4600,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0xe0 0x0>;
 				interrupts = <GIC_SPI 664 IRQ_TYPE_LEVEL_HIGH 0>;
 
-				phys = <&usb_hsphy_2>;
+				phys = <&usb_2_hsphy>;
 				phy-names = "usb2-phy";
 
 				snps,dis_u2_susphy_quirk;
-- 
2.34.1



Return-Path: <devicetree+bounces-259622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGPFN2m9d2l8kgEAu9opvQ
	(envelope-from <devicetree+bounces-259622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:15:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CADB8C702
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:15:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24FAD30209C7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 555262690F9;
	Mon, 26 Jan 2026 19:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VTmoyt0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BAE17555
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454951; cv=none; b=UTtFZ7vxlGnkSbgVFSc7h4TCzjsPNPDgLfN2shUF+xes1Iag5/TXJvb6z02FdAhyqBHZrWyF9JKumkmeOH5rkbFBw0NRnLvBecqVY+5+btXLeCJSp27BpnCgu2RQCnFqcm8kqQkclHDPM5FXcKqjjJZU4RDfbae0RPVpnCQeOBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454951; c=relaxed/simple;
	bh=VJS7tKi4W2dCRDnFqQGBe73LZKmaMcajj+4bVj7gZPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t+GjRTh/GYeFa5dv5XpmzLtx302IbBn2B8zSovmeHmaWlmbXHYsVnX3J9yJPRQe55wAbxX7M75Dtods5WouflCYYbNJOaEq2SPg+hgB3OCivicsEcV4cQEftHR1M9JIbiEgW7iZ48ayvz+z1Z4VCj+xMGqMDHZGY3KFyZfTxJXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VTmoyt0m; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4801d7c72a5so37457605e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454948; x=1770059748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hW/vKp7i5enJJG2aIk5G1BDDlAi5srul9SKR0E7oEGI=;
        b=VTmoyt0mNgEov0A1vaMX308R5EG2nre+aWXU/ojE3I33Uf9LCYnh8xv+wSP4ZyNDSM
         QSlpnPjS3seu4k23k1bx27yJWuFfhid4mi5W1AkHtc7FDRzA6LL525Fdm4xCzjITUj1S
         y3BfhmOvPfGM7GFTVoX4hnVfcIqTVR/HzuHPchPmkRtj5gx1N+hBbza8diwCWg7i+Ld3
         y/YirVOtXr/lL/HoATzjCXayFdygmZK3e1BntM58TwIAM0QBOyHRVJAkv/MI9178S9tP
         6RPE9RGJO4s6UHDYPFZNxi4xKX53O8qcLtA5hDkdKm/YeMdvbemoz02MUwAilSeadSno
         E4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454948; x=1770059748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hW/vKp7i5enJJG2aIk5G1BDDlAi5srul9SKR0E7oEGI=;
        b=h99I4cfN1Nv3i7uGH+aXPDVtn9HNNaY85KPWlB2dZJOGgWpm9+rRL6v9q2nqMGmdNf
         3GvmE/OWjenvIuqv00WPG5Sy67BSc5MrCihK/VYYQ/A92pRR9XOZf0r2pHLtO+OvOYZs
         KodzpZkcCnsAv1eCuQ350IbBaon2wyhkmicNv0T1v2LQLBUnI6PNJpKoYbPeshfPmEWb
         UkfzWw/K5+KFVlQVPULTjTpz0YWtHmNpjvBL6Tm1Zd5dnBgvP45pLgdYt4AQBQTySflf
         JxS4jN6ngmYAk+J0B0pS1gsPsg9LIO0kkkXQb8IQWDy++ZudlR+TjjGI9kPcYVJfaskP
         5IUA==
X-Gm-Message-State: AOJu0YyIkkPxJ0hCsvvznWLd+AxFjUTlnB7aK09EaKaczIBqkzycqma9
	R91xkfz2PgeJi52I1/fJsfNaPr9VcSCuZ1AXKpMGbCawvkEZbdyZWUif
X-Gm-Gg: AZuq6aKAeO0bLHvtaDSXEYVlpu+/FEjby6x6+xHq8Lqi1QNE/pd3pdn7JI96fXkDDvb
	RGVDZpsYWzCwLQfA4Iw/DIU4jKtUSR8FFlxX56FkcC52Qez7T+t7V3Y2xHMJLMcRqJAc8eGTLx1
	tfWyfNOLwOIuKlU5t2SAZvmcWeiH0dOZdCv8S7jGpDv7XVdMGAR2N1m93qHQqwV9BQ9cn0X8wS5
	tEaYkLLQ1y7eFpaMeA30Ek598Mk20+Cj52MxyOORk7CLGEyDhweSL/9seFixXuWevKp5bVuFosF
	dXrxBz466vvV7oH9ucUve47XW+gSmQJt1kuywZ8xO/yLsOKcQ5im8l35K1S/G7/DqguZggYkBl2
	mXRskqeAjSW0ESGb0DKf6OORQzOUr7dUcwvCeP/seoyhDwjs7k2H12IrFQE+IrDMw+wYkAvpe9k
	+d
X-Received: by 2002:a05:600c:19d2:b0:480:1a9a:e571 with SMTP id 5b1f17b1804b1-4805cf5f67emr80180905e9.22.1769454948026;
        Mon, 26 Jan 2026 11:15:48 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02d0dsm30958219f8f.4.2026.01.26.11.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:15:47 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/5] ARM: tegra: Add ACTMON node to Tegra114 device tree
Date: Mon, 26 Jan 2026 21:15:32 +0200
Message-ID: <20260126191536.78829-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126191536.78829-1-clamor95@gmail.com>
References: <20260126191536.78829-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-259622-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,6000c000:email,6000c800:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6CADB8C702
X-Rspamd-Action: no action

Add support for ACTMON on Tegra114. This is used to monitor activity from
different components. Based on the collected statistics, the rate at which
the external memory needs to be clocked can be derived.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm/boot/dts/nvidia/tegra114.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index 02d2c40dd79a..ef0618e9eec1 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -312,6 +312,18 @@ ahb: ahb@6000c000 {
 		reg = <0x6000c000 0x150>;
 	};
 
+	actmon: actmon@6000c800 {
+		compatible = "nvidia,tegra114-actmon";
+		reg = <0x6000c800 0x400>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA114_CLK_ACTMON>,
+			 <&tegra_car TEGRA114_CLK_EMC>;
+		clock-names = "actmon", "emc";
+		resets = <&tegra_car TEGRA114_CLK_ACTMON>;
+		reset-names = "actmon";
+		#cooling-cells = <2>;
+	};
+
 	gpio: gpio@6000d000 {
 		compatible = "nvidia,tegra114-gpio", "nvidia,tegra30-gpio";
 		reg = <0x6000d000 0x1000>;
-- 
2.51.0



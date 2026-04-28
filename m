Return-Path: <devicetree+bounces-291205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OJJJCQX8Wm6dAEAu9opvQ
	(envelope-from <devicetree+bounces-291205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 22:23:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D58F248BB45
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 22:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CB5C30F5A81
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 20:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA563B5302;
	Tue, 28 Apr 2026 20:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lgoFIlx5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB393CD8C2
	for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 20:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777406859; cv=none; b=oAXIGoQPBUanOVqxqTooKeBwNYMFV3SzIEm2uEwI0m2dT+5D2o6U8yrYAxWi1XFqR80rjdKipADho7GXSriLKtceXrrh60u0jYJ8upnY5PFuQffASEmuLNxFAOTPmjFDeZkmJd9QntQL2VjXi4EXBEA+CCH8LpFmseH5GQVDrko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777406859; c=relaxed/simple;
	bh=XO1A/HibqZZptlBWN5BCzJBPBBT6OtgGPpR1fmvJiA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qAPlcfBsi4vkNky2AQBJQrXqQtrkJ6cLDvlFDgbj8hyEF28iE10cJSoN0wrWfFdFM30Hp3tHYA9wZcPkUrcEYURBMV6hQnDDU/W1j+v1izknxLvC35TM8ABOOJ7iOwkWLxAWWjGoRQAkp0cL9Ckd1nT1EYtk1iQhskHJesY4mxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lgoFIlx5; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2d8ffdc31d0so4709914eec.0
        for <devicetree@vger.kernel.org>; Tue, 28 Apr 2026 13:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406855; x=1778011655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyEh8MUYI6uV1LBlX4TWKPlLf6Jaa4vkUqpt47EeXpM=;
        b=lgoFIlx5tLNJIADdHllLhe2CgooduUbz4JdRKVvEGiRC6/BorZMWXqS3GvbBGZqWtm
         b0OsNU5naFbwnHe0Rwn4QgHD9vWZAGcEwN5AIK/KqQoQgjkIqssTJ8Ldmhh71JUY0vRC
         ZcmLlxLpVf0PWsG1Qf++1bgkRLrhUL1oiva6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406855; x=1778011655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wyEh8MUYI6uV1LBlX4TWKPlLf6Jaa4vkUqpt47EeXpM=;
        b=kCsoy/9TlEa/nStFZcXlsBvtkihLUSh2WLyjBi+/Qner5QyAoCqNInIsGlPURyt9W/
         Dnb8B9s8nQaFdzVcXk+2gRIHfRYP5m+12F9iNKTtE/A9kU84LwytP2ButlvA/TW/tlXz
         /qCgDBUMSm5+2lwgGge3MNIGVXNxID7OE3IWG88bPtuWl1pJ8lHndQQ3D7O0JerGq9Ar
         9lFiuwDx0P/6BVziNQpwn9vT3ij8lIctJdODbpbcDz5IjQUGMdrlfElTvkPLkf1unSJv
         gK+EkhaFTG71FPj/tFX1Ju20McoqdHTsrfuImlq01KU1e67LRaEsgCbQ/cP72pGLwafj
         csgA==
X-Gm-Message-State: AOJu0YzOp9m/8mN0BoYiy1/T5cSRqt/SCRQMpWjkmL7VtRJBgde1rBM2
	BEiM9P2oGyPwT2RjeN9X70NohWPbMEi55Bx6pZkdHQ+Ekldros5cwNzGXSWsxahYNg==
X-Gm-Gg: AeBDiesZWgO+FTohLos9awY9y2TfisxW5ez48x1qF55OJHe+M503lkHoNZGnw+XG7xA
	vRImLvQZrVTzlIpgzVO+w7VvRGW8KV9Kjar0UYzVfeOiVZFz+2lyAVacNeI1er47iMEz/n2C+DV
	tuaL7oZ1RyNCcbtbWpAbPmXsT7ByhET7Xc4wTz3Kyyh6lN8XWqkrNmT4KfO2A01QqOtSYVj4kwM
	VzkWPfVCDtAF3dpDJMwryB6BtjWBDLhjOzuGRl4HTR7DWXgLRh/9lRW+H2UlIyv1ac4pWRezuAQ
	8OGxoYu2Vz1uIRSFte9kWok9PNsAk4U9wucbLcdSjku+ybdmL+zQDzaguKtdKPIJislf7jKKlUV
	fJV9hN09VjK/8yMurHdH9y8cSlGsM1TP2utLWKGlAi0JBwdtP1zeK602UbzU6VrlbgDNyg+kPAF
	CrNjWOYj6lUQFTAEkoXfp6fYRNI2cqWmYYLTiksuwBnkodYB7mVj7uvWPVMNYTYuBm8NG2T1GoZ
	f0D2hHv7tM=
X-Received: by 2002:a05:7300:5707:b0:2ed:e15:c924 with SMTP id 5a478bee46e88-2ed0e15ce32mr1940281eec.32.1777406854721;
        Tue, 28 Apr 2026 13:07:34 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2ed09fb6b8asm3015155eec.8.2026.04.28.13.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:34 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org,
	Doug Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	chrome-platform@lists.linux.dev,
	Brian Norris <briannorris@chromium.org>,
	linux-rockchip@lists.infradead.org,
	Julius Werner <jwerner@chromium.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] ARM: dts: rockchip: Add #{address,size}-cells to Chromium-based /firmware
Date: Tue, 28 Apr 2026 13:06:54 -0700
Message-ID: <20260428200712.2660635-3-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D58F248BB45
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TAGGED_FROM(0.00)[bounces-291205-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_ALLOW(0.00)[chromium.org:s=google];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,sntech.de,gmail.com,collabora.com];
	GREYLIST(0.00)[pass,body];
	DKIM_TRACE(0.00)[chromium.org:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[briannorris@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[chromium.org,none];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	NEURAL_SPAM(0.00)[0.983];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,chromium.org:dkim,chromium.org:mid,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,crrev.com:url]
X-Spam: Yes

Chromium/Depthcharge bootloaders may dynamically add a few device nodes
to a system's DTB under a /firmware node. A typical DT looks something
like the following:

/ {
	firmware {
		ranges;

		coreboot {
			compatible = "coreboot";
			reg = <...>;
			...;
		};
	};
};

Notably, the /firmware node has an empty 'ranges', but does not have
address/size-cells.

Commit 6e5773d52f4a ("of/address: Fix WARN when attempting translating
non-translatable addresses") started requiring #address-cells for a
device's parent if we want to use the reg resource in a device node.
This leads to errors like the following:

[    7.763870] coreboot_table firmware:coreboot: probe with driver coreboot_table failed with error -22

Add appropriate #{address,size}-cells to work around the problem.

Note that Google has also patched the Depthcharge bootloader source to
add {address,size}-cells [1], but bootloader updates are typically
delivered only via Google OS updates. Not all users install Google
software updates, and even if they do, Google may not produce updated
binaries for all/older devices.

[1] https://lore.kernel.org/all/20241209092809.GA3246424@google.com/
    https://crrev.com/c/6051580 ("coreboot: Insert #address-cells and
    #size-cells for firmware node")

Closes: https://lore.kernel.org/all/aeKlYzTiL0OB1y3g@google.com/
Fixes: 6e5773d52f4a ("of/address: Fix WARN when attempting translating non-translatable addresses")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
index 2d6cf08d00f9..ca8e8e735078 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
@@ -18,6 +18,11 @@ chosen {
 		stdout-path = "serial2:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	/*
 	 * The default coreboot on veyron devices ignores memory@0 nodes
 	 * and would instead create another memory node.
-- 
2.54.0.545.g6539524ca2-goog



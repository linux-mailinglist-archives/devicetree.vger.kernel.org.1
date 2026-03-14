Return-Path: <devicetree+bounces-275605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJphEOfJtGnLswAAu9opvQ
	(envelope-from <devicetree+bounces-275605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C0728B67A
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D1DC301CCFD
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AADED2868AB;
	Sat, 14 Mar 2026 02:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VUhGxtdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25260194A60
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455844; cv=none; b=mcRPKjUyHL4m9eapuI+uaJUdE6wmVFl0cKXN7VCaztrb7jh/kA70lUBFYS+Gb9zJvY3jpenveDPDlykVNqARxCzVbL5JLdvVMB84lVQYcr2syvbHbyhcQ9naXN+HZWM9IDdA6CaaA+caN7JgcBWKaZzGF00qjl1dPobbZeQWwGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455844; c=relaxed/simple;
	bh=o54kgX/FfKG/NTJ3r0AQP3BUXLOxKSho0aL+4GiIKgY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ime/BB5jXaDWVQHi9DpitsgS6XcSSeHeqtgnC9g2olKd76w/e9Zd1GRgnwA9sTO3jhfx5sjf/BEOSCzT84unI88adkiLe3sMZqQxmo66ClFUAPzTzoivaRB8eXV25W2PZFFflehkRfGu7p/ie5CzNxEX4immBH59MjOD67JBQNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VUhGxtdy; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5a132096c08so294103e87.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773455841; x=1774060641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7jkMjAsh5AS687nQGwoNgRIEGVMFG8INWXbw9vpLXjI=;
        b=VUhGxtdypVhyORErYnStlhmb0xhfbcpNP3tf+N49F86ODiVLlWKfcPAxZbu/CrLc5Q
         RTmhiiJCohRPW+5AOdpvJ7dUornL4KcuphoPZFQfpeasUt7n2fizsccnCNb9mbNtD/JY
         /Vs/ZZGzndLw2fotMFu6jwqrpji/acHJEyixL4wZYex5ENQtNjyboSZWKHVN5/QrYAy2
         C2oXrI+6CBPUI3CSDsoUV/v88u2mmZx1Jja8eyWTZRoYldkmDohSFUhlUFhEB3+5h/pB
         mHnmGpYQFG+FmKcbbdW6e2HBJ5rTmwwydzNc/pOjnthM8cv40aBI9Jvz+DDpbtlxFwk1
         abxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773455841; x=1774060641;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7jkMjAsh5AS687nQGwoNgRIEGVMFG8INWXbw9vpLXjI=;
        b=XBUDes8rpHg6gpLOOcAGo1SunsqAwzig1NWiPWPaSNIgd4D0CWmBuQsndydhxiCeH/
         kBcwFRkj7MTZgC9Wa/UqGL23aXLouB/Ndpn8di6bRW5uCh+S2ZQFLRh9fSoWzqqqd0L9
         Qe7M0vooQ3RGfojedxANPgjj6++tDVmEUtCN1ZQmrP+baf7yegg5a12OP/IjR7GTzmiP
         D5ZDAVOCBDVrIHqx/Iej0hEOdqAmimK5aT+U/XuZtVoGjSHogI6SlY+PpNZ1JXfZcNa3
         2S0Ahup7RmsAPf345mueadPKo8jOdhsBcSaCD5RcH4vQYJ5pID+LABUsa4vJfx7ra63q
         Thww==
X-Forwarded-Encrypted: i=1; AJvYcCW1M8wIjCWy6WkWcdNQVYQyW8K75o3f3lJMvrmSZ6vpeEPyBc2VJHIKDFk+47dzczQ20aBJMD6Tqw/D@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwg2tDUE9tMROcYC36bEMmQXbend9VTOJRzXYccVar5bc3AZQy
	kDVubwrrxixa2pEqNmugNOcTPJphDjoRcudtUvuul2wt3WPviPzYWIrM22gUQ+yXZFA=
X-Gm-Gg: ATEYQzzAZS0yaOq4Uoacw3Yg43WZWAm4A7vdrLbiKn7UtD6oXv2IC7Pec+zNb4nqKGV
	Giz2dq52bwTn/kHUzdayoP1pUT8sn+eNccpyT1Adsnvv7rwbOZPJ389KVaTy0U77yiONrL62f1B
	fj0bJpdR6KwBx7sFOKbP+ux5QOrXNc5ZFpiNpcRWs/9ocjl3ZJQcuAUc/RHrLfkLHHpoHrl4VwK
	5gABYmqYgba3FzpS95rffoCVieQUxa4xpH+dg05A5y13deV3aSPZzfF5vxmK+DKGRv14VnaUXlg
	412chDyneO73e9DFMsCPQr2Q8rpkJwloTDFvtHngE/ntlS1QpA1sfOzYhaHr+DjB4BiF3W/MKQs
	dXejjkdiuM66Bv0t6n88y9Qqt3+EtAgADbcMLclsbUlhO/GQJvZF1og/mkdlRxe/CDSLOQ1tTUN
	Zmeuv6WdDwZueWGEYKJeBCbWc3bN5hm3XNfVoTvF/i4ZLb+WARBdg+qqCZnz27PMSsOQ==
X-Received: by 2002:ac2:521a:0:b0:5a1:3e50:423a with SMTP id 2adb3069b0e04-5a162b0f132mr630706e87.4.1773455841073;
        Fri, 13 Mar 2026 19:37:21 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e692sm1884296e87.30.2026.03.13.19.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:37:19 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/6] arm64: dts: qcom: sm8x50: Enable UHS-I SDR50 and SDR104 SD card modes
Date: Sat, 14 Mar 2026 04:37:09 +0200
Message-ID: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275605-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 95C0728B67A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The reported problem of some non-working UHS-I speed modes on SM8450
originates in commit 0a631a36f724 ("arm64: dts: qcom: Add device tree
for Sony Xperia 1 IV"), and then it was spread to all SM8450 powered
platforms by commit 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable
SDHCI SDR104/SDR50 on all boards").

The tests show that the rootcause of the problem was related to an
overclocking of SD cards, and it's fixed later on by commit a27ac3806b0a
("clk: qcom: gcc-sm8450: Use floor ops for SDCC RCGs").

Due to a missed setting of an appropriate SDCC clock operations in
platform GCC driver the workaround of dropping SD card speeds from UHS-I
to high speed was spread to SM8550 and SM8650 platforms, the fixes in
the clock controller drivers were applied to v7.0. In addition v2 of
the changeset corrects the "xo" clock frequency on the platforms,
and now it should be safe to remove the speed mode configuration
restrictions from SM8450, SM8550 and SM8650 platforms.

Changes from v1 to v2:
* added "xo" clock fixes, which provide the expected 19.2MHz clock rate,
* added Reviewed-by tags given by Neil and Konrad,
* added Fixes tags, since the changes are functional and performance fixes,
* rebased the changes.

Link to v1 of the changeset:
* https://lore.kernel.org/linux-arm-msm/20251126012043.3764567-1-vladimir.zapolskiy@linaro.org/

Vladimir Zapolskiy (6):
  arm64: dts: qcom: sm8550: Fix xo clock supply of platform SD host controller
  arm64: dts: qcom: sm8650: Fix xo clock supply of SD host controller
  arm64: dts: qcom: hamoa: Fix xo clock supply of platform SD host controller
  arm64: dts: qcom: sm8450: Enable UHS-I SDR50 and SDR104 SD card modes
  arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and SDR104 SD card modes
  arm64: dts: qcom: sm8650: Enable UHS-I SDR50 and SDR104 SD card modes

 arch/arm64/boot/dts/qcom/hamoa.dtsi  | 4 ++--
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 3 ---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 5 +----
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 5 +----
 4 files changed, 4 insertions(+), 13 deletions(-)

-- 
2.49.0



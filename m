Return-Path: <devicetree+bounces-208141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB910B319E3
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:41:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55AEB1720D7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD79B311977;
	Fri, 22 Aug 2025 13:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tURL10Ht"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B503093A0
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869640; cv=none; b=JxTxYQ6zzvyZlwHNNNy/u9hciDE4SiHUpmInuxuehnzALwj/h0/LbZaHRdxEK0ILWAZY7FLRIt4l8wW4fEjXVU6GABKoAbepeFBm70pHTOVoEKyQ7Jc+rVG+KU8CcV9GG1YWRDMRSX5pY2LUmjVHzGOe/hpeMnUjNRnWDydVA/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869640; c=relaxed/simple;
	bh=8gAmAJpykAypxXShgpXJ+YHQRn2sBo0ccaC3j3ZbunQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F+I5fd8o8jI7MELD+Q9Lw9RLLQt7FLX/OVFnTX7UDD87QsQwym/2E54hVRnI5FkuqnIyWQ35jVDVZ0SD7PV17qTSFJqmxP9AOFOx0v2miiqYzG6+Gg89/B8FvvjXv+fcDTVqfUD9zNSLxAIdlBtfEii6YhUon8gmMKKG4oJYjSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tURL10Ht; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-afcb7ab87ffso26673866b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869637; x=1756474437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P7AgEtBb3vOoQNSD1V/oSDnP6NsNXAYQ/9W8TOu1CYY=;
        b=tURL10HtuXAjkQGSa6fXu8Z7p+4pOSu8nWVPVI3RQb1kv4n2dcIopEjv5kbl7VwwH5
         nx4sL/A+x7s5TQF4nJJTtPpv342SoMUZHpko/uKp0JuHYCCzchjBfqUBvTDeFgestk2l
         iZjW6HMveMXI0CpLo7tDA1Sut4UaGjotyxKToJaeLR0SBbsx9qxdNsPjODpDfANSvySb
         E5DVBpXj241ZSWXQePkUuVPQ7ec1t4au8qHu/c2nxWnlHKjnwQm2FiY1Y3p0SfMVo1yu
         x8JJO+CqVg+X3tNGSapeoatASH6v2Hk9S/VVVSk6tHEUVBQ3CXp+kyXC4fC3OrirHHYc
         y74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869637; x=1756474437;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P7AgEtBb3vOoQNSD1V/oSDnP6NsNXAYQ/9W8TOu1CYY=;
        b=w7EBExWKWhKhIPHFZNy6WQsR/+i7mrGY4J8l+jfTyNhUxqlMXOR3Xglh8VNeTa3tMV
         mNp4THmNWB0og/NvtseF1Wyqw0BD8ggCkQts0q+Tp5GNemcUXibhd4MazlwPldfKOG9n
         dkxRFWFg8ifjhHUwuPunRGYX5JsaMSGyBi4ajYFd9vlS5XGpPvhgtzfzfv937hP+VdiZ
         onafCMSEVNqddvcx4wg4pLNlu0bEI0wdiLV+sb+Sv2QpUKSw1EUmoIGQ2T+IalUPbXGd
         ZFp0aQ3o9bZ7SK7mBZPHxhjLlpbcfUji16j5GL1Tjh2LIH8QhDEvSLBwd1koS/io60Vy
         58ZA==
X-Forwarded-Encrypted: i=1; AJvYcCVzgUFYs4AZqO+6MGO2Trn2HbMdXdPkUfkNLg3pvmDwOwS9lWWYFME7ZzpnJIrAWen4yMWgpJisM59p@vger.kernel.org
X-Gm-Message-State: AOJu0Yzun9LAlBzuwDAqy3zcv44i2PdnwzX+bi0uBM8cSnpUeVM2Mctw
	h4mSbecFZRABmLa+W7Ax+E6NDqVItJmmSrZRedz9PXTaXEeZaD8EgfwMbrz4Sbo1tcs=
X-Gm-Gg: ASbGnctdTDyIgibkyTMYiYH1fX2WPLBxzJO+IMExH+OmY4aCNx9950b82YBJFoWFZs+
	gYlFZXdgqffWOEZgdYQIwkVLPEU84XaWPIOpAPTu8qgg8edOC8gIUipDTLdBI8fFtZNI3ecWSDR
	1EQWdKj5gRDimO5UKqCJ6rWutuW10QF1pVbMf4+CKhqRDJKwXG2ftaBp9tEQOsjKoWxQhzoebqr
	7pemfOEthKE/JPDWqteN5TV2gUcyIDZz82H/u6Iz9k4H0RaWcXvUZDa6S7kFqD6oRKh9w8gvMna
	YvbstUQaz7kPaJF4JrHG08/dpqDVv0XuSID6SIUNPcX5sBc/bM3Abze+i8t1c1Hqm4MFA2oWvIK
	byzD0dWDs1JwPKT3f8ryaOv0QtHECpm7xUg==
X-Google-Smtp-Source: AGHT+IH/6VeQRa8ABUMDHkBjRuY41G6A4Z0+/t+uoy9NDpnb7Tsxehzo4TRN5bsoBM6c2KbSAs4ROQ==
X-Received: by 2002:a17:907:9405:b0:af9:5a1c:fee5 with SMTP id a640c23a62f3a-afe2874f3eemr157690666b.0.1755869637355;
        Fri, 22 Aug 2025 06:33:57 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded537f98sm606493066b.104.2025.08.22.06.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:33:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] arm64: tegra: Add default GIC address cells on Tegra132
Date: Fri, 22 Aug 2025 15:33:52 +0200
Message-ID: <20250822133351.312424-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1229; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=8gAmAJpykAypxXShgpXJ+YHQRn2sBo0ccaC3j3ZbunQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHG/v9O+jMlw2u+lyTYeKytKAxYifhGbf4k95
 00iTqY4ap+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxvwAKCRDBN2bmhouD
 16O0D/93HxloowY3QN3qZHFlsBmzqZMth34C9pAi+VZM9XMjoB6UtQdNVJ83jatRMwB2lsEDIp+
 G0zfARYpM2xfgl5ADjErn3Fwp8fFUhaEoRPHGt1esf/p9cZ0RTpMjijio/ksouWAS+nHp1QhnX2
 rbR2tAwyJXbvAKHTqf78P7XsxHxiwtMVaPRD5yFzUFAi3TmF0EtKNEnkQPT7Cw8IKFvSoBcFDfF
 MfSmIQMZvmbi2ArMYSHsGANPNn2UktVIfvwni+31QpnKdoZ/5vsOkUmHOAmQ9bYyQ9pFfHR72xo
 6xEEJJZGrdoSyz+PKNTZChbdqHxoIThck51F/d+o3QP6+mruqVZA6I/BIKcsunA8FDZlthATwED
 7mg9iIIrheMOr5v9xcO+0q7bIKdxD37BxsFFoOvGUjfTJ6SU2G7985kOkPBIAAPrKSsCEIuS7+E
 nuLPB0l0XPt/iBRtLU+wPBLxo4tTuxIuORbvKK6pCsv5brsXiGk51GxsSbRDTVgOw3iWsgjIPIv
 9WvjDPYJzEZXloKkxfwemXczbOsV3p5LADssqUZw814DMVwrTLvhab/U6HOfCEXfz0h3u9fk/IV
 I5lpP4u1nwBcdsRv5/BL26pOy+EP65b+hdUpqZ8VVwGKlxLyse/p/3BMgdrQ52AdkrPONcJ/DSe GbHm0UuD21AQP7A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  tegra132.dtsi:32.3-41: Warning (interrupt_map): /pcie@1003000:interrupt-map:
    Missing property '#address-cells' in node /interrupt-controller@50041000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 5bcccfef3f7f..93208eb72cb0 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -175,6 +175,7 @@ i2c-bus {
 
 	gic: interrupt-controller@50041000 {
 		compatible = "arm,cortex-a15-gic";
+		#address-cells = <0>;
 		#interrupt-cells = <3>;
 		interrupt-controller;
 		reg = <0x0 0x50041000 0x0 0x1000>,
-- 
2.48.1



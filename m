Return-Path: <devicetree+bounces-64020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0948B793F
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 16:26:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFA91B23DE2
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 14:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12EFE1BF6F1;
	Tue, 30 Apr 2024 14:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fv4aWUaK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C34D1BF6DC
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 14:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714486495; cv=none; b=FdQe+3uL1d7XcfzEtyDi+h2JmQAEIhx+0opseeVCjTFBnwpzgQlvpUzi0fkGiKiTp34/tdMmauXcJ+6L+eG/Ru0JfcvaFMNWf4OZAjqLAdKCoJUbHI40hN+XXwPcVmnD0KBWx2Q3zWMegQnQfA/6l7FTZZz0aaR0QdzqkwtlF8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714486495; c=relaxed/simple;
	bh=BMB+z9c1zfhOZlvqXHvsg89v/QWq0s4HCgmAlwaHots=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=usZnz/5mEqxPN1okcNRwTYTfAQTeM8bg86qkcU8F45QpYLBdfQsn8YzQZlUNwQiQCF2pA57BvjAt68y4y+qpvYgoc7Y40UNsdCMWUnO25jLNmXI5Rm/on/u/qC+HjTU6d1N7JLEgcBPNnryLpPuFVFMSAqKKmCFV3m76T+Ylv3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fv4aWUaK; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2de232989aaso69187841fa.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 07:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714486491; x=1715091291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jUVDGtf9QkAcRfngS/o++38b1IM12LgCsv7+0IqjJHk=;
        b=Fv4aWUaKbK+khIng1+xQxP2uyhPASQEP4Iq6ih9A6OEcSEtvplA4v+ColSVpky0QPj
         mtEhSs0Wlp/h2kaWM1psFA5xsjsLbMlY4gN+HRfl6z9nWgsnv2uhwgwE5d1tkd8BYnLr
         Vd8mZA1Ip0W1b9gKDS3R4SYWJ0JhpoQjG2R2aYLZaAfxJtajFThAoMLvFCVMTD99TI2j
         KwpSIMEdlp6c7KwCMbmmHFJCZ5EZhhkY15zQ2zNVCAXxHKQqm55lEDX3HmdvDQinMO+C
         1pCVdjbyv3OCntJCxekEVuSoak6l4QFvFScV7PSP6fdP29Z0HdGXInRwiE6z2tpcgfi/
         Quug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714486491; x=1715091291;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUVDGtf9QkAcRfngS/o++38b1IM12LgCsv7+0IqjJHk=;
        b=CUjlCvAfULonwwsf7vvtv3RdxfvzUvKD96lBr77XB7/n9/CKQnZIhSdeXmhHLI2E+q
         puhzeI3QVgp8U3NgoYF5vT1xDsYWIS18wzuDgy8o9N9a78LfpIgGzF2sCkiQ+MhZqhYz
         3QDEZ41+8XTYyTIRCGZ0bX1DeE+tqy/UguXASlnpwpDDG4VndvY0cFZhmsm4CuIbVjQj
         P3M7fYPg60DhVwcsO409xUBVc2C3x3HbciqeFiDW5W8tcrrZsm2NSqbma12EmHpabv/T
         6GiAq8eGABbEfVa/F8jB1l6256eOA1Rs2tqBV+orB2HZvToM97bONBQkoZrNlxOwIfiz
         SOxw==
X-Gm-Message-State: AOJu0Yys5HpYICcDOezk7Bq6CbmyC4QcSvXk9uOVueE9I8ALMlbk2BrQ
	LIIPMbrsrXl8yUTzgWNdwfvPQgYrz9Un7zTgUqrI2LPnzdkdKePhYawt5VqP6gg=
X-Google-Smtp-Source: AGHT+IFH+e1i2EkTrM5iUSZe3Re0sq92AVs5C4352oNgc8DcuUMjfPoN4eshBnWIIyKpbwdQMVCK8w==
X-Received: by 2002:a2e:780d:0:b0:2e0:b7d6:eaa5 with SMTP id t13-20020a2e780d000000b002e0b7d6eaa5mr2877492ljc.40.1714486490613;
        Tue, 30 Apr 2024 07:14:50 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:f162:7aca:a805:2c2f])
        by smtp.gmail.com with ESMTPSA id r10-20020a05600c458a00b0041bf3a716b9sm11593517wmo.34.2024.04.30.07.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 07:14:50 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v5 0/3] Enable UFS on gs101 / Pixel 6 (Oriole)
Date: Tue, 30 Apr 2024 15:14:42 +0100
Message-ID: <20240430141445.2688499-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.45.0.rc0.197.gbae5840b3b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Krzysztof,

This series contains the dts, dtsi that enables UFS on Pixel 6 (Oriole).
From v3 onwards it has been split into separate series as you requested.
v5 has been rebased on next-20240430, to avoid the conflicts with Andre's
USB enablement work that was recently queued.

Along with the various driver code UFS is now functional, the SKhynix
HN8T05BZGKX015 can be enumerated, partitions mounted etc.

UFS bindings in this series are proposed:
https://lore.kernel.org/linux-arm-kernel/20240426122004.2249178-1-peter.griffin@linaro.org/

* Clock cmu_hsi2 bindings used here are already queued by you
* UFS phy bindings used here are already queued by Vinod

kind regards,

Peter.

lore v4: https://lore.kernel.org/linux-kernel/20240429111537.2369227-4-peter.griffin@linaro.org/T/
lore v3: https://lore.kernel.org/lkml/20240426122004.2249178-1-peter.griffin@linaro.org/
lore v2: https://lore.kernel.org/linux-kernel/20240423205006.1785138-1-peter.griffin@linaro.org/
lore v1: https://lore.kernel.org/linux-clk/20240404122559.898930-1-peter.griffin@linaro.org/

Changes since v4:
 - Rebase on next-20240430
 - Drop '0x' from unit address (Krzysztof)

Changes since v3:
 - Fix unit address ordering in gs101.dtsi (Krzysztof)

Changes since v2:
 - Split into separate subsystem series
 - Split dts and dtsi patches (Krzysztof)

Changes since v1:
 - Collect up tags
 - fix google,gs101-hsi2-sysreg size (0x10000 not 0x1000) (Andre)
 - use GPIO defines in DT and add TODO pmic comment (Krzysztof)
 - Add sysreg clock to ufs node (Andre)

Peter Griffin (3):
  arm64: dts: exynos: gs101: Add the hsi2 sysreg node
  arm64: dts: exynos: gs101: Add ufs and ufs-phy dt nodes
  arm64: dts: exynos: gs101: enable ufs, phy on oriole & define ufs
    regulator

 .../boot/dts/exynos/google/gs101-oriole.dts   | 18 ++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  | 42 +++++++++++++++++++
 2 files changed, 60 insertions(+)

-- 
2.45.0.rc0.197.gbae5840b3b-goog



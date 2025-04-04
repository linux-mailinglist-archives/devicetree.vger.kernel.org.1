Return-Path: <devicetree+bounces-163124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C85A7B97D
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 11:02:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA0B2178E09
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 09:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FA31AE876;
	Fri,  4 Apr 2025 09:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="GmlLRHqU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E24519E97B
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 09:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743757287; cv=none; b=ehqs7Hr+982r0Vtf4f0vCEshjisERGluCOlZtaKYa9vTrrOqCR/1MpDeWxwYveoIdNBL9qMZRRAqhxi4QWxWVtndYOP5Lt5bfPcSuaGcClqLG1nRqV5cb3GHLKkb+VtJNxEWbhn3GW86TmsTmOmh/zIq68MYAJDt+VEOGETghiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743757287; c=relaxed/simple;
	bh=oMFXT7wDxJmhYbK2LVrzIZ9SDu54LMiMUroCgY/pOvo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YrlSVxLYna3oeIDgY2tNVOcOmrKf6P6MV1AEuVUONDl3pvoGdS1EwgM3kz+aEn4n8QqadBe9viGbFBZ+WaoHDjYqvQb7CoPcZ2ed0zDorpZxmWckqkKNDNFTl3QKuDBBzmsVLAWr05kwPahVt0bDLAgMqN38cYgIiPz2cmZqDto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=GmlLRHqU; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2A7083F887
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 09:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1743757274;
	bh=p2qZoCK71oV2fwf4XZQYjbzwqdq/m06Zg0K4kksLDZg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=GmlLRHqUutdHqPuBn7sFsyxs+4REd8sW+x4NAxZdVOELlKKLGYw3sxVuYHk6DXz8I
	 pRcxqTQV0XAMsCLq7fPIvXkT7zjQIZpdTkouR3LfRT5eXnvJSj5mVn5LpDyr4mnP3V
	 XYxD4rnqrEXLBgzY6sIGCMPCxo4BzAzTTTy2aJjQ+GIEsuuND9Vwti5cy7TEeK8oEW
	 h3djoXoe3stTC3Si7CFZZhn//dkUwToHAV9FF7mqyvyomg1u2+XUw4iCYWEi2slVM2
	 2M4xFPfuZNJ+DrxvZX8KENw4PmvDD5ecTSGKb+bBnmyiw91lB4eDHNL5wE7lun8t8V
	 Cy3FOkyJQRDwA==
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-43d08915f61so9652275e9.2
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 02:01:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743757270; x=1744362070;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p2qZoCK71oV2fwf4XZQYjbzwqdq/m06Zg0K4kksLDZg=;
        b=YIr4yPKhalDDih6mbrX1gD0CwUt/zkH9hS2tbcRlzZQgV7u1NxST7nhMSPyNzEaMAA
         T5grDFVXx0/nPruLu8yuFgaYXc+BhO+zc13jGQtCjAHc1pdcbLslaqaN/yK7PcvSkI2G
         MIqETDThf7fB/ZM4CvrQSHuCGDYJ7fFcr+sOY7pZp1/fJT22VvDAT3LclLY0PztZhjhV
         QFWG35rZQXs3LeFoMORmyK4BW0sLvkcuuOhdsUizwxjmysBI8ciRPmi/eyr9jn1/6dKI
         F4ukmHO+rmUgOD54x6GqDNW7FepXKnVOqPVUUiADQIu3t0czlVg9X1uULifi2T2oMpcP
         D/EA==
X-Forwarded-Encrypted: i=1; AJvYcCWDCsDTN/oBO7UWBVpyGiRx2ZiesYU+82w6mj8U/exyyaUhHVHYl/SmZSoUtmmzhpeEFmb+2NBQ/rdt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4zsGHyKzEfxY8+a5ZbsrSARykq31cfenrfsgT5YjYE9Lrs7YY
	33r/x8Hr9ioSg2Av37Rg9fjCQZoSnjHSqBDucgSjNIA0Ml1ikPwhds8GU33tX/WWnFEH7fAGIHI
	ZHIJzWZWnI3qZDNdlm3kTarsmW0RsBDTIH8/v4poXFWCpoka9YzUXzTTZ6ewLXR/1DV29/arADW
	w=
X-Gm-Gg: ASbGncsYNkPZSHd+N6AmkzGU1MRRXXJt+JV1Lvx7pTftOUXllwXvT6zlEHNKShMoNiO
	iotzTlaiG2qJjFhRRRuI29uIaQleNN++yS4A3i9MaHpQUC6T76dwjwHfaDIaoVpiac4GLR0uml6
	nEuE3x8Lye9qy1dca6KA8BdvusxruCPg5aTtBwMEg0rhUaglZbjWSb1wXbZLXPmk4fbkrcp9DQg
	FHovce1DuxQq89tNwYL8DZMF1U1Yo5h6S0f6ytyHSmj9llqJHzoPq+dDp1Tnj4b7l5Uw2AXHTxO
	wU1DzbmcaR2DD8vhlpW5EktWkIium1gLBYs/zJlOwjL8GMRHcYau9kP6X4m4
X-Received: by 2002:a05:600c:4513:b0:43c:fa3f:8e5d with SMTP id 5b1f17b1804b1-43ed0b5e246mr15971915e9.2.1743757270369;
        Fri, 04 Apr 2025 02:01:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzljYwBBG2flhsp4g06fLXYGNWjZnWdtzlqJrb2YqtEnZEwXUq1n7mizwccKsgCu4tf7h/sA==
X-Received: by 2002:a05:600c:4513:b0:43c:fa3f:8e5d with SMTP id 5b1f17b1804b1-43ed0b5e246mr15971565e9.2.1743757270049;
        Fri, 04 Apr 2025 02:01:10 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec1794efesm44078085e9.28.2025.04.04.02.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 02:01:09 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] HP EliteBook Ultra G1q support
Date: Fri,  4 Apr 2025 11:01:05 +0200
Message-ID: <20250404090108.3333211-1-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the HP EliteBook Ultra G1q 14" AI laptop.

Based on HWINFO64 and APCI tables, it seems to be the same HW as the
HP OmniBook X 14.

This is the first time I'm fiddling with device trees so this is likely not
correct :-|

[1] https://www.hp.com/us-en/shop/pdp/hp-elitebook-ultra-14-inch-g1q-notebook-ai-pc
[2] https://github.com/aarch64-laptops/build/pull/135

Juerg Haefliger (3):
  arm64: dts: qcom: x1e80100-hp-omnibook-x14: Create and include a dtsi
  arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook
    Ultra G1q
  dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q

 .../devicetree/bindings/arm/qcom.yaml         |    1 +
 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 .../qcom/x1e80100-hp-elitebook-ultra-g1q.dts  |   36 +
 .../dts/qcom/x1e80100-hp-omnibook-x14.dts     | 1554 +---------------
 .../dts/qcom/x1e80100-hp-omnibook-x14.dtsi    | 1557 +++++++++++++++++
 drivers/firmware/qcom/qcom_scm.c              |    1 +
 6 files changed, 1597 insertions(+), 1553 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dtsi

-- 
2.43.0



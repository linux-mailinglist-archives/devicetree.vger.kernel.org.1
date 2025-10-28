Return-Path: <devicetree+bounces-231915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAE9C12FAB
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EAB8585564
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 05:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D507B29E10B;
	Tue, 28 Oct 2025 05:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aMuHqPz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EE82EB10
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761629578; cv=none; b=fiLy7UHi926QOnF/jcqomQhJlN5e3Z9cg91vfjKSGTtY0I11BpFEN8vZAJfjKmavLiaIICYGAH2gKkSBaXqpsk8dBBQqKmK6ZY5Fpe1FS9IQjFk8M3lYTt4cUsPcXQaPX5vWZdHv7Rykun61OX9njw7UpdRSit8wxumsQbdjVGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761629578; c=relaxed/simple;
	bh=e6JmMMCtHtaaPFxfG7T73rKv++Cw8zq2s3Ldv1lkxiQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=qm6rThOSYJnDtp4FShSK+VKqEQQqSuOYBtKFUORTp3XEFrjoHZMy5lsK/TIFozGp+/JUxqfOFpqBTkJDlRv6k5KnyOyhdtHXdw7CxbjroJ8H5YbJ9Ez3gwcHedqQW/Dkl9lF4GI+4nakwCXRWeUXOG6826wYsR/mQro1HPNjX9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aMuHqPz6; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-34029c5beabso543029a91.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761629576; x=1762234376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rFRcv76ANZA3gzIrveFcs6ALPGGM1pUqXGSda8XF/1Q=;
        b=aMuHqPz6CWcjG0vd6+6xlV9jZj7ho8RS9LxTJF3PTcK4Lki4T5XIIBO8R6CEVjzAlz
         PIvxpdbHDuC2fDZ0XYduoWFPlZVt2GKZWOI18HN+/mLUGnPzloYpcJ/B/10lEWHv8V2U
         i/YSHrSVu7t0VeNw8vITlOeNcH9KBiS167Kmn8iLiYfCRGaPzwBM+PHLpJRzQ/VzJ40g
         pa/zAaojAOfb4ItYhnXUkn4AMsJdstIJFQJ6ManWbjTQ1mMiUXJjF280+QS+XC8f/tqL
         JMy/w7aLW3N2/SU9pceNT3z+WUDBuwF3++CKEstuhmbks6Ms5xO75nX4WMuA6hQ4pGxR
         DJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761629576; x=1762234376;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rFRcv76ANZA3gzIrveFcs6ALPGGM1pUqXGSda8XF/1Q=;
        b=ZRTDmUpb4AvNTsHsjp3TwbydP80YUuGKkhTJvY7Xrg07vyH25Udum8XBNtwudwoewg
         nF5mMoor+PQ1DPDD6SZTVr97ccZEYGsVnls9cuwLplZGoA3ucQkRz4drp0i1aLaFQ07v
         bjv9a3gfOmLzSwSOXKiz1rjuuK8XcIfOTOex8+gPmFpZtAEeA2M0Bn3WuS3sNSkMyNow
         9Hm3aizorktzLjMBTj9Sblwr2z18ZKb2AOTDjp0XHzN2fKvKpY27xaHxuuzBQt58JBTe
         2vxb1k9DezrA4fIq54oanKOmCs5NDgUQVwF7EiH5K3pFtXm3LvoyoRuhtdV/Lk9kooHL
         8CrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUR4wpn6GP6B7N8LkfrrQK1DeQZhpwnN39WUogFKnEVRwtWmUyAYRGhBPdrZpSLEwSEDxvo1tnb1Tx3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+YxOQH3eQFuDdTsGDPA7Mb8SUMYWvFMO/bGav5KYW1QBA3YoP
	9BdRawW4XhZM2yXaqDUpVp8jKBmXZWw8nkQLOh5Iql8yLCXmwMMR4c8x
X-Gm-Gg: ASbGnctOONdtvMsy/bUkWMb3JEHTVnA5rN95QaNy9Wrs5jrX4DrDDP0mvaplEQB1KuC
	ORnwNGkdg/uVye2qyNdrShadftWBVbcEyoB31+BPYiBd9SvQvZU2pi4HgwiCZxc/UdMs31fExye
	HBTKJlbC1s/mXLNlB/A99UGKVBb9Zd+alxGVDnp6ruIHNYb59TQKNP5c0R8UD968IAABWQzLj6s
	SiVUPyFVX/PQPvDVj532FsV26IOw4dqLBn+p6wos4Jz5wauOD8MU4mPwMzgLLtg1SHWqhdVgkeM
	lYgYtyIBY+iohCZf2XpzJlaYN03eHx6yHml9likYtCnrzm0wislAwRQFIaLo5s7XrbpLEgYy66K
	uhr1O+4U1GGIMMYNhTnjoFw0YfyXy0GeA5LYTTcH9uR+07MHZ52/rzBy+/q8hMNW/PIx+GVDkM0
	dwl8YObAGPfSG3khr2c64ghhC9pB5gAVMqlkba
X-Google-Smtp-Source: AGHT+IFG71VLpRXivUpjZ9QwxZssTUJUowz4hMMBFJiOjnkSAnrre/m7rTDb71KnYjEdyq1Byr4CKQ==
X-Received: by 2002:a17:90b:1350:b0:33f:ebeb:d7ef with SMTP id 98e67ed59e1d1-34027c19552mr2900601a91.35.1761629576469;
        Mon, 27 Oct 2025 22:32:56 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed70645fsm10649477a91.3.2025.10.27.22.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 22:32:56 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v4 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC support 
Date: Tue, 28 Oct 2025 11:02:46 +0530
Message-Id: <20251028053248.723560-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

This patch series adds device tree binding and board support for the
Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
QCS615 SoC.

The first patch introduces the DT binding entry for the Talos EVK
SMARC board, and the second patch adds the corresponding DTS
files for the platform.

Note:
USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
the SoM, which is purely a hardware controlled as USB-ID and USB-VBUS
is not connected the switching cannot be handled from SW.
Hence from SW Host-only mode is supported on Linux boot up.

Changes in v4:
 - Updated product name to full form per Krzysztof’s feedback in
   dt-binding comment.
 - Hook up the ADV7535 DSI-to-HDMI bridge to base DTS file.
 - Add DP connector node and MDSS DisplayPort controller.
 - Added USB note in the cover letter for maintainers' awareness.

Changes in v3:
 - Addressed comments from Dmitry regarding USB1 `dr_mode` and 
   added a DTS comment.
 - No functional change in bindings file.

Changes in v2:
 - Renamed compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
 - Merged enum entry with existing `qcs615-ride` block (Krzysztof)
 - Fixed subject and commit message to use imperative mood.

Thanks,
Sudarshan

Sudarshan Shetty (2):
  dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
  arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 442 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos-evk.dts        | 134 ++++++
 4 files changed, 578 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

-- 
2.34.1



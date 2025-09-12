Return-Path: <devicetree+bounces-216637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF661B55796
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 22:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA9FD3B55DD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 20:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC67D2D0C60;
	Fri, 12 Sep 2025 20:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lZT/DteN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A91322097
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757708855; cv=none; b=f0i0P2D1SUrfpbOOQEn35Odk46zBY59zy2721sPug4qlZbCmuiGMP2hTnT3oQ8eLwHK1jn85TSzIjzDgWM7cU/t515LURREUXRF+r45jHnQiSpCIDrG5AsboXsAGPjx7QrUSpvbuWqJFLQl7J73rUVr0IPE8k+gY1KAQVMqX6NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757708855; c=relaxed/simple;
	bh=dujsJO2u3jBI2Q1VgAxUbE/yO1TtRPjWotq8eGPgRXM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=liv2RJ74jhHwwlckCUfGg4JWraar8u13Se5xFZUCjtR6ddf78hv1VujRW7nqKsnm6Qz7vnFWpxAWebnfZbkoGvm8588ehbda9KAxhBTtUOMBSzctL/iyKoNU7fTxJW+DAWKq4kNm1d+XPv7sIMMU7/NLAMPb7BzyBKfGMp7Gcxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lZT/DteN; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b54b3cafdcaso545379a12.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 13:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757708853; x=1758313653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SwyolwhQDrgiO4NYVzDiwfA3KI0SBXDSnFTG9Vkn+vE=;
        b=lZT/DteNf138LYyq0KULG1k+bYo3jjp+AzjRR/ytB3MTzQHoRk4bg9OZhFt8nSASni
         tiJhOF6I+AggZn64ZCVYNHjOumBpgX78KleU40tuIyZqMr3HyUJCBvy/cn5o4+cEI414
         +jaImcvq1u4AafMU4NUgjrt2rM94UCsP9/9SZx+Li6MrnaYvPuZM9o9fB2CzQlhGoVxB
         KPXzJe2KYcOqKDNAp2xATSSxdmiB0yEA3+ox9Q8vDYGY3g1kF1Ac9NWWhs1qFf1vuM2d
         FuwA3WrbfG4l22COcmWo0TPNG2vmj2+YgFDtSXt7KOKPBd+8bVKjYeOzLLJ772+Mh2+o
         VMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757708853; x=1758313653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SwyolwhQDrgiO4NYVzDiwfA3KI0SBXDSnFTG9Vkn+vE=;
        b=bqXoMHiSt0Qmm5VG/SCz0mMSno5Ia/f0vBv3adVOgwIcgS0+63rlIWiGzFkHlUztcu
         nMO1WCMNIBGNoZYaOIoFeF8Ym+ugb45vls4p5ploMnyQ+698Me7QqSWy0CsuhSNM3p+p
         gINr+FlhB52Qo5qH+TxbdSssWJXKaOWyUD1oGNf/DrgbAwGCSNbfFFiJqfnQM34CWd0r
         sVa+XGepSs2XFZjZzHpRcPta8TJcfnc45W1l00NrEPfX+HbY2tmpCKsQb2O8WljHhmtq
         kFzkoR0eluLt+YAT/luAj6dEviRK7foVnqnKEwOq/xBXKtZlRirmvdzzmUQxLxplDvpC
         iE3w==
X-Forwarded-Encrypted: i=1; AJvYcCUd/3jYCuObirRqmeJXoVAZor30YpdLqoUa3sLHYdDIzLfmsUTMwFQf3yJex8jAUxCnLvYBHmc/YiIy@vger.kernel.org
X-Gm-Message-State: AOJu0YwVOg8L7VOAKBSCl4VDucyqXqMpLVsoPGV8xh/ebje8ut7GYoOL
	BK05w3V1JATR39vXv+1W3K6roP9r1vPrgxF012Uh/bmtMeKdXKsIyLW5
X-Gm-Gg: ASbGnctldbBaPSFZC2GIHQfuJHGOH1GONWa9ePOPC3ZqRhBBKyZrUa/PkPgmP1Xv7Td
	4E2emYVUAVtthFEK6V/J2A836fovk97e0+BPJoz3Orzk7ylyTcBcELa5/p7eBo/WUiVoTuqqDlJ
	BbHMrZWUBaV/mtDL9KgtKO9mSPNo0YGb3oyuZqyTjk7YSkYdTXgC2L81NkNkyPJ8pYG0LPrgYnw
	AHUAlXfWLxkG05l7CTACHyaiCzBnFYSROWmAIZ5UmlH0gur/QF7qi1Pp9C6ZgzFIIG2eG5FyEiC
	Au4OlYMbjNKF2zW70COY5kIQJ8QInMREReLHsv+YVXdtPBeSNC8fwkh+tj3nCHmPqkhebc+MqX2
	DPf8Y3P8YeYFykFh2U0M=
X-Google-Smtp-Source: AGHT+IFheXSdIhdPEt8rS6r+83Oefz7TiZIzXprM2ltNs7ZL4vZRxlqmCP33DNNES5cygvIkNHRs3w==
X-Received: by 2002:a05:6a20:734c:b0:259:27fa:414e with SMTP id adf61e73a8af0-2602c050274mr5177410637.47.1757708853368;
        Fri, 12 Sep 2025 13:27:33 -0700 (PDT)
Received: from archlinux ([152.245.61.23])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a32ea462sm5603995a12.0.2025.09.12.13.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 13:27:32 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
Subject: [PATCH v9 0/1] arm64: dts: qcom: add initial support for Samsung Galaxy S22
Date: Fri, 12 Sep 2025 20:25:56 +0000
Message-ID: <20250912202603.7312-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Changes in v9:
- Change 'vph-pwr-regulator' to 'regulator-vph-pwr'

Changes in v8:
- Rebase on 'arm64: dts: qcom: sm8450: Flatten usb controller node'
- Use real name for sign-offs
- Remove device tree binding patch as it's already in the tree, merged by
 Bjorn

Changes in v7:
- Document the reserved GPIO pins, remove pin 50 as it does not
 need to be reserved
- Clarify the phone isn't limited to USB 2.0 but rather USB 3.0
 isn't implemented yet
- Add a newline before every 'status' node

Changes in v6:
- Remove debug features (bootargs, etc) that slipped in the v5 DTS
- Format and organize nodes correctly based on existing DTS, 
 move "status = "okay";" to the bottom always
- Solve "ddr_device_type" and "qcom,rmtfs-mem" warnings, the rest are
 from existing SoC .dtsi
- Disable buttons, ufs and other features for later revision

Changes in v5:
- Properly format the thread

Changes in v4:
- Try to properly format the thread

Changes in v3:
- Removed unnecessary initrd start and end addresses
- Make sure r0q is in right order on Makefile
- Properly format memory addresses
- Set r0q to the correct, alphabetical order in documents

Changes in v2:
- Attempt to format the patchset thread correctly

Eric Gonçalves (1):
  arm64: dts: qcom: add initial support for Samsung Galaxy S22

 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 145 ++++++++++++++++++
 2 files changed, 146 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts

-- 
2.50.1



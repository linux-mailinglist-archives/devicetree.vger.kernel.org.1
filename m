Return-Path: <devicetree+bounces-106296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8FE989B88
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C64D281C65
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 07:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BAB1155346;
	Mon, 30 Sep 2024 07:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bxVM7UYz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E48E21105
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 07:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727681599; cv=none; b=UrUhpMN9a936gAp6hCY3NqleOIR6fLOYXdPbJXncFv1xS5hRNSVwr2yPHEGLR+IIQZA1tCNK+L5+k8dBgbcPFKIxTq6hvBKDasATXxCNipq5AMUubJiJkXzbOu+qUEYmWHkp1RjOZ8i/UUZ93kCzWsPOIB6XY7X9lha1gYbErQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727681599; c=relaxed/simple;
	bh=eKFRHgE+Xq12idSXMHS6N9EQTVjIM804/Gsn3BwexZM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GhG9tiZwFAOceZxM9TYzK04kNRfUE68xlznfrZpEhC5rNkty58Ic3+pNx5ZBMo9doeBUvgJmhL/j5uHQZv2bz+jPRZxSm4vEp4wpdRpqI9pW6gGKV1l1v3B7AA7CyHjvlCJf+7szPiM2ghGTqe0P6u7MK0cdg6pBM9o2KO4kthg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bxVM7UYz; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37cdbdbbb1cso1058173f8f.3
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 00:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727681596; x=1728286396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMxWfNknfTUB6R3cj38FCN6jzzF7wQ0JDnIAXp4G6U4=;
        b=bxVM7UYzEHS2afWxTJHYG5PhIGxBReqrCtpaG0p20uRf5wyLifPK0lwcumstJsdcfg
         X7qOYYZkT+VsRsrVKyLV4DOgHYeHyaB7NLV7bX0bm7OdSfz1L0011G21AagZCINKPpYi
         +UrDRqciAIrCNYjZqJNh7U09uCRCxIXNbotS2kTcpz9dShdWyvWmsWvS6AN617VZnzPZ
         JdqjMJpnEAkLsQKz6x3b0X4mNiZ4aBG5aHPx4HX09dFLRtJHiE4uFHP6/u/0jhLUF7ag
         a5tNHw2czjEnPHL7epYW0dQncSVU4cL5roVKjiLnT8+A4LXQRVJSK4VagvSrq9V1UZLs
         4PIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727681596; x=1728286396;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMxWfNknfTUB6R3cj38FCN6jzzF7wQ0JDnIAXp4G6U4=;
        b=R0IILoAGYvDTfnqalBOEyAIIkRPjN+NU+a2aXvf9QCShO5mTchweJTexiJVRXT/504
         0qxCEdqSpsXvqCFWBwt0VtGUCEG2F6IUDI2b8dPr7pFS6OJmiCw2iFIfktfWOQpNMlIR
         FuVlIBi0AFH0AdKpOCw5RmX3iMu7TGJw/uzARt8exhgjF022+f8LLQ763lJdvnFvgwZB
         ijKOvH38P/g+lWjzL+LKenWhGN8ISW2HmTjOCH0Y2txJkb0lnV64ww79v8vFMEDmAMBK
         ZeiP3M+KGYGrlGacSnEqsVktN/VJDNMwQLGC6/FwNwflZGiBj5OpHUaPNnHVZdM3LvEe
         H6SA==
X-Gm-Message-State: AOJu0YwnZ9Lr+zSQWhEjENoDiosN/sTLT9A6smaL70wb7KytmCGaAzEm
	B48KrqyQC3V9xnEkPb3wcD3k1/tMZ2D7F7b7lgqQRITPSewguhC+hzwPF3o9GIc=
X-Google-Smtp-Source: AGHT+IG08Xn41kdJXVDyOwG0Ubca/JKXkgQCPYQB7GsDOaOrUQRC0CxYE3vKmZJ4OmxV7/sBS0XcIA==
X-Received: by 2002:a5d:4d06:0:b0:37c:d0f2:baaf with SMTP id ffacd0b85a97d-37cd5a8075amr5976671f8f.13.1727681595329;
        Mon, 30 Sep 2024 00:33:15 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd5730ecasm8312047f8f.81.2024.09.30.00.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 00:33:14 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
References: <20240916-topic-amlogic-arm32-upstream-bindings-fixes-v2-0-0b20ed4f0571@linaro.org>
Subject: Re: [PATCH v2 00/11] ARM: dts: amlogic: first easy dtbs fixes
Message-Id: <172768159408.3724290.11483411183659525746.b4-ty@linaro.org>
Date: Mon, 30 Sep 2024 09:33:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

Hi,

On Mon, 16 Sep 2024 10:08:29 +0200, Neil Armstrong wrote:
> This is the easy fixes to start and fully document the ARM Amlogic
> Device Trees, remaining work includes:
> - amlogic,meson-hhi-sysctrl:
> https://git.codelinaro.org/neil.armstrong/linux/-/commit/1be8f8c67e5b83fa4069ccbcfa80d0614f668a65
> - pinctrl: Unevaluated properties are not allowed ('reg', 'reg' were unexpected)
> https://git.codelinaro.org/neil.armstrong/linux/-/commit/8b408ad0781b4eb28a86aa04be136bc04ef73f0c
> https://git.codelinaro.org/neil.armstrong/linux/-/commit/b6e9df5a7a642ee757e3aa0c84236338151d9f6d
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.13/arm-dt)

[01/11] ARM: dts: amlogic: meson6: fix clk81 node name
        https://git.kernel.org/amlogic/c/78233621aca725ef851c6c2fdace1c169680f94d
[02/11] ARM: dts: amlogic: meson8: fix soc thermal-zone node name
        https://git.kernel.org/amlogic/c/285d2d647f4dedb15f015d9fa5430defb9a35897
[03/11] ARM: dts: amlogic: meson8: fix ao_arc_sram node name
        https://git.kernel.org/amlogic/c/e1d42e116770445e11a4062e28f23da70ea63d83
[04/11] ARM: dts: amlogic: meson6: remove support for ATV1200 board
        https://git.kernel.org/amlogic/c/e2a3f11ae11c9f9ee780bf49f00a69f12dce3529
[05/11] ARM: dts: amlogic: meson8b-odroidc1: fix invalid reset-gpio
        https://git.kernel.org/amlogic/c/6c180982d08b79271271e138399b68d2456c65f2
[06/11] ARM: dts: amlogic: fix /memory node name
        https://git.kernel.org/amlogic/c/7947fd2d350e6057e7514459c7ee2db39d1096a2
[07/11] ARM: dts: amlogic: meson8: use correct pinctrl bank node name
        https://git.kernel.org/amlogic/c/c3806b25c0f3b95a7f6e6edc23f93ff293173bfa
[08/11] ARM: dts: amlogic: add missing phy-mode in ethmac node
        https://git.kernel.org/amlogic/c/e4940a57791d6accf95e822c10807af18e8e3c7d
[09/11] ARM: dts: amlogic: meson8-minix-neo-x8: fix invalid pnictrl-names
        https://git.kernel.org/amlogic/c/bf1f647c3af4b83683ba31b1ed359aa2cf5f6aed
[10/11] ARM: dts: amlogic: meson8b-ec100: add missing clocks property in sound card
        https://git.kernel.org/amlogic/c/ecb81fe2ffde2b925e46e4d02816a8292a7a3229
[11/11] ARM: dts: amlogic: meson8b-ec100: add missing gpio-line-names entry
        https://git.kernel.org/amlogic/c/9d8706ba5abe9cd2b7e326dc51bc2bbc7c0ab9fa

These changes has been applied on the intermediate git tree [1].

The v6.13/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil



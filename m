Return-Path: <devicetree+bounces-147092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8974A373DB
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 12:00:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEE793AFB6A
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 10:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 670F718E35D;
	Sun, 16 Feb 2025 10:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BoKTQZBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8970618DB21
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 10:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739703591; cv=none; b=thDuXFNhG368yKTJ8p6vxd91FTeG1Z6mova0N0iNBrg6MFBgBRthoGcddhno6vRmStbEKGKkqqHXbgvgiU0mxhjJ4ZYktnS26RTsDDK6AWAdSD+y/8VJh9/QUoyHTNk0I8VIsmhBIxKDKUJRP+PgAu1CBJ4etT8tWZizrlYiSq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739703591; c=relaxed/simple;
	bh=Tplj+Tt8O0+ujUEM8C8Kdrv030eW3cyPPKhRugB/xgI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qqB2J4/kK25x/R3xs8bRhjdgoPg+6D6ddI/PyS2PwBnlxQtb5C+sSPOXlkdVRIGkq8LS6l2tloLoQJGQYQrmo4zmRUls/rphS204ccMNfdjOUocOYId02WIgJlWL/lxrjvUrZR+PW+r5z5XVRiVIppV6dCMLLpocCRjeciOpuUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BoKTQZBD; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abb4944fa73so22090966b.3
        for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 02:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739703588; x=1740308388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z+isfF1av2MEN7dZuPePQNIg6D59LIEPS+5Xwxezxio=;
        b=BoKTQZBDP9UYQHGw7Mg8MdqRHEMUzhRChpjsKd8P4wOKmaoAgrXD4naVB0/xEvcL4n
         35oih7HNBJGUe7RHLcwdc58tl5QXFH3Pa0VCy3IIDyfJSBcqRw0tc+L2i5QoTCAr3Zgq
         iHQbQaAxaeXowXMh9Bgu/RR3wSIB3CSr0YH8PswEJK8FrJ8Bmu0Ber7jxOpHssxWxCeB
         2TsPXSSyswLjknZFJMPspWCg4LcZd8OjOJAHR2O79HccP2ubVSAxaKgPG46nkG/eWpdO
         JLge8CzJch4zV0zFuurzccPZFo1KW59wdyb/TEfROZJj3EH1yykfGubq+xyZlOiAcm8R
         QBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739703588; x=1740308388;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+isfF1av2MEN7dZuPePQNIg6D59LIEPS+5Xwxezxio=;
        b=J6yde8pW2KDCkqSjShw1QzTN2Upuu5FvI6XXzM5gdEOdLS3u3S0+yzj47zaixwrlpQ
         KuPlKUvqvITobahnXF1II5RHUwbPL606MiICWu3IpQb50GUDj3Js6SpoVxklnT/0smfO
         007S5vq0sTQVKiSoQobi3c8x9SmRcDcpmOqs1BXI/ILYaww7GE3S6xn3PGkW4vS4Irnc
         zjjDMVbXwvLKX40XfE8irclV3AM0kCGwfBXxFNHbjJa8gQ0mRfi2DaPdF57sZO5I+Cs+
         kst7Jh851taGc7Z8BSqPThfnVQjXwDLOKEzdLipmQMngHEsyv/ASoJmyrGfokoUyofId
         AmdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLPKOLDfqF7inS0Chy6m+eDJhFcxq/y53xWc4Um8PPbTWB2N4YX9Xj2BaB8VCCwRxJu4c+P9YWdQGB@vger.kernel.org
X-Gm-Message-State: AOJu0YxyHlb00wE4DA23Gu+4ksOW6JuCI9i2DZIP3H0vKX/+1ZiHQkJx
	BjLnf8FxqlGJ1bIIyXaDIXVl1DHavHWwYOENZLFWFtXTDqbcRdOfhvQRSR9nYzA=
X-Gm-Gg: ASbGncuLSXgFmtQ6s2K5vsfSQ9WbggdE5VKOB3L4qm13ojCuC6XUg/iUCll8svjVV6q
	uJLFEjDRmzn1VNwAGCtbvmbCJK3Ls6lEFvjQLR3wGCbXHcMJsJzzRDhKAsekLGzFKpwI1woIGkg
	TBeE+bpqP3YwuE6Xf9hM0vHre+RenXR3VI00iTJzvAfaeC978tfw1mquA41902ERwLMmyJfGGVS
	7LP+3L+xc9KSjCIY3wqPmUIZ5gn3ykT7M3o9wsII7yU88NfgqgEgoMPPH0HuVlx30SyWlC272TP
	LD1gA/UrK8PUhxIO5sNPYyH/OM4mLRM=
X-Google-Smtp-Source: AGHT+IFXNLvXjNtIwPOLaCkCItusmH2cRIwO8DowYwkSiG5W1dJqPaqeLLtJQtE9GmDO3bjyfv9zLQ==
X-Received: by 2002:a17:907:d8b:b0:aa6:6792:8bce with SMTP id a640c23a62f3a-abb709319d6mr218340366b.3.1739703587756;
        Sun, 16 Feb 2025 02:59:47 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb6f13b11esm310849266b.71.2025.02.16.02.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Feb 2025 02:59:47 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Jassi Brar <jassisinghbrar@gmail.com>
In-Reply-To: <20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org>
References: <20250207-gs101-acpm-dt-v4-0-230ba8663a2d@linaro.org>
Subject: Re: [PATCH v4 0/4] arm64: exynos: gs101: add ACPM related nodes
Message-Id: <173970358595.40124.3478053371340167838.b4-ty@linaro.org>
Date: Sun, 16 Feb 2025 11:59:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 07 Feb 2025 15:56:42 +0000, Tudor Ambarus wrote:
> Define SRAM, mailbox and ACPM protocol in device tree.
> Enable the mailbox and ACPM protocol in defconfig.
> 
> Bindings for google,gs101-acpm-ipc are proposed at:
> Link: https://lore.kernel.org/linux-samsung-soc/20250207-gs101-acpm-v7-0-ffd7b2fb15ae@linaro.org/T/#mb557ee342de628b1a8e462d4fb7c3ac6eb8be4e4
> 
> Changes in v4:
> - rebase on top of v6.14-rc1.
> - describe in the cover letter where are the ACPM bindings.
> - Link to v3: https://lore.kernel.org/r/20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: exynos: gs101: add SRAM node
      https://git.kernel.org/krzk/linux/c/48e7821b2690428a40d16567b2fd3784591f36b3
[2/4] arm64: dts: exynos: gs101: add AP to APM mailbox node
      https://git.kernel.org/krzk/linux/c/23159ccf60026f9c510bcc422f75b2a74af79f20
[3/4] arm64: dts: exynos: gs101: add ACPM protocol node
      https://git.kernel.org/krzk/linux/c/f64fdd3c592dfb45d9c2be4b2506230467ebd27a
[4/4] arm64: defconfig: enable ACPM protocol and Exynos mailbox
      https://git.kernel.org/krzk/linux/c/8ba2c48394d4f9291d2fa3e108bbb192ac0e5f32

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



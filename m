Return-Path: <devicetree+bounces-111000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1762E99C86B
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:14:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF749287716
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71DF51AAE0C;
	Mon, 14 Oct 2024 11:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="icQXQsub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E941AA796
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904276; cv=none; b=OaN3+DOHWdpMlXcFRVPP7o6X/cD9hoGUr+/dPAFQ7l7J4ovPSc4EEeiD1Rdw3Z9aQkDVdtXJ/AQlK7thc06kZ4mLtP2zXd8+4idHa+6DAps4KDexNxbTKQaIRd06IntZAsCzE+5bbcD0vHe1BiUPVGFn8FR6/siJOopRFBWs2tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904276; c=relaxed/simple;
	bh=O8EhznhD36RzxMNngjwR0aI1e6ftHhCTZYO2V1KUtOQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VjS4o21aOfRMbt3hl0VrOqNq3424kodmEZ4E5s7vIQY6JFNo5ScBkHLRSnpOheSrLDAA83bCMAWRNehNB9uarrdyL3xYXMxQJH+1ubE8lA/Yr9n2SjaFNHs1EcfAnOwttHiPR4J9P/bKSG4UC8Rv7oTt0k/FVbZX7TZPQ2RUj9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=icQXQsub; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20c8b557f91so31205725ad.2
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728904273; x=1729509073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3CTAyHzEHHpOjEdNe7fNi+ftJGbt7ANQ1A4KOmzN7Kk=;
        b=icQXQsubvyMfPEmYR0M4rCiiImbtoVbcYe8TfmZa/JUsCzPJ/HTyFgGw/vUS+/2GRv
         CwPNo8ZiYA9WtG63UB+QRU9I0MP3+R1OvjFYb5qNAUWmtzEXNAArpZcLdAw39+iY8Dv8
         yH7d4XQyOYccGoV31iQPkUsPXUgXxHcAU7cTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904273; x=1729509073;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3CTAyHzEHHpOjEdNe7fNi+ftJGbt7ANQ1A4KOmzN7Kk=;
        b=GS/MOtm/LztjCduyfjqaZDmIq/9u5RSg+y8PceyeEz4e7f47YL0IDUMyD1i92MPM2w
         7Fcf7XbDMAR2wKJHCHpSyVGeAbZNlcLKBslyalp1Q+7KUdVdSL8PVSU/02jjqWaJCuOn
         fzjlpFm/KfPDVFwUnPwNrrcrsCvIHszKZTaMV3d4CD+WgNeRRX+M9411xO5jGzE/+ErE
         pvFJEnClT44eebu5jdsanW2vFKfrjkAssw/pgDBA9DCfBT80CNmBzpPKbEkLoUYSYGqD
         wDmVt2PMIe9DQvR2rYMTceu0TNXYOPrgCg5zSgeQQ9LkEPC4ysaRGLbKo94P8hbfg6c/
         NCBg==
X-Forwarded-Encrypted: i=1; AJvYcCXRCwtj9vWF9asI81s4D1ww89mLMk60Q4QC7pOytrXbCg4LlYZXEbOwoUJ77qCR5OfWrk+B98WuKwhc@vger.kernel.org
X-Gm-Message-State: AOJu0YxPB7fOHR4qC+z1dk/pse6bIDo4qxklGEb97eZ8/W6/+f4jztZk
	4IGz8C27slIx/qFOgR4MlAMrt4RkZDUJacfUlBGyXrt4/c6Vs5h4wTsirZvtIw==
X-Google-Smtp-Source: AGHT+IGMbAPex2yYtCXEQkvLu1sqjspeL0uhCNoZZMu4GbeMk0mCEmE8tfwGUS5I9FEbgBd/vj/Ueg==
X-Received: by 2002:a17:902:e845:b0:20c:7409:bd00 with SMTP id d9443c01a7336-20ca1429a4cmr162274825ad.5.1728904272992;
        Mon, 14 Oct 2024 04:11:12 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:4907:d52a:1a1a:58d0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc3e6fcsm63858285ad.118.2024.10.14.04.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:11:12 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 0/9] Add platform supports to MediaTek MT8188 SoC (part 2)
Date: Mon, 14 Oct 2024 19:09:22 +0800
Message-ID: <20241014111053.2294519-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Angelo and Matthias,

I'm re-sending this v4 series to hotfix a bug in the patch that adds
vdosys1 display nodes, as suggested in this [link].

Note that the previous [v3] series is in v6.12-next/dts64, so please
drop that series and reapply this v4 instead.

Sorry for causing any inconvenience.

[link]: https://lore.kernel.org/all/40ce7287-7fed-4670-b16b-695c36535661@collabora.com/
[v1]: https://lore.kernel.org/all/20241002114614.847553-1-fshao@chromium.org/
[v2]: https://lore.kernel.org/all/20241003070139.1461472-1-fshao@chromium.org/
[v3]: https://lore.kernel.org/all/20241004081218.55962-1-fshao@chromium.org/

Regards,
Fei

Changes in v4:
- Squash following patch to update MERGE alias IDs from 0-4 to 1-5:
  https://lore.kernel.org/all/20241014094622.1720289-1-fshao@chromium.org/

Changes in v3:
- add the secondary MIPI DSI

Changes in v2:
- add linux,pci-domain to PCIe node
- add power domain to PCIe PHY node

Fei Shao (9):
  arm64: dts: mediatek: mt8188: Assign GCE aliases
  arm64: dts: mediatek: mt8188: Add PCIe nodes
  arm64: dts: mediatek: mt8188: Add MIPI DSI nodes
  arm64: dts: mediatek: mt8188: Add video decoder and encoder nodes
  arm64: dts: mediatek: mt8188: Add JPEG decoder and encoder nodes
  arm64: dts: mediatek: mt8188: Add display nodes for vdosys0
  arm64: dts: mediatek: mt8188: Add display nodes for vdosys1
  arm64: dts: mediatek: mt8188: Add DP-INTF nodes
  arm64: dts: mediatek: mt8188: Add eDP and DP TX nodes

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 668 +++++++++++++++++++++++
 1 file changed, 668 insertions(+)

-- 
2.47.0.rc1.288.g06298d1525-goog



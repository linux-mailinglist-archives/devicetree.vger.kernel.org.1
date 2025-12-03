Return-Path: <devicetree+bounces-243841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 724D6C9DB4A
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6568D4E0292
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5349B26F478;
	Wed,  3 Dec 2025 04:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FbGqoE90"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8519326ED2B
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734745; cv=none; b=QVmzqmHcVUTr8XUzPQ7AovNOX49RbuzCrQd1hsftORYC3BvSsqpiNMKtGbE0hIsDWmd4usPIy1ptafuNenZ7nWliAuSC2p2CMK4tF8UV9l+7zaZqA4D8uhwCF1KMAucA+VKdHdBFo362Ra5sGm9id5wp98l6rgUvkl4X/rdTtus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734745; c=relaxed/simple;
	bh=vtlK0ZhaxSVXO9xNTREVYiPCDU6CowvtSes4xTee6Zk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=avOYRgv20FlnijBwnl10gwJAtXT44oaLn+pp2jB01sj77zgNIjb49V49oqRXDCfv5/p9Z+nMNJW//6k/cu/NGX6/kkjPUjIYLvy/303C1pfxyuDAbrtMNtCX/oxb/1NN9ZSWkoZUK6HTF/zgbBik8gSPEIW2k3sBibdcBPBcV1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FbGqoE90; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-37b8f270a3dso7676611fa.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734742; x=1765339542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AauXa/Y27Mbhc+rfU8RtO1F/i06XMMTsp7zJqho7aGU=;
        b=FbGqoE90M+Pqqs/WZRd67z1odG1E6ztWufmgn1Lubu2OYeD9rKPK2kE2beEHysQFuX
         BvHO51ALxwnCIUa9UQks5sRg97HE4Fc+BIWI0rpU12xX63CfELO2p41teJLn9KEDFR7P
         s3VdsmymhBM3pCJgwBZtoW9emolncXhOKl/AKOZGwtynrq20tZM1f4BciDZzvDMeW+Hz
         jvpyouESOwv8zaz7xiQDfsnBzS/tc3vBuUJJaFp0cuOnRr6WErO+ZAZy4A7On/XtJINd
         hnabDLzr0MGUNjTRjGazIk/3g7G5OFemVwQExCEEU7POIHUrg05rHak1ofE7JhCF6kwh
         uAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734742; x=1765339542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AauXa/Y27Mbhc+rfU8RtO1F/i06XMMTsp7zJqho7aGU=;
        b=BZWZW0+SRagMPMrFPBeuqVExrlQn8+cIQzrvHrQAzAvIc5r5Q59Jkn9S0xygDSZb/6
         b0+msld1RAoMJOzpdXoAOsZME0xbx4bMPmmfDr7i6gsxgqWabms1Cek0Tpblg2KN38yI
         nr7Rw9MBYF+FOhVATnCrFtObI5dHVyDbrIIH23mtp8GFc5Du9XHsVdog8rp792Z78SHs
         tUz02ZWoQ7ihn9cK6giYln5134TA7vvNAEexzULU8+Hx3p80HJxLNi2v4ETBOSdugrXN
         Oru/l3/xPQiBJrNT0y6R42fwSrFE6xqjYHaxmuO+E9awqeP8l6nFFxb7ABQiUuG97ACg
         1pkw==
X-Forwarded-Encrypted: i=1; AJvYcCXvsPKhUIEAOXDllQNAsIr4RhjbPsxKdZiIPDuNYU4hGRMFVSeJK7Hqm9s8DGs0yeDP6CgCJOwFATNe@vger.kernel.org
X-Gm-Message-State: AOJu0YyDNxXxFMfkGGwTD92bxF9l78nQ3cd1C3HA/eJRG/Aiyi5kFJR8
	fEieMw7g29QLQlZz0Ol56XlWf0Z/ZGRP96PwTHU+H29jI5mMGVBH1xVbEWgGWLkpUhg=
X-Gm-Gg: ASbGncvdgowUQzMazdu0OLd0OAvlw6SpKgiMBhxnm5DLrYW4Jh5zKuplmBuJe8vrjc7
	zVy8CoXIwysBe1q+n2poZSSXKBv/Xs0AY5FUKT3Wm+6QbYmMV7adOM/i7Yb2sywoBYKCHbQPH1T
	qDf8kH+U/0e2yPVH6/HwJKy/SxJyB7KC6WY/eNt/QuiKBg0sjmdwHXbpzgyl8Ibo7B0gULvU0ry
	bdiB9WJO6M7OK00QBtYNU3YHAp0tabpNmdO/e2/JqvdIGO6/yByk5Fvf6hadJjbfAwhf7AXXWQX
	E09x6ofk8XulgQah+8X1NSqhbqL1PLbcGJCVEd7XSgAiZVOTvd+B6Yg3l3X+unH3+mKvCqxUITm
	Lsn3RNOISCOyeDuPAEZXVPYZMMrZDGgOCj9MNgVBjLseXXekFbHQkvCge7lvesAuzlaPyGDvpfF
	xbtltuytpEQBSb7zBUOUxcEBEAecfZgxcQW52uXNRuUwR4LVL0/7ygJA==
X-Google-Smtp-Source: AGHT+IGRM9PXFkTHzRIxS0LDgKxvTnnx4+Xizl6bO0aUh1UWcGFmB+QLnD7VuP6+znUk879iNlbbiw==
X-Received: by 2002:a05:651c:220e:b0:37b:a65d:51c8 with SMTP id 38308e7fff4ca-37e66a254cbmr323011fa.0.1764734741591;
        Tue, 02 Dec 2025 20:05:41 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm39505631fa.24.2025.12.02.20.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:05:41 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/6] arm64: dts: qcom: sm8550-qrd/hdk: correct S5K3M5 properties
Date: Wed,  3 Dec 2025 06:05:32 +0200
Message-ID: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The changeset updates voltage regulator property names and removes
an optional data-lanes property of Samsung S5K3M5 image sensor found
on SM8550-QRD and SM8550-HDK with Rear Camera Card boards.

This reflects the changes in the dt binding documentation of the sensor:
- https://lore.kernel.org/linux-media/20251203040241.71018-1-vladimir.zapolskiy@linaro.org

In addition to the changes above Konrad asks to place 'status' property
of camss device tree node as the last one on the list, do it as well.

Vladimir Zapolskiy (6):
  arm64: dts: qcom: sm8550-qrd: rename image sensor supply properties
  arm64: dts: qcom: sm8550-qrd: remove data-lanes property of image sensor
  arm64: dts: qcom: sm8550-qrd: move camss status property to the end
  arm64: dts: qcom: sm8550-hdk-rear-camera-card: rename supply properties
  arm64: dts: qcom: sm8550-hdk-rear-camera-card: remove optional property
  arm64: dts: qcom: sm8550-hdk-rear-camera-card: move camss status property

 .../boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso     | 10 ++++------
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts                | 10 ++++------
 2 files changed, 8 insertions(+), 12 deletions(-)

-- 
2.49.0



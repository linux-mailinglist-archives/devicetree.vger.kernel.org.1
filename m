Return-Path: <devicetree+bounces-224173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F609BC1548
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 14:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCA6A3A72DC
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 12:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B605C2DC336;
	Tue,  7 Oct 2025 12:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MGPmPdSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4431A9F8D
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 12:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759839336; cv=none; b=JYXXZH2+BQOABnuBrPdUeusqbckYNxYV6eqSPhGTsSuG7uvgMdPvUsIcSM9ckmgTNMge1GKyKASdXucKQYLZoeYr6gElIxwVwrj4c+uZWSdM3Z1gaW1Vn9M2pT6vOZmdz+xho/IzZKbk2B9vSCxGLtBmmMy3sqbl85bZig0bfBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759839336; c=relaxed/simple;
	bh=l8UYQaWjfRBhhGAhvqyoqXfPdBtbjNgkCwload90jNk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NC4So4iDbz//uIrIGijIsL6fswt85h3qcf41AE9HR3fWin1omsW2YOk4Yxp1UXsEetCaBkHqldvpio+YM5Pd1mE5+HdlDKt3OW+o2cP+aUyllOi0+lhCBo6AJV8CZsyLq7eNU8qG1cjuKf5AeUqVNpZZfYICHpaAv/Ys2y3jbGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MGPmPdSd; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3ee64bc6b90so3633100f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759839333; x=1760444133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RKLr6oH8VAoG0UH+GQLCxeeRNxwcwp527osNwdWjiOI=;
        b=MGPmPdSd1Mk5NpNseKJ+MHfCLam5MSH+Vx7eHeYkZe77mduZaqmwaty13xGCSaOPxi
         DBif2ELYCfL14QVhM/dBFMMEX3BtfRICC3eYmIUu9bpzKoaMEatESUnzvXn9beXTk8tw
         GfSEAp9VtnSlY+4DFj5pIHKsqTPsHtGiPrx4YCnekx96A92TBaPdY1NdjD/0QN2pJd7W
         XYpOkYULStn/EDi1ipdFnHfb/iO7kd6P2yWgWUvPJmzcA9U71ZWa7IQAqDWnNzmcY8zC
         JZfquTLjkUcSc6xuzzgIS0McQXp7zJyHyavPlscMhvAsbi4p2OUKgXDBqsrMI+JCalMG
         pUZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759839333; x=1760444133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RKLr6oH8VAoG0UH+GQLCxeeRNxwcwp527osNwdWjiOI=;
        b=i3BVXVE6oxk1AOHvMwWz0dmmptu4rWZ0opB8Dew9Xhnt1enKA+YnDkXI/NnGRd5LLb
         aPJjm4K6cd735dlC7NoDEUoIyg7fD8cWmJtMmSPhzlWvfrZZME02J83WGltxbJGM9HMx
         ui9NDiaFvtc42e1bOCKRZxiiN8aVvWLSdbvoFlRsOB6tXk2+iQaw1g8Yb4GkmJFKR2ZJ
         iJccWM88z7VPj0A4omIH3IHsg+ndBUX3LsR4Unom3MJ0Fx1hMQ+bowtCOPp7uP68f0UK
         88DH0mddhMdjABAvQ5DMroEn9xi8wax16p9PD6td0ucts/hfmxzpT1HNycw3R1TfmYl1
         V1gA==
X-Forwarded-Encrypted: i=1; AJvYcCWwBrcZBKmN2j7FNU1S0NTwZhLJTaHO50t2BhVe/phrnjNFmTpPBh3waW9kfRbadpAMvNXlEm94Fe9g@vger.kernel.org
X-Gm-Message-State: AOJu0Yz666lkhEeQ1Fp6ZFbSm5BGwfxBRBZLpIk/nPxFi1Q7h5CpYZsJ
	2wFoI5hnWpLw4kOKXn9/37j6/z2z0lBuydb6CG6OaOgIbHzTU+ydvtwB
X-Gm-Gg: ASbGnctzI5LJkH4Y0sApb1bMdbtukgyuVjy3mDQd3MoPiBQVXUz/RbAhMOy7uQ/VXFn
	FCgSkfMT/wz6DbHjlN/2kvtRuRy0Lr2ER8CrXA5QbMX9XPP4fXB6gzUmfVrLBZX7bIHLYJzoVX5
	zLU/P0zfDRC/Ax856xEzeGR9sdA3d6GqZuDPYOyNlFleXmwdT24gzAUqwgJUsq7W8oqJKgS+IN5
	KXldmn9PJPV0/U1lE6kifUyby/C3mM4mh6K5nsn6k3VeKEttwlwiMYOwXo1PVXpkaAKbxMbFMk9
	vVe7CG8anZItvdib03eJ6YkdHQ8mkgV2vGbaiBTivA88Lt0F5g8yiydMbEtUzEBqU7s0n/jKiPL
	CNoTa20r4ikk0p2S30dECyXJfvEo52VxZ/ZvYAvP408MNiI+ldwFOa0+3mWct3M9jpJ7EYOzUjS
	t7IGbj
X-Google-Smtp-Source: AGHT+IFRZpCqbCKQWGG716LTQ5+C/G/AGcTxtPzPME1CZHim7uQVhN+zKqy+NF88Qi5nOvvJB7ONJA==
X-Received: by 2002:a05:6000:610:b0:3e7:5e19:5ec3 with SMTP id ffacd0b85a97d-425671a9067mr9556480f8f.41.1759839332887;
        Tue, 07 Oct 2025 05:15:32 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:9667:4f0f:586a:20c3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6e1bsm25590167f8f.8.2025.10.07.05.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 05:15:32 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/4] arm64: dts: renesas: Add Cortex-A55 PMU nodes for RZ/{N2H, V2H(P), V2N, T2H} SoCs
Date: Tue,  7 Oct 2025 13:15:04 +0100
Message-ID: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds the PMU nodes for the Cortex-A55 cores on the
RZ/N2H (R9A09G087), RZ/T2H (R9A09G077), RZ/V2H(P) (R9A09G057) and RZ/V2N
(R9A09G056) SoCs.

Cheers,
Prabhakar

Lad Prabhakar (4):
  arm64: dts: renesas: r9a09g057: Add Cortex-A55 PMU node
  arm64: dts: renesas: r9a09g056: Add Cortex-A55 PMU node
  arm64: dts: renesas: r9a09g077: Add Cortex-A55 PMU node
  arm64: dts: renesas: r9a09g087: Add Cortex-A55 PMU node

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 5 +++++
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 5 +++++
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi | 5 +++++
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 5 +++++
 4 files changed, 20 insertions(+)

-- 
2.51.0



Return-Path: <devicetree+bounces-224174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA71BC1560
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 14:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 186B419A1695
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 12:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210E82DECA0;
	Tue,  7 Oct 2025 12:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KC0dMdeK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6991A9F8D
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 12:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759839339; cv=none; b=YfKVwRfo/D6sPW7sKv0z6EiTy5vONLCIdo/YKUlJZbde2Mv5GifEo67d7uGR+K0Q8KtW28EFERtmNN+DoZHeSotIIzLAAUlLVGj4qZN2Y1iEeKfh4101mWp5rkfeBfUw9Imdk51x//AAvQYsTWgPCyR0h5ID6BX3UORdZKDcx0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759839339; c=relaxed/simple;
	bh=WTfNWiSUHE3yzT8NN8B4cyL4njh+KYmZ9d7q1pyxDug=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nc2JZhp1HF4i24dk2RZSW8TWCOtneJ9jhFXAGMJroU4sDWm2bIImDArZhiMztOedWhokof66VzNngNuNRRBTW3WqbiPwY6rTiUzpe1yWsb3Fr6CXdcHHaMJsvh1J64fXe1g82C5RIZuAFlwONzSwcN50m5v7HhhVoh3fI1JsXIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KC0dMdeK; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ee13baf2e1so4547061f8f.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759839335; x=1760444135; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=euhEJjeobLyj8H5iJ33FXAElxhlSOQw3IhaD7kRk93A=;
        b=KC0dMdeKkdMPtCuP0yAVJKsDK2wsXOF+UQ2yZR881BYhQ+sitWGuEeNg8dsILXfn4Y
         8cuVaw0ASG/t7Z/he8jEvqBu6CjPBV53WrF/cm06ppYyfBNrZ6hBi/kVtrjGIl0fMHFt
         FjSwJknvLfRCNWCYChSTugHHkFJmOpZmcjmn95ENEfMI/ohEWr7NYou5hzGSdGzudP1d
         SuPKtbA/lWrDn0W7ycaEffulNv6nNq9awDEt3fvIAWFiTvVA782hzCfQHIo3ArxGwFQT
         6M5VHIPxdGhars5Wbeiyk/WKaCg8gPAkWEKzBnLwUrar/gFFEhoZz4UF2j5dpzQLdeWk
         4g1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759839335; x=1760444135;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=euhEJjeobLyj8H5iJ33FXAElxhlSOQw3IhaD7kRk93A=;
        b=orV0N2C8UJKzERQjpp5qI1FzWohFQxLzAryjgNOaiWrFJlwS65zCMesEzj7zJebuU6
         AfVExZH81/jiKK/arG/rCszVm6blAA3fyLjBZzATxIRroyZBfy62vwaZpZUelJZZS9sr
         hu/gaAOCSOiC1ekzg4xRxrq7dD/GOBS6NcGh63BfNeWrFe+9Hp1xlLXT3qXt6ouq4S1F
         rbCqJB3ydX3Vxo5UrERpJiy9xYUG8Sbw1R9uS3MPh2mIS34UvkD/Jb+Zhyv7h/T8I5Cl
         6XLCDgsCgn/pBIlO0SR2p8g+pvdvcG4bH6TLB3wBMd8AApLnGBfUnjlkhlkrbOeNWG+B
         SfXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVF/oMomWXhzvnu29QwbK+3gtvIVuUgp+Q1YQGN3L48F/Jz03N5Xj3Cell38IBskwQfLGdDUxSjQPdR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmtmr7CUWf9D9UrurHAMafk54bRGGsczoS0Fd5TjVgHGfhYbu1
	y4aozbpgdy2FpVmWSI2qY7jqz8ykd2imZISMQbxqKhptMN1yJtsVDz03GxROsw==
X-Gm-Gg: ASbGncstAIJlehinBEi0il1YOs+Rz++Qf93IBMgRB075CTt/nvRCYP8//qBafyZPwSS
	g0ly46cjewQK4R0kgTLgXmteJ9XEsfCHy1RL7MKBz1+yobnO2WHlgJ6ZK8wylBVxi88Wi6aR9Bi
	GJD5jFLsMX18+t/r5wRt7q/t2i1/kkggx1DwLufcGP762tFbCr+lNGTf6y4ZCUqAoP+ysFHtwn3
	s3gA76U6FcodJG0/r9V0wBCUXNzix1eMsdJo9o6/1lNp1dfu9KjLmmHmxxd1LQRjeYMaVXR+Uo4
	v5tmVDpsq9pIljeRK4w8GhVV0WRwbi6XehEbp0MsVmSk344Q9/yGNmchfb6yvdNILOwAYzULJ6s
	wLzV0wwX4r3BJQCp4qYZEPixH0JGsPCPbtBBKpA+Wn16LHTIBGrHzsKMuZ4RbfB545SWzTKoCFD
	Ey5Sjl
X-Google-Smtp-Source: AGHT+IEWjOayRTPZVPnsMccxbWYDGiMC1YfpjgyiCNEpc7Zo759zR8e/RAlhpAfbAmZEfuj9Nojr1g==
X-Received: by 2002:a05:6000:4029:b0:3e4:b44d:c586 with SMTP id ffacd0b85a97d-4256719e10dmr8954404f8f.34.1759839335308;
        Tue, 07 Oct 2025 05:15:35 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:9667:4f0f:586a:20c3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6e1bsm25590167f8f.8.2025.10.07.05.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 05:15:34 -0700 (PDT)
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
Subject: [PATCH 2/4] arm64: dts: renesas: r9a09g056: Add Cortex-A55 PMU node
Date: Tue,  7 Oct 2025 13:15:06 +0100
Message-ID: <20251007121508.1595889-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251007121508.1595889-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable the performance monitor unit for the Cortex-A55 cores on the
RZ/V2N (R9A09G056) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 9d540aa4d10b..8781c2fa7313 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -153,6 +153,11 @@ opp-19687500 {
 		};
 	};
 
+	pmu {
+		compatible = "arm,cortex-a55-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
-- 
2.51.0



Return-Path: <devicetree+bounces-102238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 218C39760AE
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:56:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 545941C22E26
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 05:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA77818BBB5;
	Thu, 12 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ardJLvNY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E7718BB88
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 05:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726120553; cv=none; b=R9qB5w9LhCyP2GXEO/zUKXRo1+JQI6t5/8QHY8Fd0zVj9Mr9V0arr0H4pC45Blpb1oWyv13AQWM3xySCrYCHkZ351Z83tlWYlRiLg+xNrQFXiDwKY2/d0touJTm0GWnP5woji+zn6wUBs5tHSmQNdEu5zDdwFOejLVc9u1He3Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726120553; c=relaxed/simple;
	bh=twijwVNwXlRnqiWorC6lSyhzIHtshmEdOl4sTIAcK5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dOi9rvcuFBWwSZPUJ0/9Dkt99JcdxvOyxWI45M7oXNdL/WZCoXk9OMT3AIWkRIXx8eYIIPPK+YANjLhTvN1sDLDt6uMZ9GJRf2ekHDKZ1kZhmMpFtd8RNnTM+YAypki7G9Tq9qibuWN7185DbZHiypfK3K38YDMUSAg1FKzfkIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ardJLvNY; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1fee6435a34so5591845ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 22:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726120552; x=1726725352; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=34tWDw4L8SN+akOs9Do5H0mwwhItc2hNKASWAYLthDo=;
        b=ardJLvNYZg5KC9Zh1GkwJJZOeIJWKLY3NH4zVjzGRbTtgz+ZUi683PNOIZyICYh4/x
         vJ0Paaapn5FRD+Jx6rjI9hiMRFim/PaTjppCy+5x4zE+7xnACoPNMOdbrzvS3vi/j3T4
         AazJrhJztXwuPRF055H1z4yYaEVx1vENwGFQ3CuWnoEo9WWZFzsHwlEygwjdtghvqmAe
         KSDVcsreN7HqzSPS6uKgCwArB4tasjezM8n5Q551v4rXZavJdWsMrAVjdGhVN89H162a
         XkMLfhlNSu0XLeVLFoHuv862Y27xuqGO6tgQy1N9QwfVUtAYB631O/genSNmaWyBtovk
         4d0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726120552; x=1726725352;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34tWDw4L8SN+akOs9Do5H0mwwhItc2hNKASWAYLthDo=;
        b=qUyyU4d9qdZv56odCwLoVoR9ZBkS1k+dr5R4qLbODw9XqGCLtEp4WMdA4Zk0rqBRUI
         t/Ej27sb7TQSI5W4L3xr7VaPqX1U2OdP2ecYvvpsQCPVrOM1E9PJ4i6c24wfNp0Xf3q7
         43Bqlgj8spy08rcAQz2eXNpor28X4GxVFc5KKKZ5TwxU+Oq/8xge+70p5BAFsH45wkTr
         82tP2Kn1eUMDuZqs1AW2goImWYlMOqa9KDd8lla8GVONN+tNo6a25N30LWBNd/t6beHi
         2jqsRvwZJZs1Kpk6mrbFDM1O6DJq2+4SaX9Uhv8id2LIOApUFY2qLeYqJsM2eEuBxw1v
         7JTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiQjToZQXvmsAxBRnP/I2SeOD8ho/w8LksqCN/bGMmbL9f6fPvrUjcNT8DyJdmsj2o8jJ03VvP3J/a@vger.kernel.org
X-Gm-Message-State: AOJu0YyqyQoq1HfC42lu57imw7S23tarGnRLZwa7mY6uSJK1+8zJUebw
	PGKpPD3Ui5szoB7zX3Hh1ozJatCo6PssQjDRyPTjkR4XUb2L7DsZ9vcUb6E9ojQ=
X-Google-Smtp-Source: AGHT+IFiwN7AL0oMOImj8Bb6j31gbdzpkXOKklYI/Dyd/oOvuPIOVHkDWeO1Nnywoc6bxuIJ7G506g==
X-Received: by 2002:a17:902:fc4c:b0:207:4c7c:743b with SMTP id d9443c01a7336-2076d90a1aamr22272135ad.0.1726120551451;
        Wed, 11 Sep 2024 22:55:51 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afe99b6sm7870465ad.209.2024.09.11.22.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 22:55:50 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 11 Sep 2024 22:55:11 -0700
Subject: [PATCH v10 03/14] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-xtheadvector-v10-3-8d3930091246@rivosinc.com>
References: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
In-Reply-To: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
 Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=960; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=twijwVNwXlRnqiWorC6lSyhzIHtshmEdOl4sTIAcK5Q=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ9qjpqjdgupZ/AlK1Q7FNw/u1tnC9ORpXqpi78+DtXKPk
 5uMNrJ2lLIwiHEwyIopsvBca2BuvaNfdlS0bALMHFYmkCEMXJwCMJG3rAz/VOd8nRK482XkT6UZ
 tYt2FjXdjPqi+VXavm/u3tKdInOD3zMyPI7n++V4VnP92xmlpRHdhfJLrru5Hwm1Pvs24Vmrmdc
 lDgA=
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

The D1/D1s SoCs support xtheadvector so it can be included in the
devicetree. Also include vlenb for the cpu.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
index 64c3c2e6cbe0..6367112e614a 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
@@ -27,7 +27,8 @@ cpu0: cpu@0 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <128>;
 			#cooling-cells = <2>;
 
 			cpu0_intc: interrupt-controller {

-- 
2.45.0



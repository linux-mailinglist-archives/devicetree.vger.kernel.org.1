Return-Path: <devicetree+bounces-224934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BECBC90AE
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 334954E6229
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D692E1F1F;
	Thu,  9 Oct 2025 12:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FgSAjyof"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A461F2BA4
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760013277; cv=none; b=BChlOX1PQ29A7qmr9XbZsxQK5TWodpVw2vybFhXBHd9Rc1L9hgYi7bGmmbTF+pr69ctIySeGOmDF/6YKTYB+YBqFz9XDzBk3W5kzJWLnWxftJWXyb+vsKnfuzYoi/EN/OezPe/CH6pB7GOh7TcGuLeuRcxCRQjUxCTC2B5thHCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760013277; c=relaxed/simple;
	bh=a4GlgwvcqPDJxB9eGC77cLnTgj/F4o2Kt+bX3hdWo68=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=RbyFVBliexmn3vSOHG6LRTlzqNOn8cVG9e8o1sVgiADmoSK2kQcI8symzwWWIdcpUW2BAhjPUErOx2trilTugMeQnrC3g91JUJDaC9MLRv3DJkjOxpuvETOtcI1b/Fdzu7fUUdidUt0hV4QJN0nG3gSOdIIA+euPvX7/PS98xk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FgSAjyof; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b3ee18913c0so138480266b.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760013274; x=1760618074; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nyerg8bw/pkBgKExI4csMFP+hBYhO0IhRcEHv3iMtPw=;
        b=FgSAjyofjvIDBNDleCeWfMN6ipuZNaX5mATThz+0IXJOY233F8cr8Cw8OYz0T7KoVl
         a5pgRouI//Pb6dVSjLWJTOp1XVu9u07DFXOfgxBNXqtdpwKGMb/oQm8r/4+ni0W4QG4E
         faGNXAj4fPTp5BVrwTneOC0398ka1V953Ym8QkK9+XsLAXtQnw1kxvKpne3y/sW5JUEu
         LG75E1vsUn1VmX8Bp+oCxhG5kIbiv8F2nqWm39jjwilh8V+HnoL+Qlp4vr6O02Mo9jR2
         uhheGW2PBEXK1xP/U8M22MNkPiedbhO5T5TV0tmajInmSGzWtnNyFFIjMyd4ZlCrpfCf
         jksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760013274; x=1760618074;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nyerg8bw/pkBgKExI4csMFP+hBYhO0IhRcEHv3iMtPw=;
        b=ukNGJT0+sa2Cc+Uw9Ua5gbW+ttyl6pIJq1oQiLKPaN+H/aFb8qC+X4YchtTRBj6H2s
         l5egPVQN5MqCGbHXCFtKbl1lDaSu0IZ83DYe3nbUcvdO1vUg+qDXRtBkpgf/b0wznOON
         n8hLi2Ao/yZFgE94026Fh8vR07PJWvoR6KJEa85wyw7vFFUBH/OE0c9fhDUbb2HcJukQ
         nN7acrjDeC5fYayzYr3Gup/MZ2YQ9ka6erqc02o38fJqt07SaWZDVMRe0SfZJrBLYpTB
         gWAtb7cY+xf5t+GznmfWVTsfvJIoOcfbwR2/K0XVRNt1L7FVx1UV9hlZPiehm4zdEJaf
         wUIA==
X-Gm-Message-State: AOJu0YwqVFq2UAFm3zlm0Q3v6oBRlWLWhJQNmipOXhqruz0+Lb7FM5Us
	nUpcnd/CLz5tvMfyMCiCs0g08n85SexQVbvYW2OUDBMDPMWQ4hASiWwU
X-Gm-Gg: ASbGnctRFz+cukdyI6DdMKCKdXwqbp0fpiXtsU+ycfkirwLS1ypXRXLwl2m4fhgdRHF
	n77Bre3nmL5lYDiE0AG1nldbtlg3COi5TQF6VgqCViE5xkIUpAhLgWApxB+Zm/tRdaYimOnnUf4
	bppgxVKSsW/RufiK/vuhmDYWD5Oi2JY5kxM+ZBc1OCvNSGkxYyKo7C4F2qGDd+eLwOy9bn99lzv
	NFYmQb7ad0PqVrrcX7ruU/7kCESRsBtea4Ezb78CdnCAYGXamjj7wuOyjlYlzkIVXO0ffSrOPRO
	qzfrB8xzNN8AnUdM7SnRaBrHbDWb4xF1lQ0MBGg1ux7wRmN4taBIPqA9OoNM/8EQThRJ2W7ZZlV
	WEQuOr33xRwwgpQT3Xwlbhs3/wtM6nbyzYLF3EN6gVp1UvK/RiWSn7VdYop7cu28K
X-Google-Smtp-Source: AGHT+IG5+niC5l+3hZxoFmTdeEk+aq9D5d4xuawADwnDB5QSeo27pDH2M5zv9nhRFISRnH+oe0SscQ==
X-Received: by 2002:a17:906:abc4:b0:b46:1db9:cb76 with SMTP id a640c23a62f3a-b50aba9f7aemr661934966b.39.1760013273388;
        Thu, 09 Oct 2025 05:34:33 -0700 (PDT)
Received: from alchark-surface.localdomain ([185.209.196.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865f741f1sm1897957766b.39.2025.10.09.05.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 05:34:32 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 09 Oct 2025 16:34:01 +0400
Subject: [PATCH] arm64: dts: rockchip: Remove non-functioning CPU OPPs from
 RK3576
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-rk3576_opp-v1-1-67f073a7323f@gmail.com>
X-B4-Tracking: v=1; b=H4sIALir52gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwNL3aJsY1Nzs/j8ggJd86TEtOTElNQ0CyMDJaCGgqLUtMwKsGHRsbW
 1ADNSMK9cAAAA
X-Change-ID: 20251009-rk3576_opp-7bafcadef820
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2003; i=alchark@gmail.com;
 h=from:subject:message-id; bh=a4GlgwvcqPDJxB9eGC77cLnTgj/F4o2Kt+bX3hdWo68=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQ8X30+rrirJKPy35cLE6vzVzz96aV/79ybX/OypNb8F
 OO4e5xFsqOUhUGMi0FWTJFl7rcltlON+Gbt8vD4CjOHlQlkCAMXpwBMJOgHwx+Odob8xd+tJv0V
 WjN1YuJaEdNUwe7spqTeh035uhb/HzEx/BX76hJQJrf02J/iedG3gh7xfOm3EHRcvUljvnRcb8E
 6aVYA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

Drop the top-frequency OPPs from both the LITTLE and big CPU clusters on
RK3576, as neither the opensource TF-A [1] nor the recent (after v1.08)
binary BL31 images provided by Rockchip expose those.

This fixes the problem [2] when the cpufreq governor tries to jump
directly to the highest-frequency OPP, which results in a failed SCMI call
leaving the system stuck at the previous OPP before the attempted change.

[1] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/rockchip/rk3576/scmi/rk3576_clk.c#L264-L304
[2] https://lore.kernel.org/linux-rockchip/CABjd4Yz4NbqzZH4Qsed3ias56gcga9K6CmYA+BLDBxtbG915Ag@mail.gmail.com/

Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
Cc: stable@vger.kernel.org
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index fc4e9e07f1cf35fb57f132c6d82c48c62bd6265d..f0c3ab00a7f3447a1dbf7874c7bf758e82e04f25 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -276,12 +276,6 @@ opp-2016000000 {
 			opp-microvolt = <900000 900000 950000>;
 			clock-latency-ns = <40000>;
 		};
-
-		opp-2208000000 {
-			opp-hz = /bits/ 64 <2208000000>;
-			opp-microvolt = <950000 950000 950000>;
-			clock-latency-ns = <40000>;
-		};
 	};
 
 	cluster1_opp_table: opp-table-cluster1 {
@@ -348,12 +342,6 @@ opp-2208000000 {
 			opp-microvolt = <925000 925000 950000>;
 			clock-latency-ns = <40000>;
 		};
-
-		opp-2304000000 {
-			opp-hz = /bits/ 64 <2304000000>;
-			opp-microvolt = <950000 950000 950000>;
-			clock-latency-ns = <40000>;
-		};
 	};
 
 	gpu_opp_table: opp-table-gpu {

---
base-commit: ec714e371f22f716a04e6ecb2a24988c92b26911
change-id: 20251009-rk3576_opp-7bafcadef820

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>



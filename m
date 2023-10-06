Return-Path: <devicetree+bounces-6469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0E67BB781
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:27:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9B5C2822BC
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 465CD1CFB5;
	Fri,  6 Oct 2023 12:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMgFKe86"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEC91CF9A
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:27:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3643BC43397;
	Fri,  6 Oct 2023 12:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696595224;
	bh=aIfy+YMFnPIuOo+znZOJ9L0lx1fBT20WZxlMNK06oX8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IMgFKe86ZFLLLFU0LQEjPKfDWW4nirs7rURYXhO8AHquYNbENHIa15tooFlH3TxTA
	 FI9pk2mToKN150eFZmLtherHr1GheN87w/PjoVm7Hrj+kMmzhHEjd7suFCor797gkW
	 7nkEt8hHR/lhVSlDHsTAnKLi0KnH1EMf7L8No3uFssv8/8IwxEYK7tYreYHzs/8seC
	 EPAzmkAxd1vQNvhdOohN+EgT2cQVGTl3s5igxLxrNuA2VeCKiIqbHuGC/7Xzx1Ixoa
	 dwdLDytVPS760OTw3fgA+8Xg9AZwvzimjJfiNm87g8S1T3Mhz7FogbDUKLhJ/CdwT6
	 I+qEBZl/Vm4Pg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/5] dt-bindings: timer: Add SOPHGO CV1800B clint
Date: Fri,  6 Oct 2023 20:14:46 +0800
Message-Id: <20231006121449.721-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231006121449.721-1-jszhang@kernel.org>
References: <20231006121449.721-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for the SOPHGO CV1800B clint.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index a0185e15a42f..e8be6c470364 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -37,6 +37,7 @@ properties:
       - items:
           - enum:
               - allwinner,sun20i-d1-clint
+              - sophgo,cv1800b-clint
               - thead,th1520-clint
           - const: thead,c900-clint
       - items:
-- 
2.40.1



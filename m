Return-Path: <devicetree+bounces-242006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6A7C85364
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C556C4E9DCA
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19682221DAE;
	Tue, 25 Nov 2025 13:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUVQj6we"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F3513B7A3;
	Tue, 25 Nov 2025 13:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764078013; cv=none; b=fvAlCZ882rzbhDA0HLkY/g/cd2huP4levMBvTrCzKplLsFZpBqlCP4BgmZVAs+v3RShIDedcQusglLZKeW422DeHznC2F5MAhundsEB6MgHeBWgEWYWAfZ0f3/GpAjMbNVi2b3NzIRO8iZn05YD9u1uIKTsWj43g2UXwa7EwMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764078013; c=relaxed/simple;
	bh=EoPsHj+gh927MJHki8m23zPG4r+CNH5Yo+Ev+5+3Sp0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=t8YqAdgaHEizSYk2iQyLZgSz99fSSbNuAUrQY17ToHnThDAEScce6RJslMgWFsBdT564YY4STsy6M+YarHyCHUr9LeutLnlNXpU4Ze1hS7xyFsvm6o1ymneVigkch9k/pu1xk09XOYTigSJ44p5mHeIpPHs+PtFQkUIul1I5k/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUVQj6we; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78ADC4CEF1;
	Tue, 25 Nov 2025 13:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764078012;
	bh=EoPsHj+gh927MJHki8m23zPG4r+CNH5Yo+Ev+5+3Sp0=;
	h=From:To:Cc:Subject:Date:From;
	b=eUVQj6we1z176Z+xc5V9BGNg2uWtLTPSGo0m/5rjzisvKs36aIgpAsyc5tHFHTPZe
	 8Y7LTCsFv7XcrpAQgIGu+DLHlWS16uD/1ZURVjPgk0s/d7v8bPHnPwQ/LHjlpKISGA
	 bfbCIPEBoA6XdWmROng5lBdvo/04rPdPaRmCbqOmPUC6jAJMdKoq+DKzsh0P09bWje
	 e7yoTuSukoM8o1HwZJpyJ13X/K+ly75UkwGTIXyaiG8HnoelKcsycKjQACD5/OaB/R
	 6NK+0Gr7p2tisR3mCIFcZULPhct2c/51uabL0asPrZ6/f2y0K58JzVGBY3DCBOh60r
	 jl2BNHUx4rcEw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 1/2] dt-bindings: soc: altera: Move altera.yaml from arm to soc
Date: Tue, 25 Nov 2025 07:40:02 -0600
Message-ID: <20251125134004.261165-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All Altera boards can hosts soft core CPUs like NIOS V or a RISC V, so
it makes sense to move from the arm to soc folder. This change is similar
to what was done for xilinx.yaml by commit 6f3ecaea6324 ("dt-bindings:
soc: xilinx: Move xilinx.yaml from arm to soc").

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../devicetree/bindings/{arm => soc/altera}/altera.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename Documentation/devicetree/bindings/{arm => soc/altera}/altera.yaml (97%)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/soc/altera/altera.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/arm/altera.yaml
rename to Documentation/devicetree/bindings/soc/altera/altera.yaml
index db61537b7115..7c6827837b95 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/soc/altera/altera.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/altera.yaml#
+$id: http://devicetree.org/schemas/soc/altera/altera.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Altera's SoCFPGA platform
-- 
2.42.0.411.g813d9a9188



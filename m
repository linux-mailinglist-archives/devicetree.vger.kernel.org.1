Return-Path: <devicetree+bounces-48555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A488727DC
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58B9F1C27A19
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 19:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BC485942;
	Tue,  5 Mar 2024 19:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="onDcicWM"
X-Original-To: devicetree@vger.kernel.org
Received: from out162-62-58-211.mail.qq.com (out162-62-58-211.mail.qq.com [162.62.58.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B5B5675D
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 19:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.58.211
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709667912; cv=none; b=KZ4w3JrnWGjFuifjUduplI9dN/0aRbKQoa736jUQLaThpGoa/MBsXTsvQqDAi+c0pMpmf2aiaTV1Kf5/d4kGbBv9opWROQ8Ds5cukC1keuB8O8j/npseXx5yIRwWbOUOr5WsLjy8lk18x4WMqqrTd+ngweidDIm0xGH8f94x0/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709667912; c=relaxed/simple;
	bh=iIg1m/HJGO+YBecXFqvZUlmsxmUTnWYkXWH5ivM16oA=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=MIhj9yCApVXOw2B55x8UxqRHhElBmgG8wR9lfMm2I0Cxc1bEKOaq7maXx2z3+tH4r3HgAl/g7o/4zqUfleqnV3KdjHviJyzjsmYx1k9vKj+1/RL4v+fGLjba14StNdoTDLwmNI9enRRRV4o0xojS1W55QUtVLatH21qPlgJK0zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=onDcicWM; arc=none smtp.client-ip=162.62.58.211
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709667904; bh=s7QEg+O5WzM5yI1q1lQPoUf0e90dpB5qxk5MpOdViLo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=onDcicWMfdN7kNP3LeECKaKIqvco7zChG+2jjd3kTxGvcsxyaEyDM+AwpW768rL3s
	 +gkuditVrjXfLNhDI87nliEKMDoemaNtFVdF1a36HzHdlWgfSZScQqCxlZ92zvg0V7
	 SZSffSR4rhARjZ0DXsJQ6leLQfpP8LCzNraBldzU=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrszc5-1.qq.com (NewEsmtp) with SMTP
	id 9B6B9246; Wed, 06 Mar 2024 03:38:54 +0800
X-QQ-mid: xmsmtpt1709667534tisam2ey1
Message-ID: <tencent_26733B06E132C458857C36DEF36D084A6A0A@qq.com>
X-QQ-XMAILINFO: MzYTHVlhOHw46e2TkC7qVkPzMgL4jX430nJ1+2Gjuib8LMue9tVIUqSONU3BEf
	 0D3sDJimpcCwy8rewM8t4KRqyQFZnVsJk8SIrkrkxBI0+l57D4WYCi/Rjuq6QQ4b7LRG+bwEUBwv
	 OTtjwFqG+zyghjtrmSrZRf24/CxN0bwLnXN6GlgccpPZKKkZkUpSaiONdmkbOZ3Df+tLBfXswJHG
	 d9Nyk78jX2Lql+XZMGYmlxNMf7qJarLoNZev4bgyYxCvoBpt7UR6JQp8H2jJKeLT58rCho/Qmv0H
	 Lap48crf7yQUXtCx+VxWeZNs+eXDG75bclMZbYMhMCqtn3k9jj2E4zxSEkEixs3opFt9E6hYoFrY
	 e23606Uuuv3CV1JVmB7hH/iO8ZoJZLQHXICZntGVVkn9cVCpYTGa5o6N+fFfC0Mtmg9wrqhgHHnq
	 iRzG3fX5rBbDDdACZyJQyNMwo/hSQmwv9S4v/KMudB7WykXxmsc77xNYg6w+If091QDuAjGIatXe
	 3crJ789f1w3zNiHeGmjeFsTQ/Y8Bn/HldmgQJX75zyn7Yg4S43RGvekzZyptxv0v1Dkta7Gt2bg4
	 0ZwsW1cltGpaoxyhdjXRyjQs+tkkaxHSBW+pDGhWBC3lObRFEAIHMzbQfNE1mC1XS9L+12pDdJim
	 gt5j4DpbHVuFYHqgGtLcECDwkxsOuFpdNaY4FKgVefPA5yacBGY+wFgMkGz6HuhkYywlYuJ6ao84
	 aR8dvBvFlK/tje1jDLvAIIC3/K0GI+WZ6+tGbJL+RHkCV89vNTtyTmup/dCIo2nIQrVUlGTsnFNP
	 Ww5Oht6EgoNavnGmZb6AQgwPHiktsQyAM6drdFbAlPePL1hf++P7i3pl3xDearFm+5IlPnpJ7YRU
	 /xsYlouoEnUUsSYqKdOakLOFo/F0NeJPaDfIeF6k611ww8w9YLEjaYcSoTtyKsbP1mgC20PEymCp
	 IWOa6Xp1+hS4VmbpHzmQkh8HcMXF/xpG1gXndotTXb0b+UnhuddPPRYiNkdcVSIM/MiKVGSJ1oNa
	 ehVGYY8VuRFy9FRoyk
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Guo Ren <guoren@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangyu Chen <cyy@cyyself.name>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/7] dt-bindings: riscv: Add T-HEAD C908 compatible
Date: Wed,  6 Mar 2024 03:38:25 +0800
X-OQ-MSGID: <20240305193831.1084556-1-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_587730262984A011834F42D0563BC6B10405@qq.com>
References: <tencent_587730262984A011834F42D0563BC6B10405@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The thead,c908 is a RISC-V CPU core from T-HEAD Semiconductor which used
in Canaan Kendryte K230 SoC.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 9d8670c00e3b..e853a7fcee8a 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -47,6 +47,7 @@ properties:
               - sifive,u74
               - sifive,u74-mc
               - thead,c906
+              - thead,c908
               - thead,c910
               - thead,c920
           - const: riscv
-- 
2.43.0



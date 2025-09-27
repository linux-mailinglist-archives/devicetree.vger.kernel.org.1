Return-Path: <devicetree+bounces-222142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18597BA621B
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 19:36:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFD4217159F
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 17:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE29226D14;
	Sat, 27 Sep 2025 17:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MUPvUO8e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029E71BC58
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 17:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758994612; cv=none; b=B2BsWI/r18SSAfvOhCVwQAZG+AzEcJKrIk1NcJqVXf8J9rDiJXtjHe/DdNjvP6461Evy7umDhNBrNRMd8v52vvp4421+mNLVmPesYiBP/QwQtdvEej3MhCb5PVddWrDJqXeISdsxcvNQVgkNgV3oNHLuu9ql7c7jQG0ulX8fj14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758994612; c=relaxed/simple;
	bh=HsJMfKubKq4KCsL2bQRV3T0PJUUqA0xHRzloWDTkRjE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X31rZ2ljhXuoUwm985ZRQ582ealJHcvGkeVXFgl5rOZBxnEM1xJWz4RJiwPPiVQBX5sXaGIh8ctDVux90n2VInIe8CfLM3Hk3XYqApZXyuwbLihHnRWC6UtyPduzoSJPIPhfhoH3gv9thQm9zUETBcpjTOrl9NDS7+FNt04BCp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MUPvUO8e; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-71d603a269cso31470597b3.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758994610; x=1759599410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x+pu0MJgxB0q79F+DDz2sNZNIC6+gKM+Zmm/VlNlw1w=;
        b=MUPvUO8eWW+eD2chqf5IAffh4aTzBXml3hIArHZWCGUTGfiiPFSji4oyCsn381dMUB
         12QV+E0Zg5v83bDECI1Rg5ODS2KNDoWhuFunSwjtUwVXsswGKIFRq/lka36VEjc9Zjqb
         MWI6OHeKnRjyrra1EH9hMvu5CxDHCFya1Dk19673YI/PuLDfA1JkLODVcvfH43Hui1Wd
         5ZD0ec9RLLj2vQijvVEQxbk1AwT2lwn2Gl7/9hAcRMq+59YDXijr/Q9yoGyoJ8hpgYwN
         L6Kw0T4CoqqZETe2jyaNiRy+UJ9GOy9rz5MSBxoLglFn0wGzlVMIjDVbwU6Jyx1LhMdh
         vVbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758994610; x=1759599410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x+pu0MJgxB0q79F+DDz2sNZNIC6+gKM+Zmm/VlNlw1w=;
        b=uw/pOR94DnKIwe8ViXaYGuQr5mVWx5Cs7pn+r6wY5Hy4kfdREgJd5tw0GPV6sXmWbe
         DLUd0t2f0YTpqR8Us52lOFze32yF33s0/lpDH06X6wd7Fbm8KaLGk9y/saT1Yg97YPsZ
         +e1avIl8nzTwes9sXj8socS2wcw9wycK/fAZsbW6yZgmZdhcYOR2EGG3kpMDUVEzx1Vw
         ZWAP5UgOYYLw6R2mmCFdvgwhkZo88g+oL17QKsRb3SFIaQx85fsDX+YOGTqIX3Z3gF82
         4fooUCf+eytc01cT4v8eq9S6VhkvIVsFC1mcLaWoMminHfOUW9UZW5UQrJ1DtSzw9vOo
         3cMA==
X-Forwarded-Encrypted: i=1; AJvYcCVaeVGszjzTgXkjNclpAiZKSgCuoKwflLRZBzLSAIsaScfK9dVhUGffVx/pFUbifSLvN7RmmPA/jtKh@vger.kernel.org
X-Gm-Message-State: AOJu0YxInpgbeHkEeMnD7mcP06ct7rIxzrXax2GU0Xo1FEYELFfOr62u
	NbJuX6oxl+m1h8xIyCMJJ9dFEl9LZvFHUCpjGj0Xp9z2tbO36AGuLaqk
X-Gm-Gg: ASbGncuB2slIXvQc27fYUfWvSPasqcV6KH5SX3Zt1XciaPODouFj8+01xV5Ra6asei4
	2UPyGUe9oE+HNCv4fzglSM+2iwKGhnqDlSPXkevqV4m27fyx1bdvT8vax2k3KGbb6Dut8m0cEP0
	Eqn9lxat8YSD+8zwBHGYpPXit/i5GiEEeFUOe3pGsJv9IwyA/Dv56FmjmYacOH2BpknUh0Y3Vxd
	9dOZrhls80IQCBB9KInAC2C67dmTPxnSx6kujcrJ+S019FQdZUZuOlrVWKtqIg1yHwdj5CuTwxc
	VVb9Ieyx7mDvVKt0aSU4t1T4neZJNmA9/Dqh2e1cpuBzFiVALHptn3wnT3hSTEBQOnohDIVVBkT
	JIRVqyJi/pLc=
X-Google-Smtp-Source: AGHT+IFWOUOTcGoj1lCQG0iQiRPQhxPuUKQ+vNAsgEYGwt7nGKevNkkGHvlPTyDU0wlsRHPQIB4BuQ==
X-Received: by 2002:a05:690c:6289:b0:748:9430:cc2 with SMTP id 00721157ae682-7640457b081mr114571697b3.43.1758994609925;
        Sat, 27 Sep 2025 10:36:49 -0700 (PDT)
Received: from sleek ([2600:6c65:7f7f:fe0b::ec0])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-636d5b1d83csm1269716d50.11.2025.09.27.10.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 10:36:49 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev
Subject: [PATCH 1/2] dt-bindings: soc: sophgo: add Milk-V Duo S board compatibles
Date: Sat, 27 Sep 2025 13:36:18 -0400
Message-ID: <20250927173619.89768-2-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250927173619.89768-1-josh.milas@gmail.com>
References: <20250927173619.89768-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible strings for the Milk-V Duo S board[1]
which uses the SOPHGO SG2000 SoC[2]

Link: https://milkv.io/duo-s [1]
Link: https://en.sophgo.com/sophon-u/product/introduce/sg200x.html [2]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
index 1c502618de51..2fcc63b1a036 100644
--- a/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
+++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo.yaml
@@ -28,6 +28,7 @@ properties:
           - const: sophgo,cv1812h
       - items:
           - enum:
+              - milkv,duo-s
               - milkv,duo-module-01-evb
           - const: milkv,duo-module-01
           - const: sophgo,sg2000
-- 
2.51.0



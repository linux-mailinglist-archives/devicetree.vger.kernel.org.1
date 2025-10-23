Return-Path: <devicetree+bounces-230463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3701BC02D03
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 19:59:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 077A41A67B39
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 18:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2242834B41E;
	Thu, 23 Oct 2025 17:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="RDd69FSh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5609134B18D
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 17:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761242369; cv=none; b=fam1zXttt7HDXRyNIDBLeDhWUvd/KoXChCjQMHVDY+tQweGSWdIESNHmwSZW4vrF5PaYn/P146YKn08r7liKRKeIAeUAXUktM6jf4+LwohV/Ah/vLOxNNdl8XIFFc6WdnVIFAXB1qyOONngHgENV5AMSOjG8kt7nPhO+1DQADiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761242369; c=relaxed/simple;
	bh=a/X1Acv0a0Io7YPwnyOgCxxAkklMU8dT+67o6Oa6kn0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IXp04jpNYslolw05J1vMAeNEQbGkrtfotYfgGW1kG9bXIRWkuPDQwqFT2qppn59BlSwiRFffn/NOy++P7rVQW4ES4pa9Sdc67Z7k74QFzdiEszxMULxeZwdKHvggq78vVOwUUzKiW3mSRKtgEjk1NdYAjb1RX+JSwAVTgYmtO8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=RDd69FSh; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-33067909400so867509a91.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 10:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761242367; x=1761847167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wfBpxcQetznup7hF07KUJDBVrurA0aaR62AdWj47guE=;
        b=RDd69FSh4HYck4WE9ZLnqBevWz9FwNRjAk6eh71USfTzfXGiyLz0Q9onBpU3W103tV
         BlV6pp424JLmMkoQhtYF74nEKvoTv+ZDMJd4BZY57Xs1Fzko32nxn7xBSxYPVKfP82+R
         n/boSC07SjkJw0pKxAUbBObGoijhaxYP1X+CBf3ZuyIjP0dqaKISLviIVouO0CrMfGcC
         kKZOr0VxYFT7S6/Z8fLt6uyzQJNOSlLkTB28kQuWAuxqHihCSKLShTsHDKFswSdRyO8F
         2ZatKHhLQZ+EhVSGbcC0SckqxceYOVnKoIpCpQ3PDmet2atmg97CMPv/mgVSzQvVCQmQ
         gvBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761242367; x=1761847167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wfBpxcQetznup7hF07KUJDBVrurA0aaR62AdWj47guE=;
        b=Iq7XFidMWoRbVGMzSmjTJ6Yqv5iAFNGiEV4XbgY2qfBXWrmWN40JsZNCdjm2PLwzJJ
         UbOfUd3JC+dVgPTUOCTh0WZJ2rlb9GT9aXi9TdiqC6PoQA0BBUOZvliI8MeutukYEP/1
         xylb1/SR4hZ5CvTwFVHuNYTSlDnWRQRJncRXJSJ3yqHu2dHaOGgVKB3CBKek7XDxYtdJ
         ZU7FJtDnfsgk1v3OFxUR2hWx6J5B4tExVu5vwDvsTOLlzrGa9rewq5DzzzyQUXJP9ILc
         rN3DIDqfSHe3PHk30e+G7qqstfss+1CJseIZ2VnsYoQ0wB7CxaGLcOhFCEIdusKBL5OS
         o/lg==
X-Forwarded-Encrypted: i=1; AJvYcCWQnxmaKJj1HWh85mJOFYuZCjMFI0Hapl6crPaXkDEgt2GN38c2+3oOnIuruWjnBHGjl+jb64aL65Vp@vger.kernel.org
X-Gm-Message-State: AOJu0YzpzsQ/3e4sIUzfOMewA3Kqb9vyhJGZTgf54K8srGlsb44+h9R7
	mr20Iu7ocnUqbHHSY+9IkTgSJT6bG3307I+DICtuT38cztDCIaL67tnJvyAnyW93yiw=
X-Gm-Gg: ASbGncuPSmbAZ+dpYFBmxlK0FzVto70p7HuUnDkdAXmmTaCauKrY72M8kvneJ+u4xda
	5Z9Z1x3WjnlTLSBT58uKmjWSsZW6ZHr9MlDIkfh7Mynuz4i1SfTpjPXAi8BPbVsSMj2Pcwoasx9
	BrScVm8WwvV5wp46IMUDdGXaqF3mYs21suEV5gJIYbONprapm+Dd5wPF8zd4uHCfupvaod5MDJx
	sD7EnS7vqxhChd5QndlyOpNlBzWd+5oFTW95rfjFm+TKnTH0baPSvtBNgJTFv68xPBHFSREnVU6
	jA9h9tBP+JUIwNOhIDp7ZkKm7zN5DAZ2+RHTxq2mzpw/+E1YK1VTGZweQbXJRt07ahE/RETyq8r
	xdIDz61yG8PKQX11+TLC8VRlAoluTjPQopW8Epwx8ttk2ud9Y7wHee5jgVK4K+sTizUsAzr6pOI
	ZfVHJ6bcIqMkDrzxNS7eRLSlJQ3wdsSJIdlA==
X-Google-Smtp-Source: AGHT+IEiskDsftPBzROd2WKzvcPRxdNUDdrslLqgJ10XkgDdwMsWJwp/kE4fHkTeBllQGtyODL0OHQ==
X-Received: by 2002:a17:90b:4a47:b0:339:9a71:efd8 with SMTP id 98e67ed59e1d1-33fafc8fd43mr4507074a91.37.1761242366629;
        Thu, 23 Oct 2025 10:59:26 -0700 (PDT)
Received: from zoltan.localdomain ([208.115.86.150])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223d1265sm6447431a91.3.2025.10.23.10.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 10:59:26 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	han.xu@nxp.com,
	broonie@kernel.org
Cc: dlan@gentoo.org,
	Frank.li@nxp.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/9] dt-bindings: spi: fsl-qspi: support SpacemiT K1
Date: Thu, 23 Oct 2025 12:59:13 -0500
Message-ID: <20251023175922.528868-2-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023175922.528868-1-elder@riscstar.com>
References: <20251023175922.528868-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SpacemiT K1 SoC QSPI IP to the list of supported hardware.  This
is the first non-Freescale device represented here.  It has a nearly
identidal register set, and this binding correctly describes the hardware.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: - Point out that this is the first non-Freescale device used here

 Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
index f2dd20370dbb3..5e6aff1bc2ed3 100644
--- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
@@ -22,6 +22,7 @@ properties:
           - fsl,imx6ul-qspi
           - fsl,ls1021a-qspi
           - fsl,ls2080a-qspi
+          - spacemit,k1-qspi
       - items:
           - enum:
               - fsl,ls1043a-qspi
-- 
2.43.0



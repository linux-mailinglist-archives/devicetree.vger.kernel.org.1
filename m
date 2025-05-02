Return-Path: <devicetree+bounces-173166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5DEAA7B01
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:42:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8E5E983460
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 20:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF293202978;
	Fri,  2 May 2025 20:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qFOHYF9x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1475220296A
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 20:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746218512; cv=none; b=Yc5pbOof9Ghv1jQbCE4cMrcslcrQImPRQxgHaaXQiCyEplHUlnLfCqlWpMnyiYWAJ7kJci0gTf1fckbJUsnrCScewMVhOXiu/odY5xscucShwZ0Argqvi2cRHaRrMSG3C5X6JFLlAVFRMu6Bn7Kc6koppIUFwX+T/aNzoD5HIAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746218512; c=relaxed/simple;
	bh=VWpwqkeczEymfLebrEKS0c1EtjqnwsZNCWo5lpDI+AM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lZVHhUOycmZK0JOYekyNFsxOc/YkLLjtkqD7J78X0ZWlf1/DMnHQqHfAxDiNQmyaccvE4EddgDuzwUXiRAgov8AAt5QAjca7AUEQIF/oyg9xdDjVoWoXZitcYyEyPDLIMHfHVndKtTlvwY2i4URTuEeWMLojMiU1+kEpISS8RD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qFOHYF9x; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30bec442a25so1846241fa.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746218509; x=1746823309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z246kD9WO9fBM3v1g3qf4yYqZCkg30GwzHdViEkdnro=;
        b=qFOHYF9xa9p+oFhQadK6xqiqnabhE33hPjqfGjXPvXXtMHo8Pf+FTLxoFffpaQ0fS3
         BgYa6zUn7XdpUd+35GcY8mZPajalZ6wo81P5YG+NLpklASo8+E7K65GcTfdYgAuuhbJP
         9XuQywW4H3HnQzI1rEMsvSI6+QGRYdWDEMCpnIQOLL8q1bIvYrE5gH1o8qvS2NvxlNcd
         MxOtnc/+rN55a2Eqwf3v86Qh4r4DBC5HmuDbGX2Nro8mKb5yRWKWPCW4Hnt5xpCKRPz8
         6Y4CKztOFExUjsN1k71TiqfnSSNBtkucZXxlZ42MbBtn979jbGgSmelEEPzhEl7QQ+PX
         TTDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746218509; x=1746823309;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z246kD9WO9fBM3v1g3qf4yYqZCkg30GwzHdViEkdnro=;
        b=VzDSLdORvrwZEBoNUeCy8Crda9Nd/uc5xte18HfxwaWwLC3uRBuu0xDlK/JHIMbPim
         Wpl2xUsaehYsr2ZPpnQ/f4k/3EKGjaFczVGSbwsQzohRVyfRZLC7GuPtjEoJdfK9mqE0
         jquLLC7UqMLkgMyv27uKvmbmLKvBCo3dxaRn11NVa/lnLg0E4TtI8PNc9W0/Z3pCBeNU
         nM7vEvPc1kQXz1hT5unaO6qh9eId4SGQKZjDQDJGFJRKQ1GRyXMxDXvXuyeLl+fQH9L6
         EFSGJj0WbjasfU5vGlaqW7XZ5uXZsMCDWietmgB8bCIwuL3NnrmEqZUh412lyGzzBN2y
         +7+A==
X-Forwarded-Encrypted: i=1; AJvYcCUNU/M5c0Z0sMSAUhguTfSAZmHrbZtW+m7otzxLzOwI7TjQMTKzTcPcQNG4oARcRDHS92CpMLqqIs//@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9Zh3IZtCz8f291ZSSHQBczdupFDEgEowsbO9QYPqjh3vB+Jw+
	i+8vaiGdzfAkq6xf84zEYkvh9CmaDGdylubhef3Q/bGCOqXfkpFEXML/fai+yUA=
X-Gm-Gg: ASbGncvNAOL2NRP4h9iqy+NeUwWa9quqQowYQFSg/LEX60iAvN35/zx0SVcKSnwauhZ
	ltrp+bDnDknJ1VBq1gu44k/Upob3GaJTZ7V4lcvQE1yq3wSVh2iLRVlKrTF9cyY/04sUOaOhLmi
	ZJmrnI8Ad5ujD9bpanKgUFnDJV9VpXRRA1mA0gdrqAuy5eY05DaiUgvHvR/etcFbV8D2FpuuzFs
	00tYG64TPbr8rSujdyvxq2qvjWL1u3rR//CElkfiIMnDN3rpO3JRLV5JMPShftd6JMSbRdpXAwl
	P4Ddw8DIWnibziMtxwoJFJjXlivYWrFLEALxmzlu5HHReO+wnZPUmliZuernv/6K6PMFXBu1Si2
	j6AUrK9+eASTDiTpTa+iObwOcU2NSvg==
X-Google-Smtp-Source: AGHT+IFNiq628qOi+XtRBGVyUOhgnTb3NWzl5Ifvz1ocQ2BkI1t/QCLD+7WvfFj6wyod8jbCsH18kg==
X-Received: by 2002:a05:651c:222b:b0:30d:913c:4416 with SMTP id 38308e7fff4ca-320c63b8dbbmr4457511fa.10.1746218509109;
        Fri, 02 May 2025 13:41:49 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32029017825sm4675301fa.40.2025.05.02.13.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 13:41:48 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] dt-bindings: media: qcom,x1e80100-camss: Some minor fixes
Date: Fri,  2 May 2025 23:41:39 +0300
Message-ID: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The changeset provides a few minor fixes to Qualcomm X1E80100 CAMSS
device tree binding documentation, which are in time before adding
the actual device tree node into the correspondent platform dtsi file.

Vladimir Zapolskiy (3):
  dt-bindings: media: qcom,x1e80100-camss: Tighten the property regex pattern
  dt-bindings: media: qcom,x1e80100-camss: Add optional bus-type property
  dt-bindings: media: qcom,x1e80100-camss: Remove clock-lanes port property

 .../bindings/media/qcom,x1e80100-camss.yaml          | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.45.2



Return-Path: <devicetree+bounces-173487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7426AA8873
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 19:25:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BB25176E60
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 17:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE351EEA34;
	Sun,  4 May 2025 17:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZUnf1tIG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0CCA32
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 17:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746379536; cv=none; b=bazPbh34EzNun/AzkurCZz21Y8oa6erTEdiTqZLZJek2Owoj3gJs0fqd0akc6EcvqLrdpzM2eY/u49zlPkiW18O7WRw0o5rmNDcC6plWO/qxOBVfvTLFcu73tObbo4/BLKZh06YlXjGr3R0Pj2m5TcwavbWYwEhrPG4y9ra5ONY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746379536; c=relaxed/simple;
	bh=Ms63/2y0DA289uzZ9A2EmLRu7PgcSpq1Bh1Ff+1cH88=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=AORQDcZAnqJjgvuonNoj89tOd2yTPDOeKeR/TLIBZYaReXUDzc1oxSxztWHipej/vAeNDGthLyi+UsbD8e7ufFBCNkx35vRzayjpPIh6ngax087re5gg4ThO0Wq5A8CENLGCaedard4XHD6iQSebmLpsvby7pi/JNb6BaiP9wJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZUnf1tIG; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3912b75c0f2so180810f8f.0
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 10:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746379533; x=1746984333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQ7tuwuM2LFYHZnclmNcrhhek280gEdNY36z2AcaptY=;
        b=ZUnf1tIG1b2BbSq5Qu116N8p+1Uz8d1i9F0uyEfg8cWY2qwyOhq4n+QV9S3VEHOEXT
         xCdhamLDR6TxW9s+JxxlvrH1CmrHarnM212s1g+efZIJAJ3NCjRIM7p2eFVxukay5j+M
         Cs6iEalRHFK4zO+y9yrY3CLSLRBM8dHk4InIsrprVjoUSd7Vy66A0K5cgBagHASa1iC9
         uMLxEMdZsaDjIH1KUS9YIj2azMNHSCR4iTTV07HvpkmhwNA8VoIiVIL4LYDfHr4jU5FP
         W7XA6DBAeX7dkOwy57BoV64VrmZVnYg+pXL7ej2vFtlvxKLCoN63LSsOQZ9K7h/NSoJe
         DqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746379533; x=1746984333;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQ7tuwuM2LFYHZnclmNcrhhek280gEdNY36z2AcaptY=;
        b=NuiaGiu9/26QGSpIhZ3gDHIfjLRyDCtRLNqMeXRxSz25Qm+m2e7+61hRyn917Xe/Kv
         mqqvH1C4p20xjJt+UoQHAdSdxZvv9R09BxtuxiEJZZmAyVk+JVJE3DxKnULkPRtnU0z9
         OeQ5oqeHwl00jHyztrgun/TFlgbfSdMMu03AFeyJY+IpO0TJm27IfBbCaciwFOP2RRUS
         KhlO+W4/7CEboDFGewZZpuS1MLZofkKGQP20D3kuBxCtFhk+iTL/614oMIjEOk5gBGzL
         T+QBIpuKsTYTgg+6TEgyOX0Ab61TaQVkoZKeivgUyhpM4mHMaN1bDVpzWg2MKxhn9Zzf
         3WIA==
X-Gm-Message-State: AOJu0Ywy/KgesuSTyM1+vZ68+yfgPMrXDz6rTrknN/FGCHJmiAI1kauD
	zUc0d2updXbR4JmmzUxDtfZEFeoUvp8MdzAtroTeODosSPdaGX99vbmjcpB9ZK0=
X-Gm-Gg: ASbGncs6bgwZUp0WL1aU6Dp7EzhwbiOk1V+Rwutor8SSLGhtbbdXqr5qup/iWS14U0y
	sj8nNJi562PlbRjWcSwBbvx+ylpT6n7VaJyorzaUELAKCUgz6vfgd7keMWABAI8yQyyx5Fup/y1
	qkPkIXMkRdDOQftFRX/03BmwoefhZraUjfHLUTr5Jin4/y/VlNLFOon2WFEsLpzxAu/tjzLTk9G
	shHs+kU99BkLlasiW8sAsUZ+U13WoVGZ9JSa4yAAx3b07tMZ0/hENLazxbzju08msDCCNniMK/J
	+F8MH8uv13UIXH38ApUCO0oBzO3ZYZbKz5NxOBnJPT6ipNP2BHYA2SvVOFg=
X-Google-Smtp-Source: AGHT+IGOU2D1HDiQWNlXLDQ7WFeRlkZ1+eYoBamEUGxGy1/DSVrQ46pnltTWn2EXYZd+XJi5rlymwA==
X-Received: by 2002:a05:600c:1e1c:b0:43d:fa5e:50e6 with SMTP id 5b1f17b1804b1-441bbf4af50mr34682955e9.9.1746379532792;
        Sun, 04 May 2025 10:25:32 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b0fe9dsm7896332f8f.71.2025.05.04.10.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 10:25:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250503-wmt-soc-driver-v3-3-2daa9056fa10@gmail.com>
References: <20250503-wmt-soc-driver-v3-0-2daa9056fa10@gmail.com>
 <20250503-wmt-soc-driver-v3-3-2daa9056fa10@gmail.com>
Subject: Re: (subset) [PATCH v3 3/3] ARM: dts: vt8500: add DT nodes for the
 system config ID register
Message-Id: <174637953156.102764.4565832687036270187.b4-ty@linaro.org>
Date: Sun, 04 May 2025 19:25:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 03 May 2025 15:52:33 +0400, Alexey Charkov wrote:
> Every VIA/WonderMedia SoC has a 32-bit chip ID register at the
> MMIO address 0xd8120000. Add respective device tree nodes to let
> the system code access it at runtime for the selection of appropriate
> hardware quirks where needed.
> 
> 

Applied, thanks!

[3/3] ARM: dts: vt8500: add DT nodes for the system config ID register
      https://git.kernel.org/krzk/linux-dt/c/a43a6092e33d6a5827114c797a2951c092851931

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



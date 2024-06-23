Return-Path: <devicetree+bounces-78916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2F6913A74
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF66E28235F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A02F181308;
	Sun, 23 Jun 2024 12:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fdIezSi3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0CF312E1CE
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145321; cv=none; b=FTV/7Xi7qm4Yz/xvFjvxbhW4ZQCgXmCu3Kj80K9UV69WKYF6tEXFuvKmC/w6JjhWrjjkKt63YAxob5vQWO/3QV4KapqpicTJXkwL7GK/0NLW5uu9c7JScg3eRgqbXD6KGeGpbz+6mZxFufexD+AS9sQ2kFmBfwELcVIa0Hie9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145321; c=relaxed/simple;
	bh=QLyVxh3PM16EI0Yg+KsAxE5zNNRLSRF/Qah36B69MsA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qMVvk6GKi0pMBRiFJ2R2pB1CbVtRCDkTi5EuWgm2BJrIw7JRGD9jiS+Ymq/zd4bmeGO85MCs2z81M3WUBfLC1toNtxH5Qfu3HIE16/gTAeESViLZNyJiw2t6hbDLk1/d2vXCJhdyhWraxyqsxsoSGKXmPcz52HxS8RUpj6qzQo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fdIezSi3; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-363826fbcdeso2453627f8f.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145318; x=1719750118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgre2tmf9SXFj2cqbgPVUjh3Eed5VaGUQC0zWeY+boU=;
        b=fdIezSi3MWw9rDC5ddm7iE88WjF1FvKv86jDlnzlEYkYl3TiuuurD1dn7X4cJOo81F
         zmCdtLwkElQ09JKDztIoKFi0bl9DsYH0biHV1JCbsl6/AJxoHunv+r3nI0vKgAUrHYrw
         t4uhonOXL35cT14ze0eTB5ION3jAw8E9HJwH1ZKfFHTYH3TuPZ50k+NCe1HpiMuoH2K3
         Qm4ETgaS2jlmOqhoqjWKCRMF2k6M6RUUKQ5ZHdYJv8edI+BDXmVwUkxdm6+bk9OYANCD
         raPhK1zvVb3mC8lwskSNLEQVa53Xu0s9+Mr67fe1MekNro5vzyJEt+JZsGRLXvDbsA0r
         TF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145318; x=1719750118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kgre2tmf9SXFj2cqbgPVUjh3Eed5VaGUQC0zWeY+boU=;
        b=qsAZPzZHF7cZEkxyilWAT2DlfrOolmS1PXNfhzz1swGeV8W4FZLR44K5biAjbUkIyI
         4JTLwYiA/eWUVcViubvWx8CPI8WArvD1pxouAYv6JBJ1Wg0JCMs/8/V2ygaMLTD6xrs1
         md2dUV69CSVi9JH2w5/qD7eW/dldWqIHXERZSz1fXLtE+1rlxXlLMAmDHUqQWpcM4QI9
         LB8197KEM1mUMqqtGMhrLNdYOIJTfCpeLrTA2Baz6uiiq+xNcRJ1fNf6LGgoHSaPEX1a
         FJLQ4a2N1pjnhPlS4ob7LpQ4BigenHkeA/PTBxRbL4wHYzPmUwjStSa+UjEV094Aw+1U
         snYw==
X-Forwarded-Encrypted: i=1; AJvYcCWRKDXgWLQQUB0XzOm9ZOiGNAL8aY3juyOi4ci4eRctbwqwh2nV/Ak+IRXBBSokny68CABZMC8K+xLe+zz/byGz/R3MWrvm36i/XA==
X-Gm-Message-State: AOJu0YyY9BWqvGlx9SKIBX5XPFeuAkIwixuHpfCFCh+S/ySyPiI1it9x
	8cT1qMyjGUkdu6FDbUe7X6+JROK8akk60qdCpK7EPNn3bNr80uTFKmt9CbFmKU0=
X-Google-Smtp-Source: AGHT+IFkOrybExCXqw1aas/OIA9pf7OdMxt3VXdHbfkpFMy1QVq0N03E8F8aFd71i2/Z+mUXEfAJ0Q==
X-Received: by 2002:adf:fd87:0:b0:360:81d2:b06b with SMTP id ffacd0b85a97d-366e79fdfbcmr1251813f8f.18.1719145317888;
        Sun, 23 Jun 2024 05:21:57 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f693fsm7197553f8f.69.2024.06.23.05.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:21:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm: dts: aspeed: Use standard 'i2c' bus node name
Date: Sun, 23 Jun 2024 14:21:51 +0200
Message-ID: <171914524817.46635.13681344434936708370.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240531193115.3814887-1-robh@kernel.org>
References: <20240531193115.3814887-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 31 May 2024 14:31:14 -0500, Rob Herring (Arm) wrote:
> The standard node name for I2C buses is 'i2c'.
> 
> 

This one is waiting for 3 weeks and I think it wasn't applied. Let me know if
someone else should take it instead.

Applied, thanks!

[1/1] arm: dts: aspeed: Use standard 'i2c' bus node name
      https://git.kernel.org/krzk/linux-dt/c/11afaf16a6540754d618179bd01791fc03480146

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Return-Path: <devicetree+bounces-81924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0A791DF2A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88721281A99
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAD8414B947;
	Mon,  1 Jul 2024 12:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hb26X+hW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4779814AD35
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 12:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719836863; cv=none; b=rzibmXSC+KkOqHIBQFCcitfjDVvY4+2ZL0MZaaMiXHTyrkkpLfZ3CIACM2DDfpLRFr17JXg8sWG0Rb6Q/cxZO0irS4H0QYbrlIQZ24O4nyIe4PU3hjHzVJKyWQZ1SDPelf0aPHaSjSuzY/Gk5hdRQzDbkJFSPbMBNz7iZtLUU0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719836863; c=relaxed/simple;
	bh=DKtxpPgVNtsn7K3hHeygsIzw1BFxEqTpvfTeM+AQT+s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hn6UfWNAUMB4zFe84Pcd3Wph2rwYA+tlaE67HZXroHXTdoB69LD2OsGxqCyTi7p7+j9pNuQPzK44j/eh6RQ0vXUz/x4d6Dm41wSODfY+QUaXrK3gy1rEq+LuTMDnDHXVuOiEA/efdInDSJcZiJRBC5nxdz5qGPXaTQxRaro03P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hb26X+hW; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42567ddf099so21281735e9.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 05:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719836861; x=1720441661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IbKJ1+fHrcfsxoNPssv5ufXQjSB4NnSOZ79R2VobUDs=;
        b=Hb26X+hWtdxku4kNvWXx2QTDnVXqfsxei5cJwNrLYvRB8BZ2vid8FHRGW1/UnU27Wn
         xe2aq0si6KQ8yIUcNgEjjh5rzdVDR6IYF96DmAPlgqLQmQBUMvX4TObcGPOu6GDpTXlN
         oOW5mq81QcpjRsP1Qo+Jg0xXqhSwcjw/uRZyAnridOfHTyifQzJIEQjIJUUesdsleCxS
         gS85qnhb6qErGTozxsyGFvGWCKuZ87UXCRvzp7CVnI+hhARkLLHSQP5/+ViLCr3PedNR
         MoxMmgkpqTs0ZWawGcL8g3j2ioyAh8atXsCfki+ZrFBNAPau9Fai1b/s8I+fsR8sajDj
         kRBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719836861; x=1720441661;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IbKJ1+fHrcfsxoNPssv5ufXQjSB4NnSOZ79R2VobUDs=;
        b=HGNfauytOzlaUXnhSMmLoDuP/yBCEgisL/WncxCgGlaJlIcKVNnAYcITkPvfDPRW+A
         RtWlwrERTjWoDXf5NgKGEokZdIkpByyl5TqM2yY0gzMOsgLdMD8fH/PisBWNiHZaO8hQ
         C217tWaaOXW9aO6MfvDB9Y3vMzqsOj9u72zkxuEjEjopek9aSN1ieqP2gsMNbGXeZXOA
         jKj6/D69MIWEoP+Q2O3Q7MzBDjHHKr7M4vY/xpzKkTdrSTvSnwUxI9qptjCC8g5LQrdt
         BOurXbjt09NYerTn1MWIdWHFuifBpy2jqWraSpMDTkBK4kFljLG9Bo4e51yA2yGSI9W5
         r+UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXexSOmMWx4pfqBOQttLx4i+cdKp/pKmANXEU5wkQWGAWBT3u7plwj3V3qj0in3KDHwHTpjTsgHmQQcERo52KNRvyP39QWfV9Yg8A==
X-Gm-Message-State: AOJu0YwFlUwh4wnPfUakxN09GIO6zPGNdlxrHK9j+Stbgxl5gYL7QdPZ
	hJz3PMWkYzKB3Jf0jmSwbNop1OmZJ/U0NwmjvePjmN0Khd22X/G7r/yXyiTxa4E=
X-Google-Smtp-Source: AGHT+IFH35xxvg5N4AtgQdVncudDweLagl90Mb/QWe2ODsQ64shBW9nGUOgVWRgqPVDQN+ts6wv3Yw==
X-Received: by 2002:adf:ab17:0:b0:364:a733:74de with SMTP id ffacd0b85a97d-367756a9394mr3104569f8f.28.1719836860636;
        Mon, 01 Jul 2024 05:27:40 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0d90d5sm9961414f8f.31.2024.07.01.05.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 05:27:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?utf-8?q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Anand Moon <linux.amoon@gmail.com>, Olivia Mackall <olivia@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-samsung-soc@vger.kernel.org, 
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240618204523.9563-8-semen.protsenko@linaro.org>
References: <20240618204523.9563-1-semen.protsenko@linaro.org>
 <20240618204523.9563-8-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v2 7/7] arm64: dts: exynos850: Enable TRNG
Message-Id: <171983685912.414640.3760379043384228947.b4-ty@linaro.org>
Date: Mon, 01 Jul 2024 14:27:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0


On Tue, 18 Jun 2024 15:45:23 -0500, Sam Protsenko wrote:
> Add True Random Number Generator (TRNG) node to Exynos850 SoC dtsi.
> 
> 

Applied, thanks!

[7/7] arm64: dts: exynos850: Enable TRNG
      https://git.kernel.org/krzk/linux/c/64c7ea42fcc2b972fc8d108642f4b8fabf0999c3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



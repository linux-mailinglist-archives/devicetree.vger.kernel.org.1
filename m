Return-Path: <devicetree+bounces-256237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBEDD3842A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 19:23:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DCBB8300E075
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 18:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2C23A0B2A;
	Fri, 16 Jan 2026 18:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qr7/f6GD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6D3A0B0E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768587774; cv=none; b=CTvFDGyBS1LzIV69xK8M5qxgWMKE2Ws3zRxpczu5lMZlCwC2SByGfSHHz8mlDEINaS4Brg2pYR6kRcLODS6cF8xdLhqGrfYMqPT4TsnD9ZlbYuP0PkTyTPvveFMCK0v0ThrLOAVM8H36wyRkd1LSZ13Id4jeiHCARZRq6aDAsSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768587774; c=relaxed/simple;
	bh=uy11Shdpgv9uLU9B1TkSwOHyZp/lWDjQfah9Ah3Fmes=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=abgL7ysat3yhtIWnPtgwJrP3MT8gPz1MtPgdL+L08yoTMW4Dj/T6u2BIIr38b+ToDDcHXmrlG1MITD7l1s4VG+zqoyZCgDFtZ5Z2YP/OL90WhREz7Y/EK2kz6Dznjfgd+qbisFi5wVPy73gCSyOMzx4ZzRc8sU7Q6XYsR3OxzfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qr7/f6GD; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so18226305e9.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768587771; x=1769192571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EvgbuX9nAhyJ7Hwsvuv5371paiIil7d2Xe1Y8FkC62A=;
        b=Qr7/f6GDwATjpJ2ksnPJPOAx1gxw6caR+cvzLqYCr20UllwJbHDtQF/C/kO3p6WcFr
         TIenR1IDFfJz0V7dgmxNFEz6kqSYs/Fnu/SWBKuWIvudO6zje2FGjkZG8NiYAsDLER2+
         WFu1P49/ybsO8kKlRYdgQEiEY7Jpy4cHuigE8ENB3wMoR9kzJbgZdQInrL0Ks0Gk5rzI
         Cy16HJjWJMFPEDGkXLrSSIIHS0c3EWU9xNmAakCL1pPmtrmRGaGYkEdHa5AWlc+X4S7p
         XWKuHLq3PbF1ZeesYrwiFGg6CJ+vL+IJrAHbaXiX2ZiXk71+WMPDk9C86EaM6tn3RV/y
         LaSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768587771; x=1769192571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EvgbuX9nAhyJ7Hwsvuv5371paiIil7d2Xe1Y8FkC62A=;
        b=OOZfST6BLSeE2bjEmYDe2fzd/OzEIdCR+eqU+lDQAPlOYdxzJ7GMoIIOHQjDGmq+yX
         IPV0Hj1810taTWpPrU4PoSB/qj4Delg+8RfZ+6cyW/5w8AfSyBAetw0VNxN21IKUu/Pb
         E+u/Cfm1FwSAcGj9fpVxXCFi6zZZwLsfSfkcEACtpJNMozjJdyXJ/CWTou1YNAkOQIbc
         OjQScklx0qBEzHgSp1xHELsFcQBsFG5Y3BmYtLtt9Ez/zrLmIrdZMMZXlaawv0gxVD5b
         qPZfyIjrAAgvt6dp712pLBNgNfvWBFh3atnmz7YztdnWIskWx6+NrnJApwPvvPZ/lpk6
         EmTw==
X-Forwarded-Encrypted: i=1; AJvYcCWIU5DhDvCDBb9OUktLJeAzEgQcOmFoqRr0e4FVFcebVaW3/DUCZd0731r53ofZWMKUxZG5NrJEzbWq@vger.kernel.org
X-Gm-Message-State: AOJu0YxZAqC+1cwHGW7HSD1UGvM0znPfvGQtDz3qJ00K7yratPYjKjM1
	FP5MTeiQTI5D+0AC57UNUSEKU3KNhqlTbEZPJ8Motuz2v4jV6tTiVMVe
X-Gm-Gg: AY/fxX7WNZaEpujxXsgcosSVjETSvKzlmGviQvVMGwpvscqEZFicINDRghrsPn4sqxn
	z8Hcg4V4VX+dWzsd9FcJnyLJ2NzobgztfzF2F0ZWptpEWVLxmdtzlhqNsQaAdVxW3OD8K9rqPaZ
	ub4PMCaPZhYotB+o2jK5KvZMYQQZsleIONVnJIjJEJL+/VVbylw4FZ7UYkJCUu5OX/sZhJB7N/x
	nP55j8G69GNQlo+rSjEaRNgrOBF1dCWAbrXZ6Rw78cbjrUBF6x/YlKcfiLxJZAA1TUAqCWkMZRP
	YcS2kqkNxvmo+BzDRwMEk5fFQqZJDdat+WI5wf2z03Hfvc7G8xeBsxMGaRGH7SVxm7bZU9pnwBS
	iYKMhwl4iIRDfzNTT/ybk7obkMQWgEqdgYmrmu8IkRDr6Iu11QFdzuuUVml81sUjvZlwmdZ+GeG
	hdpI8YO2TEevc2h2yFTk5Nq3ZJUgNslZTojMwvI01QjZ3nAhXTfEHzXiSxUeQTkXy530Vatwsq6
	/Hk/oE=
X-Received: by 2002:a05:600c:3593:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-4801e547d1bmr49651095e9.8.1768587771338;
        Fri, 16 Jan 2026 10:22:51 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f428acae8sm110762165e9.4.2026.01.16.10.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 10:22:50 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 1/5] arm64: tegra: Drop unneeded status=okay on Tegra186
Date: Fri, 16 Jan 2026 19:22:45 +0100
Message-ID: <176858747081.163050.17024691327969889246.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Thu, 15 Jan 2026 19:48:41 +0100, Krzysztof Kozlowski wrote:
> Device nodes are enabled by default and this DTSI file does not include
> anything else, thus it is impossible that nodes were disabled before and
> need to be re-enabled.  Adding redundant status=okay is just confusing
> and suggests some other code flow.  Verified with dtx_diff.
> 
> 

Applied, thanks!

[1/5] arm64: tegra: Drop unneeded status=okay on Tegra186
      commit: a52ae3c90e557b3cb845e8055860550f548d4b84
[2/5] arm64: tegra: Drop unneeded status=okay on Tegra194
      commit: 43a41ac8ecd0555e730ec79034cfd7176e50c4f3
[3/5] arm64: tegra: Drop unneeded status=okay on Tegra234
      commit: cbe8d19ae78f3cacb802d1b99b7f94539c3f5550
[4/5] arm64: tegra: Drop unneeded status=okay on Tegra264
      commit: 86adf1f9b3a4077a0283f43dc657d64f3fae3465
[5/5] arm64: tegra: Correct CPU compatibles on Tegra264
      commit: 7fa96da464327dc4068c1dc4e1ad2eb7805d3c1d

Best regards,
-- 
Thierry Reding <treding@nvidia.com>


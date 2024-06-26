Return-Path: <devicetree+bounces-80180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6981917FAC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BC681C21506
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1756517E911;
	Wed, 26 Jun 2024 11:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U4pv5eo0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B60C17D8B4
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719401389; cv=none; b=awzQr3AROA0S3Yx6PSzma3QpjunFmwBT7bkdaaW0eDyR65KcfBS+rrrD0ucCpfQa7DAbdDuHJ1ceJcrBDIRYFqVwuyLeFgBIcZE0DOCQcovgQlS2SDNHH4AvQHl5u/nQA4/0plaNUiIbxY+3aa15gi7TrgeK6U18BxCPbB0KoZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719401389; c=relaxed/simple;
	bh=4gzPNh34IeO799FCFLFPDSLzK9cSBUSofNIw5HvDk9I=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sK9RRL1Tf6Ip3535UUKTAWqQevei9aiSjchs9NM6xOOEbxIYk+vTnHnt0bclv8Kre7XMy6dogTX7LbNQL/2If1KJFbRsw7gsdDXYnYOQt4F3uBD8pCENxQu6w4W19k5kp5iZ6TDSSghx+E7+ZQ9vOs2h0i9gAAQ/DdULFx5d41A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U4pv5eo0; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42561715d41so876535e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719401386; x=1720006186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KymTIi2UrAbK6iLm559b/8fUQ5fKn1XuICh61Vx1aqk=;
        b=U4pv5eo0tnJHRR0uioAhVA1K5FzBDFK3FxXDv1044CT6Rvdqoxw32kDkm0GzwQW6Dq
         ZEEcXmV/P9c35Hz4EosreW8P3Iln8AlZMEGuU3XwpXgQGGF9f0PKec9gG6jJH6UVWZmg
         vawrW5W/cQY2sHkytpKar5xCutHo5HKNpJbIONYxmfyTYP3O56jP4hdOSNL0YvamPKCo
         4t1PgLEkv974b1nIPDztgdZVyFp5Ed+DILWf+LpIKnwD5hntrxCPMCrJU1xY1M1lxjNe
         +1SQ0uILRsErlCDMWY0tnv2P1XEOTDzd2Ua/aMmg04YWaR6YOX9orNOqI96NabwMOdRQ
         4aIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719401386; x=1720006186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KymTIi2UrAbK6iLm559b/8fUQ5fKn1XuICh61Vx1aqk=;
        b=cPXN/imw8zy+KA0KRXBJM9imdiasyUNUw5BycX14dl3s04G3ncI8qEMfLBofZwDkYq
         2S/cgZBV9AbV79Kijg39EQoQfgB7MZBxN9vWwlZFYCCQmbmDu5JHj0NZvn8OhrQ2QyYQ
         UACtsDr94pKV4wT5hWfcBb6gpVEJ5WX3UhJ4E4NwW3oShOmz+zW6PBdP49Nu2wOoo8da
         3KdKMRXO+icMy7ic+h8dXt5bobxjnGpzjFRtv0jkdCvzHUlMcZ4vF+nuAlG7x5EedS51
         2/SeRVMDD6a/g3ypKsO1K6M9MowEWNLjuLgtzSaxhopbxnJiJZWgCrviWqF+6ANAPCYy
         uU4A==
X-Forwarded-Encrypted: i=1; AJvYcCVxtkqNt4WEuXWwSRo54LPMUbNhok5xhjRdRZeZHInC1LczaPP/jneC3APvndrWl9wrMcldt5bKBjpLcNAaW/+38rDbm4q5PeaW1A==
X-Gm-Message-State: AOJu0YzGUbsx5bVN1/lmBYYfCGdCOa2peH1nrbN7Hq5LtLyyqO6UVL2U
	zhEa1KOPcbP04H0/fbetwY1ohoXE9mJs7ixB4sqO0h5zTvgsIdRNVuorNAobRLTSSe6phhYQnOm
	w
X-Google-Smtp-Source: AGHT+IE6TNITZiZA6yQUaGfTrdfEFJVtYZpT8JcHpQU2L5nwmmJ0MMbqoSUKGdT+ui8ILtpg/KxC7w==
X-Received: by 2002:a5d:4a81:0:b0:360:70e3:ef2b with SMTP id ffacd0b85a97d-366e36ba8d9mr10405352f8f.26.1719401385693;
        Wed, 26 Jun 2024 04:29:45 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f679bsm15645355f8f.81.2024.06.26.04.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 04:29:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH] dt-bindings: soc: sti: st,sti-syscon: document codec node
Date: Wed, 26 Jun 2024 13:29:42 +0200
Message-ID: <171940131512.32913.10924044937405928062.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240517142245.178556-1-krzysztof.kozlowski@linaro.org>
References: <20240517142245.178556-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 17 May 2024 16:22:45 +0200, Krzysztof Kozlowski wrote:
> st,stih407-core-syscfg syscon block comes with a child - the audio
> codec, whose binding is still in TXT format.  Document the child to fix
> dtbs_check validation errors, while allowing later the binding to be
> converted to DT schema:
> 
>   stih410-b2260.dtb: core-syscfg@92b0000: 'sti-sasg-codec' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> [...]

One month on the lists and STI folks did not pick it up, dunno, then I guess
I will take it.

Applied, thanks!

[1/1] dt-bindings: soc: sti: st,sti-syscon: document codec node
      https://git.kernel.org/krzk/linux-dt/c/68c402fe5c5e5aa9a04c8bba9d99feb08a68afa7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


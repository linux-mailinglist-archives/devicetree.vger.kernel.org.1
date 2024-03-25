Return-Path: <devicetree+bounces-52873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B42688A4AE
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CAAE1C3BDB5
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736F617D23E;
	Mon, 25 Mar 2024 11:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="by7GZVNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA771B7F44
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 11:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711364722; cv=none; b=eEzoNc588IH6MLFnm02rPCqfcCpvZCekpSPDR9iwe3oPGRQKC40CNmH9diNb7cEnqQo38LlJq4ForXaAw1lj38YKXfEGx3OcrM7Ob9WPDHGTJCzclJx+mwlVsz6o4wn4MVjtqYHxeNbdAAtBdr8E6UNWFiDuUouYxJZMpNY2Lyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711364722; c=relaxed/simple;
	bh=m5eDO3RTQID9P7x/shA6GSlFY/Rni5J52DORUXdGJoM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KWeB+k5stug4Fad+7GzyThjaWUbEXIFFNIq46SasJaCBSMUuihCVUdc33kmqXFhtJF+BedRzQYZKuWTKMInbm6j7VNfINHeIqYVI2F6jTiUEC8EHGKXr1zAndW3NoG5orapBhIGhWRB/AFTp16QVT1coIR3wrpBFUt5vOuuSpdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=by7GZVNL; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4148a951567so2442725e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 04:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364719; x=1711969519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jko3WDvWD5U/PNEoxKKHrnCytqZxWBTaXJmWmL6opzE=;
        b=by7GZVNLKZMflN3PDFKxiy7r7R6Q5iFUUgBW7sLF3eviL2TOYmhT8iqL2Gh7e0KVE4
         fDh5ANcMVO3rc4W9v9WVrIzuVQEe4QtKcW1izUDsIAclbYv/V1nL99j17uDgVXX+2j7D
         phAPzVoNzwLbao6Vvt9wvfzO1vsHu2if8udbfVRCPBNuoCfPHn4y13uJdXTBmUT0zAQ6
         8PfYkQtQq0fkcLqq8FkayW31j4iBlArBexWFiiO85LQ4WrMDpBjSs9ilWiNYyzfwPUn1
         D+n08jdDItF8t3jUvca+4P8a+w214VxhkUEqhP2ADgtoePeEkF/hKieQhUEndKUHovZW
         nkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364719; x=1711969519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jko3WDvWD5U/PNEoxKKHrnCytqZxWBTaXJmWmL6opzE=;
        b=U9o13keQD7ComjITGNBTVORt4R8yrTCMDuGXxOeEGBxmgAHbnYCtv9CyqyodxZt04A
         M3b8s05g4mwi3+DfQ5tOJECi9ux8LoVIKh0f2bwmakdRieo3VbpeaDddpRcR2Q5x9jZa
         Y6BDSvRYSoSiDq04J4cai5OAXxUykrRmk+cPX+pCxtMFSHGdfCmx5ICWjHlBFkgPLt9V
         aId0416KC/ehm/51WtoQ8qSgRxl1rR7msLTGAIktYYSFtt3JhyH/O+57o31NYjudkeFU
         kPYlo9rZ4MLNS5lw51Zbqhd7WJV5g1mxj0WNysPbIbOe4WuAJaDsDdMUboBMevFSQuMU
         t+rw==
X-Forwarded-Encrypted: i=1; AJvYcCUagekmhKuPRU/IUpDycIGZOMejshl4Jbgv74Ko423UqMB/ApSSKBdETvVdTT3uCFHC7yuojbcUn6EkxDZRMoWtMOfIKhqcvnoRrw==
X-Gm-Message-State: AOJu0YwbWOA4iFdRQ3ejHD9Oa+G+4BhqlyBMxPxB4NUTLtwenh6j8tlz
	/DiVTXR0f8Vy4/FuTi+/nEo2lsaP1xzWc3wJOT/g4IxqIdD4dxhyDcIQBEDDk5A=
X-Google-Smtp-Source: AGHT+IFi3xoZ4AXsfZMpFCg9vhaUKU1DkrVQrRUxsz4AMdPOoRSTctHJuof39IppTsaoifcXLWdc0g==
X-Received: by 2002:a05:600c:1393:b0:414:d8f:4399 with SMTP id u19-20020a05600c139300b004140d8f4399mr4522559wmf.18.1711364719145;
        Mon, 25 Mar 2024 04:05:19 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id gw8-20020a05600c850800b004146dd6bfe2sm8053538wmb.47.2024.03.25.04.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 04:05:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Amit Kucheria <amit.kucheria@linaro.org>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH 2/2] arm64: dts: juno: fix thermal zone node names
Date: Mon, 25 Mar 2024 12:05:14 +0100
Message-Id: <171136466536.36729.15243854495211929982.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240103142051.111717-2-krzysztof.kozlowski@linaro.org>
References: <20240103142051.111717-1-krzysztof.kozlowski@linaro.org> <20240103142051.111717-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 03 Jan 2024 15:20:51 +0100, Krzysztof Kozlowski wrote:
> Linux kernel uses thermal zone node name during registering thermal
> zones and has a hard-coded limit of 20 characters, including terminating
> NUL byte.  Exceeding the limit will cause failure to configure thermal
> zone.
> 
> 

Applied, thanks!

This was waiting on the lists for some time and no one picked it up, so... let
me know if I should drop it from my tree.

[2/2] arm64: dts: juno: fix thermal zone node names
      https://git.kernel.org/krzk/linux-dt/c/85170635525758828dc22be83f6b17a86ccec312

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


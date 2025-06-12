Return-Path: <devicetree+bounces-185371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B82FAD765E
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 17:36:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 361A53B1A3F
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 15:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F2CB2989BC;
	Thu, 12 Jun 2025 15:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g+/HFlGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D4B298994
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 15:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749741974; cv=none; b=VKqeVY81MOozG0EDjKqyqpPYw1t3zV5sY6QGBDsuidoDX9resevNHvPYns7zOY8O8lmYuPfVwUHif8qIp9GNHopvpMJdp23Vuhp+lZP99pOyx5zLTyDq32TqQhRQgV+ZYh2bvMwzq6LO+Jd4a0aO00JeIDXVfQuFCupb2iat13I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749741974; c=relaxed/simple;
	bh=uB2/+QwynZ8vGenLrGbzuTkLtOtaUNYpuzBG5pr5iYo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CdJDZdQV/jMo7RfsQcKUiLbc/7MoREuTjabkmO6g2Z6fT9OhFCSuCkAULBtOr/crIPHUfpgaMQd9y+hETiAYAYl9OZWyfsHsoTxJr4My2eenSN78kI+PIUe47DH4MGNQC00P3v5LhGQggI4Qaj/eB6W7MMBkx8thkl5Fsdyzhpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g+/HFlGA; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4519dd6523dso1187015e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 08:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749741971; x=1750346771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1sBKmOIevGi+6n8iHRw7aDQ4iSU3hQcgvE0ZLGu7yXg=;
        b=g+/HFlGAXuJrWta81+hHc7MJLY4zja+GeZEUd6utlfIaY405YkjO413DGofZgg+Kuw
         VKNugpoHEuAUNMnbpiRmfHWzuLKeWIA0tCWfDT2Af+WGCtybru8+wMcLr9ljHaiItU1o
         /S4ge37Pa3X9RKMadVAyJQ2yzvP0gOQ+BXaDo72PEsC9hgzNF5b9ip09MESHRKbOMwaX
         LyiPLRKZZZ4Isrp0S9gY18QiUAad1i52sK4C66iO9hRhIWuSIa1sXQ+qGlfnpDIDBrm/
         p3W63tlfjUMLnaLRCmaLeUfr905S7K6QUoSVJL7MqeZ8weC08bj3R9K9eiHdvI0W4w6D
         ur2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749741971; x=1750346771;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1sBKmOIevGi+6n8iHRw7aDQ4iSU3hQcgvE0ZLGu7yXg=;
        b=LneWNbRJQ3VweDZ2OzKOkU2aHVN93kQmOU5fOnBKcqAdbyK8tLyW6gikbICWrXp8bQ
         PEMPm1t0BNYQs2pviF82qHBAIcjE1+C6Mo8MCJLFHiLvYhQEYyOMCQWhxvO68dk0QKAt
         X/dMEgqvsdl3VC3s+yOorXocLgZgaDb9LMXxpF5Z/7d1h8BLvn5YNhyIcJREXQMz2k0b
         Pics+ILoE57KOeiQuuatgoXsyqxJVfDOCKqiBNbROmH2PFwwl1zIN3DKfXhNBL3CQOtH
         eNTpw6KRlDqrklKXm61N5w/VLgPk3AO5QxHNGZcmlLL3se4AI7iQRapUDas2BVbXOX/T
         QnMw==
X-Forwarded-Encrypted: i=1; AJvYcCXojOnCEAqCa3KtzI278Owc5MGEuPmG5BHfT2NZDeerSQCP1VVSUkUuLe9T2erA20p+F3e1Am6DdnAp@vger.kernel.org
X-Gm-Message-State: AOJu0YyiOAiNP0fbxNmo1so3Ww3qjtueLlBwWxe+M/WqSlEyGzIyl4Gd
	Ayr8LzthP/Fc3ophyMkVDo2IfLzslRHzspZT4kFqT2gfRmAuJXO8pVw1OdAbRYc/+Cw=
X-Gm-Gg: ASbGnctBPsx0Mh0/AjaVt4S5eihSizijKnLxaySDMW448cUhBPL5OMSRXx3Ymdar3cK
	jwOyPZ9xTw9pHAUltKykjFzN8y7tgsJI0hiijisULptdEd2nuXoWHVyB1I+YWOdf4166jv7iZhS
	QStaliFGxq8rs4zbm08JBDHRua+8fImL8EPoaMtmJT4yNhhujJDHNnIytbse6dy2UKlZ4ls94gL
	WwV6+zXF/R/u+g6Rh14thC2+686R8kUu25eQPDinWX73XqG56COjp1gUarWBtX1mZCg6ivu+GzP
	vGK6lhB3dZiqpuwC032RYI7nYHgfg6GypkgUK0k6GmmsuPvAvJfgHQIl6mn7/hklFzPkIhviKbz
	+2kYqNS8=
X-Google-Smtp-Source: AGHT+IFwsXsRYXgrfKWCfKNi+TTveszbMKXHntYaq5wTQetC41r6t1yJqHS2kPZNjw4WdDHEMJSJmg==
X-Received: by 2002:a05:600c:3f86:b0:441:d244:1463 with SMTP id 5b1f17b1804b1-453247e681bmr29156945e9.0.1749741970845;
        Thu, 12 Jun 2025 08:26:10 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a56198cc12sm2244629f8f.25.2025.06.12.08.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 08:26:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alexey Charkov <alchark@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250515-wmt-dts-updates-v2-0-246937484cc8@gmail.com>
References: <20250515-wmt-dts-updates-v2-0-246937484cc8@gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: dts: vt8500: Minor fixups and L2 cache on
 WM8850
Message-Id: <174974196751.110269.9543855041154753417.b4-ty@linaro.org>
Date: Thu, 12 Jun 2025 17:26:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 15 May 2025 22:38:39 +0300, Alexey Charkov wrote:
> Small fixups for VT8500 related device trees to improve correctness in
> light of current guidelines.
> 
> While at that, also include a DT node for the PL310 cache controller
> present in WM8850/WM8950.
> 
> 
> [...]

Applied, thanks!

[1/5] ARM: dts: vt8500: Add node address and reg in CPU nodes
      https://git.kernel.org/krzk/linux-dt/c/4ce310e733d8e520e52772099ebeb980fd491cec
[2/5] ARM: dts: vt8500: Move memory nodes to board dts and fix addr/size
      https://git.kernel.org/krzk/linux-dt/c/ab46710603aba03ec6881152219ee7de27d20eff
[3/5] ARM: dts: vt8500: Use generic node name for the SD/MMC controller
      https://git.kernel.org/krzk/linux-dt/c/8b37e3c425c3fa8439ec2e100521cb1e9651741e
[4/5] ARM: dts: vt8500: Fix the unit address of the VT8500 LCD controller
      https://git.kernel.org/krzk/linux-dt/c/1918e51321c0c34341397644512568ac3451e416
[5/5] ARM: dts: vt8500: Add L2 cache controller on WM8850/WM8950
      https://git.kernel.org/krzk/linux-dt/c/6cd594ed969d5cfc7f97029f8ca0d240637ebb8d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



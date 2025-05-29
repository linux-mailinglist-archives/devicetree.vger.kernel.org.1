Return-Path: <devicetree+bounces-181623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F6AC8184
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 19:11:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E01391BA70E8
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 17:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC7D22F178;
	Thu, 29 May 2025 17:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Y+lCTofo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A4A22DF97
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 17:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748538681; cv=none; b=qri6vQ49dGnYntJHuNgwYlkzvGCaeZxhP2KRRoS30vPvR9ftWZviwfxBpGpCH+ijYM2iA54Xsg6W6IdDsPl5UfJQHPkenX+tz7cZBQqMCAFHwr9iQAk6/AFViTUDFIpwbp9KdvKI8aLHnM/Fsrjcv6uHlmO9NsLgtRLqeBILYss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748538681; c=relaxed/simple;
	bh=40Su1GnwAmr6AztcWQ60IL+CHixZCWxdkTxtFsfZWuc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=J27E6XlaMqUeClz3JO80PArrjPRZu9vFDknSXsT1UiHxsrJIp9Nrv49TlWDcdgvPvv019hEiPhN6IWu6moZoGHKt7egsk8tXQ3x8cbLDiQin8e1GUJoE37BkeBwLF7K8Y3C6Cx7bHtqaItYKUngNYImEeosWAcn4zETCYmYYWLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Y+lCTofo; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b2c2c762a89so891879a12.0
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 10:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748538678; x=1749143478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qNwkLAnqK894as9s9mKIIiJB+bRwSGT/2fsFsNmBFKc=;
        b=Y+lCTofo6i6HhYJIQv9F+7fG5dGHrSFqw16TSd6KO5BmxhlYDo/cKYe0DjYcoMwMUR
         cqoDO8QsKI04I+MXdrOLiL9I1W3cQEcfhi6QyBN4WZePdF++AVI4+R/V4hg9zExS600h
         aFeNXZh2ycFtYt263p/yCeIYrQ8eg6r/NCFQOMHjdPAoym4ysbbRM3+yJBPHCxOQiSlT
         VMvBBwvRpi0dHU9aopAUXoP07H7QyjtLOKSFMKeB7F+nd1B/jJobAJwLSjnYH6d80Duz
         QhisGSS+7XeI7CYkVwY5QeK9iB01PPUnvjK7hqlHlgDgUDoULELfHMPC/U500iWjKIHu
         cZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748538678; x=1749143478;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qNwkLAnqK894as9s9mKIIiJB+bRwSGT/2fsFsNmBFKc=;
        b=iYLIZnG15LX6WUr/LY6xDZllJDBpV9eZL3+bfmz2mwPiKLZlmI//gFsdGxo4hl+Rfs
         Q88DeUG0JZGcZPepy+CIFC6EygSy5czUNecuyVAbiX9nbry6AJcYqjw08OMqjuOhe71s
         tNhlvWEewlYXVsmzs6LiVAbs/p7ikXxfVZAYCkUPStXmw0UZ2om0P8DpJ796wsG6hWz5
         3FNaCOJn2Sqf+Blne/MuYc+wIuYy5lg1w7ZeWQPAhM7WUQZ0xemI+fMM21WA5UkrpIs0
         Zw4UGhVYdjnCY8jyM2SvFWOfMI2S04c+Ej3wei3MebPcsIE8MYpI3eidSn3SSvhP9tS3
         rFOw==
X-Forwarded-Encrypted: i=1; AJvYcCUKoiUdiCiRloKGconCuA+7/Q6Ib9WZf0PM5ExAQQju0XOV3l96XBsc78OjwRfHEe0bwC04H9RmZ7Lo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy3pLZ/rTEbXuL3/Y9tKe6y+XdENOgfQ6TccBvJfWloWa7JI3J
	/Cmzpff7EpHZx7rz3w2fkUAi+f4fO1cLCNuI6vlJc//v+jdC6qtJJ1QHNt8LlX0bgIV7m4eDrSK
	AbrEItGH2Bg==
X-Gm-Gg: ASbGncsqt0T0ZfQ5WIXgad9FlKb8qgcRICkFSL+NfmoQjpCsRU7pfYCk0PJSWst5hGD
	fW6aNgQi9vndNm/bzO0ETRASy3EzFej3xN3ROBuU6HxR0eyaxxV1L74cfAUSZYeFu7sQxegWGE5
	L65NdstwWN1CiDtc/Y5D2WjHFGKmmxTjL714r7nuK5wJJlHpZkjeyuv25MjwZMIcdWdSHN1DDqD
	+2DJxWR773fvNKaovLrmYNtY9E4NRIBxrynM1ELtLcKwVyQ7l/urh3h7BZeGaKTp49OXMaOklIl
	DSzyuT5wGv/0oPieMy272YVaGS/hiJeXEPAIY3rXrFMfcl2L/w==
X-Google-Smtp-Source: AGHT+IF8U4LS5Ha4ZVJlb6Xexvhz/gVZeJ8PZz0LFT+vBQf4rmFuB/wcLf4M5M+AqpPj3eAYBAnv6w==
X-Received: by 2002:a05:6a21:516:b0:20d:5076:dd78 with SMTP id adf61e73a8af0-21ad9966437mr590567637.42.1748538677957;
        Thu, 29 May 2025 10:11:17 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2eceb29b20sm217068a12.30.2025.05.29.10.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 10:11:17 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: s-vadapalli@ti.com, Frank Li <Frank.Li@nxp.com>
Cc: bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
 krzk+dt@kernel.org, kw@linux.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-pci@vger.kernel.org, lpieralisi@kernel.org, 
 manivannan.sadhasivam@linaro.org, robh@kernel.org, tony@atomide.com, 
 vigneshr@ti.com
In-Reply-To: <20250411153454.3258098-1-Frank.Li@nxp.com>
References: <20250411153454.3258098-1-Frank.Li@nxp.com>
Subject: Re: [PATCH v2 1/1] Revert "ARM: dts: Update pcie ranges for dra7"
Message-Id: <174853867693.3632160.17627654159190851191.b4-ty@baylibre.com>
Date: Thu, 29 May 2025 10:11:16 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Fri, 11 Apr 2025 11:34:54 -0400, Frank Li wrote:
> This reverts commit c761028ef5e27f477fe14d2b134164c584fc21ee.
> 
> The commit being reverted updated the "ranges" property for the sake of
> readability. However, this change is no longer appropriate due to the
> following reasons:
> 
> - On many SoCs, the PCIe parent bus translates CPU addresses to different
> values before passing them to the PCIe controller.
> - The reverted commit introduced a fake address translation, which violates
> the fundamental DTS principle: the device tree should reflect actual
> hardware behavior.
> 
> [...]

Applied, thanks!

[1/1] Revert "ARM: dts: Update pcie ranges for dra7"
      commit: 8c178057e734188eeeceaec33848eaca2766ca07

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>



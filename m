Return-Path: <devicetree+bounces-252449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3CACFF357
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CCBAE3437CFD
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF9B37F116;
	Wed,  7 Jan 2026 16:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="G0AV5DUC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5B53803CC
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803404; cv=none; b=m8AT4a+kOf5yV1VS0CIhW6kDlm4CbSFQzX06ftlkM2PSbYClVvldoZ0+Vl/7OOgbjCiaATI5UKzKEFXO01aL+m0rCKhcLIoSwdk+1+YNreYjF5MoWTmSJ4S3T8j2XFyDgW7EFeK7D3UcORJFKqmeRndtCAySqSqZoqHSXrqz/To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803404; c=relaxed/simple;
	bh=9BATtieLEYCpEcZj+GM/kP3Ja9/0f7Z989r6IWgQnPo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gcyH7gfJ3HTD/cBCqzEe+mf9Jq5LfVbAlsLGGzFZ8xzZS7UdeiC0LSv0iYlv52YaSqzuE7HQ8y0XSFKTUlFG0Q/ctiuJnIfYljDLGJubsguHyknfxvZocoIadXQ5P8Qgpxu3khKhQqWpoheHGzWaCW7g1KAxJ+DGG0WetQWAtd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=G0AV5DUC; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso5162495e9.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1767803386; x=1768408186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WihJclLNTP76N6hz6eqMpZoD5cMEZ14VPXp1pd6gG3I=;
        b=G0AV5DUCkIVoAqpgQWEX/9lUB5kktqCgXbewIHqswqeS6vW1szpPhKDO3upN7mluJJ
         YXpPKekVDudKt9P8u1LKtkd5th+etFVxOu1jKq12ZzSdCOZ33eCnErhUnHdfUs5A1CM1
         fvmu3UjQz06XXV6T5cWVO1TuJZunEg4p0Mv3KeMnNerMb2JyW95c17WLAD7ag9Fkflnu
         vS4zM6fVM2D78ht+VFybuqzm6p19BuplW9EiQuu/TYK5rbOa8se1vV3KMSZrtBQFHVbk
         q+AVdORefAHg6G1d2lFuWoy1X2BzsSE/SKyQxY3kv5aXtxqCPfrXhLJCaoD7WG5pfpuL
         57UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803386; x=1768408186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WihJclLNTP76N6hz6eqMpZoD5cMEZ14VPXp1pd6gG3I=;
        b=aI1mRnFiSk+vXMVmgD5CGIF3wvUipoVbYubnELqPa8tQ89HBbgn8rnPVhQG5/HPHId
         g+XB10r14Wf49UfLM/BenRluFhN24sKnykuNvLdtgo9pwXEoViI6lhHou2BD8AMJKGWL
         nRimzpC7SVOKmA5UfimBcuwETvuFI5X5y574oOCyFQc74TnowNhyKLlDi0v+YZbv6zUe
         jo2mAA6HcRAl7rXbVac4KOR+sQIEn2XcjU6qxF+/fZDQ3Z1dZRMr5A+x9MiB1CImj8Zg
         luvUmd+HDV+mri3uR03+AzHdp/XFnBxeeMwXhSSNzrBYFOUxJUrv0/GAIRBkGYT0lL8i
         kGtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZw3wUTd1HLIy2ownqGT3JxxqBF+ZKwM+RBLLKaE8VyDLTlVYuRj4QDZirnPWx5ZD+OBQ3YTXvA/oD@vger.kernel.org
X-Gm-Message-State: AOJu0YyyuRotldn+7FEfdjbhR/JeBRcGTnJxUfFYQpjCbF0nL26CPezy
	mztT8Ue1ww5L69i6E+NJKwqPoSDXHR+jK4FnG1M+sAcqJU1HISabnH/JXFGC3Ch78I8W
X-Gm-Gg: AY/fxX6T6bkorl0ZcVOR+Kh4BT1QZVpyzQlC9WPTn76On1X1DqvGKO8x14iajSGvlge
	g0j/jmfkd6rMKx0XtTSG6j8NqDmaug82hrIq/uVh1iJ9S0Z3pOxA61IrX0CuGVQQseeDpBkOi5N
	H4Hqckh55TUdnjNxH9SL9U6MbxhR/zgzGt74T5gnAtR+hMiR9qEHKXCGMvT7ASsaoYsSpyCcRXt
	SVH41KVpzWquNCfdEoe4uN/kj/tkrZ7KtSYOwTcEZ3rBAtVztz4JPUyyQK0cv1PXSTmLv8h4m6r
	CnxIRtaQTb749DlbE/N41yV6DXdqLbnkPOAwMDv75sy1EmZsA6tVEL/bNq/+EVnm2MkqhWS05nU
	q3MpVAc222Jl4qXUtMXIlpSeItJWifSfHlXA7EZ61ZyNJNR9rSO1w3uCT+h3oKZ6VHPl7hKVkPS
	jI0kLBtBsgJSwnlhJwkg==
X-Google-Smtp-Source: AGHT+IFKD1+c7SUjD7a/gByTTs7FpF1prAJlqO9osr5dmkMQRiIqO+8yFt3RtGpmL0uKFm0/tPDRBQ==
X-Received: by 2002:a05:6000:a88:b0:432:c0b8:ee42 with SMTP id ffacd0b85a97d-432c0b8ef25mr5297882f8f.11.1767803385887;
        Wed, 07 Jan 2026 08:29:45 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:4a3c:13be:a1c0:7b9f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm11117030f8f.42.2026.01.07.08.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:29:45 -0800 (PST)
From: joaopeixoto@osyx.tech
To: linux-kernel@vger.kernel.org
Cc: ajd@linux.ibm.com,
	alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	bagasdotme@gmail.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	corbet@lwn.net,
	dan.j.williams@intel.com,
	davidmcerdeira@osyx.tech,
	devicetree@vger.kernel.org,
	dev@kael-k.io,
	gregkh@linuxfoundation.org,
	haren@linux.ibm.com,
	heiko@sntech.de,
	joaopeixoto@osyx.tech,
	jose@osyx.tech,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	maddy@linux.ibm.com,
	mani@kernel.org,
	nathan@kernel.org,
	neil.armstrong@linaro.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	robh@kernel.org,
	will@kernel.org
Subject: [PATCH 6/6] MAINTAINERS: Add entries for Bao hypervisor drivers, headers, and DT bindings
Date: Wed,  7 Jan 2026 16:28:29 +0000
Message-ID: <20260107162829.416885-7-joaopeixoto@osyx.tech>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260107162829.416885-1-joaopeixoto@osyx.tech>
References: <20251224135217.25350-1-joaopeixoto@osyx.tech>
 <20260107162829.416885-1-joaopeixoto@osyx.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Peixoto <joaopeixoto@osyx.tech>

Add MAINTAINERS entries for all the Bao hypervisor components.

Signed-off-by: João Peixoto <joaopeixoto@osyx.tech>
---
 MAINTAINERS | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index dc731d37c8fe..4286efb307b8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4321,6 +4321,19 @@ F:	drivers/video/backlight/
 F:	include/linux/backlight.h
 F:	include/linux/pwm_backlight.h
 
+BAO HYPERVISOR
+M:	José Martins <jose@osyx.tech>
+M:	David Cerdeira <davidmcerdeira@osyx.tech>
+M:	João Peixoto <joaopeixoto@osyx.tech>
+S:	Maintained
+F:	Documentation/devicetree/bindings/bao/
+F:	arch/arm/include/asm/bao.h
+F:	arch/arm64/include/asm/bao.h
+F:	arch/riscv/include/asm/bao.h
+F:	drivers/virt/bao
+F:	include/linux/bao.h
+F:	include/uapi/linux/bao.h
+
 BARCO P50 GPIO DRIVER
 M:	Santosh Kumar Yadav <santoshkumar.yadav@barco.com>
 M:	Peter Korsgaard <peter.korsgaard@barco.com>
-- 
2.43.0



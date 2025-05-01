Return-Path: <devicetree+bounces-172725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 456C6AA6083
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 17:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA1B516BCCE
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 15:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00D4A204098;
	Thu,  1 May 2025 15:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F0z7m5h4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F90202997
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 15:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746112188; cv=none; b=MQZeQS2J5V4zlxeqr1TMnoUj2CiNdDt+JksTfxu7MExySCnnT9aTxqFQaXIL9VBy7JmGnN68bYcOfBw0N1ZecW9NmauUJSlCk+XDCGoJkwgyKLLeyFFsm9HuFjWPuyDEAquTIn4zzf0zAtKXV+p9WBMSgwsSPHEkfNAj9TyTPUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746112188; c=relaxed/simple;
	bh=4OJUaVfhsWGYWCQcnU50+ivFurGc1fBl5lDiP8aAxxM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JZL90NI2pmdUwXrrYDiffffy9bNZWOhFQ/zGZNDx4lRuUT0/h3PygInddqwRyqrdLF8vVszf/+91N3KJBzXJnyIknoiaeYpOf3SkLnzAvyIwM2XbeEyeHJI7gkskKqHUD0aCA2fnm6g33Sd+rbIacptTbro4TqoosXOmLwP+TWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F0z7m5h4; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-476a2b5dffcso2224331cf.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 08:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746112186; x=1746716986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=24aju4vckWNvxc0dYUsOm4ELFTjb4KOrvPEs4u1cqbQ=;
        b=F0z7m5h4o6QNAYBg/nkOckDFdcC+k+2Qf7xLMSnB/zpUrSLpbZDvFAg961gm/ADFWX
         BlP+W2nfLYtBUk0OL9w7E3665he0b1hgBXD1w/kEtP+OjLTpJFeOhYAlCsysY2K/cxrq
         HBv4jndKCPzx7Es3rZDBFJ0nFbrzU1CgS/8SS1JxKCMV4ineyFBo5R6eInuXhxdIZjM1
         hDPxH4KvFBqHjhIJPVMD5S56RezQ5mSQRto0JSmGQdOCUmDLPchuWkHRdWVGMWAf5zUK
         gjl4FkNYeLF6/sCXZf7h1e1MDIZWn4xwqj94Ejh4g+KVmOIXVH///iWVslj6T2EzxjlR
         ceHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746112186; x=1746716986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=24aju4vckWNvxc0dYUsOm4ELFTjb4KOrvPEs4u1cqbQ=;
        b=b/9ZeD9aTNjHQgUab31zz85FOg5UFMCC1zjzRSwEz3Eip0YfeJMg5tV/MnX8ncRRVC
         oY+M2BzdLLZdfd/JXezsgwIP+3u3Yxk/Cxg3XSBossPhmAq26X1EEHtO3T7pQkopcNq8
         9EHMywiRv6Qw/lxrha2KiXS/A03/bybc7x0dXIYQQLp6ifxSQxpK6FW/extTcTBYki5C
         81KfPGTOqjXeJZrsvDs/bCqQRdwzfZPKdvMkNmlQxb1wVyIK4ThGuunI1myQiy6InAa2
         LYDEtHzvK4PYeUWhSkmXF/2h+I5MLuo7ESAQ2NdvrZ1Lx1pZ6ix9INLXpkEb1tz2TffF
         Hyyw==
X-Forwarded-Encrypted: i=1; AJvYcCVfrCazHn/t8kLhL/R6zsSQ3fakefvE37iHWAQ+c5B3UQM3qHB2Kw6oAxZCmIxaLbJmaQD7KOMe0qLs@vger.kernel.org
X-Gm-Message-State: AOJu0YxjCs52gEecrJ0GjvTzF91BNXwWYEFTrDs8IY36Rozu+VrwQLjY
	SJTyZqFDc67XM2fWLlZdR7EDw6jJw8aNPyjnfcWu5I+qJpRyy0LWnxVgjmrUfCo=
X-Gm-Gg: ASbGncv+XWnj5hIp9ZDk0o0mRqLeXSsAlKfdEPvEZ4FVHVg35FKTeyMjhS+Hr9PiCj4
	hFXa5nqd8aWWP86ldHHECV7YTEGPKFyXv4EbGA2hMr3mtesgxbfKMVWJeoAizKM1r2UkflYuXd2
	NTPXVia3muNnhBX8tnWdUS9Ng5etvv9UN6BfYNRpc9ZQMvnkcGNxzfDheSj4n7aI7aNgcYXzz3L
	1QAzxANSJBjUvIhZMhLawQO5WBVDPSv+69xwS2BlelhiP86fqYnBXr6JGnlgnPFZ5WwoMxPRdX1
	FZEfVG8crcUHxK3fknmcYTEBhnSeMyHuP0BkCodtSnajNz+O+w==
X-Google-Smtp-Source: AGHT+IHHOUjXMBtVL9o1d4OTnpFX0xqq+LhKzYmbKm6TpyXgRkIOT98m3NrxbiBzgdvab9P/+F639A==
X-Received: by 2002:a05:622a:550:b0:476:652f:4dbc with SMTP id d75a77b69052e-489e4d77485mr39271321cf.7.1746112186174;
        Thu, 01 May 2025 08:09:46 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-48b960cf655sm4823621cf.12.2025.05.01.08.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 08:09:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] psci: MAINTAINERS: Include DT binding in the entry
Date: Thu,  1 May 2025 17:09:36 +0200
Message-ID: <20250501150934.77317-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250501150934.77317-3-krzysztof.kozlowski@linaro.org>
References: <20250501150934.77317-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=812; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=4OJUaVfhsWGYWCQcnU50+ivFurGc1fBl5lDiP8aAxxM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoE46vBUr5ttc/yCgJJGS2600wMNVyFUim++QCD
 uA9WYamECiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBOOrwAKCRDBN2bmhouD
 1+wSD/93N5avRTUg69zdXpT+8IkHJGPrYaH9nAMXBpLVmBTkwDBp+r/VxGN9WlGi0qHr5XIM4PT
 7uJMgbgmSgeSG0KMaVuckaMudzZfl74yrBzZ/gCBXuqoLhQaTohlgZdYQJ1TycVAOVZ6qIpJBiB
 8teuBgNktVmEARCxLMya3ukDqb4OdJSjYEVaNo1nYyCPyKfqd/wuXFqjrcAP2SoF3G/jgCTP1oT
 LoTbMfnnrcqqtAZdMC5S8PoboAj7Zr6mNggckzJfb5nXDhPGYJEhUsPRUfY2F84sofi4V3Xgj/z
 TQMoOw/7nhpbjtIqwb4Us6+ab5G0kKH0uNA7YesyHUbNzJX4YTq7ZEZRPYF0nsrk5ccx5RuRIQE
 /4qv8QFbokNHzZoQ63VqEZxx++L2OHLb+owDU0u6PHad5T7QEbtusy4k9vrHED+jiKeDUkG3OoO
 +COkQadi06wkMvT2LjzarUrvMRc0T1Yq4aC/XaRvUCv0nhk77mYAJMZpliYU4pXb1ypHPw1ydhD
 LUjr8N/pJs4AEXYjPljOrOCSbP+MEe37uVbid+df7eOxC6sHmHdTids1mUgaxMF66NTYGkhyO7f
 8xeedmU3CP3xEnygMNXTwvQb6h2jZDjIyVFFtx1nRxuI+SMFZGwaBIWuDYt5jXtAM63KQv1x33d Wi9S89lTfRcN7cg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Updates to PSCI Devicetree binding seems to be not picked up from the
mailing list, probably because actual maintainers are not CC-ed.  Add
the binding to the PCSI maintainers entry.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

v2: New patch
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b2c3be5f6131..193bf0895f7f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19436,6 +19436,7 @@ M:	Mark Rutland <mark.rutland@arm.com>
 M:	Lorenzo Pieralisi <lpieralisi@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	Documentation/devicetree/bindings/arm/psci.yaml
 F:	drivers/firmware/psci/
 F:	include/linux/psci.h
 F:	include/uapi/linux/psci.h
-- 
2.45.2



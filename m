Return-Path: <devicetree+bounces-233339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 938D1C213A9
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 648BE188D3E0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 16:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DEB7366FBB;
	Thu, 30 Oct 2025 16:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RtXl7teC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57DC365D3B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 16:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761842110; cv=none; b=lz7z4MbTGsPeK3RQR+MP+1q3FOwPGYtfzyP7wZwpJEPJ7QCy3sH9dcuCzF/rMQ03/lwBr74dbG3qAWgQGCjCKMwanT+d6kvyt+Xt9ks50ExkoDpVJ9mHURSQ+fkdxZ/uJsGLJskSVf6LTBkpF+3FiQgDb8uVdGsVtUFvYxdtCiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761842110; c=relaxed/simple;
	bh=KJhi7r1IxwKr2jceL8YpXI0OH3nQqefJ5FVtqYdua5A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=od1gUIEavchsKuBQNT6fftR1whPXK24spCmlBGBTv5m4NiWeHa+L6c5ZsIfm/qgVCVoTXlWpf3le9b4PLe8bJ2LVnHTCb5dvuEjTN5qIDmOkD1E2kL++ZusbOTH9M3+BZAcVgGrABAFkpDNOgZ4T6KbVnzG6Hhcv/BXdT8ZqxKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RtXl7teC; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b5579235200so899868a12.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761842108; x=1762446908; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGxSll59pDGaTOq1wz4y9sLfdgQmv4t8Ak/F6aB1JEE=;
        b=RtXl7teCAhVeKP6/PyY54VoDUTJsdL4qEgzfduQcdLicZXxhKzc5IR8FyYCIzxEOxB
         bKc8yxg7YXAR54SK57pSjsNf5r7MRX7YElNQh6IVl+IF8Mmbe9KiQJyUVOEXqSsdwVOp
         NQMYHxH0tPGP0o+KtxXzih/4/S4ARFUiXPMxD5R0xPBG6s6jx0YWzuANpHM41yg1TRSm
         BOwa9B0c/QFKtjSsPS4c8YtIcYctGGalgbQqtIGjvvNH2lm+aNyWhRBigKv8rHIk5cu+
         J884vJfMfZ6fxscpY3YZ+j8HeOZUXRI1bVbvqJBATGm/IjFeP3VYS1tGmmJ8dZyrUpL4
         tgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761842108; x=1762446908;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jGxSll59pDGaTOq1wz4y9sLfdgQmv4t8Ak/F6aB1JEE=;
        b=IjZXSAGJzxMyugwc+MFjpj2Tu+03CsWbRr1HY/LrAne0fqh7XMdQxXpMZXJ9dS0Dqz
         aH6cUkFbNW6Bnd00zBJEC3Wf3IOya2HlFeZUIbr5mldTr6amg9r2+H36RUjWPzrt6zcY
         /YRjfTAR+QroFO0jlelCpl3Rg4uAjfVwgrif3a3sLDtZ5ySxbt08s+gdkbJ15aZhijub
         s19mWep1KrvXZw+dFZmrM9VBsKC/+OZ9BTbU54TisIOMxhGTsZwwQicDWrh3q25FDR7l
         Aiuc3C/ueTvBudP09msXGOiDzQKuBIizFgOlxaWoSKPGKDySJFccZ6jD7T967yi0bpFU
         txvA==
X-Forwarded-Encrypted: i=1; AJvYcCXhCJsCyqGMWveU67f0Kki9yhCRYCN/X69WWgL42LpiXBJI+HjX3dQHL4eFBeCf7AzOsW7Vg4hXJmjT@vger.kernel.org
X-Gm-Message-State: AOJu0YwUQqXzCHz/nr0pP+ZHMWKNhL6UEvjFXsH+ohbZvSeFCLCuwAv7
	p4Wg13U+jJjIPXD7UjtH8lM5dxPylWEKiySiiK5Rw7eMPDWcoXq8f4M5
X-Gm-Gg: ASbGncu6uUK+q6cSM6I8A/4/23cJlCoSs0qzdBWxeTk39iHv5BUsIQC4S4gNfN0pz9e
	itwks+XSJCYCwyAVEt5mrdOa41F2UKjiJVtmrYLGeoMSrkdoF7fs2rbbWUaQI6s2GM0AHUNJn7l
	Wvu3VJLOzvcaDKMfkn7TmMiXyNyzOCS43YeWSVpeK+GA26lTN8OAZuIKXjl6V0ZA2QvN58DExJT
	ArGAYAaA1MvYcyaa0osWYsgBQfXLWiARSojRNO0GEB33QjxOEWEUUf+7EY1HlEuyp+7acbBFYaw
	RsI09OoSbCVeOJZm7UJzUPXqGs/qJtvaBv3IFn5JdafQNSef3yYWKcsKKAWv0Yscqyt2brCLOsv
	pgU6+dLmAnBGhB6MyW09Ekfe4KatHxmJiMkpfs9gpdbpY7Q27rvrdwQZNgHxyCOMPerXmohnVEP
	/6H+S5Z17di9kp72jE9z6O37atpfXahP/4BLrx+5DHA0iT1iJLMeaffNBU2o3fJDaLiajGTclae
	1sbYW0tkEbVmgwBiBVnuaC9kpUbscbU7NoTTVfbqt13/AY=
X-Google-Smtp-Source: AGHT+IEVgKwJVYk3LLzSGMiiVO2pd0zD6q0iNRm3NjG4WchOau35P7hbFf8JKXrswaA2JhS14jL/xA==
X-Received: by 2002:a17:903:2348:b0:290:7e29:f59f with SMTP id d9443c01a7336-2951a3c366cmr5308655ad.27.1761842107861;
        Thu, 30 Oct 2025 09:35:07 -0700 (PDT)
Received: from ajianan-Latitude-5591.. ([2402:e280:21d3:2:339d:c9c4:e069:47f7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e429d9sm190932845ad.100.2025.10.30.09.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 09:35:07 -0700 (PDT)
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ajith Anandhan <ajithanandhan0406@gmail.com>
Subject: [RFC PATCH 3/3] MAINTAINERS: Add entry for TI ADS1120 ADC driver
Date: Thu, 30 Oct 2025 22:04:11 +0530
Message-Id: <20251030163411.236672-4-ajithanandhan0406@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
References: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new MAINTAINERS entry for the Texas Instruments ADS1120
ADC driver and its device tree binding.
Signed-off-by: Ajith Anandhan <ajithanandhan0406@gmail.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3da2c26a7..1efe88fc9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25613,6 +25613,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/adc/ti,ads1119.yaml
 F:	drivers/iio/adc/ti-ads1119.c
 
+TI ADS1120 ADC DRIVER
+M:	Ajith Anandhan <ajithanandhan0406@gmail.com>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
+F:	drivers/iio/adc/ti-ads1120.c
+
 TI ADS7924 ADC DRIVER
 M:	Hugo Villeneuve <hvilleneuve@dimonoff.com>
 L:	linux-iio@vger.kernel.org
-- 
2.34.1



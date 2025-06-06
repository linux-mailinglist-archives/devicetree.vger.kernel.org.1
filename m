Return-Path: <devicetree+bounces-183363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB06CAD03DA
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 16:20:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 949231787AE
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 14:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948C21448E3;
	Fri,  6 Jun 2025 14:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UG8149b9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF22E487BE
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 14:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749219642; cv=none; b=hFHDEVa1sG9YJZiiikV65TKqwcvZw3c0F0yauD8wiKKoEGD0itKFyZ7t9qom0Pq8LcXeZNHzvcFxeuWrA3O4M3CbMo/CwIzMAHqKeT9zO5XNglfzT4eqfIf2hP3m+l43xrvoRjJWfM+ysmSooA/sOhPZsCSbctR0ZKQ2JYZhFck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749219642; c=relaxed/simple;
	bh=cBfFaDkjp8cn9ZsqfhZtThmlU0g1ewE4x6fWUwfuIqQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JFXfbf3Nagh7vmKY6c/hKZpV5GZECsBHVQvcD609+j9DpecgJl0iD8XnNVtZtk348L7R6bnvtdhJwcGieLliEddIp/ekXj+oHtbfUEMXELizj7+5RKq4w7xCKAqoXS7LYjP/EB3jzODqsvOMXKMUiUGP1aaocMlW0u8+EI27xeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UG8149b9; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a51481a598so1316086f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 07:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749219639; x=1749824439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wv6YLDN8CkaWn53LtM3+C3UNFVc2t/n3NaXm0d2EaQs=;
        b=UG8149b9fNLK5R4KGiFmRknnZ6FzjNFeG66lQutYDTAOVR01SaRXfQO+DYTBhAXI88
         DRMJ9gs7d30XCyTFG2raeI2hC0g5UhVEVN6I63XdnaABMxzXE9wkZIdO4pLWvuNNsPMG
         aHqqAxzJPmb1GhpJ63DrPli9043LJvPyJn1LoV4FjnxEJsKcl/mHQZ2z5OWQiwSVv850
         LG0fnQSk7m8oRwCpwUmNwdDjiCCKxYeDr4fi29wK3jqbWOwhrirKRfRdnhN8r4b01BlS
         mugAeabCugtAgWboTHKQrZQqiKNFoCHusWgwa77ial02NiN45eH+xj7gpg8OonKAC83c
         6zUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749219639; x=1749824439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wv6YLDN8CkaWn53LtM3+C3UNFVc2t/n3NaXm0d2EaQs=;
        b=CLBFZm4DEoac2Rf9RFMoYVQSx1pqTn2cJDZcIBphfpwzZAMkS7saYTXdLxrShEkvo5
         NxxL66IWejHd1TOBJMleHEnd0tNUtAvyBNbVCsTuLuixKxBg8cYl8wOGVpt27uJREC6m
         WcbzyCaB+JiKQ96E+HfCKpriWKCFwvdwndTzMDNdl3jzKu09PDlX6fMqNX43yJRsSfdm
         tn58fCD6e2o7T+vF2bgYtSiIYG2tygHO2abNChjGOShVn1SjCMkcfjgZmPVrBn5t4NTb
         9PeiiylU/ef+sTBf4cfYyC19v0XuTwAy/J4lxnQApFvefoJWbxkr/1aUFGa0uwT7eoBv
         asLw==
X-Forwarded-Encrypted: i=1; AJvYcCW0lfbN7kDooQoXPuuAmQ/aHbmHDtUyyqW/R9ac2r+Ul3+tTPzI0EmdIRJMfEXJkfYR44Ced/Qx5gaF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkgmd8Do5ZH767L/4B+V8SK6CaC4pmd13mmddLNl5e90wlR3bD
	rVDTDgvMl+ZGaMH2Ppt+oA7cFwOGtCxwNYJrfmNLHoKRARsFxliwb8P0qlv3WZVV8eY=
X-Gm-Gg: ASbGnctjnFi+Z/524oPdNkKNZWnTmTEbwjfKdbM3cRhu3vsITnlcDD5KbRouwzi4uNC
	vHJdOFN4ALf7iPJpvEmLO3TJKtPHJ2HlwOMQivEt7S3Raza/SxjBcq+rLamlkZ+dkxubL3nF2FV
	wN2Mz44Hyfr3uQVXFKrn14HgWbWwYmoWatWXFVjznIJUlZt2nGAd9DirQohZaIGNuMJNTk26w8h
	1Ymo3XxKLCECGmXDDiJBT4B/FD/iTT9+lpQ+ja1GLiGmgxN+kd3H24UeiPHbPwjB4VsfrLyqVm2
	IShAwwwrXzScVvdV1YVLOOx2aqHSEWFFvb9XUGgBBPY1Y2cQvPjFHGDjRLYTU1UKvSLJ9pYQiNG
	OGbh/5BOdLP0oUigY4R35tnA90ykG9fI=
X-Google-Smtp-Source: AGHT+IF37F/jINDH7H2db1udG2JDyKrV0755zPZUiYV6DkuZZCp3DPM5k1KeUHEdsmDsp87Q/GpBTA==
X-Received: by 2002:a05:6000:402c:b0:3a4:ef00:a7ac with SMTP id ffacd0b85a97d-3a5319a7ae1mr3050442f8f.45.1749219638714;
        Fri, 06 Jun 2025 07:20:38 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45213754973sm25686345e9.35.2025.06.06.07.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 07:20:38 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Fri, 06 Jun 2025 16:19:17 +0200
Subject: [PATCH v9 2/7] iio: core: add ADC delay calibration definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250606-wip-bl-ad7606-calibration-v9-2-6e014a1f92a2@baylibre.com>
References: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
In-Reply-To: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1303;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=1bBjL7VlkgNBkqwPeVPqoUWRyRoNRlMdTRY5+MPjmRY=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYshw+vFsApPX851X8qwZrpmor1L946L5+tWTw3/7b70/O
 U9H6Qz3hY5SFgYxLgZZMUWWusQIk9DboVLKCxhnw8xhZQIZwsDFKQATCdJgZFh/4nRgUMb+5VtC
 v7Kw/y99EpjQ33j33YqJ+tWhbvqlNlMY/vDUf33NZZjpeqDu9JoQha+PfRLsjxk0HTnvP2OmSfa
 2x3wA
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

ADCs as ad7606 implement a phase calibration as a delay. Add such
definition, needed for ad7606.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/industrialio-core.c | 1 +
 include/linux/iio/types.h       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 178e99b111debc59a247fcc3a6037e429db3bebf..f13c3aa470d774bfe655d6a9fb00c263789db637 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -188,6 +188,7 @@ static const char * const iio_chan_info_postfix[] = {
 	[IIO_CHAN_INFO_CALIBAMBIENT] = "calibambient",
 	[IIO_CHAN_INFO_ZEROPOINT] = "zeropoint",
 	[IIO_CHAN_INFO_TROUGH] = "trough_raw",
+	[IIO_CHAN_INFO_CONVDELAY] = "convdelay",
 };
 /**
  * iio_device_id() - query the unique ID for the device
diff --git a/include/linux/iio/types.h b/include/linux/iio/types.h
index d89982c98368cf72c0fc30fa66ab001e48af4e8b..ad2761efcc8315e1f9907d2a7159447fb463333e 100644
--- a/include/linux/iio/types.h
+++ b/include/linux/iio/types.h
@@ -69,6 +69,7 @@ enum iio_chan_info_enum {
 	IIO_CHAN_INFO_CALIBAMBIENT,
 	IIO_CHAN_INFO_ZEROPOINT,
 	IIO_CHAN_INFO_TROUGH,
+	IIO_CHAN_INFO_CONVDELAY,
 };
 
 #endif /* _IIO_TYPES_H_ */

-- 
2.49.0



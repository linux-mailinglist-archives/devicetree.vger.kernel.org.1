Return-Path: <devicetree+bounces-204772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC85B26C25
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:12:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17360AA21E8
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE60D3002CB;
	Thu, 14 Aug 2025 16:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o++eq/c2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5932D6417
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187633; cv=none; b=D4fBWCsOq+sJEmUM1LFR3AZ2Q8BPQfaUL0xwbGswjW7aY+YaInZ9EHDoe9COSBpXtT5YEHuihaeBPyRbIlGZPgSjhptrewmDVn2CbB9Dw4yOI4wHBh02Nza0qBMqQEiWUEMRKfW+JtW5ZDBV1mVeDqggmahcUz12yEq936GGiuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187633; c=relaxed/simple;
	bh=x6+cgJsB3/bivyB/8CpTvAXJFzLNyeY5QyOEcAO/NHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MK/6SGBgr9tYTEXl11cl4d330khrI7TkT5nllpxo52ggDufbLVYW9VjZSTdOdY7rlqB0l+IyWG0iC8S41MCUVwSSSiT9KFSCFDlUEgSAZZNotmEt8+jiPjMRiJqvOog0gDOJJl3TBGFBMYBT/vdcl4sIDSj0spBgbWA2Obcc250=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o++eq/c2; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3b9d41d2a5cso870364f8f.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187630; x=1755792430; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WEY/dtRV5XlPcMpsbJUXrg5ckl8gnLAS3vBlRMh6s4M=;
        b=o++eq/c28Jh842+yI3UYFqPaH6Ns8nTnJCs0JuIhwpsl9AD0zF6Y5S5rodvefXJmq3
         dP61B3sz8/Fir1F7SQ1sQmh9+cA7JUg23oHzpuf6s51oMY+/Eznqn2T+u8Swd8RC6TuK
         Q8pU7hNv5j+gawd6Cwf+TPLJDF/VPXKzesYLd3a+HKk2tSXqAfPKjapFrW61KjlboOWF
         ++XfQYeJt2ioIBPFAzDG0NSV3FFgEWv/ghd3e70DC8M7zVkGnYNDqK5cFvhu2HN8G/6n
         eAV394D+hsKhoWRDtB6AkPOFQ8G9LEcZiZMlJougH57VRDvWaDMbWwEEs5MMkW19oTYp
         d8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187630; x=1755792430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WEY/dtRV5XlPcMpsbJUXrg5ckl8gnLAS3vBlRMh6s4M=;
        b=Y020x1FZVFuQXvh1klieAVWwyYuQM55x4WJlv/5Gv9Jlg9TT552xKmPQZXERtkVl0L
         7bQatkQ7O/FQeEv7K1Qmu/Xv+OUb5ChqlWF9uF/dYJHNil4sAEykzMWnLc4zvvo4ZRc8
         gMZqwKueVgiG/cPf/mHQ4rGI0cp5YFImu+K0WYFZY3HJIBMk12MK7I+GctsBqfQPvDv7
         nZ874+r9SuoTG2PJIqrbIiBUp7IuWa2kq0okmpJQ6TFPQvd1PUcsJFa1/aO/x2XjL+DI
         WNNBTLqbBoHQsqDEWoIQFh+osE1aT3Z7Z307y6sKWPwaLCpv4r7/GPJ4iNA22J9B8df8
         ps6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWclx/dpNoWcLoiLX+X5Ppb/z285rwZ44xv3687PlLs0yt8I+orTEdOOIm5wUSOcwXbGE9SF4tK4x3H@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1YZ5OQTWIR/uOvsxZcR5ru9AG2NO5hP/P7xzE25oSTuJHXBVR
	zl6wMuc8DvdOc+GbDFLzspsDA4VlmTYUChpJ4QdB6KJCsuvjbQkOXtEt1Rr60CYhot0=
X-Gm-Gg: ASbGncuDUvWOh0VhqClVlNXU8wuGb0YvPqsChRh3obtr1EKjYCkBdkIVHjfzDLvirum
	2aN3s/CepqgnL6f52EQDU5wHbFnS1klNDN2CgkARrSIL3rwyz71vPc5bamDIrC3vwh6LUpUuPLh
	hf/4ArcS6n9l9MD8yln0rdZctB0QjNzU8Y785Hqj2hI5LgBRKt9jQRDGHG/6MiWoiqglJ5nCIUA
	1RGcy82lRNdlj1akSb2Lc3vVhxj2t84miDGoY1LJ2m5Bg0n2QbSR+XvlPcUyzcg9WT2Dxfr5x8G
	5UOPf/GoOLzQ7zpcKEiXF3wRKA016hdWogHpkUQHUcRfPM2GXZiT9t6O+uNe7hF9ky7aY+RnVLX
	/LO7ly1mkvFzQXMFmE707K/ESNGKtmkQczPnTUVflkA==
X-Google-Smtp-Source: AGHT+IFs/lEP4IWVBoJgkpoH19R4IKvmXIZCDViCWIe4I0U2tewRdOz/LgHXlcznz0VkzRUCVVfEsw==
X-Received: by 2002:a05:600c:19c7:b0:459:dde3:1a33 with SMTP id 5b1f17b1804b1-45a1b66e81emr29035635e9.26.1755187629543;
        Thu, 14 Aug 2025 09:07:09 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:09 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:47 +0100
Subject: [PATCH 07/13] spi: spi-fsl-lpspi: Constify devtype datas
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-7-9586d7815d14@linaro.org>
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
In-Reply-To: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Fugang Duan <B38611@freescale.com>, 
 Gao Pan <pandy.gao@nxp.com>, Fugang Duan <fugang.duan@nxp.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

struct fsl_lpspi_data->devtype_data and fsl_lpspi_dt_ids that point here
are already const, so these can be too.

Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index 98da6a5d7013..332a852b746f 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -145,11 +145,11 @@ struct fsl_lpspi_data {
  * ERR051608 fixed or not:
  * https://www.nxp.com/docs/en/errata/i.MX93_1P87f.pdf
  */
-static struct fsl_lpspi_devtype_data imx93_lpspi_devtype_data = {
+static const struct fsl_lpspi_devtype_data imx93_lpspi_devtype_data = {
 	.prescale_max = 1,
 };
 
-static struct fsl_lpspi_devtype_data imx7ulp_lpspi_devtype_data = {
+static const struct fsl_lpspi_devtype_data imx7ulp_lpspi_devtype_data = {
 	.prescale_max = 7,
 };
 

-- 
2.34.1



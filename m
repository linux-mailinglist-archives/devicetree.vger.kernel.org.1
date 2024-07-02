Return-Path: <devicetree+bounces-82447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9441924669
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:34:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 548DD1F23EFF
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816241C9EA3;
	Tue,  2 Jul 2024 17:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="X9OwpT/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9F31C005C
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 17:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719941653; cv=none; b=kG0DHpXrrO19RywHZamMoEdyVlYLBKwjWI044HT/fmeYEejdPZT++H2keu1fVbyAkWD5BZN/NiGsy4meru56csOdpMNX7av/LlBfM6fHT0N3aYGbn1JhFDmQbNw3mFVnIAriqgmEO5Z4PvjMvHMV/fwAt81Rp2z4rSMcMN9Y1RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719941653; c=relaxed/simple;
	bh=nGzK2S78m0bky0xL6X4TlkILzMXZbw7Q567KAtyItso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tFEbRVa//Z3TMFcYe/0BR0oi4TfX5wwBxKm2ywuJA/PcfDqHAZFxFVkopWDL0p8VJTbGPBNk7t0rLfoZXY7hC8ikxRxyoQ9jUFtLAzgAvwmHI0j5UefL0BF6va4IArc8XPNuEbViZX+Q8aXNLQtiCaqpHHEZwIThZW6dw3E3H20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=X9OwpT/G; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cdf9f934fso4693964e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 10:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719941649; x=1720546449; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bqVxrCmaqTdd1OivUsUaCiiNGBxmmQjkW28fKPO8hWM=;
        b=X9OwpT/GOyRvGYNRAocpe5BorQ35LZ8cPEWEfpTR6VVmG/PAiBclZWeABUcaqBY7qh
         LDPrH3wmj2M9egaLNVE0QXywMfeRljb3nFTSSHVEA2Fq6BttdiEj5Wg1LvIhwsPo3FQN
         YSjl8QJTLn5CachTFU1FE9zAyxIYewQNASAbijE5rrbCTLor6iymiVQlZGI3yH81+hre
         hmhcxSoPQ6mjcnmwbRKMq9gwBFiRFv6XD3dcXiah3zLKRFZiNea74dhik8S2mz6Ho3lL
         t4WG2pmXB7JXCj9SJxI9Vc/mfFhv7GyeVtS+zPSNqggUVVSPskvwEtL0EMutxK6dI13F
         TPZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719941649; x=1720546449;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bqVxrCmaqTdd1OivUsUaCiiNGBxmmQjkW28fKPO8hWM=;
        b=J7arRGQZ52M0k/gqK8eTm6f8uywR4YKO0s+bmVXgX2BTJakOh3Hev9VzWyz3pHxPoW
         dqIhrzwqoU+YIseKzV+H/pCi6PhPCLecRhhH/5UV2tg2PO/2MVxUsyXMBC/WQTuQRt6b
         YoSZwxazQsvdVxnKWPONk9nRL3WkIA0C/1B+4gSbxR8k/SHeczltVbSL6ZpKSLr/0G7h
         tWlbY2WqT97CrWb55HRIy4XL+tatRQT8vERPTp+ZhJs9KJqD8nbv3ROd8e/BulVU/4Vg
         EY6urEIgt+0W70uVDJYd6jmQwKkEikYn+5QjsxQYUjrWySrMtx7PNYaajWrmThrsLYZ7
         reKA==
X-Forwarded-Encrypted: i=1; AJvYcCUd7/y+mHrXaWT19XRJ9rAAgwCAaFaEXGRHAKU8CqZxkq+qfkfSTMudwzru+s1VpFuXXBQsig9xsnfepe4DbYFMUzXRZ09+weTxGA==
X-Gm-Message-State: AOJu0YzvhjSb3+oKU08MRJG6vEWXHGy/ztmaqDqIFaleaEoH1Dy1HNIL
	xkXVUJbSJBU5+QbMsBAhVPcyEexW222DvyYhq0zyRtG1EKCdrn2wUtRqX9OoWeU=
X-Google-Smtp-Source: AGHT+IENS/hi3LdGvHKX10bpeZAX/pN6vBzZfnzLA+VvEBpaHsDKR8zQxnIVkfkUxagS9XQHEEGRZQ==
X-Received: by 2002:a05:6512:3d1b:b0:52c:b008:3db8 with SMTP id 2adb3069b0e04-52e826898e6mr5673752e87.38.1719941648842;
        Tue, 02 Jul 2024 10:34:08 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af59732sm207594485e9.11.2024.07.02.10.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 10:34:08 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 02 Jul 2024 17:34:08 +0000
Subject: [PATCH v3 4/8] dt-bindings: iio: adc: adi,ad7606: fix example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240702-cleanup-ad7606-v3-4-57fd02a4e2aa@baylibre.com>
References: <20240702-cleanup-ad7606-v3-0-57fd02a4e2aa@baylibre.com>
In-Reply-To: <20240702-cleanup-ad7606-v3-0-57fd02a4e2aa@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com, 
 dlechner@baylibre.com, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0

Example uses adi,ad7606-8 as compatible, but adi,sw-mode is not
available for it. So remove this property from example.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index bb716182db63..499b6ad5525a 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -152,7 +152,6 @@ examples:
                                            <&gpio 23 GPIO_ACTIVE_HIGH>,
                                            <&gpio 26 GPIO_ACTIVE_HIGH>;
             standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
-            adi,sw-mode;
         };
     };
 ...

-- 
2.34.1



Return-Path: <devicetree+bounces-240858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B5223C7693D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:11:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 385AF3589C5
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83FE5302CDE;
	Thu, 20 Nov 2025 23:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iLsnBm3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7B92EA172
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763680272; cv=none; b=fH8UlKezq8FT8MKwHx0gqTo8JB+zSXcIvtzp/oa3z2qCbOE94jJ8ZDyckc711WLmIbORgkjLqStOKA2juluA8oxPgYAzg9yx7gRfCB8YDgbyBnlkTsy73IRsPYAjHV/cB45rKYn1Du00Wg18EsI63oqXaHVu4BAKmC6yXjgj4J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763680272; c=relaxed/simple;
	bh=f09Ph1eIgetZWHLJK7FoNd8ccKR+tymPGV+3sp1g5K8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=m+bFc2OitUjAkm73xlyvP1mHE5IB3WI6yhM1+lmOEGpQLbPCel5pmlhadvjGrTCCE6u6VEBDFaoznr5D/59kSkUr3bzOen+bNoRLFEzycnt9ypTZPaJ+tUYdbeyw/jW0LW2Lkug70owpZsnmR0AnScIxpqF2O+C8LemnlTKkAKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iLsnBm3H; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78802ac2296so14994977b3.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763680270; x=1764285070; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OIBL9zhNeDx90fnwrwztaJK024OToElBIomfLRD7cbw=;
        b=iLsnBm3H5b/SPaiMATkAyU7mViaLc8kVHebiqeI0wKMK7svUPKfIE/UwEDOF/CSwQU
         XPGDCU3zhIEWogtX06y2lW1n6YQGDHlZSreIDTW6pGukl5VSLXh8eoOd7WwdG6aLueZR
         Vaa4AWWJ/ySaDyR4Qls1iMtNOxJpjhrh25yJu0xLGWrFurUgQtgSDapUe0/5I77iypl9
         1Ydi9HXTsrbRA7N3XNNJVN1tmWL8Tjrq4YUv8vUBZ2qYzHnDs0NgJJBCWI4SiyuDnEAI
         5bM9w6aOVRvS8vlPYkzONWBQLL3H4ZVyxKOyIOF6giuGFp9z3EAbAwk2NZg3nRWEr9OZ
         +71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763680270; x=1764285070;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OIBL9zhNeDx90fnwrwztaJK024OToElBIomfLRD7cbw=;
        b=IozM7Zo+RNDvcOmcCfX9Kg37sRd9ujQqtMWbNHtNE6E8RXs+uwiR7I5tORb1YGsmM8
         YkJpeuLt/W+PzZRhYeWLlNp5uv5JtoqjKtz4EuobjqjbvMJJMRkrcxodGA+7wZ6x3ePS
         hGw4W7Sg0oY53deWcT54PMrya5aA1mb4Mzr05rgcrRxklSlcIutk+gV/L+Due3l/AK5p
         B8JyOBd6JvIZMwkv3VhBb4r3/sBNjQ4SejCT+A7CZnsF+nlQ5ikSHIxcHmMH4rlvFq1+
         q+FV9dTygpV7NwD4FxnLzTQ0ZmO4pZvcp8PVTTq+oUpO9xVo+PZS1opdVR7mGTMiuQlC
         RalQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZh6hHLLUulJ5oZEE3faXVn4qO2V+clEVfZFTT6K9qOWxUDhBM73K5M86v2/MdQIjVby0e4cZ+aSSh@vger.kernel.org
X-Gm-Message-State: AOJu0YynwiB1nQNArrSct9QLn2wTBhrCkQi7aDt/M40OSjWTlrSci95T
	q3IlxlsLUyQOpJm3tiJwYR9iPZdgoeupOFgre9i7MV2MMhV+tw44yFPD
X-Gm-Gg: ASbGncvu4Q57rf2WAeU1iAuRPCEoXp9K2sgOWmROjsWlf7PCmpWSc7/vzn5AN0auvTz
	Qz6wQ2VYtKaPiHUO+F4KE/XPxa69iMdRD1gVYnE3+dg6KEuIAPYr8f7ikVsfdKSRPKt5GuMxU/0
	/OA0q60/KRJrlnn026n/d3xKCqgV7z3hK82tgoBRm6A8aWsjRGkOpIDQtNR1BiJgCfMtPhsWcSw
	ff4bOxaqx4rF8BpOtNzljF480qUvkp6muonQfvGznkocbQ2BF/HcvhEKAS0D0mzl1bMThFcI4XY
	p2Yh8+Rg9jbMeU1UYFIDcKrBv8I1IHk0p8BhxKh+xOjl6B2bGOLVPbq3WyyYmxpTQRABwbXkF2D
	g9MsZWhl+khMU+B60Ve8y1WB2IpkLkdMfpZGdJZi+74zDBNURwKybJTsxPJDHW8f7kMdXGfcjHu
	Ko/IMo2NymN6GagA==
X-Google-Smtp-Source: AGHT+IHQW4azgv81UpzbgS0IYJMpaV8AqndCImbd1VY7yIzNWeXySfqUd/IcqRYt3Qox3ks+I9+JOw==
X-Received: by 2002:a05:690c:688a:b0:784:841e:c044 with SMTP id 00721157ae682-78a8b5672ddmr904707b3.59.1763680269837;
        Thu, 20 Nov 2025 15:11:09 -0800 (PST)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78a798a7f19sm11356807b3.20.2025.11.20.15.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 15:11:09 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v2 0/2] Asus ZenFone 2 Laser/Selfie includes a battery
 measured by voltage mode BMS and a simple GPIO hall effect sensor. The
 following commits include support for these components.
Date: Fri, 21 Nov 2025 01:10:47 +0200
Message-Id: <20251121-battery-hall-v2-0-d29e0828f214@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPefH2kC/3XMQQqDMBCF4avIrJviRKLSVe9RXCRx1AE1JQmhI
 rl7U/dd/g/ed0IgzxTgUZ3gKXFgt5eQtwrsoveZBI+lQdZSIaISRsdI/hCLXlfR1GS6yRjdSgv
 l8vY08efiXkPphUN0/rj0hL/1D5RQ1AJV38q+GbGz3XPeNK936zYYcs5faFGvgKgAAAA=
X-Change-ID: 20251115-battery-hall-30eb7fbba62c
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Changes in v2:
- Reworded the battery commit to include a link to the downstream code
  on which it was based.
- Separated hall sensor pin configuration from gpio-keys.
- Link to v1: https://lore.kernel.org/r/20251115-battery-hall-v1-0-1586283d17c7@gmail.com

---
Erikas Bitovtas (2):
      arm64: dts: qcom: msm8939-asus-z00t: add battery
      arm64: dts: qcom: msm8939-asus-z00t: add hall sensor

 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 43 +++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)
---
base-commit: 0f2995693867bfb26197b117cd55624ddc57582f
change-id: 20251115-battery-hall-30eb7fbba62c

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>



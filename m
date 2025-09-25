Return-Path: <devicetree+bounces-221593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E192CBA1394
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9F811724EE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4381831D399;
	Thu, 25 Sep 2025 19:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aJT7hoJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D092417C2
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758829126; cv=none; b=GfhTgK9SkgFEZ4IqSRquiLP5f6UF7pSSz3341U4EHxB1JvtGUTAteB6x+WJsSd4Y4d14U+G2gFaCPrmIVt6ljKUkBd6x4cVKzCGkxzI/cgiKOP1JEdpVd3M4+71OFzKlOZGp1grWyfv5cM0vGTUIZYlufkfqB3FCXrd/DMsojck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758829126; c=relaxed/simple;
	bh=3jtritTomIIJOGP5bQqL6bgfQshpJwLoGR/rXMYMm5c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nU/1bV6sbMUB3np0AKrIJgQIzwqHqr2nNNNdYeatk+4JCii6M0cfGsJrz75W4uJmk/o3JIleVZ9sP5E8FNaWCKRKZl8uVDmf1VWLB6jQzGSJSL+hF0mymyP41NWhnQ9ACoe6/1zcyvEhPASyEbf9daYoo+iaxdNU/i0SHpTcB7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aJT7hoJ7; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-63486ff378cso3343819a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758829123; x=1759433923; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/9Wvpl7tsF8zVqpRGGfjh2Xv56vwrOQHtzvQulfV0B4=;
        b=aJT7hoJ7n2XFQiKBhIgO5WGs78w978ZeweB6CJmXHcZgSuF/7atw6bFaKkFi8DtSI3
         psp6kIKvBYVmcDWdUcM9b1sRXG3fRyfmMPrr+EFxYdLyM8ix2OqpkFKFSMRKkIkrzPme
         9NAG2oL1C69wGdMHl146iJ4hnlCFxiREJnC/Xn43ONIs+5K89K12eXBRzCigzRj6xoaN
         TMcUGqacjaVMLBDoUjX0nAP8QXTP7j91g8zftbWisZ4JXBjT3TlmS5rY1V6mmTC/+VLT
         2TPveR/lNPodLFmHx911G+8Y9WuKCK9U9gIwc55ZPFJTmUi8Ezewej89+UGlzBwkG3Lb
         qPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758829123; x=1759433923;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/9Wvpl7tsF8zVqpRGGfjh2Xv56vwrOQHtzvQulfV0B4=;
        b=R0L5ug7ztS+ZuRE9Llbe34tbbguPW6FKibH35asj/6IsECedEGGh/pWq+8xYTWyldi
         h65m61To7b7OAgod0sbXAM0j2dyFTqqLsElhtUapktbTT8aL/ST6qtGjbUuFdx4QdD/V
         iEhLACBSwdl67wsPmxFJEBPTKfIuK4cntybE9EfvWES3ezNDLTy/QL9lZPfNjKe+30AQ
         pR/AN/6tZtEhaZnRvrUEdSiKO3k20u1iVPIM9I+4KyEFS3wN5F52mDileX3oIRgiyBIJ
         xBZcVozVlT5+WUH1qht5STGWeI1d3wF0Fu4zHw3d2gIPV66PIN7ehis7XK0N+FCbdWYI
         8j6g==
X-Forwarded-Encrypted: i=1; AJvYcCUoefce3jzlnms1S646pZNLe6mZpNxHLO2xD93qYsMu1gFuUtrUuoWiFOhhflVWmpkzLG2jBpDfJrgj@vger.kernel.org
X-Gm-Message-State: AOJu0YwBiOXctaGkDCMATys7O/ySwktkrCVOWSTW668HMalHhhy+AI2X
	Ml5UxYO2GyUIdrex1OY1nmjBase3bnxtoWPuGMsTCm7FKDpNGGNklVN+
X-Gm-Gg: ASbGnctFqyoH7mROTOw6mpkVfoK5ESstcX0/tfBYsr/9pLsZ0ZAeAlu2fzUHB8Ad5tW
	ipJsgPEWgbmMmxMyxzyexIMdN00xOSjQylIHEssG7hNMPdRtHenz6Q7XXi2AIsljCOYZTeX/1Jy
	xxnGk2NbnsLQXPZRbqlTZCST0GBVQlhFU9o5FLcNtio38D40F3djz+2N+JTVggXuZuw2k8rhKfO
	qclk2JthQ70O+ViNCgaUtz16ZP9dQp6Bxmvzzb/FEakF6ZjLrJXKG8gVC6JJhxlUEzRx7ZDmskc
	v63ELrKf+jumpCVwdAHv7d6dvuUfHBkfvoBEhNhHcG+tPpvcxdZAA3NK8MARq43bz+RpdG0hh5c
	GdU0LV/CfFexlzI02ZLVl
X-Google-Smtp-Source: AGHT+IHVfiZc5UUcQsfZ8VprnirPFyoO5q03AQaUP0MdlBl9vBg3XfFQctzKjLM1COCQempCX+djBQ==
X-Received: by 2002:a17:907:86a1:b0:b31:5c00:4fcf with SMTP id a640c23a62f3a-b354a8a6b48mr461767066b.11.1758829122436;
        Thu, 25 Sep 2025 12:38:42 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b353efa4c35sm222820766b.26.2025.09.25.12.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 12:38:42 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Subject: [PATCH v4 0/3] starqltechn: fix max77705 device irqs
Date: Thu, 25 Sep 2025 22:38:36 +0300
Message-Id: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADya1WgC/43OTQ7CIBCG4asY1mL4q4gr72GMIcxgSWxRwEZje
 ndRYzSuuvxm8bxzJxlTwEzWsztJOIQcYl+Hms+Ia21/QBqgbiKYaNhKMpqLTedjQdf21MWU0JV
 9Z69aa9bs+wiYKedLAU6A8ahJhU4Jfbi+Itvdeyc8X2qrfI9tyCWm2+uRgT+vnyaf0hw4ZbTxw
 noDXIKFzaGz4bhwsSNPfhBf0jAziRSVRMW1AqkV0+qflD8kF5NIWUnl0PilUejA/JLjOD4AQaM
 Wuo8BAAA=
To: Chanwoo Choi <cw00.choi@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758829121; l=1505;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=3jtritTomIIJOGP5bQqL6bgfQshpJwLoGR/rXMYMm5c=;
 b=0mONWX92miQ1ca78JbDbjDBDbVspDUbXjhToEXoIvvgAzItRLrTQm6f1orWnhVflC+F64NwU+
 lNH16APN+jbCf1C/3cIOZd66BTbgs5bJzmmMKAFI8Kq9Y2QP9i3G5gG
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

For max77705 charger and fuelgauge subdevice, use max77705 interrupt
controller.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes in v4:
- update trailers
- fix commit message
- reorder patches - Fixes should go first
- rebase on latest linux-next
- Link to v3: https://lore.kernel.org/r/20250912-starqltechn-correct_max77705_nodes-v3-0-4ce9f694ecd9@gmail.com

Changes in v3:
- fix commit messages to be more clear
- Link to v2: https://lore.kernel.org/r/20250909-starqltechn-correct_max77705_nodes-v2-0-e4174d374074@gmail.com

Changes in v2:
- run dt_binding_check, dtbs_check
- make interrupt-cells 1
- add patch to delete unused address-cells and size-cells
- add binding patch for interrupt-cells
- Link to v1: https://lore.kernel.org/r/20250831-starqltechn-correct_max77705_nodes-v1-0-5f2af9d13dad@gmail.com

---
Dzmitry Sankouski (3):
      arm64: dts: qcom: sdm845-starqltechn: remove (address|size)-cells
      arch: arm64: dts: qcom: sdm845-starqltechn: fix max77705 interrupts
      dt-bindings: max77705: add interrupt-controller property

 Documentation/devicetree/bindings/mfd/maxim,max77705.yaml | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts   | 14 +++++++-------
 2 files changed, 21 insertions(+), 7 deletions(-)
---
base-commit: 8e2755d7779a95dd61d8997ebce33ff8b1efd3fb
change-id: 20250830-starqltechn-correct_max77705_nodes-1162dc2d9fe7

Best regards,
-- 
Dzmitry Sankouski <dsankouski@gmail.com>



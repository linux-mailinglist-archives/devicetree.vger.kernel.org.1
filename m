Return-Path: <devicetree+bounces-230239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F27BC00C96
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E3C064EE801
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52E6030ACEA;
	Thu, 23 Oct 2025 11:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="vtOjg5wO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DEF2773EC
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219473; cv=none; b=p8Kw3XRBwoSekrv2OLhkqsum7OFIAoqapU0HG6/3fp9hHc1zUUDRWvbzpmndrzcTisz449GF+4EO8QIxZ2PyaFRhIi1u6uAAgzJdLKwdW4SAkFP+CwqNc3ysR+kI+1LRDBaWAFu6RNDtwqJL5tOXrm4EKKmQgq04idbGGQjggA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219473; c=relaxed/simple;
	bh=DWNX42d2o0p3UKA2TRUwPtkFgHSS6IWQH6Pd1wztGVc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tQ7b47xX3qReKf5ExTSqsUD6oZq8QUMCQGMh7b2qaav4rgvDIJLsAhLVO7I4ytDOF0D6noii8KETP9TqVnFuWKfv4HYDYhODAJUSm5t2j5m22uyU9jT75U11wOoe81Dt/EXBVGHrc3y3pcPZfoM6FOk/yzbe1zWhmAa1C3LGbAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=vtOjg5wO; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-63c21467e5bso1224682a12.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761219470; x=1761824270; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VxMcMyLuAyYtT6gutxdzEE2BGizoE4ASkRahe6sYBf0=;
        b=vtOjg5wO1dAxjGa5P5ntjIceLEItalAgdpxzXGOn5ZsVLstRk6qt0lJh6qDDHmX4l+
         iQOuK0E1vN7t3vZM9Dptm6WPI0HgyU8ndhMPmtGrb2TfJCY54lP94GX4DWqFmW72sMra
         pXbYCl41Lo1qbNc1WNlyc2d2jJ7dX/jE2XcR2ZoMGn690kv3aH3LJ+ivwRPuDqt/HEmR
         n0ZuzUHEik5WxOrXjKg8cBs4qLpsmKmamnGr4/uAJiMEFL2IADzhHe3ZZU28z5hixPO+
         Qz3zN6gyqv2WKEm1IBWQdCxS+EWEU9VTpFuVA6Sn+CVzWArbxrHFoZcRv0q5f1C157Vu
         wikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219470; x=1761824270;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VxMcMyLuAyYtT6gutxdzEE2BGizoE4ASkRahe6sYBf0=;
        b=JUvYEgCr9jnHRmrSWsy68117sT/ZnEG/uM4fUdwHC62AXyfivf9knSS4PvQi4AC44/
         FB/2pb50wFS6uQtfbL+Ei6wyFNGQhMyXC1OfpHDB4wEGt4Er9YtD68aS66Uhy7w6IeYo
         ovCGgWn3rw2J22SQl1Y9+xAM0sAWUnhnI+H9AMce/TZJePBexrfT+0hSJSUOvYilUry7
         C/WZ5LL/6oKrAOldjmuk64D4ZmqOb5NVDEgT+1ZwtfChMvJ6z+vmffav6OpcXI0OGw4y
         T4ODaO28lGq3ANirMYvXpGUwNMmme0fvBnJ69m+qpEXAYoNeishZIDr4BWY0xbERPdAE
         eqgA==
X-Forwarded-Encrypted: i=1; AJvYcCXODKwMeI9MK5dv6t5Bd35qXUmn/WWHOeXpNrLrTTfYI7EbMGmHLXkTBGZzwNp4MW4dFx+6WOa3YxKa@vger.kernel.org
X-Gm-Message-State: AOJu0YxXfsiPF18lLesPgwo0dH+9Jj0QOJlEJMy0ypeuDr2T/6cQS0es
	Z8JXHI5q4WyKAfOGPqtuOH1i1e+/DLgQuhuCyQvxHtJBrzTDqSC9fuxtqVe+X7sOyYc=
X-Gm-Gg: ASbGncshDyWbMvvPVse+qJ11uyUhTs5mDoOdXZM6u3n4GH7rwLSjAslC/0jhOeqFYqz
	MiXbpZtJl0HZB/o9yCZL4S85pFo+ANVjhtPB+cfXIHfCHbvfbCLgzd1VDnqdJQ9AVCbhFLvSy2T
	pXerTuqTIu/RVp/AN3xcuxueBqlTvf57gbkpoIblzJaQsoBcrWhG0MK08avkJazWiSOwCmJKnfu
	UfGAouMvL+TiqF4WHCMMi26Lin0TJmJkSbr1hcAD/T55kOtN9DnwKAnbEiSH6hwRVCI108fYM3q
	I5GINmRzhvDuUg09g6tPKC2CqT+vLVRhWDGFdrXfIfFiC8toyi9bgbgESf9Rfnllr22SWeXPCIz
	HSABMyNGkMln3Vd1JlLEo6mwQP4Ofg3A9hd3pRLEXjCC1s3TLJ3vax+2793dZbw3uTNccxXI+37
	1vPFfdUZucqRzeVvFtWtueDwxn/GzhhKsi/pJmwERGVV3N+w==
X-Google-Smtp-Source: AGHT+IFFi0kxjJXcdhbKgL+sbBm/wBkqtVc9R3u5L/V+k7O/f9DsWz4cBNYXQNrlVhDEV4kqiqw0cA==
X-Received: by 2002:a17:907:9492:b0:b3c:4ebc:85e5 with SMTP id a640c23a62f3a-b647482d7a7mr2977703766b.59.1761219469769;
        Thu, 23 Oct 2025 04:37:49 -0700 (PDT)
Received: from [192.168.178.36] (046124199085.public.t-mobile.at. [46.124.199.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm194429666b.29.2025.10.23.04.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:37:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/3] Fixes/improvements for SM6350 UFS
Date: Thu, 23 Oct 2025 13:37:25 +0200
Message-Id: <20251023-sm6350-ufs-things-v2-0-799d59178713@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHUT+mgC/32OOw6DMBBEr4JcZyN/YqRQ5R4RBTFrvAV2YhtEh
 Lh7DPQp36xm3q4sYSRMrKlWFnGmRMEXkJeKGdf5AYH6wkxyqbkSN0hjrTSHySbIjvyQQCuje7x
 bNBpZ6b0jWlqOzWdb2FHKIX4PxSz29N/aLICDqjlXtTRGS/OwHcW3Cx6vJoys3U5FxM9Uvs2nh
 726hFDuI+Wm8rhk2B2CS1Ua2w+4N+y05wAAAA==
X-Change-ID: 20250314-sm6350-ufs-things-53c5de9fec5e
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761219468; l=867;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=DWNX42d2o0p3UKA2TRUwPtkFgHSS6IWQH6Pd1wztGVc=;
 b=IueMu5/zmuTihJM5QLRB8Bas9Cu2sBN8bwvFfnp/k1+2y+VhxB5dubhVKv9BIN0vIf05Ow/gp
 YSmWl7IIFkKD3ARXHft+sp28/WHo7ipwQhJNnNHXZ7bJSVVqF4OoFs0
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Fix the order of the freq-table-hz property, then convert to OPP tables
and add interconnect support for UFS for the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Resend, pick up tags
- Link to v1: https://lore.kernel.org/r/20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com

---
Luca Weiss (3):
      arm64: dts: qcom: sm6350: Fix wrong order of freq-table-hz for UFS
      arm64: dts: qcom: sm6350: Add OPP table support to UFSHC
      arm64: dts: qcom: sm6350: Add interconnect support to UFS

 arch/arm64/boot/dts/qcom/sm6350.dtsi | 49 ++++++++++++++++++++++++++++--------
 1 file changed, 39 insertions(+), 10 deletions(-)
---
base-commit: a92c761bcac3d5042559107fa7679470727a4bcb
change-id: 20250314-sm6350-ufs-things-53c5de9fec5e

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>



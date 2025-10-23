Return-Path: <devicetree+bounces-230244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C2BC00CD8
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1D27F356B90
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE1530DEA1;
	Thu, 23 Oct 2025 11:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="OW+yz1PE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DC53009DD
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219614; cv=none; b=ZGWQBPOBj0RbjS8fee52EuoAvNCL0vSHhlMp25F9icbiH4cEFpK38AuVrLYrTsXUWaO0ZdF357cP7BAIvA7s96GiwapxsU/BQ05R8s9OO8yh528LtfMKl+Ba8GzfKhionwnR0oU82dIQCePtZkCRFtC1Aqv549mSEsN1ZXzBEwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219614; c=relaxed/simple;
	bh=IT3WjTH4d0Z0+FkVbzYKvEpira6rnSrbJlwlbnTsXWs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QdNyN0qzoxTVe2HGR+MsAwO2nX6MqEWu3VYBcGj73yIhgATUCqUDnhThSZt/9YyAviX8yvUGSnfK3xNMi4QWodGpL4Ve0UOUxwTaKo6KAZctBwtnjRYBNDZh96wB57FMRhC44uVjKYdogJWGvMJTCpdUvo2pIDGggHk7h64V4pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=OW+yz1PE; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-63c0c9a408aso1134613a12.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1761219611; x=1761824411; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oIorowqdv3EZF1HaFOt/PUP64NhVkRO5V6vLFAzu03Q=;
        b=OW+yz1PEas8GRNl7GSRRl0vFdpJDyVabSYOPsruazN7DxMxJ1TIBBoFBN8Djteq+GK
         k+x1HESydeLY+UIU34Az69leYeU6TWB1F7U4T2F94GCmBFuU6TDTrjA3XMuPVlJy6TqV
         G94W9u249zT4H2OEw8qhF103G6wuLOjrFNyVsn0XUzIuqIm94GydsKnpgQEFWm45iYRk
         0YTDCfH7xV8q3cu7LEdXMZsqGauF6wwjSR08z6RZrNkneuNTd4U3Sowv0BaStOIzpfla
         1UxiM1COLlr6JuewhZa1QqKk8/tqv2xuKM42F4Y/gViKatKqE4BeQta7+QvQXfGE7Pmd
         gv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219611; x=1761824411;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oIorowqdv3EZF1HaFOt/PUP64NhVkRO5V6vLFAzu03Q=;
        b=fUmHf7IZLqwa3lzpk4PtfihvsT7fl0nd73yosiQUrr1+QG14NIDNki4DxFKO3DxQMt
         V+6mBAcHLN6Ck/tXL8KpWZAKEbQi58AASvxsxz7/8OetPjH7pWJIq0iuBm/HRabCAJwv
         ChIDfBFElPqTw6kfY6GgpLo4W31vtxnbqSZeKsvgIX344h//609dRoRhFhKhT2hETNrZ
         yKyMGySA8qoj8NrVgW70oURIHXkax02z0Jjh8Wjyd0B/A6uBo+0lgSGcLgm6jOhsCocT
         z/fBcUFUZLtdcBsLRJhKBQNZuArfPZZuK15LT+N3gTnXtpVls9G/2I3aDN9+VX0308bA
         N4Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUEtvdZviEjkNHCj/uBwdY2LIj3WQo7DOSsJQqcUTY+4DIL8G6gejBYMvXZqHkk/Klmv2oCsLUROoDY@vger.kernel.org
X-Gm-Message-State: AOJu0YwI+kKiSf7t9awsWhVZB9PfiAOGdR/cIl1Fltb2Cj392HDrqUPA
	pKR0D89ey6EgEhpLWfeWeS8ReoMRUBHZo8963Z1rNNrCZQwSpQDeRIDUR3LnccPTc+E=
X-Gm-Gg: ASbGnct7CXuYwoufFl7oR0MoLHi+8flhm60WDxA7TVorYJ3tzTsP51w1alAFV/tCvE0
	MbNSy9FIvZnBkOmTAFUZUSROtbHYbaPBhkUeEswKKF5PqmC2hs9p1ba6Nh4bt92a7mWNrSvsiA6
	CKfVe6dS/OVCUFnp1UK5ldfrnAUcHlUwQKM/ZY77OeBsExW3HnmhWPDwDpsFDY5hxX82fRADyMV
	cyBonpdCak5PyK12+Q83XQGMuHaiRjPqNbaKARHL1ZyaCfoeZ2ReL9xssvvraWBrkyBCdJ3apOJ
	WxFLFW7inu84ibQj32ngTyhxJrMs86vh8KcLqniIp4DUc2sgEl/Q40IdyyC29D/Aw8nsQtcT9Sq
	CTPZ1y9ezpIC3WMskO8jXBBt2vjxHpY9qFe6XqGlOqA5XDJiSCid0n3BuNcXrPvm0FqF85yv46B
	rabTXiBG5+PFb4rbrjONeWRE6AuPK5XTXnKMxKzhuf2KFeKA==
X-Google-Smtp-Source: AGHT+IF9HVQ0oKyBqFvpuJlw2FMI9pRLVIxFWml173tZ1CwIycKjF8srbTzahjeWY+MF7ZZe1M9wig==
X-Received: by 2002:a17:907:d08:b0:b32:2b60:f0e with SMTP id a640c23a62f3a-b6473243c5dmr3059050066b.17.1761219611013;
        Thu, 23 Oct 2025 04:40:11 -0700 (PDT)
Received: from [192.168.178.36] (046124199085.public.t-mobile.at. [46.124.199.85])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5144cfbcsm192518066b.56.2025.10.23.04.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:40:10 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 0/3] Fixes/improvements for SM6350 UFS
Date: Thu, 23 Oct 2025 13:39:25 +0200
Message-Id: <20251023-sm6350-ufs-things-v3-0-b68b74e29d35@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO0T+mgC/32PzQ7CIBCEX6Xh7Bp+pLWefA/jodJF9lCqQEmN8
 d1FjR6M8Ti7mW9mrixiIIxsU11ZwEyRRl+EWlTMuM4fEagvmkkuNVdiBXGoleYw2QjJkT9G0Mr
 oHluLRiMrvlNAS/OTudsX7SimMVyeEVk8rv9oWQAHVXOuammMlmZrOwonN3pcmnFgD2KWH4rgU
 v2iyEJp2rbXrWjWjVDflNuraMDzVDanV1t26CJC+Q+UNpXHOcE7ozhud3sCMu8tAQAA
X-Change-ID: 20250314-sm6350-ufs-things-53c5de9fec5e
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, stable@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761219609; l=1028;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=IT3WjTH4d0Z0+FkVbzYKvEpira6rnSrbJlwlbnTsXWs=;
 b=we1oHYRq3VFpjv7U2VuhgIidnVWT72Wm3H7lgX23Db76yrigFfFD2OzgQ+7lojxUv6aKyllXK
 xodWGevdr4hDnQUMCHGSTH8VyVe7udUcBV7rMJqw2sPMssvVjgRwuXT
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Fix the order of the freq-table-hz property, then convert to OPP tables
and add interconnect support for UFS for the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v3:
- Actually pick up tags, sorry about that
- Link to v2: https://lore.kernel.org/r/20251023-sm6350-ufs-things-v2-0-799d59178713@fairphone.com

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



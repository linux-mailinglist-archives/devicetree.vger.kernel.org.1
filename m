Return-Path: <devicetree+bounces-253621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F8D0F517
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F1F073017217
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FEB533E37D;
	Sun, 11 Jan 2026 15:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fHxPrI0h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EKe/lBoq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01853D6F
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146343; cv=none; b=nEb3MdNaIe7UeIIeqRZKmG6+3xPJVeYGDnmnURUTYMSSbvDMOCWeaXYr9D1z5ZSGquIno1DOWfAddTC5tkAaZ/rKrdmJLGQNlkX+lTtZ922wnIkOzCMwEnRltNID8qJTP03czXKSW0d17p2dKZrzgMYYunUpitVa2vT418mB8Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146343; c=relaxed/simple;
	bh=kqEEkCIScR5/MiJUkEOuOsx83FqDEKVFeb98ScMf/b4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=I8ESLg7ejeSDwCobhje2MBLDhMdkcEtyV5N3KvFFCPUc7n5tfk7VF1LU6IxEEgRxFm+dnTRCDfgAOfiZ/TziLrQQP0jttKtvrhU50MsZ3nykGIM98sHHO0EyqUWkYHKnguahpY9FmgDGz2uxlwYseO834AvzmwqVQII9AxaoEOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fHxPrI0h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EKe/lBoq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60B99ntP1525709
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:45:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=MdLFsWjHIZRkAMjRx8XyAv
	xX1n56tujFMjH6H3D6Wb8=; b=fHxPrI0hpdhwKZqcIdv1Lp+YxkCOtUXBqjaXH7
	GiXa8VmOOMXj+e2LujPib7y+GFVR0yBiwZKCiSWR9Ys6FQy+aGZEiNLAWLjZ+8t2
	INis+ujViH3bHqd6uiGTIWH45xDJH7ihkH4V0rZqRrbnaXAU0nWxcYOwNkA9vb1j
	8M+qiEDjJoqygTJW0J4vIGQYk83vgyLtOSqEAf1UDwdZX1j5hD61j4/QvyCjPt1G
	9ikHpYwY4U/URC/dF3dioKEiAeha1d4tyr7mXSV7ZUK13LMyCc7uPoTaXIKxo62e
	+QRkaPWfDfda9hE7n9oWoQ8qYc31SNTVqfgW0f2pUfzmYFVA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkf57acq8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:45:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b22d590227so694928085a.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 07:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768146340; x=1768751140; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MdLFsWjHIZRkAMjRx8XyAvxX1n56tujFMjH6H3D6Wb8=;
        b=EKe/lBoqDbK4rShwKlT52wJ2zdXyMEv63hwo0V9uth3r7DMKGP3v1LhCI1vH8cKpwz
         BeoumPWMXUmd89VseIr8YmcRwcC7m1527yzivnpESyB+mV2p/FPJnkw+50p8qQ1Vxm5l
         qr4JOjIGpbia9AWz+PkNPAgF6Zpeg/0hzwMhvzFgZOSBvuCaNGD5OWd42dSlItGQWDth
         VwcDywieGgWYhpYQMB5BzegVLIzFfwEkARSDncIcdoi27MA2nHzbXpe/TOAO1oWbRzJn
         37tN4kHxuthQCkkgfEkm4ujcYpFDqW+TXrVue17U76h+plyvD1I7XR1T8sTijfiYmdAL
         yVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768146340; x=1768751140;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdLFsWjHIZRkAMjRx8XyAvxX1n56tujFMjH6H3D6Wb8=;
        b=RKPSaYzTlEaOxqHcI9NxaWunBKBltn5wcWClPQWtHZukxCQp8L8mHRvUe48AhWL+PZ
         oEBKEiHb3h4j71bTRwra269n3RpkPgZUH0dLqD5XKgBvbERUxXCBjEJfum+5DCEjatE9
         h6XxXAVOd846pNsQVxAUNdWa9W0xxteDhE/4A6uOxIZgKFuRgadfwpTvaWklAiaLrrGX
         JskWbqGJp7jdENqNtaSXDcREAtw7Qiww2Up9LMtwaBZhj8CoJU6HDpiX8HFNJGV8LMlJ
         bb2soy4PE3KaQ0OIVtDjgcntXkWkdRTiPEyokytwXGyJeROR7oixXsSe7DZ8CnL3Gy0l
         kX6g==
X-Forwarded-Encrypted: i=1; AJvYcCXuArYByiUQgmOIAkHJkwo9VHqzKAjlPw/BLy/Jk9aVb+iofNgB7EoQCFf3kEu5vvqEe0i2ebstem9K@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Ki6xievWJ/vt0pIL6ehgX7PYCR+nYuo26eoV+uIsPbOCbyMZ
	mxdfJqtRFZ5sMB1hqKQygGyZpF4whBsuXwmOfXqdpB66hoy2UZpIExXzceHr/litQCpyN9MDDHG
	Rr5ojlUXTr7AuMkcLUYDlS4R7oAgVR6NRSfxATLkBwcoSvEu45MJDly1knw0wuBDP
X-Gm-Gg: AY/fxX6+n15Rxp6ilhRAmclLUR0QmkH7cVpjhVIm32SCpvvvl4Spo2Q0H3XAbaRl5bY
	sxCvUg2Xya52sDnynIKbG3uWVHkHKXffEHsUoeyPRcPfSoMLWjddqBFGE07WWlyg4a5e+9/7CzQ
	iAwrOEN4IfietM5ghlWovqXcDIc+R8zYE0l7xFH8UbMiVdNP5gBlc8HILg8Pa35MTSigLAIY5ET
	t+aCiS9j9Bsz0+HOIymlXy/OmmvpRYebOhCjdS2qiQpKMZ4qyLOezmVhtE2DXMBuloB8t+P85mM
	Xa/ndvtwuPOkboVE6FM1pUaBusVe7Dzmbe7yTUv14vDQ7D9py6DlAs+7bRTVOyaI5jsaAYkfL+U
	g4O1WoTp+ldT/mX/sTv6T47JQ1ika54/wVw==
X-Received: by 2002:a05:620a:290d:b0:88f:e620:21cd with SMTP id af79cd13be357-8c3893df007mr2186642385a.62.1768146339828;
        Sun, 11 Jan 2026 07:45:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFW6HzxxfCtPHKE/LZjMIENnm2+RH/Q9xgNhQhcFP5uBiKOWdPXLy8h/mTMmdTVXAX59wMXSA==
X-Received: by 2002:a05:620a:290d:b0:88f:e620:21cd with SMTP id af79cd13be357-8c3893df007mr2186639485a.62.1768146339364;
        Sun, 11 Jan 2026 07:45:39 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5180bdsm1636605566b.57.2026.01.11.07.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 07:45:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH RESEND v2 0/4] watchdog: s3c2410_wdt: Simplify, cleanup and
 drop S3C2410
Date: Sun, 11 Jan 2026 16:45:29 +0100
Message-Id: <20260111-watchdog-s3c-cleanup-v2-0-fab2d21a2048@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJnFY2kC/33NsQ6CMBAG4FcxN1tCD5Hq5CCrg47G4TgKNAGqL
 aLG8O42DG66XPLfn/vuDV47oz1sF29wejTe2D4EXC6AG+prLUwZMmCMaaySWDxo4Ka0tfAJC24
 19fer4IpQFZUqCmQIp1enK/Oc2TMc81N+2MMl7BvjB+te87dRzu1/eJQiFirJSG9WhLJId63py
 dnIunoWR/wqEmX2Q8GgZJtSMVXrVHOys95Htzu1bLsuCgMu0zR9APWq4IcNAQAA
X-Change-ID: 20250830-watchdog-s3c-cleanup-cfa28bf8bb2c
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1110;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=kqEEkCIScR5/MiJUkEOuOsx83FqDEKVFeb98ScMf/b4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpY8Wblt2WfaTlcEgr1PAwJY13vxMXIFXCCFKda
 xj/csBAr92JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWPFmwAKCRDBN2bmhouD
 16dPEACXNQ0emQHW5KrqNvcneYbX9caV2GX+9qc9llbIChA+tBS9pJcAg9xo5vO3NT+9ENvIZKS
 RA7l+U6w88Lun43qUQsVSGHb6y1JB2qJ3tT6yG7Dpgv/BWv579cBK6F2ybvBxaJ1JUIcw6Q6t3L
 tLx3VacvpjtfzYW53mEODH5QYUYQrNktN6xvz/KHjR20awLkvV80e2LK7osJYuOES8TKpaa028Q
 CCA/k/xhEeTnT7k6IKah+H2hVfjqEVdnqgO5ZmHPZCNFOLhtYYctnbcYJb4Gwnd7rpS4RaRaaqC
 /vXKyyinTm8NNOFa3YUgQr3x+QCQC0wVBq9PCoyX34hXqirRb6utFArXwneFr+dmDqQiuvFhaHP
 Ef4rD/KVK0CLK0UJ9PaoetzF9aTk7e2VPOF6YP9EIzXcd3LeZ8ZyNoNWgUMe3yMj1TK/xM5uHwI
 iZVJAPZzueq9TElLDaEwaUDiPKWjIt5YpxCcdi8yt0rEHHe9unY/DlLZ/5GuBjZsEpiPNdrC9+4
 YPAUQCmb4HGBtvuHBAGP5uTLd04sFuirS89pRzdTgAaa368ZqZE+kUikZ3Rx2N8BxlrXqwZRCxM
 +qQ0dBoMUTZ3KONPH4w27eos/4g/qvGgE6K3A4yB8p7tEacydJdxYM0xOd5xKKaLvv4rD6zwkph
 vhLC5GvtJTDlc7Q==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=K/sv3iWI c=1 sm=1 tr=0 ts=6963c5a4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=IkrQgrjNrYqhz69tAt8A:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE0NiBTYWx0ZWRfX+CE6dZBnOSRh
 CWb+176UO1Rf+h2Dh/klz2dBIIZWcicgsqiYdGVAhu+7xlGCEbje0NfB926O722PUBM5Dcyzb9u
 puJql+1nBerpxrGFoRIrb5m9O6FPbU4bMtSQic3HEdQUGDdsKA06RAVGRUkuyHbS1bPza/bwuhD
 WW1m3MW9jGYQv324WMcv0WbXdwUP8r7HHbphkQpyr8H5AgcVxMIu/eLp7u1FN4iSO+a/z9m6Fcy
 EE96upZbxTlwapgHiU4LNag9sDOHZ2i/O5WSw1V919wvP+4GE7uoYE4xrj2KXpLQETQi6EmPV+c
 TU5/A/kiyfz5+shpS6P8iVBbJV4/K5hOeMYWlRDIPrQGu/FFB6waN4BmZkA2acB7bCYxJme/DaA
 rZbfrODI9qtLgFlFXP6e1W5+mxuCGokS+tla5nfmhfuGSBnC9WlhHedHkRSIxN/aPZmMWsD+iFM
 hR50JvxN/kcx/8HDmCQ==
X-Proofpoint-GUID: 3czy4iQ8b6rLHLALgwrDrKCJ29uNPSX_
X-Proofpoint-ORIG-GUID: 3czy4iQ8b6rLHLALgwrDrKCJ29uNPSX_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110146

Resend because it is waiting for 3 weeks on the lists

Changes in v2:
- None, just rebase and apply tags.
- Can this be finally applied? It's waiting for almost four months.
- Link to v1: https://lore.kernel.org/r/20250830-watchdog-s3c-cleanup-v1-0-837ae94a21b5@linaro.org

S3C2410 is gone from kernel, so we can drop its support.  Also cleanup
and correct a bit the bindings.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      dt-bindings: watchdog: samsung-wdt: Define cluster constraints top-level
      watchdog: s3c2410_wdt: Drop S3C2410 support
      dt-bindings: watchdog: samsung-wdt: Drop S3C2410
      dt-bindings: watchdog: samsung-wdt: Split if:then: and constrain more

 .../devicetree/bindings/watchdog/samsung-wdt.yaml  | 72 ++++++++++++++++------
 drivers/watchdog/s3c2410_wdt.c                     | 22 +------
 2 files changed, 53 insertions(+), 41 deletions(-)
---
base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
change-id: 20250830-watchdog-s3c-cleanup-cfa28bf8bb2c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>



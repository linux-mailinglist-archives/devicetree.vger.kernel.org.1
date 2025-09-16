Return-Path: <devicetree+bounces-217663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0B6B58CCB
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 06:24:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D50F916FA59
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11EB2C0F61;
	Tue, 16 Sep 2025 04:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kfjzT/zQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198482472B9
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757996665; cv=none; b=lLawy8umksrgSSlvrFo10rjj0GIwrcgdHoLK/FHTUNV4AcBOEh2fRNVZeGM+m3139SbcxaQ5vT/v4V36+DDHdSSu3x0yeDOciZUXbxfhHKm94MBY1rKMG6OBIDboklLYR/PJgFHg1Z3r9BSk/JVYSro5LSLKPtwRGYgIrIxHTNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757996665; c=relaxed/simple;
	bh=d0F5+UgTCzgn3IXwRvcRolaBOhApuSrgUcOQlvXYqh0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SM2zV5Vqc/ToJRCeI4g7pATwVUMURCdPKrxHpL7l4ImbPLshT5lB/ibhfx1jGRWtoKwNOk31bXk7lJhNI3cdxOvBUBXxRmLWaaVqorzLAPVtJ4/6l5tpnMc8DSg3YGu0OEzNbWA0hnqLEFqA5MdKIiB6SKVFa1ZDUBqt7BAxkHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kfjzT/zQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3q6oo004802
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:24:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=y2TOoktq0KjQ4asl3Zg3mi
	+Gd0JBZ13V6kqk/o6P8Vk=; b=kfjzT/zQiWMlFV2ZNJwjZk+Xfodb7maxd5b9cH
	2ZhxOXotYAhQTRlFjCD5ZkgRT8Po0o3WqTHMKKsAA2kL1EgekK7fBigEu+D2XXPp
	miDzgqU6IiNta3VcVhjsHcYwg0xOf9aM+9j0VtKAGyuTCqLKz5BuMISAA6Ke5lQW
	XqSffUgIE41bhkXgiyay3ww1OFct0l61GtKOGAC8R76Jqf8xS52WfmxQl1oM8Ftl
	TE02HEFOzdUHFHrPwQqUl3kq2m9+c/KJm4K/jCBgU9fkljzrIm0Ow5fhbLFasIyj
	14VoLj07fJLQAgtf7+hAFwqK2cMNE33tDcJ79HSkg0wZCOng==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494wyr7m4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:24:22 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-435de7f86aeso1567502b6e.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 21:24:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757996661; x=1758601461;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y2TOoktq0KjQ4asl3Zg3mi+Gd0JBZ13V6kqk/o6P8Vk=;
        b=dK9DCtaRrPJTuRCeUKoRx2wtvXGzDWNtYjJQr7oQznb9TzGPdbXbQPgxKLiriUEc/R
         l4gKh7DQM4R/76tmNFdHQZnQQAMD/neVkUe8ZUHJG58+a6jaqs6xnu6e0If7lfWPgDJg
         WBoTu5I4u5EzYz//hVt/gcTDHOluUHeTi5vl5/8JnijgJtWruTReX8CVESDe7G0Uzu7h
         eXjFWeHuLHgKyk9JUE89FzJLAPBGrcuMcFRhsSMJyM16Hcm+Uv3FJexA7qO3yWLnWDXG
         b9k43Tb4+A3UN3c87IK+bCh4WzTLo4cePrDCZOliJgbqb2OnZX8X2iNFgq4pTkZf6+sj
         1dLA==
X-Forwarded-Encrypted: i=1; AJvYcCVik3NCFZYU+Z7PjsqqqScfQVq+9ia90Sib6hS6h1JH5J46EFGG/jqnGAMjL524V7SQVLyDbAkmdbFL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4FRnGQuZVl6grQ5BZvlkk9oJkkF4wqo042ux46HXp+hAN5Niq
	wQH2NuMf/Mb1tfS5SG5vhAHqmeMSaaVVQwwH3/nj34vmTZYb5trYliUm6I41nC3RGJTEzcuuUIs
	Z/Cm2a9iI/lj34KdsnpAxwntZZQ3GpALNFHefyRUlVafOEvjHTtLcVtlDnYpFxZg54hhDDJv/
X-Gm-Gg: ASbGncs2JciCR0jOgifEjh5b41Xv2P2Z24Pv1Id4dVM/8tTxTefs0XShcriAEKsAHc3
	LH8iVWiEKyMKNZ5/aSEG7iDvznwN86uuy/2w+grhlRVE6Ya8Cwn5qtE6lsl+JFFnfDdHmjxScQm
	M8yCZG9IP2y7aLSwYKqAi/o4Pxwxv0rXfkVyAUIHStZ16BIoDWQY06QzSGfH+ldH0zMuhifuT81
	juTGo6V2ajXepO3y/Zh2lL9VmE5GHqFJO7KHB4GB7TiI1Mkzpd/P6pCtSWykjCCkId01yojKN39
	4yqHjsj8bYMr7pmnuib3L0Esxcc1g2Mz64lw5Mb4KgUXQypmbro5GAxWWQsWE5JMSBNiJcH8gyk
	PxcoaXQ3I0EFE/quTgEtY2u07Q0y1MViJ3jbB8io=
X-Received: by 2002:a05:6808:2e48:b0:438:3cb9:920e with SMTP id 5614622812f47-43b8d9a8997mr8375531b6e.28.1757996661192;
        Mon, 15 Sep 2025 21:24:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcGYEoc87vyrKj/Rrl2HfmchHYzlGT2ZjDf00mVGz2E3zBuHzG1PaPqqOetTeoFgR2BFTFSQ==
X-Received: by 2002:a05:6808:2e48:b0:438:3cb9:920e with SMTP id 5614622812f47-43b8d9a8997mr8375510b6e.28.1757996660742;
        Mon, 15 Sep 2025 21:24:20 -0700 (PDT)
Received: from [192.168.86.59] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b82a73075sm2772862b6e.19.2025.09.15.21.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:24:20 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: qcm6490: Introduce Particle
 Tachyon
Date: Mon, 15 Sep 2025 23:24:14 -0500
Message-Id: <20250915-tachyon-v2-0-4f8b02a17512@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG7myGgC/2WMyw7CIBBFf6WZtTQ82iiu/A/TBcJUJrFFoRKbh
 n8Xu3Vzk3NyczZIGAkTnJsNImZKFOYK8tCA9Wa+IyNXGSSXPdeCs8VYv4aZoeq7k+6E0kcH9f2
 MONJnL12Hyp7SEuK6h7P42f9GFoyzqvhtdEIp5JeQUvt6m4cN09TWgaGU8gX/l2TppQAAAA==
X-Change-ID: 20250910-tachyon-e3548941397d
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2413;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=d0F5+UgTCzgn3IXwRvcRolaBOhApuSrgUcOQlvXYqh0=;
 b=owEBgwJ8/ZANAwAKAQsfOT8Nma3FAcsmYgBoyOZz+FgAXgCG3QIzr/KKCM0MpOGzwVOtyiP0V
 7PgrMEJk7aJAkkEAAEKADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaMjmcxUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcWYbxAAwrKS/p9TDQyofwik6KhyMAHTgeKKgG8UQBGOg/F
 Ae8Koo/IOyvr3ivx4viTeUMpvP28G2yD0Sjk0GNpwZGyRkaNHfpRT9JZc/HBFXQrkYWxzIPR4Qo
 ymJnHyAJliVb+DoPUsS1zWWRof/Cr40lmoizNEuMsyVR87uc2nW8qcSaqX+LJWZDamfkuIPYxBm
 Xm9ahRUOzx5E9I1/B0UzqVYq8P3QkGeFNcCrntc/oCcmNWINxnvVYWchWoRoG8vCCd1MEKHVtRR
 bLvwrkvPmWLr7r0EMY4RkoqJUjEFDrCNNkN9MET1Cbjhb3Dt+DaXbq9ku9DukW3kN2FYjn9Z43a
 vgNhna02B1JAIX2qMGu2FNjH1XXlCRXeHGygYrUBZD0XhYYla8ZzR+v5OhB515hrej9Drevhc65
 7yvW89kduSkFL9u/b6oPdT11xGkYurJ5Ub3j5ryryifD47cQqnLoqPbQMG/CLgd9g53+NAS+7Rg
 RDGOWxwNi0QO+qhUz2L7sO/S2tIBB7LePcHhNIJfS+dCx40avPry9HhiqpZlBl278szkhcUNoVq
 98HT4YwYDg2dGyWDnzolYYowsVP4+SMr1oJs+qN02g8dLYlSZ3TloqT5lLIKE32b0KrmXk2CIjH
 sq6E5/Mfc50DyKbvEjrKrLAopMwsxmt3aSNCQqRC+XEk=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-ORIG-GUID: vcyIGxBFZdh-1psu3eQR7Rfiv948Rlbu
X-Authority-Analysis: v=2.4 cv=SouQ6OO0 c=1 sm=1 tr=0 ts=68c8e676 cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=7AODkVuKAAAA:8 a=NEAV23lmAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=mczXGPDCzB4sW3sFK7IA:9 a=QEXdDO2ut3YA:10
 a=_Y9Zt4tPzoBS9L09Snn2:22 a=sRHRY8H3vKB1GfNvUtpx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAwMCBTYWx0ZWRfX2e/Vd9/OAvXc
 Kixa+ze89PY6Lb/TTeP0lvR/Iuhoy3GK3C3KUd14bM7aw6IfC22Nz86FTrxzpR+WqmBr7VD+BXu
 SG5LoCFflLiXZ4cooD42Ww8LrPWujU9nVdn48SZ/g8+p6Vngjy+jadL3CKfDeH7jWQnCojAtCvE
 52FZm41TCw2awuCXx639YNc+UFzoMC757N9TLtYAjyfvOqa8gzDzc8A1F0o44YlUGhb8+yFYMc8
 GkBZSkPJBtRlLQ7vvzq5X3vayNe/O4EHiLPyvk7RCj2e56fRXDEKXoSbW5YdpkuZ3X9HwlGeoZg
 OhZ5NcWs8wOmQYsFoKxb9fkj7dsRw2vjA+rVFxHsqx6zwTMlybYFAyhVoOIaAZtdfAzgCWYm3oW
 kXk7CZ+e
X-Proofpoint-GUID: vcyIGxBFZdh-1psu3eQR7Rfiv948Rlbu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_01,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130000

Introduce the Particle Tachyon board (https://www.particle.io/tachyon/),
a single board compute with 5G connectivity and AI accelerator.

The boards currently ships with the Android Boot Loader, but replacing
this with abl2esp allows writing a EFI System Parition and OS partitions
to all of LUN0, and a more UEFI boot experience. A prebuilt version of
abl2esp is provided at [1], as abl2esp-v6.elf.

With a (very) recent version of QDL, a flash programmer from a Tachyon
software release, and a full distro image, this can be achieved with:

  qdl prog_firehose_ddr.elf write abl_a abl2esp-v6.elf write abl_b abl2esp-v6.elf write 0 image.raw

The following firmware files are currently used, on top of what's in
linux-firmware already:
  qcom/qcm6490/particle/tachyon/a660_zap.mbn
  qcom/qcm6490/particle/tachyon/adsp.mbn
  qcom/qcm6490/particle/tachyon/cdsp.mbn
  qcom/qcm6490/particle/tachyon/ipa_fws.mbn
  qcom/qcm6490/particle/tachyon/modem.mbn

In addition to bug fixes that has landed in v6.17-rc this depends on
[2], which is available in linux-next.

[1] https://github.com/qualcomm/abl2esp/releases/tag/v1.0
[2] https://lore.kernel.org/all/20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com/

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
Changes in v2:
- Fixed qcm6490 vs qcom6490 in a couple firmware-name paths
- Reordered once pinctrl-0 vs pinctrl-names
- Provided speed property for i2c1 to avoid Linux informing us about
  picking 100kHz (no value in downstream)
- Drop a of_graph connections and properties that was already
  established in dtsi
- Link to v1: https://lore.kernel.org/r/20250910-tachyon-v1-0-5090bfd133e0@oss.qualcomm.com

---
Bjorn Andersson (3):
      dt-bindings: vendor-prefixes: Add Particle Industries
      dt-bindings: arm: qcom: Add Particle Tachyon
      arm64: dts: qcom: qcm6490: Introduce the Particle Tachyon

 Documentation/devicetree/bindings/arm/qcom.yaml    |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/qcom/Makefile                  |   1 +
 .../boot/dts/qcom/qcm6490-particle-tachyon.dts     | 864 +++++++++++++++++++++
 4 files changed, 868 insertions(+)
---
base-commit: 5f540c4aade9f1d58fb7b9490b4b7d5214ec9746
change-id: 20250910-tachyon-e3548941397d

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>



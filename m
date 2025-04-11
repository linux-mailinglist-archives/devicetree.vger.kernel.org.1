Return-Path: <devicetree+bounces-165701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCAEA85228
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:50:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2E5A4A6B37
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 03:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E75F27CB39;
	Fri, 11 Apr 2025 03:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SeRY26do"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482EA27BF89
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 03:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744343428; cv=none; b=ASIMmkk0VfTfG7wZ5jmIxHNZn9aMQyCelPduc4/gLTuyw6CAeFStCbIS5BnZXdQyKpNUnVNoUQh80pYkmvf+7yP1NQGsbod2ayj4qbj3eMM8AM8wLdNPEkUZalCn6xh977/mSekWHbCmbs3g1WZaLdi1Qkaq0CWzXohVg05TG5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744343428; c=relaxed/simple;
	bh=hsoTA7TUYDFboum63+Q9xYjk4wB3SF+u4wgvW7bhfEs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BS48WtTnVmQQpVZXfr9RINFHGmFkTGwRtILQZZhAkx0EAX0PziqTSSh86tx7UNCu/ux5EK+sXHlge8lkA3QkHcbu47Z+eN9JkzSIVhSV46ofjo6pzmx8h6BbOAlkbFQjELg8rI4uMppYwnQLH72W1F/uVxqhdHWDWh4S7pQcxLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SeRY26do; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AGOoDQ016337
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 03:50:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3Xh9OVaWmlFyLuOdTBhKdn
	IImHC1uY2pEvdRTarP3jQ=; b=SeRY26doqoJiUYP1WnxwvaKeYfxIOhqULEXOZ3
	+RiMKFhd45qvtUwyEoq0YvVQUcEWdRw+0g18jd9Y4AVHeN2hryioHdMJUCsB21uZ
	Kr50UtRAuwr9mDHGQ7AUyg5XVopTZd9Ed0wPriTW8nSHlwOiruFV0yYDn8CGQORi
	lndc2LaF9rPWtNcMvypp3kpZwPBK6UCnRz12U7hHiwT7xbhUzdn/LHDeVfuaI1kU
	O0XA1oFx9ZnIZCmmDX47rLRQE4uSQihfLyqdLuqeqzzhEhzEl309m7teFKLuazSe
	kxYrCjim48DylB8/r9o3P72XpJgAuSfdFelv9lZ4mfFBIzHA==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1rvx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 03:50:23 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-2c70bdbbb1bso1133433fac.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 20:50:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744343423; x=1744948223;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Xh9OVaWmlFyLuOdTBhKdnIImHC1uY2pEvdRTarP3jQ=;
        b=tjaEqwJpFZPapdioPK/BuzLdOW6bye/YQBG7hOEWIu2tf4OoPjeTd2QesazggX2kSw
         bEvSbzAEj0rNdn+S4r9vM4a5lMEWd9N0L56WvgKnTxoEflGPgdpWokQJtSxB8GGSrFFE
         iVLcFTMY8VwojhtK+aXWLEFI4xg/aBNGO4Y0+q0R+S9k7qHrt2elWzTmC+nQEJaCQux6
         HFNXpcCw2ET+cGRF/SuMJYMG/Zad+km1VK6GPjLhb8MyqaPFu3heqjclta7KYXRqC1en
         B7droYljd83fDHk1bHbaINjq8bFQ4jtuPvCarXPBlcbQDgfR4bwZ3SxAQsoOmIgsnS1P
         VNLg==
X-Forwarded-Encrypted: i=1; AJvYcCVH8sEN7e905dY2Zr+zQseF0FUKNeBxMsKDIRYDfiRJu2TRLmajvf1JKOl1XvSik8pGZ6BPtLDml7NM@vger.kernel.org
X-Gm-Message-State: AOJu0YxLXs5fWcMtjNrvIU1/mdfz8CZF+mCUb75B1hyBvZ1WyCC2BRa3
	IegQIsmzawMHLRF2VH6ekuxhgCsqie4gHDYUKwplfxu0MhpoRSiakCJTlwyWfrg1/HOmCbX0Zml
	RDztaCPVGjRUCYKH3MbNQKW+6jNbVCtvZ9rSONLutOI4NNFk81M1U4n1weSDz47Imm4D3
X-Gm-Gg: ASbGncvNX+QZaLGeLY9TKhNN5deonk39cWl6PLlpHm4V4feMetIASsl/jZB0DT3KGnw
	rulQYJhl6xjBG4YYhOopDCh2axR5P0l1q4hSV/LtGNzlBjgKpoSRO19DEmymoDVuEatOtGUlL7y
	ZOGmKCXWTekv/KbjwR7Zyp0u6UfmPb95K7VbJb7bnnmJBo+U2rxkwmpl5Tz62Un8tK2ZgzLHbGy
	VNuICCC5bP40FOi7p5lXXiqvUH9HBUHr1lBKuWtEG1fKYLhwJ0e3tkGixgfz7ZV9p07ICMSYYZC
	1mzFhXr+EmR+0/T50pe1Gmq19C4yGV1efZ2VOjMwFQra6XNE+8a59bA+ePlm3J4yGdQmy54qTol
	XUOVAQ0mDX1g=
X-Received: by 2002:a05:6870:65a6:b0:2c2:5ac3:4344 with SMTP id 586e51a60fabf-2d0d5cda2d2mr534718fac.15.1744343422947;
        Thu, 10 Apr 2025 20:50:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE12wcOEpffztQX7kjbDGI0IZSQnsKHREhLDbfvcR5PLJlQfuSR/LIF3qduhvJ0s8wrn9NbEw==
X-Received: by 2002:a05:6870:65a6:b0:2c2:5ac3:4344 with SMTP id 586e51a60fabf-2d0d5cda2d2mr534700fac.15.1744343422583;
        Thu, 10 Apr 2025 20:50:22 -0700 (PDT)
Received: from [192.168.86.65] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2d0969589basm958677fac.19.2025.04.10.20.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 20:50:22 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: [PATCH v6 0/6] usb: dwc3: qcom: Flatten dwc3 structure
Date: Thu, 10 Apr 2025 22:50:11 -0500
Message-Id: <20250410-dwc3-refactor-v6-0-dc0d1b336135@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHOR+GcC/3WPy2rDMBBFfyVoXQWNHpbdVf6jdKHHuBY4diPVa
 kvwv3ccKAbTLu9lzrnMnRXMCQt7Pt1ZxppKmicKzdOJhcFNb8hTpMykkAoENDx+BsUz9i58zJl
 3ClB50brWd4wY7wpyn90UBqKmZRypfKfz9PUYeXmlPKRC7Pdjs8qt3fRatAAHfZVc8A56ZUVsw
 EV5uS0ppCmcw3xlm6uqX94IAHXkFfERrJTCmthbf5lLOd8WNxJ/3SV6l0h5/LFqkmgNBi0AoO7
 +kZhdoqA9Ssz2iUDXoPHKO/2HZF3XH/PP0NSQAQAA
X-Change-ID: 20231016-dwc3-refactor-931e3b08a8b9
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Saravana Kannan <saravanak@google.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Frank Li <Frank.li@nxp.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5920;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=hsoTA7TUYDFboum63+Q9xYjk4wB3SF+u4wgvW7bhfEs=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBn+JF3fkCMsSPwZzI3Ac5ipf/AqeLqq6gxfqQ9S
 OfAxfEfm+aJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZ/iRdxUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcVaHg/9FQSYNtkcmZo8MKnQ7tYyzRbaAJG51AUftkHkOwL
 aw2nI/yb0qKeTDSBPFN3YcOTnihW5Y9LekHxuVCRvhEM3FGcfg/34wycoCbPAB4xAZ7VR89SrzB
 StbONyk/yqyD/KQzWDMk54sd7Md58DY8xO1PaWkVPWs4KIT6nsWcKo99o0sdNN2k+FGQj9xdVvd
 7tNMZBV/eVYvHcEIrtn4tBe8fP/fkpIc6F31+UbpxeIV0uQAmV+k64bOivbyP2AWybMLCOU0yoA
 FUBrblJQVttZsXSovKDYFR+zjv/YKRfhZxSFn+Q7nhXUX4u3t7G2iqMlatxCc+V7ssE/beX28ua
 DCyRrH+IdZdkM/CCy4Tkgfb8DhP2xyBKRrazbFQLacWASV+3mg+3UXuJmu7rEPb9yU1P52Iqy3J
 hG0ob/pNHIFmMb+bXv7KrX+PQF0WR7OhIm5q1bgU/vpf/Ccwzl7BDe7L8//wCZA9Dimej1kd2fL
 Dk6kZ2g1l51Kl1dyIoMdwgSFJvicoy/VSNqwWABhIOzYw++vgiICt7caup9H2qZCr/gFSLWdFMK
 PbE1NbXPb03casy2Q+DyFbegG+v+rvDRa+qPV3D7vYiUH4/YNuKqEKpPta1Et1fT/kPK3116XgG
 UX2ki37tfQN1jlKMHXEt59zxhBOdPb6E+oAHZhYeKJ/I=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-ORIG-GUID: Xj9wcKT2IexL58Av3UMUv9Ks9PvCgDD9
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f8917f cx=c_pps a=Z3eh007fzM5o9awBa1HkYQ==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=PRPaYdtWR3OSq7m5HH0A:9
 a=QEXdDO2ut3YA:10 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Xj9wcKT2IexL58Av3UMUv9Ks9PvCgDD9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110026

The USB IP-block found in most Qualcomm platforms is modelled in the
Linux kernel as 3 different independent device drivers, but as shown by
the already existing layering violations in the Qualcomm glue driver
they can not be operated independently.

With the current implementation, the glue driver registers the core and
has no way to know when this is done. As a result, e.g. the suspend
callbacks needs to guard against NULL pointer dereferences when trying
to peek into the struct dwc3 found in the drvdata of the child.

Missing from the upstream Qualcomm USB support is proper handling of
role switching, in which the glue needs to be notified upon DRD mode
changes. Several attempts has been made through the years to register
callbacks etc, but they always fall short when it comes to handling of
the core's probe deferral on resources etc.

Furhtermore, the DeviceTree binding is a direct representation of the
Linux driver model, and doesn't necessarily describe "the USB IP-block".

This series therefor attempts to flatten the driver split, and operate
the glue and core out of the same platform_device instance. And in order
to do this, the DeviceTree representation of the IP block is flattened.

Departing from previous versions' attempts at runtime-convert the
Devicetree representation is swapped out and instead a snapshot of the
current dwc3-qcom driver is proposed to be carried for a limited time.

A patch to convert a single platform - sc8280xp - was included in the
series. This, and others, will be submitted in a separate series as soon
as its introduction won't break bisection.

---
Changes in v6:
- Change legacy driver's name, to avoid collision if both are loaded
- Drop duplicate pm_runtime_{allow,disable}() from dwc3_qcom_remove()
- Drop DeviceTree example patch, as this should be picked up separately
- Replace __maybe_unused for PM and PM_SLEEP functions in dwc3-qcom.c
  with guards, to match the exported functions from the core
- Add missing pm_runtime idle wrapper from dwc3-qcom
- Add missing "dma-coherent" to the qcom,snps-dwc3 binding
- Link to v5: https://lore.kernel.org/r/20250318-dwc3-refactor-v5-0-90ea6e5b3ba4@oss.qualcomm.com

Changes in v5:
- Moved the snapshot commit first, to get a clean copy
- Add missing kernel-doc in glue.h
- Used a local "struct device" variable in PM functions to reduce the
  patch size
- Replaced initialization with default values with zero-initalizing the
  dwc3_probe_data in dwc3_probe()
- Add TODO about extcon, as a role-switch callback needs to be
  implemented
- Corrected &usb_2 mmio region length
- Changes the timeline expressed in the commit message to suggest the
  legacy driver to be dropped after next LTS
- Integrated qcom,dwc3.yaml changes since v4
- Link to v4: https://lore.kernel.org/r/20250226-dwc3-refactor-v4-0-4415e7111e49@oss.qualcomm.com

Changes in v4:
- dwc3_{init,uninit}() renamed to dwc3_core_probe() and dwc3_core_remove()
- dwc3_{suspend, resume, complete}() changed to dwc3_pm_*()
- Arguments to dwc3_core_probe() are wrapped in a struct to better
  handle the expected growing list of parameters.
- Add the lost call to dwc3_core_remove() from the Qualcomm glue driver
- Removed now unused cleanup.h, of_address.h, and of_irq.h includes from
  dwc3-qcom.c
- Link to v3: https://lore.kernel.org/r/20250113-dwc3-refactor-v3-0-d1722075df7b@oss.qualcomm.com

Changes in v3:
- Replaced the handcoded migration logic of compatible, reg, interrupts,
  phys with overlays.
- Move the migration logic (and overlays) to a new drivers/of/overlays
  directory and apply this at postcore, so that it takes effect prior to
  the relevant platform_devices are created
- struct dwc3 is embedded in the glue context, rather than having a
  separate object allocated
- The hack of using of_address_to_resource() to avoid platform_resource
  being stale is removed (thanks to applying migration at postcore)
- Link to v2: https://lore.kernel.org/r/20240811-dwc3-refactor-v2-0-91f370d61ad2@quicinc.com

Changes in v2:
- Rewrite after ACPI removal, multiport support and interrupt fixes
- Completely changed strategy for DeviceTree binding, as previous idea
  of using snps,dwc3 as a generic fallback required unreasonable changes
  to that binding.
- Abandoned idea of supporting both flattened and unflattened device
  model in the one driver. As Johan pointed out, it will leave the race
  condition holes and will make the code harder to understand.
  Furthermore, the role switching logic that we intend to introduce
  following this would have depended on the user updating their
  DeviceTree blobs.
- Per above, introduced the dynamic DeviceTree rewrite
- Link to v1: https://lore.kernel.org/all/20231016-dwc3-refactor-v1-0-ab4a84165470@quicinc.com/

---
Bjorn Andersson (6):
      usb: dwc3: qcom: Snapshot driver for backwards compatibilty
      dt-bindings: usb: Introduce qcom,snps-dwc3
      usb: dwc3: core: Expose core driver as library
      usb: dwc3: core: Don't touch resets and clocks
      usb: dwc3: qcom: Don't rely on drvdata during probe
      usb: dwc3: qcom: Transition to flattened model

 .../devicetree/bindings/usb/qcom,dwc3.yaml         |  13 +-
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    | 622 ++++++++++++++
 drivers/usb/dwc3/Makefile                          |   1 +
 drivers/usb/dwc3/core.c                            | 160 ++--
 drivers/usb/dwc3/dwc3-qcom-legacy.c                | 935 +++++++++++++++++++++
 drivers/usb/dwc3/dwc3-qcom.c                       | 182 ++--
 drivers/usb/dwc3/glue.h                            |  35 +
 7 files changed, 1808 insertions(+), 140 deletions(-)
---
base-commit: 29e7bf01ed8033c9a14ed0dc990dfe2736dbcd18
change-id: 20231016-dwc3-refactor-931e3b08a8b9

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>



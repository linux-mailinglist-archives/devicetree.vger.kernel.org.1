Return-Path: <devicetree+bounces-158709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FB1A67C95
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 20:05:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB5F4420CA6
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 19:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06AD2135B2;
	Tue, 18 Mar 2025 19:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hux90460"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CA61CF5E2
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742324717; cv=none; b=iwfEd5Y3fqqHmubZeWL8DO3AoKu7NS/agb3wHAO0b18A0+kq48tvCIAYnVlIVmDWpNaHLJkA8OrOzx6+fpjaGWGBQu3vS959D1PyhkmhoU3HZgHo0Uler+EMGI0OEDo4mwjE5Kh+0canTD8jj0B3JXjsFp74S9MNTDYUbcgKXF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742324717; c=relaxed/simple;
	bh=39ko3FHgK43gR5x5+uuTD00YhId32iFfsMqRNw2Ajzs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hdxJ7aJdUMuOP2zi/UdXmVUbNuggtbKbDfSwYBlfCCKGEDW67gni8AaUCoCn9JeK8CIN67od3YRR1dFwbVj08l+45nQo8qp8gu2PPO/I2WEJojO7012GYMr/e3MAly4loQsdKvjICTlicp7xsh8v7uG0pfhWYDLvTYINVLTr6WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hux90460; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IHsDqQ014952
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:05:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/tiaFq11cKI50dbFhs7Frd
	fEknq2p1U8wbLG28nhelg=; b=hux90460WF2jJ6YxAuyhRPl5SZZuTi03XLJxq7
	qi1PxszNa+1O1C93zQqkrb7tZtix9IIkzkUepcPbSULFMz3AO0ZEJzEjDHeOCmA9
	/IZVXoBtgo2/RSud82bQ4PS6cn3Hkx5HMuffPqumRTyF1C4ohTPA1511yjisaAhe
	ueYo3Fjni3Alizu3XnoySP1Pd8+YQk6/R1mXql6rhGjEVA0eJY+IXlr3QrRpQim3
	YGGC+rw68bpdhNuJ27A+j75UVuHVhVCmLchssrN8yjVoWimGYBeqQeVjL1XGsQEh
	U3SYMyZEMnFxXd+rgkwCTkSskcyuJ0vcG5KSg3E+/lxI4g4A==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdmwr5sp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:05:11 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3fab1478893so1268957b6e.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:05:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742324710; x=1742929510;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/tiaFq11cKI50dbFhs7FrdfEknq2p1U8wbLG28nhelg=;
        b=QthAd4oeDdvhN2XjsmgGwcC5AwOVuZBM5AMEoOMxKqQEi0aENF64FWAWgv0rcm2FWu
         aNIgtTL9xlmzg6tuAoJbLDMYDwpwqsoIEszQ/y0S4+rvOzDeSykFhHsAG+PyQ5KHctWg
         VTdypCi6yBy6KsBY2WUi0/apKJvkQI+vMZVDYqBRrN0TMcpuDG3f1UIBntKDOCvuiN35
         cNIGG7SDr0B4rQa3sVsi+zcl0zKQG/h1jn0ZctqPgYnJy06P2mTThOV+0P5Eg/iXtN5P
         nB3hA3+n22ipEw0ict5vRMb1UxKlUofr+VP81wAy1tux5aK8y+rf1GDN6hpOwt2Bbmh7
         mSZA==
X-Forwarded-Encrypted: i=1; AJvYcCWjk0fulRewjcbZZuCi9d+guqNpd/GfPeL/esk+wVhFV3dpHpJugx1VXb4WYL7su7z3hCY21g+dpB2O@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0yaEorzY/0k+/7dkmHxEo7CV3UvJ3/3mol7BT6Yky+M3nr5Q5
	dnpNQueup4r6taGZUlX6AEzUup6y0fVLLgv9FJt3hGmayFXOoyECpjj6b8JwGyxsTMl+3vGZznD
	ZyS6vSTZbsN/Y9s56KNLBrGdgBhvsAdLbJs/9Ikkbf5D9uEdR4ziuFx2n5tCt
X-Gm-Gg: ASbGnctFxCSao1xLOMp7g5zBLztd1HHQ6YeCK/tzhAWXnCnJFxastQsKdsnQ8QEJgBS
	ngrMV/qx2eI94XTeDJgcDcy37ZUV7E5j1uBoF33pYDQZycP7k0p4rXWrv9JqWKD2j4y7rjxyhhh
	9R+Qyv2PwGMWcT0fdghF4yXFleMDrGX8eVN2e6j0WMIs7L46tbph5VVcJ6HsCtJOTQUt7AOuNc4
	B8WSaGd/Q6RjG/bhX3ajSWHappiqhFNZ+BnLyCO/CvsvcloqX1uaY4baHNaQbSdgxuEfrtnuBLQ
	TkrS3L37eVq9MdOp3C28xVdCifoNI0PzYs+cqKOlxzyt3JQORVGkiuJTnoDY6VdQO8Cwbncvejg
	GHmQEEUoe9j52Cm0=
X-Received: by 2002:a05:6808:4443:b0:3f9:4f55:a002 with SMTP id 5614622812f47-3feac2a31f8mr144556b6e.12.1742324710065;
        Tue, 18 Mar 2025 12:05:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBeTnqcsngZ8qOyAPY0xLnV4j0KNTcW2cjrNpBB3y01HgwUx2Z+p2qto1cwhI+bvEfVQhgPQ==
X-Received: by 2002:a05:6808:4443:b0:3f9:4f55:a002 with SMTP id 5614622812f47-3feac2a31f8mr144527b6e.12.1742324709595;
        Tue, 18 Mar 2025 12:05:09 -0700 (PDT)
Received: from [192.168.86.65] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3fcd403b065sm2264273b6e.4.2025.03.18.12.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 12:05:09 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: [PATCH v5 0/7] usb: dwc3: qcom: Flatten dwc3 structure
Date: Tue, 18 Mar 2025 14:05:00 -0500
Message-Id: <20250318-dwc3-refactor-v5-0-90ea6e5b3ba4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANzD2WcC/22Py2rDMBBFfyVoXQXNSI7srPIfpQu9XAscOZFit
 SX43zsOhIDJ8l7mnMvcWQk5hsKOuzvLocYSp0Sh+dgxN5j0HXj0lBkKlCDgwP2PkzyH3rjblHk
 nIUgrWtPajhFjTQncZpPcQFSax5HKC53H38fI5xflIRZi/x6bFdd21SvRAmz0FbngHfRSC38A4
 /F0naOLye3ddGarq8on3wgAueUl8R40otCN77U9TaXsr7MZiT+/JOolQdz+WBVJlIImaAAIqns
 jWZblH/CvPB1LAQAA
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
        Frank Li <Frank.Li@nxp.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5851;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=39ko3FHgK43gR5x5+uuTD00YhId32iFfsMqRNw2Ajzs=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBn2cPeIn2YeWKN5s+wMP7MDrAngcmEx8hWa5SMa
 NCXfVPTBWGJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZ9nD3hUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcV3TQ/+OMX5HNu+X6YAo2Xhlf9bw9OoHr5dmwM1EoHZLpd
 EAGxpip38tHMaqSFuX7J52v4zWilZJGD9561kOBxNFivDHgYMlKBbfaVpteHQuCjqUwr1NG7TIm
 /A8rAo1uiMOwsm7GheSKmOVozObHIzmno1aK0XGGX4VhCwV+5KyMwoCLcuc3T7E7+T6m4v7mZjx
 AxJMKY/TTUrD0U7nWDQgIjn0KZzxLaalUZvFcrxHxNDUZqJzpNQgPc3pjgHrgyNov/3o+GqYjT5
 FX8VbYYO/86wWzlhPjEoagS5QC95/pPgPfdKFbGU5v5uU+R37/xVfynliq09WA6kjVDpgJAF+1C
 XGHh5NBz6glG9O/BXWRSoxV9513HjGTFY5Ozbuh3bKQ2xE4M4XH4wyYXX0A1+XS/78RvGakWAqs
 aHFDGXtHb+JhcZSAK0WsQnf9DeaUH1vRjYwrxeJ2LmPv7eryzG85NWy5/QNjQ1XuIbzbAxoNYUv
 maOt/NgyS1eb6/rpuoZgYsoa2jo6vhucjdneAaGlobBlB3QyGXQAp+4ewTpHdwfC1rJL/K70/0m
 BaGOKf7EXmVA4rqFgwmsf7XBCUtcRew0iZJwigcxYfKkjZpi9QyywE9lEuIg5D2A/yJ/coSr6gY
 7p+xvs6JiZb4TRwALvyBpaz9IIMhnIZdv2wKCDnEOhGM=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-ORIG-GUID: oRtDS3n8N4i_a6IhWeHFtreARNTA-AFt
X-Authority-Analysis: v=2.4 cv=ReKQC0tv c=1 sm=1 tr=0 ts=67d9c3e7 cx=c_pps a=4ztaESFFfuz8Af0l9swBwA==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=PRPaYdtWR3OSq7m5HH0A:9
 a=QEXdDO2ut3YA:10 a=TPnrazJqx2CeVZ-ItzZ-:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: oRtDS3n8N4i_a6IhWeHFtreARNTA-AFt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_08,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 suspectscore=0 impostorscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 mlxlogscore=999 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180137

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

A patch to convert a single platform - sc8280xp - is included in the
series. The broader conversion will be submitted in a follow up series.

---
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
Bjorn Andersson (7):
      usb: dwc3: qcom: Snapshot driver for backwards compatibilty
      dt-bindings: usb: Introduce qcom,snps-dwc3
      usb: dwc3: core: Expose core driver as library
      usb: dwc3: core: Don't touch resets and clocks
      usb: dwc3: qcom: Don't rely on drvdata during probe
      usb: dwc3: qcom: Transition to flattened model
      arm64: dts: qcom: sc8280x: Flatten the USB nodes

 .../devicetree/bindings/usb/qcom,dwc3.yaml         |  13 +-
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    | 620 ++++++++++++++
 arch/arm64/boot/dts/qcom/sa8295p-adp.dts           |  12 +-
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts          |   5 +-
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts          |  12 +-
 .../boot/dts/qcom/sc8280xp-huawei-gaokun3.dts      |  10 +-
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |  11 +-
 .../boot/dts/qcom/sc8280xp-microsoft-arcata.dts    |  10 +-
 .../boot/dts/qcom/sc8280xp-microsoft-blackrock.dts |  18 +-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 157 ++--
 drivers/usb/dwc3/Makefile                          |   1 +
 drivers/usb/dwc3/core.c                            | 160 ++--
 drivers/usb/dwc3/dwc3-qcom-legacy.c                | 935 +++++++++++++++++++++
 drivers/usb/dwc3/dwc3-qcom.c                       | 157 ++--
 drivers/usb/dwc3/glue.h                            |  35 +
 15 files changed, 1885 insertions(+), 271 deletions(-)
---
base-commit: c4d4884b67802c41fd67399747165d65c770621a
change-id: 20231016-dwc3-refactor-931e3b08a8b9

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>



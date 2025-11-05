Return-Path: <devicetree+bounces-235138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCEEC34CA2
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82F2D463688
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188352FE57B;
	Wed,  5 Nov 2025 09:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l6S85Saq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f99T0mGH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9742FD7CA
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762334196; cv=none; b=ZGGqXDY9IqYdwJW9Fe83WI3bQJysLuEFZXSwMoj1yTriRWa69hADI7qOKw/5ABk/+JW8GCBC+iyZstNthSouRQonRBlDImQ17vc6KenKCSqobxV2ceHXry8Md0dwe31IiTReaoQKlWMdfO+/GkzWa6kRwtdEypD9eGZ5LKsKA2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762334196; c=relaxed/simple;
	bh=G5qLkPbiy5mAe0CS1JhXvG0iaH8m8lqZJ9LVnFx7vuQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LPxKu5X0oeAWaf5MqjOZh4tvdGEMPTRFgBvxsATu1Qqp5hhxTp0WEzr08H46TJUAvQIPZ4X9xb172g3ajhlVnUClS0PxF/ErSF+YEAlMXneNosQrgfmqXN3qqcAt34tQnkP60gdAKU7TQS3FC0bMOzgL//iX48viFPmOJIVkZmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l6S85Saq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f99T0mGH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5865kW2904648
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 09:16:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=sFARRt9q9VyojgpMQL1RCl
	I6kbqGYcPQtji5bXwNoNM=; b=l6S85SaqYiZwBhH8cAVJCI+RuVdBw65528FU39
	tKh+ghK5bEuPts43nPW9p/x/1XY0cOVXWcBOoMdDAoM/iySUq0v/Igi+hYVhNyE1
	P90D9t150gMf3/EfV9d3A8TAODZFvrIvRz3iuIFfBx+sae/JHoOJMT54emj99ZlZ
	0xId0eLSlm3WlXNTMaqlbabyo2LiSBGV01UIdoBLSI3Ab9pf1Wdab2o//3YhuXGz
	wStqrv2ZzH+ZUhu01REZ0Mtj9viAdof2Dp/M0wdJa8phCwz/jtpm9qb/E2X+Ofzm
	ZdIeOZTAwbA6zRG8OwzyFkQtmPR5WOL2gov/v0Vguh8dCWjg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7mbbtrbq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:16:33 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3405c46a22eso7078487a91.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762334193; x=1762938993; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sFARRt9q9VyojgpMQL1RClI6kbqGYcPQtji5bXwNoNM=;
        b=f99T0mGHB6XwJZp8oAqIxXXmnVipSyE/bTG6bHqZnuA8vlXcCtMDmztfbvfWwcmiJu
         WfrE5Nsn3O1gHLMm0fZd8N/4Z7rFAN6ZLeTPJGwhpxbvDCNZ+6S0Zw3G6X8kmx9KhzCT
         RMovH01+J+J6DA5FSKlsSZJhIdSFkesUhh5TooTdQwUq6p9HdYdsGIa25pAl9lyBiDLf
         kb7fFIGov2R06Ml3hj+MyceRFybLAuBbjQKfJh7uFTFqLWFFXplwHA0bsywaJq9zJ70/
         pYvJat+Rb8k24Uj2Fp7Nj9cmE/zA/Wi/gMp03As0//ZOfxkRUVODoQU/4fCck09OLXOf
         U/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762334193; x=1762938993;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sFARRt9q9VyojgpMQL1RClI6kbqGYcPQtji5bXwNoNM=;
        b=ePExnd1yKYh9b1Vm8FmRTNtBUtuanr/qbeBEq7d4sP7kz9Jxb+XcqhWrjlNSKedF5D
         YorbJwdHLnsbRfHGoxYmRoIDKYSuxSvl6bObFlS2he56Xs4kuuIyi4Ta3QaHc3sLHRai
         E0Tklux9O43QjxGcwPMoPLedKxasks8e1ya+Qy6fCGN3cfp9JzQgFx/z9isEvo/pcQHW
         N/VNYvx3MhNyFhyYBO0dp+YIPA2E1d3mYze4T7BeXgPCfaIPd5o0ZH21xfHpr8adBJzS
         wOMKyw9bMqV4mcoPH9wfF9Nh+R5vIePfDNlxHfpDEWePpXkh1sVku53auoQCcOaOaZC+
         zO3w==
X-Forwarded-Encrypted: i=1; AJvYcCU+0NbXYm46GnXbd/G6eMAOt/blA/0vQfr7+H2o+okQucJjv6yd5Rvi0gVn4Oet2JVzHYs8BQHKBc4W@vger.kernel.org
X-Gm-Message-State: AOJu0YwgIjmxHg+tMUSlhsbgAFWI2IRwhSDWFs0mNg4GD2mAP1wiyH+q
	teZp1PgVbUB7lJu9F5OwCuV9udCo50Ol8Zmnvynw7FQb9mgtp+G3oMVa3AQSMoBAj64QkfUQCtF
	UwJifA+aT3eGH0orR+VwVqfuiR6c50qJsPnE+R+67ObMboaeIvCKSo4x+iFJdQov0
X-Gm-Gg: ASbGncslzI2czPn3HYkGn4KEHKf2PM2EBjaMa5IPAhi8EsuF4t5ExgcoE5uoLmmj/B7
	ktPE+6zw936142NhqWB2bxRzcCB46YHRRWYjKED0SyaSycimaJdNDp4DORaeGjQXwmD4l+IrCnr
	sI1p6XGRrAGVyZS4o7INYnCi3DjDA9MzNfWCoKND1wRymOPIvUGf7E3KHfErku2L7ZA14ie+Nzy
	iOLir1o/LjlSRNx3nTo10ilpTSeH+hvyLxnDsXgwGU0fk0J1s6vimTARWbxLvlSUvAEchzTHmp3
	HMtmOuKJTn8U/9bNht5wc6AA9uLSZEhMDYN2HEC62B9Rr9Vm74g5n8HI+UYfxvtY4JRbu5oMq8L
	lf1U8oVciJy2FWz98wEQ5VynTkvar
X-Received: by 2002:a17:90b:1f88:b0:340:c060:4d44 with SMTP id 98e67ed59e1d1-341a6c4d7aamr2892006a91.14.1762334192932;
        Wed, 05 Nov 2025 01:16:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFxgs1fikzPsn/Uzt2XJnjpiZb5nexbrA/xinXkHzp1PjfMUCh8IEA/nDWZDho9364Lklw3w==
X-Received: by 2002:a17:90b:1f88:b0:340:c060:4d44 with SMTP id 98e67ed59e1d1-341a6c4d7aamr2891925a91.14.1762334191932;
        Wed, 05 Nov 2025 01:16:31 -0800 (PST)
Received: from [192.168.1.102] ([120.60.68.120])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3417a385563sm2274249a91.0.2025.11.05.01.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 01:16:31 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH 0/4] PCI: Add initial support for handling PCIe M.2
 connectors in devicetree
Date: Wed, 05 Nov 2025 14:45:48 +0530
Message-Id: <20251105-pci-m2-v1-0-84b5f1f1e5e8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMQVC2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQwNj3YLkTN1cI11zM2NjM2PDJLO0xEQloOKCotS0zAqwQdGxtbUALbp
 yFlgAAAA=
X-Change-ID: 20251103-pci-m2-7633631b6faa
To: Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3343;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=G5qLkPbiy5mAe0CS1JhXvG0iaH8m8lqZJ9LVnFx7vuQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpCxXoDdyGhLtN9uKCzqzSqHPnH2YoTYU4IrxY1
 Ve++Gmb5UOJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaQsV6AAKCRBVnxHm/pHO
 9beJB/oCjStqQkgyMExHRzWblMIVQmQUCcrOHhmFhFh4gQMU6s70nszG6SRwPwawERB6MI5FcKL
 uUrIOacvZHgjirXX3mItamztaSmiC+qKWmrm0w5ReBlXTpA0H7Nub38DEI6L5hUeNKlN+5SLO+7
 dpPd9E2Rq1V399rHZZJcyqn3qqtQUbMd/nk1uPzKRpQGL0h01ateAHj6q1dirRL8kXY1d7b/pqX
 Ib3piaYcYQBeU7QgIK8YIRMcdrwzpYaLyjx/1jkXGdHdInFEMAP98dXcSWOhpyt9kS1U8pdpPuw
 GywqFZWfsxLaJrdpEqGXHJQy6ttj95C973WGiVUDVoWuPNyB
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-ORIG-GUID: YX8nv2PefdceDjkbV1Ym0gK487YJSa2U
X-Proofpoint-GUID: YX8nv2PefdceDjkbV1Ym0gK487YJSa2U
X-Authority-Analysis: v=2.4 cv=MK1tWcZl c=1 sm=1 tr=0 ts=690b15f1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=adoi+G5QptZiRYWGMQz2cA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=YBl5744q8zTd1FMgO4cA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA2OCBTYWx0ZWRfX7ZFDjXblMqRu
 OI0VKvhqNEM7nSHImZHtQZ2Yvc1i3MznrICSy/T1P11ML/U5HfOxS+846shWs58yy+Q20pQOrnC
 oR0xfZrrAIa8gv2r2B+tgjSTiDhhUP18xmJ0GdRCeaCe33cFEZngTh55UPjcd7f7TMyGMWPwTOc
 6TmbVzof8TNco6w4xKteco/1DPOkQMDPtVMu9pTYr0y7+qOBnEa/MLCLZE5SRXIEvQi7K1d2Npk
 891mjghMqIhyRaL8GPlx+ppkIZaCS7ahcHm5njEIgFkF9OQ0ESHJF69pnFrADgwp9g91yNV5xEu
 UxeBzIOULERpZsnMQ0eJT4Qvs8/EJ5q5+YnuqdFEgWdT+2O6b7oBWJIKum5cqFQtfBuXPp53Jg2
 wcs/9nw+66CcvYJrMp6dBjCDzoalgA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050068

Hi,

This series is an initial attempt to support the PCIe M.2 connectors in the
kernel and devicetree binding. The PCIe M.2 connectors as defined in the PCI
Express M.2 Specification are widely used in Notebooks/Tablet form factors (even
in PCs). On the ACPI platforms, power to these connectors are mostly handled by
the firmware/BIOS and the kernel never bothered to directly power manage them as
like other PCIe connectors. But on the devicetree platforms, the kernel needs to
power manage these connectors with the help of the devicetree description. But
so far, there is no proper representation of the M.2 connectors in devicetree
binding. This forced the developers to fake the M.2 connectors as PMU nodes [1]
and fixed regulators in devicetree.

So to properly support the M.2 connectors in devicetree platforms, this series
introduces the devicetree binding for Mechanical Key M connector as an example
and also the corresponding pwrseq driver and PCI changes in kernel to driver the
connector.

The Mechanical Key M connector is used to connect SSDs to the host machine over
PCIe/SATA interfaces. Due to the hardware constraints, this series only adds
support for driving the PCIe interface of the connector in the kernel.

Also, the optional interfaces supported by the Key M connectors are not
supported in the driver and left for the future enhancements.

Future work
===========

I'm planning to submit the follow-up series to add support for the Mechanical
Key A connector for connecting the WiFI/BT cards, once some initial review
happens on this series.

Testing
=======

This series, together with the devicetree changes [2] [3] were tested on the
Qualcomm X1e based Lenovo Thinkpad T14s Laptop which has the NVMe SSD connected
over PCIe.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts?h=v6.18-rc4&id=d09ab685a8f51ba412d37305ea62628a01cbea57
[2] https://github.com/Mani-Sadhasivam/linux/commit/8f1d17c01a0d607a36e19c6d9f7fc877226ba315
[3] https://github.com/Mani-Sadhasivam/linux/commit/0b1f14a18db2a04046ad6af40e94984166c78fbc

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
Manivannan Sadhasivam (4):
      dt-bindings: connector: Add PCIe M.2 Mechanical Key M connector
      PCI/pwrctrl: Add support for handling PCIe M.2 connectors
      PCI/pwrctrl: Create pwrctrl device if the graph port is found
      power: sequencing: Add the Power Sequencing driver for the PCIe M.2 connectors

 .../bindings/connector/pcie-m2-m-connector.yaml    | 121 ++++++++++++++++++
 MAINTAINERS                                        |   7 ++
 drivers/pci/probe.c                                |   3 +-
 drivers/pci/pwrctrl/Kconfig                        |   1 +
 drivers/pci/pwrctrl/slot.c                         |  35 +++++-
 drivers/power/sequencing/Kconfig                   |   8 ++
 drivers/power/sequencing/Makefile                  |   1 +
 drivers/power/sequencing/pwrseq-pcie-m2.c          | 138 +++++++++++++++++++++
 8 files changed, 308 insertions(+), 6 deletions(-)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251103-pci-m2-7633631b6faa

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>



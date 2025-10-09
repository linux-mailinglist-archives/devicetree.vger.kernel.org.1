Return-Path: <devicetree+bounces-224750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE18BC784C
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 08:19:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA31F3E5392
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 06:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E85A3290D81;
	Thu,  9 Oct 2025 06:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YjJFE0/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A48520E030
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 06:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759990756; cv=none; b=eB1xV9ErfxXxmgfzMT8/gudvja51QIXRMWMprW2C26xSiq2Gj/UVYXIKdwvA9ck5qdPUbG+Fv0gkDmEB+RnEvtahwjXCzYyl7RKplZHyWOoohY+vKlNTmfqBBuG3a4c87R/2LupXOUhvF5hL/ALvXrjMaWinznYpqjPEdbwY3/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759990756; c=relaxed/simple;
	bh=RElW/V0Z435eecAoQxgFffr/tjQtz6OYj7jJiPqLdnw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u/aOpQGyapyQtoGvxRprPwjN5UIMO4Y7hXrUa2u1L78aUDDJWKYfgSKbsUnTGf78naLgarXl2hAafhts48+uSZhjVOBjXqAcuSG5sU/MGmLGUIy1C7D3p6V3uqYdorM90iOKq3FuOR5nkvs3uve6Os3zqLIqinKl6CsR/0h3PIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YjJFE0/r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996ESDu029171
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 06:19:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=27kHMdvwH0X0328kYvOzhu
	ArDwRqIDLbTEsO0hy9HCs=; b=YjJFE0/rII1owim/UA+hyfDgNMuDeEEDElg3Iy
	B+juKA67PUZwgbom6twBx2RXIt1JjYmLShtoasVUiZMnv5be0KwZ5NWvGScDroHO
	lD9xXANlGq1mSs7xJoUflN/8+fXF/aQAoXn+QDygvzO4nrkmNvei+VWz/S+O2xJR
	qZYD+5LBVLsnQWCNffzEpxK6lJ8XikT9KOznD4P9/7Wg9WCRN+xRcW9FOw5B4xcx
	xU0opuJyAZuTC/k1d93/faxE4qYXdGUZCbSFsSdY21JTd4c+M6NcUDpZXzMIWT+C
	RReJnx8vGiqeAMwagGmXhYmTLKN6SLRzg6twbWnxd4SxO0zw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kspwh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:19:14 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5533921eb2so772319a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 23:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759990753; x=1760595553;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=27kHMdvwH0X0328kYvOzhuArDwRqIDLbTEsO0hy9HCs=;
        b=Wb3rQQGufiD4hmIcWol8eej1MMEzMDU95KXB1BWgGY3kVIx79zAF/bbHU0Fq50HpJx
         nRNTMhgbCCQeCd3duTu3N9xWn1OOB+pBaWzqZVR07vkuh74eXhkPFbTCXOQepDkQmOlw
         W3xS/5R0Rv3aHemydu06EukI0SWBOmtnDRDFVphOJmMMYJD4tRV3lFzBuWuBPEgK2k8M
         eMMHD5gZKb4zsh8cXw1jDPj39rT8JzaCSaXNXbC6xfny+UlQbqnP4wTATjYXFjKviaKs
         ZlEaCm364ex//xbxRjvCrS+r5NkEa8b2LpIQjZXJoAChazLd48t27S5eVxHmnn/qievY
         QZAw==
X-Forwarded-Encrypted: i=1; AJvYcCWQ6VVa/3Dxj8YHNrwTNpZyNfyxeAQq8tI+LhmzBSTe6XtYZTIO1+CNG6zMk1PfWBj4pjueVyNHsbHC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyt2rN0/T6bTedWzknVgQqDBPDAEUMft1DzDw2nYShaLPQ4oBw
	pe4DhUwIHeCmHFRTcwncLAOuR0vgmy5EGDZ0cOLnfAkzmB5yfO4hUT9xDvhhIPnv6riU2icEKes
	ZtJtcdhOJxIrcTcZUfuMjZve4PrhKPqfbTSgrscioQbLqwbP1nQg2ueiBwmRnsa33R9/wYfUH
X-Gm-Gg: ASbGncuLmXtWDpRNZqkWnmcu7C6uXvFb1ukLIsO0gv5V7eFNbXP0o25AjZgc3W9gMZs
	VIxXhBR/4D1BrDgMw5pyIYswwWREbpFT5/40fsVA7R5PQ5dwwigf61+Re8eiAoCAguBFzdBcKoZ
	EbqRcasWWNhNAlhA8uhsI1B8vxZYbS9MRfy6ydgLA33tm2xoqqYH0r7OuWbAaqbXnGaU22uQ2OR
	h70BbIS4eYXVur+jE3odGR5DbBfnrgI10+IxSt8KyqrlX8ze463wFVWJFuYHgsxrqk7tZYwl25J
	my3WfqVU73dcCPrWnY9SEx1+LdDeYd7XXfhVPMFU5ditGheqOckZxkTBsM0sXOenlqUdOPm0xSL
	lE1JLHw0=
X-Received: by 2002:a05:6a20:6a1a:b0:323:cbb9:aa1b with SMTP id adf61e73a8af0-32da845fef7mr8847875637.51.1759990753255;
        Wed, 08 Oct 2025 23:19:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYwiXOhov/LxmRkYry+Q9grSkuraWC5lKuqWh3Ov3GOZp6ZzGWGHWrshn76JtzwZKRRdX/NA==
X-Received: by 2002:a05:6a20:6a1a:b0:323:cbb9:aa1b with SMTP id adf61e73a8af0-32da845fef7mr8847838637.51.1759990752738;
        Wed, 08 Oct 2025 23:19:12 -0700 (PDT)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099adbcbesm19239671a12.4.2025.10.08.23.19.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 23:19:12 -0700 (PDT)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: [PATCH 0/5] Add separate ICE UFS and eMMC device nodes for QCS615
 platform
Date: Thu, 09 Oct 2025 11:48:50 +0530
Message-Id: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMpT52gC/x2OwQrCMBBEf6Xk7ELS0ir+injY7m40YJKabUUo/
 XcXj28G3szuVFoSdddud00+SVMtBuHUOXpieQgkNna978fg/QTIDCoLNlytI4EtKmBhkJwJ2BS
 WlcqiEGuDN+kURlheuBpmuAwy03CemZmcjSxNYvr+D9zux/EDOpnIN5AAAAA=
X-Change-ID: 20251006-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-83ebc37bdddc
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>
Cc: linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX/T/GB3Ad96Tn
 mgS2Tc7Rg11ngCMeY4vLzW+eUoh9w15MEbjA71DdSBaOL+97dwzk8ONaX4oM83BU8eC/l1hcWBr
 xgus0oiZShOtzLCuaz2OQsuyOMEdT85RGVFj31eKjV0yT2OO33nvwathxbHL4kPEfbG5B4L/MxQ
 B1D2amu31zqNyH+VXFZU4uB+aAETqTmdzY5EA/9nIokiyDMvG35wgG9pqxzHogQ/mXeR2QE/rmn
 21xDtfx62KJRIahxXj5QpslYNFEwPLdfu7EStVM4KVYr/ez7xDhs0xkuIzWX2aGpZbabya519tm
 NYNZaSJ2cGW+TExQwz70Jk/c10fxX0JTVv7lduApvZYObZpITgCC9j47NlfNIvCVMwtmo0+GVwi
 GUcHSDqohtxciHVEyk25DdXcJdUFqw==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e753e2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=TE4wMAv-58-w6rAmtzAA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: v1sMgvVOG1P5t3F7WrXxHIFyTFNOLM6H
X-Proofpoint-ORIG-GUID: v1sMgvVOG1P5t3F7WrXxHIFyTFNOLM6H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1011 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

This patch series introduces support for representing the Inline Crypto Engine (ICE)
as separate device nodes for both UFS and eMMC on the QCS615 platform.
Previously, ICE functionality was implicitly tied to the UFS/eMMC controllers.
With this update, ICE is modeled as an independent hardware block, allowing its
clock and frequency configuration to be managed directly by the ICE driver.
This separation improves modularity, aligns with hardware architecture.

The change allows the MMC/UFS controller to link to the ICE node for
crypto operations without embedding ICE-specific properties directly
in the MMC nodes.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
Abhinaba Rakshit (5):
      dt-bindings: mmc: add qcom,ice phandle to mmc
      dt-bindings: crypto: ice: add freq-table-hz property to ICE schema
      dt-bindings: crypto: ice: document the qcs615 inline crypto engine
      arm64: dts: qcom: qcs615: add ufs and emmc inline crypto engine nodes
      dts: qcom: qcs615-ride: Enable ice ufs and emmc

 .../bindings/crypto/qcom,inline-crypto-engine.yaml |  7 +++
 .../devicetree/bindings/mmc/sdhci-msm.yaml         |  4 ++
 arch/arm64/boot/dts/qcom/qcs615-ride.dts           |  8 ++++
 arch/arm64/boot/dts/qcom/sm6150.dtsi               | 51 +++++++++++++---------
 4 files changed, 49 insertions(+), 21 deletions(-)
---
base-commit: 47a8d4b89844f5974f634b4189a39d5ccbacd81c
change-id: 20251006-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-83ebc37bdddc

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>



Return-Path: <devicetree+bounces-248043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9015BCCE525
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 04:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 736DF3027FE4
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 03:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B5A2253EE;
	Fri, 19 Dec 2025 03:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S1pTO8CY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UoHEp2b7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E94A07
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766113826; cv=none; b=A0buevn3S+BGvgsaIVR/0v/idVjVEwrKTBrfUih1eoIasYNGV8vNwLj8tMVAE0wfGnccMGpyKyalSbrC7esY7+M79WrB/XjmZD1jaXXRXuDgDwwvBsjI2vO5GNg7YRlp16loEQ9HJ69Z4Xk1Uf39Gb7sAtln1PkSWHoWpxltIdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766113826; c=relaxed/simple;
	bh=Fr1LzX0Y3VxXOcZLaJ7RI2vKCgxIDkqz6hihUNJ4bjg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UNYyd9KYtDkdS1nSZQX/hT2pFWHP3x57XbXxju0MHmVp7FkOjzXYymtR15jejMHmsi83KKILdw/ZCRJIDpxsDNJY6FT1B1/6MCC07yeRH1r0ubvb4lrvEN3CiK88eknVaPES35wtX95DL1+nhijonKqju6/16zhMin6DdnNSASQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S1pTO8CY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UoHEp2b7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ2O16x3655384
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Q6XnKlh7fprgD9XWqEkUH3vrY9JQMUOXG98
	+6mRu5lM=; b=S1pTO8CYU2uRzzLd05HQGEBIS7FcyiXUdM9IH/f6caeGoiiNnDj
	ri0WE7vcQwwz0OqWvrNCVmXvAAepu4sAPjCmL6+RKqUL7z+2GsbA4WhkpfcDq8Mz
	qntPAKQdZrOCIOUrbSi/GDUyDAypIhjqztzbhUqQb/eeXA6HwDXTS/niL10eUaSy
	PpZTZ72LPGj3P8/34NGDUHWUtn7Y4HFeZDhA6iF52gsqIBccsy8T+2vHY59d1Kqg
	lbgVYlybG+fM97eAfA1lArvjJXXqS86GPqMafsjDM3bXwAVp1J/Yf3w6SXKv91Bu
	u8MEXGJjAyZTEg3lbDXoWDaDyhul5VkZUrA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c1104-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:10:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c3501d784so1579907a91.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766113821; x=1766718621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q6XnKlh7fprgD9XWqEkUH3vrY9JQMUOXG98+6mRu5lM=;
        b=UoHEp2b7qdtpfSaIL9clVUHxxrzs/W1+WHY8jOIA4i6rLFy5mteQWNmX6aBQEh/ecm
         KrrEzAyzXOvnDAS+E4Tqk92ngQi52iIxqtH52Arav+26zoL2BKZ91psS/5ic7Y9hzRMW
         Cov1SXXC934oSawyfFa5kq3e52WzSVeE0Cb35lr2qDg1IhFqw/ICosO0jyv77DcoRmzl
         yqTrbd+P2nFLuG6NX0Dttaxk5lFUFijNLn18njRpU58lCYQOM3lXUj7tVaipmKIjLCC9
         0LPFjQ7BXyf7VT//qykNIDMtTP8OOsWArCDk66pMde8yAbt6rV5dU/1eneEJ4+2eqU8A
         Ra0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766113821; x=1766718621;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6XnKlh7fprgD9XWqEkUH3vrY9JQMUOXG98+6mRu5lM=;
        b=NVbogMlEAp4MUyU6bmPrAb9IvxQCAGpXa55DfQZv4MwsVP5LPZEyobdkdySWNnxsyD
         gtXJUm4p41WcQTe1JeaPDtWWpUJwqa9zt0ZvpDTL0W+MVMudlfPm5NFtdbLWxeLMrJWE
         LzxCXaypamj9W/rdqnc1OA8aVVMNM230+bGc8hVq2bP9nN5lPNFhqEZV0WjGYi0cpWh9
         bgDZ1YSnM7cB7dWF6KqimoXOxKUPKJQx1sqrgsLd1c6yGRSlw4FFeRaPvHlqut5TD6OZ
         z2Lq79Ds4pMN78udXFRpuMBut/m/dMU1blpR3Mxv+z8q7LSHjatFtkERu1cxOZP0UGTK
         nWYA==
X-Forwarded-Encrypted: i=1; AJvYcCXz6oOyXk8/4+Zx2ivCO67MZz0evXKG0bAOJtHL5m76dvtey1CA9rAivQqbiAjf5PWiTIrop6rBxvro@vger.kernel.org
X-Gm-Message-State: AOJu0YwOyMrbAqVR9sAix0DwXdqoaYB4WnSTQvQod45WMkNUmbahedYU
	ut/QVFuzqEndz57cR99SWyjYEq6i4/kavEXtJQc+93yGRJ16UUsOraFVNcyM9tQ4F6mFa0Gm3Dg
	cX/shY3k1FD9dzRXTDsb4EsUL/Z96ozae0RFdhCb8f+YKPdkhb99v3FOBEHUhuS7A
X-Gm-Gg: AY/fxX4b/iFS6uPEcnCRLerL7bTuoBhENknzJ+CfjOfGiQjodFqumfX8tu1b3GiuLRT
	0q1qIgyvTdABGvik/sAltp/uXa94GmtHIh7x0JPZpWdVklTC+yVk8cr4eD2UyfG2pNgcjqADA5T
	Ms/q3TDyWiMjk5NW+k7VsSjSfB+17vwuJi7j0BfPih7kMU2MdH+Hv2bjP+s7h+TdFrADCwzSPr8
	tJAvBoqqLI7qKg9z96WM0b0iqPq7qxkpueRb8XglV2+Joxy1CJpMEltVrxZiEM11zUVT3b5gF8B
	CdM0uEC/zhrpm3spltMz9qAOCBHCZBtwstLFcoieej2IczgytJLe4/T+eLJfX23C3IEGuGzP4i+
	t9U26zbbOv29CNBLnLmp7GON/E8AhVNo62HRJ5Qb+U0lxwlWUnn4uik7NKfZTGi73vy7BpDV3pH
	tv4sMFmyiMKkHIN6E2ouEeBKBr/Ct013ydUt0ga7U=
X-Received: by 2002:a17:90a:c888:b0:34c:c514:ee1f with SMTP id 98e67ed59e1d1-34e9213520dmr1286713a91.11.1766113821318;
        Thu, 18 Dec 2025 19:10:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFydHdjxKOAO93ZfgWdga5dIebj3azibAMKJ6K+VFdkQotHYrI4sfXHsRWDSQ75SArYL/JY8g==
X-Received: by 2002:a17:90a:c888:b0:34c:c514:ee1f with SMTP id 98e67ed59e1d1-34e9213520dmr1286678a91.11.1766113820781;
        Thu, 18 Dec 2025 19:10:20 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d656casm3737867a91.7.2025.12.18.19.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 19:10:20 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v8 0/6] Add new driver for WCSS secure PIL loading
Date: Fri, 19 Dec 2025 08:40:04 +0530
Message-Id: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: vuUdJpSfsDLQKcEj2z-R_Y7NPH1pn_BA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDAyNCBTYWx0ZWRfX2N+30ncmgDvb
 I8OSsLWlDJL8Ag3HhgjSoAmGqbfRYENDCqPbKbhmfcmmq+DQxmQGVWvVMOxgMSB/2ujAd0BRNrP
 XQkl093q7sEmeY9kerXDxyvVSn1VO7SiWpbxQwg2XYCVxChGF2NyBr/LyiKhurbm84qn8TQyInp
 L12q96Rp2shQA6I8k4Sy/SmQA+RFa3DAc1AYpsMnJrgxCy1Y3xOtDYO6koAWh1z9RskTyLhzw1f
 tYOOXWx7pNPmTSYVBr4A9K/JWTzcA/z3LTnvb/kcKfYHfNvH8+nSi/44R1WEjIJjS3QyWJU0xYi
 1N1fNYj6Rh5jJAIZ2HOPd24S13qEEbsIzMwd/t1T5eEVRf5v9qyD678DBa5PT1m7czLMxe4Q56j
 wgZgpQR6pee/uhQSHQrb0s36DK+RrfE6m5sZnlSHthtJJQoivboRRLcS505joDADywcDWhoX1xL
 mxIk+pFs5l0CYkxaXMg==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=6944c21e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=LpQP-O61AAAA:8 a=EUspDBNiAAAA:8
 a=UqCG9HQmAAAA:8 a=YkzghYrSwcqXcAWZ1OIA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22 a=pioyyrs4ZptJ924tMmac:22
X-Proofpoint-ORIG-GUID: vuUdJpSfsDLQKcEj2z-R_Y7NPH1pn_BA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190024

As discussed in [4] posting this series after dropping IPQ5424 support
to remove dependency on Sricharan's tmel-qmp mailbox driver series v4 [1].

Imported from 20251215-ipq5018-wifi-v7-0-ec4adba941b5@outlook.com.

Imported from f20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com
I've resumed Gokul's work as the last submission dates back April 2025.

- Secure PIL is signed, firmware images which only TrustZone (TZ)
  can authenticate and load. Linux kernel will send a request to TZ to
  authenticate and load the PIL images.

- When secure PIL support was added to the existing wcss PIL driver
  earlier in [2], Bjorn suggested not to overload the existing WCSS
  rproc driver, instead post a new driver for PAS based IPQ WCSS driver.
  This series adds a new secure PIL driver for the same.

- Also adds changes to scm to pass metadata size as required for IPQ5332,
  reposted from [3].

[1]
https://patchwork.kernel.org/project/linux-arm-msm/cover/20250327181750.3733881-1-quic_srichara@quicinc.com/

[2]
https://patchwork.kernel.org/project/linux-arm-msm/patch/1611984013-10201-3-git-send-email-gokulsri@codeaurora.org/

[3]
https://patchwork.kernel.org/project/linux-arm-msm/patch/20240820055618.267554-6-quic_gokulsri@quicinc.com/

[4]
https://lore.kernel.org/linux-arm-msm/aUN7Aer%2FGG1d5Om9@hu-varada-blr.qualcomm.com/

Changes in v8:
	- Dropped Krzysztof's 'Reviewed-by' as the bindings file has changed significantly
		* IPQ5018 support added in v6
		* IPQ5424 support dropped in v8
		* Updated to use IPQ9574 as example
	- dt-bindings-check and dtbs-check passed
	- Dropped IPQ5424 support from drivers/remoteproc/qcom_q6v5_wcss_sec.c
	- Updated copyrights of drivers/remoteproc/qcom_q6v5_wcss_sec.c
	- Change 'qcom,smem-state-names' order to resolve dt-bindings-check error in ipq5018.dtsi
	- Dropped changes to ipq5424.dtsi
	- Link to v7: https://lore.kernel.org/linux-arm-msm/20251215-ipq5018-wifi-v7-0-ec4adba941b5@outlook.com/

Changes in v7:
	- correctly sorted QCOM_SCM_PIL_PAS_INIT_IMAGE_V2 by command ID
	- correctly sorted smp2p-wcss nodes in dtsi files
	- Link to v6: https://lore.kernel.org/r/20251208-ipq5018-wifi-v6-0-d0ce2facaa5f@outlook.com

Changes in v6:
	- added patch to fix IPC register offset for ipq5424
	- changed phandle description for mboxes property in dt-bindings
	- updated bindings to define the right clocks per SoC based on
	  compatible. Ran make dt_binding_check for validation of all
	  SoCs
	- use of more descriptive match data property (use_tmelcom) and
	  added a condition in wcss_start to not error out if tmelcom
	  isn't used
	- mitigated potential off-by-one
	- adopted use of of_reserved_mem_region_to_resource to acquire
	  memory-region resource
	- added driver support for ipq5018 SoC
	- corrected size of reg properties as per Konrad's comments
	- added patch to bring up Q6 in ipq5018 dtsi
	- Link to v5: https://lore.kernel.org/r/20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com

Changes in v5:
	- retained all the patches as in v3 and addressed comments in
	  v3.
	- reverted changes to dt-bindings done in v4 and retained as in
	  v3 and fixed firmware format from .mdt to .mbn and retained
	  reviewed-by.
	- dropped 2 patches in v4 that adds support for q6 dtb loading.
	  Will post them as a new series.

	Following tests were done:
	- checkpatch
	- dt_binding_check and dtbs_check
	- Link to v4: https://lore.kernel.org/r/20250327181750.3733881-1-quic_srichara@quicinc.com

Changes in v4:
        - changed q6 firmware image format from .mdt to .mbn
        - corrected arrangement of variable assignemnts as per comments
          in qcom_scm.c
        - added scm call to get board machid
        - added support for q6 dtb loading with support for additional
          reserved memory for q6 dtb in .mbn format
        - updated dt-bindings to include new dts entry qcom,q6-dtb-info
          and additional item in memory-region for q6 dtb region.
        - removed unnecessary dependency for QCOM_Q6V5_WCSS_SEC in
          Kconfig
        - removed unwanted header files in qcom_q6v5_wcss_sec.c
        - removed repeated dtb parsing during runtime in qcom_q6v5_wcss_sec.c
        - added required check for using tmelcom, if available. Enabled
          fallback to scm based authentication, if tmelcom is unavailable.
        - added necessary padding for 8digt hex address in dts
	- Link to v3: https://lore.kernel.org/r/20250107101320.2078139-1-quic_gokulsri@quicinc.com

	Following tests were done:
	- checkpatch
	- kernel-doc
	- dt_binding_check and dtbs_check

Changes in v3:
        - fixed copyright years and markings based on Jeff's comments.
        - replaced devm_ioremap_wc() with ioremap_wc() in
          wcss_sec_copy_segment().
        - replaced rproc_alloc() and rproc_add() with their devres
          counterparts.
        - added mailbox call to tmelcom for secure image authentication
          as required for IPQ5424. Added ipq5424 APCS comatible required.
        - added changes to scm call to pass metadata size as required for
          IPQ5332.
	- Link to v2: https://lore.kernel.org/r/20240829134021.1452711-1-quic_gokulsri@quicinc.com

Changes in v2:
        - Removed dependency of this series to q6 clock removal series
          as recommended by Krzysztof
	- Link to v1: https://lore.kernel.org/r/20240820085517.435566-1-quic_gokulsri@quicinc.com

George Moussalem (1):
  arm64: dts: qcom: ipq5018: add nodes to bring up q6

Manikanta Mylavarapu (4):
  firmware: qcom_scm: ipq5332: add support to pass metadata size
  dt-bindings: remoteproc: qcom: document hexagon based WCSS secure PIL
  arm64: dts: qcom: ipq5332: add nodes to bring up q6
  arm64: dts: qcom: ipq9574: add nodes to bring up q6

Vignesh Viswanathan (1):
  remoteproc: qcom: add hexagon based WCSS secure PIL driver

 .../remoteproc/qcom,wcss-sec-pil.yaml         | 172 +++++++++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi         |  64 ++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi         |  64 +++-
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  60 +++-
 drivers/firmware/qcom/qcom_scm.c              |  17 +-
 drivers/firmware/qcom/qcom_scm.h              |   1 +
 drivers/remoteproc/Kconfig                    |  19 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/qcom_q6v5_wcss_sec.c       | 328 ++++++++++++++++++
 include/linux/remoteproc.h                    |   2 +
 10 files changed, 722 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
 create mode 100644 drivers/remoteproc/qcom_q6v5_wcss_sec.c


base-commit: ff7278c6e337027671acae5991dfaa5828ee3cce
-- 
2.34.1



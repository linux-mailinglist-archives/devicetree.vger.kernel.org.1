Return-Path: <devicetree+bounces-251880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE961CF7EBE
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DDCD303D881
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E056C328638;
	Tue,  6 Jan 2026 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cHxN3s1k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fgjEsRfS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC10327BF3
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696863; cv=none; b=OBKrPqUSbYwVK0SxFIqZPJgmbr7nIpJUaVSKXSOLdftX2YZrwRYgYhhnPyUEShOnqZaIRUYdIh8hjXcmMNP/Rhj+jvhUnKJh0B8T9RoP5upJ/NFAq8Oe4gfhE8C3xHKMlJiB7Ego+tlhTlPQSTyh2RRAkWbY253+wYPoq7XwFVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696863; c=relaxed/simple;
	bh=XIro8WjTgN2pc3GAXZcAdEVNHU6nIfrqjubHsp3Vkes=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ETGFoozMO+pc1t64DDKMyFb7pU7dkR2rF3dCA78PV0GO1Rcyrdf7vNqgtDMWJNNlEIdieS21DGGdgHaYuYHqxMMKz4i1DSL7spHIXqabAftYebDa2tCtchhLNsL/Y+7N22Qvp2zFKt5IX8Lqy2QSVD9h+OmdT6GQ3OtHMfhtK1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cHxN3s1k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fgjEsRfS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063wWlt2684702
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 10:54:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=hMQ+mZX9c2O47rQg3eTyflrNGC26BNQZOwS
	mJqlRC64=; b=cHxN3s1kOl0wOQEBqJPb3C0q8m61IZftubOSkB7sK+16nI2gvWN
	Iklfm9ke7SsH5qVVWbb0JJEal/Iuf8nGmZB4LCujJDtH5sQIU47q/uDvuSQQtXDj
	OAO64x/qvjeqxKeFh1Z57Y3IXDNKLd9q+DzNIfi1QlICZsj+umoq3ljHcoYCJ7Ma
	pLNRBAvr9gay0BJXjWF1Gx093EzOcG1GdVMvcStOXt2ojLcipH6pHsQSKy1OdhgK
	q6fOsaMUhErlONKknXd6JCZj/oASAwvEP9L9jaFuAmkPYSc9lyL8PZs0bGCJKSzd
	XBO2qmAcCAgMMYrpWJO10IPHWO5W0UOQ1hg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgty5h48x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:54:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso805288b3a.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767696860; x=1768301660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hMQ+mZX9c2O47rQg3eTyflrNGC26BNQZOwSmJqlRC64=;
        b=fgjEsRfSORinS53e1VvGz+CIL2NGtwKKW0q/jh0Hg23YP4Ueiq6nQhdOKkYVN/CkNn
         XJMkAgZ+uBJAfBeqOjC+bVu45luYhekQ8XrGgdqlZ/SpYHv93xKU2e6p5vcUmHG7NFNt
         6HU5Jg4+VoOToMIFcslawRKqIFRYUp5EH2PpHbjEYaHR1KVGOMxSdMmLXcpkjjyepMJs
         yJ20CdBoyNlr/C+uTlqmaOpHaB1nXO/yVkJeTfH/sQq+yD/slQDVEtlMLj/5ojWXOEuD
         Ga32O6nZPOaTgQS+OGHerT44GTfq9mFCZF5NJJgLg33zS4+9mipt+a2r35z98yIDkz1V
         74/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696860; x=1768301660;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hMQ+mZX9c2O47rQg3eTyflrNGC26BNQZOwSmJqlRC64=;
        b=kWkCoZ5V7VwGmvJvrGcFRumX5EfPcapDABGlybinc/fskkaxXwHhvpQ7pSMowbxZQ4
         vUwQ04fDgK3Eyt3DRnUWlm0UfYLtI0HPKbgCHn1WX+/+lLcGa6vxtbpRVuVYDVlboN5Q
         itn2NcN8vKiNmqCQm5YNUuyYU6O5bOgQmIEQNORj8yyQAaKavF3PH+vZdUDL6q/jvBqm
         78ToYJjE+k5H3zeLbMoYZIgGnGLsj1VYmEeb/TckWvhWf5Z1rp4Kog2NgJIeO/0GVEOY
         dXXuavs44ch+8Fi+ibqsob59flK7URuRCPgKqX7NIKbpDTaHKi56u/vdHw/FnRR+XxcW
         03UQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuk/oB63I22pASgSpWIwQNJ+tZsWM4zjk0ZQrpBOafm0GhIBLP+QNq7mYwT9NPv873RWqSmpJC3dv0@vger.kernel.org
X-Gm-Message-State: AOJu0YyY8+f9m4Cmv38utAj9/HlNAtC3C4y0CMwMfDCUNFoNuonJcGHv
	f6KGZSIum1D0BC+krtYJtiTmGnmy99CDvY28K06IiMKXvRuFKt99P+9h19jN9YZBcOPmU6kYHt0
	Bz477zGzGlS4RBD5ZzfSwNcolzRZCtv6FPTKdzR6TtViKw1BWGLlDnffVOrGitkwI
X-Gm-Gg: AY/fxX6oE1C7YKgqmczJ46Tv/e23upYaQ1lYx0PVRRLYuYWDSxRGzdWZxW528TwxZTb
	0CEW91m6KVXO5fZDdel4wqfumqc0w9l2DJXG/kv8F678lc4An5x830Janckjmp4Q50U6dl68ov/
	mn6HFboj5ZqxG6X+JM3PDRxYZKOwxlOdPROjPcOQ0Pnfv3GQXpS1tZ2+2YZQZfP61gDSGn8H7FA
	vU43aVwhQ0G/u9jbRNkdQvtb0Nem7gpEDZeyUCWLYYX4LhS3eWGMW7WaVvUPotjW5HyI/qrxhXV
	c+JqxarM62hog+I5OpLz7ipWLEBmH72tYCoPesN4nbbTtCZLXMb8sB0bwuBmKPfjsQSWYiHbMhS
	ZpUCOuzpt4qYZxrDOgd1/H/GpBinnkoWzGooNVQKPENkwAAY+LXBJF9o4mwtnAIO+HiFezinKpk
	gQiEJy47xH1LRBPKpdnU+U35bYmFvfdjmWtB0ku+s=
X-Received: by 2002:a05:6a00:400c:b0:7e8:3fcb:bc46 with SMTP id d2e1a72fcca58-81944ea24famr2326794b3a.27.1767696859582;
        Tue, 06 Jan 2026 02:54:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8LbqWhLWBjrqxtrYCiPh0IY/UdFZmI0mTogA2PeZoSLUp3f8a6ZHKaFlhh7e3dP6B8DH21A==
X-Received: by 2002:a05:6a00:400c:b0:7e8:3fcb:bc46 with SMTP id d2e1a72fcca58-81944ea24famr2326769b3a.27.1767696859028;
        Tue, 06 Jan 2026 02:54:19 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b98sm1855121b3a.20.2026.01.06.02.54.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:54:18 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v9 0/6] Add new driver for WCSS secure PIL loading
Date: Tue,  6 Jan 2026 16:24:06 +0530
Message-Id: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5MyBTYWx0ZWRfXxzY0yckDgnOs
 7xSgQ6tlZ0pQ5YcFi6PoGCBPals4p4cmhuArMTVeaGBJfjDHS3CJB6Mo4+DQ3fSMykUgFgJrT8E
 R3OwfxNy5FvTIVjcxoHGQFN05mvOikNyOw6ZBn1Aj8UfWbiVYC1mVNdUfndZg01nJZ3QSscmAiZ
 MQUegP7jagHm3HlYBEZGAS/CK26z5maxTroZrWf8tKHuRHWeTvb+qoQCLV8fkgDlYtlyNqmNePP
 /L+lk2ath3LBoKoeCSC1KrlIJQpJ4YbJgaK8msN8vDKl3ovaXoEaEOC4/tvkpboo5XoVtAZuOff
 RcdpaG8UGOWVvXpov6NRjRzQOsfEYiDRUX3amiuoSQ/2th86Hdo1VLAbKetpJHzTlM0ubzZvt9E
 wGFEQiztWq8I1Mqzr4vz75A53IeyfBwpOCDeOUwZGRUSAymGS4HFnq3xZKZ5K9pPXUFmEtmKh7x
 cBGF3m0wQJAcfctMo8A==
X-Authority-Analysis: v=2.4 cv=Rfidyltv c=1 sm=1 tr=0 ts=695ce9dc cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=LpQP-O61AAAA:8 a=EUspDBNiAAAA:8
 a=UqCG9HQmAAAA:8 a=gjiOCNvPbvlRQkj2kwMA:9 a=IoOABgeZipijB_acs4fv:22
 a=TjNXssC_j7lpFel5tvFf:22 a=pioyyrs4ZptJ924tMmac:22
X-Proofpoint-GUID: 6RiXyAwFR-cN7dgURazP_LIfthh9DNGo
X-Proofpoint-ORIG-GUID: 6RiXyAwFR-cN7dgURazP_LIfthh9DNGo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060093

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

Changes in v9:
	- Add R-b from Konrad for dts patches
	- Renamed qcom,wcss-sec-pil.yaml -> qcom,ipq5018-wcss-sec-pil.yaml
	- Restore clocks & clock-names in above yaml
	- Fix DCO on two patches
	- Link to v8: https://lore.kernel.org/linux-arm-msm/20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com/

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

 .../remoteproc/qcom,ipq5018-wcss-sec-pil.yaml | 178 ++++++++++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi         |  64 ++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi         |  64 +++-
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  60 +++-
 drivers/firmware/qcom/qcom_scm.c              |  17 +-
 drivers/firmware/qcom/qcom_scm.h              |   1 +
 drivers/remoteproc/Kconfig                    |  19 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/qcom_q6v5_wcss_sec.c       | 328 ++++++++++++++++++
 include/linux/remoteproc.h                    |   2 +
 10 files changed, 728 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,ipq5018-wcss-sec-pil.yaml
 create mode 100644 drivers/remoteproc/qcom_q6v5_wcss_sec.c


base-commit: 3609fa95fb0f2c1b099e69e56634edb8fc03f87c
-- 
2.34.1



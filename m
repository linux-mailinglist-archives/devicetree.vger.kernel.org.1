Return-Path: <devicetree+bounces-260019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPzVGGXheGkGtwEAu9opvQ
	(envelope-from <devicetree+bounces-260019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:01:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5840974CF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38336303DADD
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE8735DD12;
	Tue, 27 Jan 2026 15:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fg3vu5lI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z1DXgPBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E08B35DCEF
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529465; cv=none; b=F1o3cJPUrcRJ8wfAdZQQECJUNNkfvqj87sgykGAJIoMzzVwpOkby2oPUyhib/1si+uNQphykKJxnxkIrIHMtOvlNMuCZXm0d8K++Fvim5BUNkgWtLIxvEwfOtFffeav0astM3gMn9oE0mvZ/iiZM4Le/xNtrly0TBcoM52CUCpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529465; c=relaxed/simple;
	bh=LRbGyU6VxG45AxvEMVl1MUYqKLA89Kd1ou9Zy06trNs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SKegPQ3YOta8ApSauszHn4YU6T8bFRH4aTDe8M6vmE+vaTA2J7bS+y8Fqlc0p9skW5foEIqP9UMmgxaEY2+XEUPf3rwPF27oe0VNBe+NREaIJQoNccOkCMwKLT+DtkfxGYoS20zU4dx8hh0qSsEab/7UJh/UCWiSgLFYPL8imL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fg3vu5lI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z1DXgPBZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RFAbmK2379408
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=uDzwy0egu/hVg7VKoVC870KwCzCwNSPZGw2
	70cEoHDQ=; b=Fg3vu5lIZdNmypxNQhz7nHjsO+U73X/gvcFNfgTSh5W1j51R5Zh
	RFII1D3BUwKDHvb5lZbzfJrTy87ro9XJR8G38aKEUwjUBiSylKHFrYoGt6CC+wK8
	uG++hdFn0Xe8R0Lj9RQJAbc6KcXgUcWQNhWLT7WDoKzBVEq5JaDb/lFbS4DPzcER
	jKbSRRw/acdWDJaKcFUDGwb5f8VT0rG4PFHMTdgpRgC+61ILEiBtT+vsXjqcnTI5
	pArnnSBWR9NeErc1leKHkA1sTspvhMb6wWbGSBbcwGvd0aTkD7+DcmuSW2e87LaO
	eo8+qyi/Fnh55xbknI2mP/J7tyFXqrYUdjg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr9hb5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:42 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f26fc6476so87908225ad.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529461; x=1770134261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uDzwy0egu/hVg7VKoVC870KwCzCwNSPZGw270cEoHDQ=;
        b=Z1DXgPBZACQ9DOxWu4GoXdean6Ablq9kiiVr+c9WPtZ2cKLyOOtY+KQEIFOMkMCC06
         ob1ayeURN0J0xtrvfi1YqJyCaFH+TBam+VJIuZFydfGLhJSftryPHnvLW9/qYtyN4qOV
         3jePJ3A7bQ8EP3uLkw9ix1UAu/+EpJmU5gO7ihG9sVyZWp+PXFRacPpvhdCF40sYt4nU
         gqEd28HQcjVOF4kHkxocMYuXqbzQT6BaeF84ab8ktkD7ncWGNffZbyZ8xQGv2EY6+W7b
         ta+PNRSEaRINr9Tjiu8tgLkckZmjMq2A2pbdvk1NVA/RNr6tKCE1NmG2ehrtA+2pXcEu
         zI1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529461; x=1770134261;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDzwy0egu/hVg7VKoVC870KwCzCwNSPZGw270cEoHDQ=;
        b=c8pvNFl9HdFekrQtTUUsOaAkU+k6Nv8PbdibJ0I0rSCuwqKHQB2ziW8lyiHTUCnlWU
         xHXLiK0X8rxQXY/3sud6ufOXzGqx22WXqJU3K6umiqMDJ3ewQ8X9pE3BjM91t5y6+qN7
         bi2bwj4IDWszQBJ9/E9Qd3ivlhEUAv3D8+y5uW0u0mrPqC/EM8ohFoZd/HrdaLHg4/sh
         S0xNqWQh1M/3J7R7QbmXZ77Gobc0VL54qYvzLaHT0RYYppLrx2gCSUzf5v/iAinivfCG
         Bi3AtdKZV6GiBgA8I9szU9x3zU1hUwyhVsOZEVgwjp8IGpkj1itAQY2jigARyDvzEXGA
         H0pg==
X-Forwarded-Encrypted: i=1; AJvYcCXyKqgUPxNOLA0cIw7k8kxBArGm3zpN4nbcqldYxNGsE2WW6SWxgnCkm1tSogz+pjLT0LDgxM3zWZtC@vger.kernel.org
X-Gm-Message-State: AOJu0YwxMPChdZRYzjCPFy5tPggBcosKazFVPXzelLj13aJjJHXKKTKe
	XQaBANt3pfyFYyi67c3UxJGbS+TyxjIZS7T2kTaaUmo97/ULpCgbLlwwXEn3vzTu8LUjbF1Xjv+
	t3EjDIYa7mR2bO+ZsCkBzmacV9HWXcMGiOMP46X+KUHJV02V2zDh5+S2Ig9Cdq0Jn
X-Gm-Gg: AZuq6aI5ilAdPqhOtw7HkAfi7IcWtIFNWA8QNtpquMOqQfJ5Klutjka9RtykaKNPpM4
	SfbbM+5uo8MAKtikD+U9YqZW6i8re61l+DZ39PcSeuWw9ptmO7fsQR79jpz6inW39bwH+FVDF8g
	bJPgj+meGJOby2cMAYhOjH57LoI/Hklwv0Otgx5i8odHckX3bhOUm3A2kjDC4TSWJvLWs9t6Oyq
	BnRRqK6IsAm7RY7rkrw0hEqOPTPtbRaUZkMPNrkuBnHyYsDyktus8br4jFKJlcKqyEMdu9zVjMo
	OGGGA5lAE1o6dxHR/wKitb7gkFBwb9R43mpmdyUOz9lAHKlUaOgDg/hCFZpcfigoOlhklAlExsS
	YDBQKxBVJXAHRV37FT9w+gNpUOJEeEbUbfyg2EU0=
X-Received: by 2002:a17:903:3d0f:b0:29d:65ed:f481 with SMTP id d9443c01a7336-2a870c30b22mr21076495ad.0.1769529460677;
        Tue, 27 Jan 2026 07:57:40 -0800 (PST)
X-Received: by 2002:a17:903:3d0f:b0:29d:65ed:f481 with SMTP id d9443c01a7336-2a870c30b22mr21076175ad.0.1769529460143;
        Tue, 27 Jan 2026 07:57:40 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802ede745sm120577465ad.44.2026.01.27.07.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:57:39 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        gaurav.kohli@oss.qualcomm.com, manaf.pallikunhi@oss.qualcomm.com
Subject: [PATCH v2 0/8] Add RemoteProc cooling support
Date: Tue, 27 Jan 2026 21:27:14 +0530
Message-Id: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: bu2mCj8vNPgz-tc7SI2QGeJ9gdzgEKpx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfX0Ig8OJ6ELFUC
 kOnyOKilkOOIApISVSTzd+3141WveZuPVPWodNhD/Y2uQXrRmmknHGMCI9d83KAbntjxp2I2M+x
 fH2+g4X6sBgALExo+hMDC+VQUGQoogpwwoAEiTo88S8ackqT8fLaciEPOzZAPX17s3BL1WEYfGa
 jWhmgsCgP5sZWsJPXaukrZ1ZvyS10N1o4Zy5ac05Z5MTmpGaSPPL0yIcktmYWZwmbhwaPorftXO
 a2rNTIMwmEyIivVdRexlXcW9S3jUbrk9961WAupe8Kj6/g2tNifZIJsi+msZelz5DqM5gN6wxt/
 De7HYINxxBQJt7QVWTTcQvIJSWLPgAK0ug3vjMl/NATrev/hYfbJGwQ1wN+bSV99ddPjsQ8tHfj
 ky09qw055/phe1/i7tIsKSygIHt04SjAIMLSlPjRyigVZdfG+HjEVmMxngwRkLCskHo5N9org0u
 LkE8BtxvBas4Cl+8Ung==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=6978e076 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=UyqyXcSfpugMwcGqFkcA:9
 a=GvdueXVYPmCkWapjIL-Q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: bu2mCj8vNPgz-tc7SI2QGeJ9gdzgEKpx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260019-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E5840974CF
X-Rspamd-Action: no action

This series introduces a generic remote proc cooling framework to control 
thermal sensors located on remote subsystem like modem, dsp etc.
Communications with these subsystems occurs through various channels, for example, 
QMI interface for Qualcomm.
 
The Framework provides an abstraction layer between thermal subsytem and vendor
specific remote subsystem. Vendor drivers are expected to implement callback 
and registration mechanisms with cooling framework to control cooling
devices.

This patchset also revives earlier discussions of QMI based TMD cooling
devices discussion posted on below series by Casey: 
https://lore.kernel.org/linux-devicetree/20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org/

That series introduced Qualcomm QMI-based TMD cooling devices which used
to mitigate thermal conditions across multiple remote subsystems. These 
devices operate based on junction temperature sensors (TSENS) associated 
with thermal zones for each subsystem and registering with remoteproc 
cooling framework for cooling registration.
---
Changes in v2:
- Update Remoreproc thermal config to tristate and removed unnecessary NULL checks.
- Fixed dt binding file format and added generic name support for cdsp.
- Fixed memory leak and cleaned up qmi-cooling driver file.
- Corrected DT formatting errors and commit descriptions for all targets.
- Link to v1: https://lore.kernel.org/linux-devicetree/20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com/
---

Casey Connolly (2):
  remoteproc: qcom: probe all child devices
  thermal: qcom: add qmi-cooling driver

Gaurav Kohli (6):
  thermal: Add Remote Proc cooling driver
  dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
  arm64: dts: qcom: lemans: Enable CDSP cooling
  arm64: dts: qcom: talos: Enable CDSP cooling
  arm64: dts: qcom: kodiak: Enable CDSP cooling
  arm64: dts: qcom: monaco: Enable CDSP cooling

 .../bindings/remoteproc/qcom,pas-common.yaml  |   6 +
 .../bindings/thermal/qcom,qmi-cooling.yaml    |  72 +++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  37 ++
 arch/arm64/boot/dts/qcom/lemans.dtsi          | 138 ++++-
 arch/arm64/boot/dts/qcom/monaco.dtsi          |  93 ++++
 arch/arm64/boot/dts/qcom/talos.dtsi           |  24 +
 drivers/remoteproc/qcom_q6v5.c                |   4 +
 drivers/remoteproc/qcom_q6v5_mss.c            |   8 -
 drivers/soc/qcom/Kconfig                      |  13 +
 drivers/soc/qcom/Makefile                     |   1 +
 drivers/soc/qcom/qmi-cooling.c                | 510 ++++++++++++++++++
 drivers/soc/qcom/qmi-cooling.h                | 429 +++++++++++++++
 drivers/thermal/Kconfig                       |  10 +
 drivers/thermal/Makefile                      |   2 +
 drivers/thermal/remoteproc_cooling.c          | 143 +++++
 include/linux/remoteproc_cooling.h            |  52 ++
 17 files changed, 1529 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
 create mode 100644 drivers/soc/qcom/qmi-cooling.c
 create mode 100644 drivers/soc/qcom/qmi-cooling.h
 create mode 100644 drivers/thermal/remoteproc_cooling.c
 create mode 100644 include/linux/remoteproc_cooling.h

-- 
2.34.1



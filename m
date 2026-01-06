Return-Path: <devicetree+bounces-251941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B327CF8A27
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 14:57:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A1323040F0A
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 13:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30893346B8;
	Tue,  6 Jan 2026 13:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k2F6q1I8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ChhG3BmU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9FD33123E
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767706824; cv=none; b=WexfA6vOQoNtWahe0feB5cVLWIekqyGZAvSFkXTFj7gJPVlt65ctLpka9yWcDeKsbtZm+SNLG4TGj0LPFwtfjJ9vQRtwCvIR9uhMw/ao2DcY0DNhpJr3MGbfdpg1xfbxj8qufQFxTRzhwUcjdCYkEA7QHb2g+0bgE0onSnqYB68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767706824; c=relaxed/simple;
	bh=Z114AqKhZ7fyxmsm+pgxG1OQSMpnGQ+86ux2stbynqY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=GM2Fu4TViG1O2zHNbwkzvsGbtTWL2/9CTGmGhQf+mYj7MkFhG59aHH/RIpbDVWeguj/A1TWe+MBBRzweFClunkyf/PcnUlQU5byZUh4Pt1Kvy7YsbvHgkGWv1rWfvD111Uoa/2U0U7PaQYv3dQcNr40K4M5TlnVQbh1M0Jkws58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k2F6q1I8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ChhG3BmU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606BJfKv2253762
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 13:40:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ZShKc1ZIfNAGy8feaknDOp
	tduLJ8vcLdIOJLoEhWH0Y=; b=k2F6q1I8meLToAkLx+XhoN0Ec5EnsY50hBUKuR
	/EWUu/l0kqBKUUqaUkXsqbN14uqyZmLb0jlTAIQd5kRspLhgjqqdqKL6mstQkFkn
	Tkw9omYY4GcbSHZ4GCCU8i2CIsk28Fb5OFqC4e123NhLPQrWrfbjI0D9dxu11Wt0
	noi6cwASIdGXIdMILETya16iVg9IpYKiW2Kmmn7lBu5ccLg0MOJmPU3Xq2tHzmC7
	07KTPoHpJTDKMn5zd/AbHRgUb3V6x54AyOqI96bjDWg2XVtimQCTjXh1w9MXOra4
	fcGZJvIj4EGvn814Tx91dY0+RQNKANnfwtkBx+Edw7/PNbgA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgu421j2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 13:40:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0c495fc7aso13732265ad.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767706821; x=1768311621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZShKc1ZIfNAGy8feaknDOptduLJ8vcLdIOJLoEhWH0Y=;
        b=ChhG3BmU46zqOVxhue9dBVX3Qbz4s+Vn+DionnYD3lFQZ7434LZPyHAuzsFAcvS6k0
         fbU/ij1UgsTFYa4hBjNfyWcQduI2SMYz0/Xv9xife3uDCfsDHC/Umos/5ltYqQzBbXz5
         hgLpUdbQo0uzumzI3LlhMjnUgjFIHNCP0308UaXdkiyBRE9P/Fb7/G3IpfQdEO4eL9A+
         IT7eyR/EJjvrInpNdFk/WZ8wJxsrpDyOR03F9HaipiVBQRCTUDGPbTqFyWg2Vf0o8avu
         1HVbH/710neAEpBeUd339aKuF5zK1HzZm0gzUmr8FaLcAz2nGlewdAjAZMIpP9eH7Q/l
         mU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767706821; x=1768311621;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZShKc1ZIfNAGy8feaknDOptduLJ8vcLdIOJLoEhWH0Y=;
        b=n7kqcdmRC/eTQG7xWpWdU2g0NtDiBG1UZd0r9889s+zwrbz4bBtw8/fc/oSmmhls0N
         sFVeZO/QwgU6V6VzYdOi0nADl/EL2FYPmvx5sfSY3E0AILOJkSCqU4lGAvRPdn5qfhx6
         h39LWe2zmddwQQ0AnZMG7mGwoVOawQaL3PhteoPElhdjnY6oWtM17dm3hfQSXyUNLTH2
         Tyx2dte0wLUIRNEKUem7HxBXYqReg46l5unzw+1Rx57NkH4a6iPuNCT3InuSn+79KcFX
         0Qw3LDFsoJXXELIeObwj34ftp/zU0XFjuWWQZrqX91uf6lxMtFdyTiqRR6FLqwwLfC3D
         PlNg==
X-Forwarded-Encrypted: i=1; AJvYcCXdFDK9EpwxMTmVuwnsnE8nNXMbTcJMHjA8dRYalBSXqzm1bgcgreV9qTuxn3dWf2sz9pC0M/4s5KUP@vger.kernel.org
X-Gm-Message-State: AOJu0YysCFCEd/ckvfz29g+IycWG9GYjs1a4fyUP7HgDq34vPAYRUM6B
	nJJj/aeQtm0Y9GRC4GbmArZXNDuXqvMFEDwRsLMwkXKsnAitqNAu/FsFAS8wBLxomVCxImmNyTv
	hVTF5VIbq1mTQphR8RSW/7L1uThpDRYvBhLNiG9tQDDnmNSn/7eRtFxe0tQHsTR+W
X-Gm-Gg: AY/fxX7Nr7fJQvbvTsbDO6Sbr0h/G6AQNksmlozv6SkSewEblIukMD9Rwqfo6I2h0Vv
	PNCwcWvt1wE6qS+UuBiOXyg5kuyGlQdX7UZqYlCVq3p0wXK1j3Lcaspq2KrMYVmBjdbIDOlP0kO
	6SvEuFgXxR3u33DqIEacUkqi7JxaCuINYQ4ddhVYyIG7Fwt+u5DgYg5FB9ZaxpdwJNlnYcXrrPq
	55JsOzkJnX/J/heFBgz//q7h1+GWCjpsfvqWxKd3AUp/X9Nf7iF2wXUSZkSomUvCighoq7OdcqO
	kHmHTcQn/iemCskr76aNaF5+7x+S5ulDIy7TFE54497l3sXFH7d4Oy89J+NXZUof1J+RtCu9+yZ
	ZeB3MTZCi+63jL5rNpa2+iP79dU75uxcQHgLu7MlC
X-Received: by 2002:a17:902:ce8b:b0:295:9627:8cbd with SMTP id d9443c01a7336-2a3e2cfcdccmr28461155ad.33.1767706820939;
        Tue, 06 Jan 2026 05:40:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH20KerUkmE9EOO35y3hQiUE2qyD6/1P4ZPvZ8lSCXKRejHb10L/WCgPIFcRtjSCySynamsBQ==
X-Received: by 2002:a17:902:ce8b:b0:295:9627:8cbd with SMTP id d9443c01a7336-2a3e2cfcdccmr28460865ad.33.1767706820421;
        Tue, 06 Jan 2026 05:40:20 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc7856sm24112515ad.68.2026.01.06.05.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:40:19 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 0/4] ufs: ufs-qcom: Add support firmware managed platforms
Date: Tue,  6 Jan 2026 19:10:04 +0530
Message-Id: <20260106134008.1969090-1-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dYuNHHXe c=1 sm=1 tr=0 ts=695d10c6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Nxr8sekpfmpq4ZlREHgA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: gCVYOnoX9VelfdswCL_wQcJjIeN11o0X
X-Proofpoint-ORIG-GUID: gCVYOnoX9VelfdswCL_wQcJjIeN11o0X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDExOCBTYWx0ZWRfX5kEODSx9Ro5I
 0E8YXmfdjYcpdo3cOzuNAK82U1ywEuEogqP8IkXs6bhOv0oPfI5c/hCbrs0EjGxwQjr2bCwnerl
 KUdQycRdSo509KOxeXEoL4diMA32iZkk+T8UhcQxRme3z/P5Rg1w6LOZUiXizyR6eV2XMNj2Yio
 zu4IberDwvP/pZcewgRHpo+JR/Ov+63DiCommZG3pyOvbi91D5SwSSOyzNoSdIrPSa1ya+G2nx7
 efLvbP03khY7xElgOMpMJ8X/fgc30Lwu1pepw5fNQddF3RVYLri3uR/fxNnRZXoAVxZPzjl9UT2
 JP52OwnBCiJhTm2OZHrJwWW2UgjgJJRAPGyz6kwn4eq6kMt5AgO+htX6Ff6TwR4hU8k78UWfr7N
 fpma4Qqt6fvIXxqlbv5Sf5zU65e/wKSw5rag47pRgmFm0AK9Vk+csETLo04QnkS69TAZmZb8dsY
 PcwmNcx5X6naBvx4jRw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060118

On Qualcomm automotive SoC SA8255P, platform resource like clocks,
interconnect, resets, regulators and PHY are configured remotely by
firmware.

Logical power domain is used to abstract these resources in firmware
and SCMI power protocol is used to request resource operations by using
runtime PM framework APIs such as pm_runtime_get/put_sync to invoke
power_on/_off calls from kernel respectively.

Changes from V1
1. Updated "dma-coherent" property type from boolean to just true.
2. Switched from QUIC mail ID to OSS mail ID. 
3. Added Acknowledged by tag from Dmitry for patch 1/3 
4. Added Reviewed-by tag from Manivannan for patch 1/3 

Changes from V2
1. Added new patch "scsi: ufs: core Enforce minimum pm level for sysfs
   configuration" to prevent users from selecting unsupported power
   levels via sysfs.
2. Set minimum power level (UFS_PM_LVL_5) for SA8255P platforms.
3. Changed DT example in qcom,sa8255p-ufshc.yaml to use single-cell
   addressing instead of dual-cell addressing.

Changes from V3
1. Removed address-cells and size-cells from example DT in
   qcom,sa8255p-ufshc.yaml.

Ram Kumar Dwivedi (4):
  MAINTAINERS: broaden UFS Qualcomm binding file pattern
  dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
  scsi: ufs: core Enforce minimum pm level for sysfs configuration
  ufs: ufs-qcom: Add support for firmware-managed resource abstraction

 .../bindings/ufs/qcom,sa8255p-ufshc.yaml      |  56 ++++++
 MAINTAINERS                                   |   2 +-
 drivers/ufs/core/ufs-sysfs.c                  |   2 +-
 drivers/ufs/host/ufs-qcom.c                   | 164 +++++++++++++++++-
 drivers/ufs/host/ufs-qcom.h                   |   1 +
 include/ufs/ufshcd.h                          |   1 +
 6 files changed, 223 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml

-- 
2.34.1



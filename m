Return-Path: <devicetree+bounces-254416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F40AFD180A6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 279C83030228
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C536738BDB0;
	Tue, 13 Jan 2026 10:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pNksfhkD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NdS7Ywv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA3238A735
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300115; cv=none; b=WAPgvdC9pnvnrjluRNlpMvzr+10AbIo30hH33IVDsrzsjhqlI+3fyalQDNVn5Pv325/oBnM/Lb4JjkBmtWG8ZGi+yxpA53qn4RvmkuqDOqaKIHsGlxkYWTrwefVJdwejmephk/Oly5nFMDApKYyA2PKE9EV/2ME6PGNWbicftts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300115; c=relaxed/simple;
	bh=7lvYmkvyF65O+UQz5ZzYxY120h7eLHmL4Lbby/WRWog=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LH8eoYsUfA2v08tJmI9EJsJztBOe/fMMDyLPZD21+C1jKgCnQzWWPeybp4BdwJEbytLJsbrDEmpeHJrhYbqD4r/jcp9BN8XfbwHGibvMzf3bvSTOFfg2FrreWeLe5iJPhd5rhFIFagA318/rfbghAEpas3hAW6NOs6/F/8M3qxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pNksfhkD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NdS7Ywv1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7nN1K3299965
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7BUyvgrV4V3hKosIFoCQ6q
	XoNT8ClbR3PlwnpOAdCuM=; b=pNksfhkDKHrwHjWpoFcz0YYCYHVI9PMNUMwL+2
	/eXV+/s8w4+i9mxrjPSnuIQuuZSI39NjOUuF6XVR9L5/WSGsmXHbAgT4WjyHrAE0
	pn+yypVxcLBQwZtk8SDanO7uaoFJBPhH8e6duog8bVy397bwrvGy/dCcx5wkd2rW
	nCk+uk8dfzIQxOQwGf7Mr+jsu1tIZ1iLv0iufsz6LZe9dXAf1xd3991OeALGKR9P
	mRLBs/2xo5QHBfy1IZ+/fgbfXwCiS0Bqt3R5iX+oo/fI3OyU/yYbVQB2U83BXgdq
	Qpo7119UhbLRUNfCc7OSBGc/lZOcys8Hh5wrDrlDaFIY20Hg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jmacxv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:31 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b21d136010so2501918eec.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768300111; x=1768904911; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7BUyvgrV4V3hKosIFoCQ6qXoNT8ClbR3PlwnpOAdCuM=;
        b=NdS7Ywv1Lr71bYvKZUMoAmKmg5w4aUZe2PMAhuSeAOlsJ7hc2KF17CY/WkPVI1S7uq
         yAjlc0Jh6UPdbpxFeIm5+Fr4G/GP0dzLE3VWv3YTfOyytH54jkCGtnX/7pt8G6ic4HMD
         FzmClGkJ7YK6SAvKmh65BsTjGHDaZ0GHAfMnNPrUFtqaxtvUKNHCMQkEKLNEJCgUPQwO
         pyNqRT3/y21qIE/yhed2GmkGL/eo5RanVqRfp5mexQFtyOUdGoW1Lb4Dlrar+fMIuLW/
         Akd8QjcbWn7VfOzvuz/sHicrRdNoao1u21aDmMCwhtegC/JkRrUhUTo/6o9RUBjDlQUS
         /e8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300111; x=1768904911;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7BUyvgrV4V3hKosIFoCQ6qXoNT8ClbR3PlwnpOAdCuM=;
        b=O+JIHqFMexqA0hAlrrE4WfHBbf1ThVTnjpYrgPIxCLkpaTudfy0mM6+j1vMDpEMV40
         i6nupbxCjhD0fvsOK/0g99/Cq+fp+dhM2g2gedJXMr6IlbV0A0YPZGOj3GUfdmCmhtot
         HmF8mDO84TemG+wfPXwSPEa4rBN/v2cnQypnQ596MKr+fCjmisWbhIee+9wDWwD1V51X
         LVI+iNIOyFOKo14asP6AN6rXyfjUff+487bBrusatSF/HW4VsxAP+BVYhO5SEQyrOQMW
         o1kZd9tyEo1rw06fnBdr6o3Gepvhx73DYJfHPkkfpmcuw7GUQ5VCvdb9hCFukri1y+Mg
         P79g==
X-Forwarded-Encrypted: i=1; AJvYcCVdrn4eVbIm8sD5a9tYB9YfPHaM8VWeWwgjJNA2goKR9m2GezLNyybj6pd8Y0YpQ76hL5J0PYPny9ht@vger.kernel.org
X-Gm-Message-State: AOJu0YyuSciHxB4DGHiJiUe7WB6a2vZ/lemwfx6qXXRZLNiAS4bpCYLM
	U3FAUrCbFatddARHnFnzw4DJciyUvsJBR9VIaO88UYriO7y49x47ttn3pF21EfX2aQZerkmTMm6
	hFDJMJTekVXTXSUxx4/mtNKbGFH9zjFlDGDm9wNMDTZ5WVv6fHZsqiQxbngv0bLm5
X-Gm-Gg: AY/fxX679IS4Qm9KoiZVmwlS2hY6JyePzyeLwOPwMbHoYiv9wRVknAXeWzwkGAdHlot
	md3IvFDvPTydCzt5KCq5Q1LMTJlOR6On9mLk1b3+6RysuYZ96bQoPa0V2wVCOtn1Z2NfRWOfSiY
	+9EyFezJMURhQHA8TJIvH5BlDfnNNSKlThpWJhcF548S9CwZbEqpVjWwe/+j5t81XpS16U5iRlP
	O8OcHtx42G46x57FCQuiYE8+Vpt4l33IjLev2h/roP5AV9NSbHdmUnh6HtQrEECUGrEWQZsG2ht
	Hwp8YVmJYE98rqk0NX7+xDZkQ7bLAyn6StnpcSH+7sWFRcZ33MlSZK+CCIpT5xIyZbcIcXYW1qp
	Exa/xwarEGSL3u1o0XamFhUhVfPw4MjRqobScyDzzKpZPcmcdBxhqQ+UgSjCredQy
X-Received: by 2002:a05:7022:2388:b0:119:e56b:98a4 with SMTP id a92af1059eb24-121f8b0db72mr21536320c88.11.1768300110607;
        Tue, 13 Jan 2026 02:28:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkN4ZxHjG4pAZ/7ySTciuA5fQd+jr4olQGCAswoKp2mByn59qUz8OEQtB9UKRmf4hH2TCOpQ==
X-Received: by 2002:a05:7022:2388:b0:119:e56b:98a4 with SMTP id a92af1059eb24-121f8b0db72mr21536275c88.11.1768300109960;
        Tue, 13 Jan 2026 02:28:29 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f23b798asm21162429c88.0.2026.01.13.02.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:28:29 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Subject: [PATCH v2 0/5] media: qcom: camss: Add SM8750 support
Date: Tue, 13 Jan 2026 02:28:26 -0800
Message-Id: <20260113-sm8750-camss-v2-0-e5487b98eada@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEoeZmkC/2WPwW7CMBBEfwX53I1sx3FITv2PioMTr8EqsYM3S
 UGIf68htFTqZaVZ7b6ZuTLC5JFYu7myhIsnH0MW8m3D+oMJewRvs2aSS82FKIGGbV1x6M1ABKX
 udMn7ruHCsvwyJnT+/MB97LI+eJpiujzoi7hv76BKCKnBWAs0j2NME7iYnsQYfhwWARy00g5RY
 ldL/h6JitNsjn0chiIPtrutnglPc04+rcav4LnHGlvCpzHBjObonz51WdfSKoXO1e0iJPtb+Pd
 PPK/xPGGwaKEnPx4uMJg+RVBb3TWu7JqKu3Z5IAYkMi9GbioU30qtmkJJxUHAF4YBw744+vl/o
 UzoDCHcF35qNyEbw5qFN7nu7RsDS4tOsAEAAA==
X-Change-ID: 20260113-sm8750-camss-36b630cb901d
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: ZvjvzLZfUTll1ctpWBtjam85ggSmQg9v
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=69661e4f cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ZthKqu_aCWk3wB8NWGYA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: ZvjvzLZfUTll1ctpWBtjam85ggSmQg9v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4OCBTYWx0ZWRfXxPBKRmuIv5YG
 20ORHh+tZsQbgoQr+irzSJl5sZ3ya76QsvvXciczYs7T1sh/4l/Ez/LF3Fyvvw0xbg4J5U/oupG
 kd088tYWchrO3MBICzqzPcTM010P4P3ODMrV7nY7QFRff/FbaH87s9A/ah8B1+ih663El+PED9m
 Glsf9mrGIJgP3+ImirEtNHUTHbNSBYyphdMECRh5T/4qQIrqL49Nri6MRIktXmV8m7o1wQmG6Ix
 hFh3zf4/vwiKnZ2ZZniSy/GP9btC6vuLkiQnsAxNvkavwcYRMQgaCKtqcci38WOVGVrUeWyWqit
 HNDxX6F2u24zgCIpzYeQjyRh3sknMb4C4iDt2t9GpGtMz9GZEWdJXDH0wPxsb1ItrJ/mPV43172
 89tovUONCqaRx4ZHxtn9Vv7ToiI7NP4VkJIVVFuO0AfgptWpzsKZWz8CmizBfZYzaKfGvxoTob6
 bDLZIiSiwmsJsNekz7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130088

Add support for the RDI only CAMSS camera driver on SM8750. Enabling
RDI path involves adding the support for a set of CSIPHY, CSID and TFE
modules, with each TFE having multiple RDI ports. This hardware
architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.

SM8750 camera subsystem provides

- 3 x VFE (Video Front End), 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite
- 3 x CSID (CSI Decoder)
- 2 x CSID Lite
- 6 x CSIPHY (CSI Physical Layer)
- 2 x ICP (Image Control Processor)
- 1 x IPE (Image Processing Engine)
- 2 x JPEG DMA & Downscaler
- 2 x JPEG Encoder
- 1 x OFE (Offline Front End)
- 5 x RT CDM (Camera Data Mover)
- 3 x TPG (Test Pattern Generator)

This series has been tested using the following commands with a
downstream driver for S5KJN5 sensor.

- media-ctl --reset
- media-ctl -V '"msm_csiphy2":0[fmt:SGBRG10/4096x3072]'
- media-ctl -V '"msm_csid0":0[fmt:SGBRG10/4096x3072]'
- media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGBRG10/4096x3072]'
- media-ctl -l '"msm_csiphy2":1->"msm_csid0":0[1]'
- media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
- yavta  --capture=20 -I -n 5 -f SGBRG10P -s 4096x3072 -F  /dev/video0

Dependencies:
- https://lore.kernel.org/all/20260112-camss-extended-csiphy-macro-v2-1-ee7342f2aaf5@oss.qualcomm.com/
- https://lore.kernel.org/linux-arm-msm/20251114082649.4240-1-wenmeng.liu@oss.qualcomm.com/
- https://lore.kernel.org/all/20260112-kaanapali-camss-v12-0-15b7af73401e@oss.qualcomm.com/

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
Changes in v2:
- Update binding commit message and its description. Meanwhile, modify some
  property names to align with previous generations. - Krzysztof
- Update the vdd supply names with 0p88 to 0p9 in binding to keep such name
  style consistency - Krzysztof/Vladimir
- Add missing Kaanapali dependency - Krzysztof
- Add csiphy macro and new regulator interface dependency - bod
- Add regulator current in csiphy resource due to interface changed - bod
- Make csid board level code style consistent and add comments to explain
  the differences between csid full and lite configurations. - bod
- Remove reduandant initialization for empty set in csid and vfe - bod
- Remove DTS patch due to conflict with camcc dependency. Will post it
  as an individual series.
- Update vfe commit message as rename work happens in Kaanapali series.
- Add module descriptions in binding commit message and cover letter.
- Link to v1: https://lore.kernel.org/r/20251126-add-support-for-camss-on-sm8750-v1-0-646fee2eb720@oss.qualcomm.com

---
Hangxiang Ma (5):
      media: dt-bindings: Add CAMSS device for SM8750
      media: qcom: camss: Add SM8750 compatible camss driver
      media: qcom: camss: csiphy: Add support for v2.3.0 two-phase CSIPHY
      media: qcom: camss: csid: Add support for CSID 980
      media: qcom: camss: vfe: Add support for VFE 980

 .../bindings/media/qcom,sm8750-camss.yaml          | 663 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   1 +
 drivers/media/platform/qcom/camss/camss-csid-980.c | 442 ++++++++++++++
 drivers/media/platform/qcom/camss/camss-csid.h     |   1 +
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     |   5 +-
 drivers/media/platform/qcom/camss/camss-vfe-gen4.c |  10 +-
 drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 357 +++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 9 files changed, 1478 insertions(+), 4 deletions(-)
---
base-commit: 31d167f54de93f14fa8e4bc6cbc4adaf7019fd94
change-id: 20260113-sm8750-camss-36b630cb901d
prerequisite-change-id: 20260112-kaanapali-camss-73772d44eff7:v12
prerequisite-patch-id: c3758c408ebf6ab407b1977ccd51cd7179316c73
prerequisite-patch-id: 7bb9332e44b93bb9f063bfa0626dd38ff450aaa8
prerequisite-patch-id: eb308d8bf8e0f942d5a0dd1826cf3e1963b05378
prerequisite-patch-id: 8c62245a3b0a2527d4ddf47438926d3b1fe3ff41
prerequisite-patch-id: 36bed25998858225c8e1d6beeb977236cc1b76d6
prerequisite-change-id: 20260111-camss-extended-csiphy-macro-486b9f3b950f:v2
prerequisite-patch-id: 27c2ef96f0e747ec6b4bcf316d8802356e4cc3f4
prerequisite-message-id: 20251114082649.4240-1-wenmeng.liu@oss.qualcomm.com
prerequisite-patch-id: affdca1f0af770b95444f99c203d291bcc41ec9c

Best regards,
-- 
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>



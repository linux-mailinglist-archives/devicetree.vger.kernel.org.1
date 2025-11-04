Return-Path: <devicetree+bounces-234663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A505C2FA76
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 08:38:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6C0534F2081
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 07:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 437FE30ACE4;
	Tue,  4 Nov 2025 07:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aH54LJ66";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VZGZewj0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EC03093BB
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 07:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762241775; cv=none; b=BU3YFjGbDvgbqxjRp+JcEG7xk8UG9asDvbVA9Mwcdenj4Ehv75raiJ5QBlmMREzkxPstiWwbY7t76nTeiuHQf+Ggn3bDo6+xy6Nox1PEjwv7cekWW/JMIkPukVRQ+EKv63ezOrQ2g6tQ7vaoyXdYuT9GPXIhNsn0ZBQrwEcrttU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762241775; c=relaxed/simple;
	bh=PYgdWODPF2hrUiUKna10HhsqrP4JEaici/eVWAFFLdE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aYjRb0MGoPDaiFBls8XYIkvZlhjn8p3IPIvwN44IpF1KhoReD5e1t+tAnHXLto4YfC1v3FtYgpsYA2rfbOHDDN3RKm32dTiDkyaxcIWgdDofA44ThL02PX2dF2QjEqYyov+EAtrPLT+tJxfKNNxaCzd2pmw7jXYhTBImzXX4H5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aH54LJ66; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VZGZewj0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A437bA63744626
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 07:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=MF1p0fUeTLZIYkJ4TzotMj
	Yje6H0etAGaKEftDYwoiw=; b=aH54LJ66OXqURk9KVyAIzjV7QHILaLN6L/hwYj
	LVYkJTPQv8E8D2R3LTAMUlp4OQSwXkmaSwk+WWFl1bsBAUY1VSHzXph6bTXCToYy
	45i60rlQgZWiXV01/Wqeweifs+v702FxHT/FTona8bWQ2X85KeOKm1HVsLRt2ywh
	1RkGd3KjXn7uOKOvsqq7mEAyt2o68wFTcNPSYXO2q46pjIRPNNGg8tlj/t5z8gOk
	jzEwECYmb7mcZ5tcRpkJORGJQP6fxA+ysgyE7HF7PSJ2diChp9at6SQYkp/YxAch
	098HRdOl2ZR+KEnk/eNIZr0BCnV9YEO9R4+lesEtkGXN3zrw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70kca3gh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:36:11 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-294ecd3fdd4so61601375ad.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 23:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762241770; x=1762846570; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MF1p0fUeTLZIYkJ4TzotMjYje6H0etAGaKEftDYwoiw=;
        b=VZGZewj0lhO2Kry73MwCIx1vzD1Ejr6E0FiUQzI3x20BvBAMJtBjX/9GCzseDo4ISG
         AXOhKFEBGcvuxNOvjORFBvxMXSJqv3DG0AiiAw0DBunMBF3xnQ53/I9sOBZXjV1eMu2B
         dn8DAinlfpj23q7ATLxVJYH7NUWg3WhEFbGiLFMeBFk60vjqxibRsDEWUGi8calrtZg7
         CcNeEldtYQYHn8CoUVLRg7IthQj16sPVPHD7KWSHyVbtD1Z+mrfuvkyNSzll1dW2l4fm
         efEp3EWnPwCens/tKeMHVKV492z6eBNh7POh2KpC7XuehKTEwvXH/AMySo5afL6b73ZF
         TSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762241770; x=1762846570;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MF1p0fUeTLZIYkJ4TzotMjYje6H0etAGaKEftDYwoiw=;
        b=P9Ejdr6zwWk9LchYnG8evwpV6XsxPmfRhX9tYy9I3eLhdT7GIAoxboSmxBeePUK2DC
         wC6VeNeqogRuwbuSqEs3cNqV4ZrqnjuDqWY/bGjcmEk1rohWvS/syG0kvnFQLnM3ZlWY
         uNjy7aZyUuIE1xE9cpVCyP1NdKSC3XZ5ZUv1Gka1GmkTI6VTvV+6QELueqiHwp+DTbjk
         kWbf1V/kesRa0yeb29yDNzRdRLXZEBPkO0d8CHFl9QuYNjmf2BIkN9Ia4Or81BOtWrWT
         1pvpZRC+0PPMiRBoBm76AGkoDtPU+RczUI0fuwdQtI82LfZrrkz4sRIx+s3gS9zwdLmB
         G0Kw==
X-Forwarded-Encrypted: i=1; AJvYcCVd5tuaBPb36Pj3opzPWtooE5tK4qxPqjVWgILz1c4CroHOkpvSIsXb2VGClE/QlG9L9PHBieT1Deb3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0ek4eLX+o2txQg7NjZm28H3rnHxOHbUdumucopO4ugDWQO7xd
	dyl/xpC/Y8jWTVT5GubG24+JVEMzduIvrv+5ul9oHqOl0WRZMAEQueWqEBA6w3iieSME10ZdF0L
	4c2/FT8jKZgODvafqwQwRz6TMnYVHktK/8ioDR0lgo+6V2F8vIWpOb8mx0P2Kq3uv
X-Gm-Gg: ASbGnctsSzM2/FX2GgU9AMceM+PLOKvCma93N+cyjS5X8rVjba1hTuVjRHyJ2KA7WsD
	ADwubuhp/tWswzSvqTFgtC2WqAmg55L7aM3bI5Nd/sdgS58D62z5v3dbPifbdtQ7x6hvDm/a0NG
	PTStSlA8HzI2p6r1SwvYeJ5NxhLN+jzrsv/UrRnvFRZDd5yuSvT1vvUYyoxTGVEN7khAZ6pyYZT
	ovo9zVEA4DXXQsRscKiPxfYHgqwz3KrcOsXIZ2arK8aT2R0WYOPXsqkXHl7knMnKqTUUo+AV95e
	hPb+RxKwZF04tEyleK9aDz9hoNKM5Mhk5LQnzforKaAMEYNoHeHtUPVCyqJd1igLj+qYtdZ1tkv
	Th+ahHpD8iiYGY4sFRfhkxM4jeA==
X-Received: by 2002:a17:903:11cd:b0:265:57dc:977b with SMTP id d9443c01a7336-2951a504b0bmr222404345ad.61.1762241769742;
        Mon, 03 Nov 2025 23:36:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfXs5qVYibRyKAWTxMNpN/TUTjfYiRTWrx0SS2V/3p1/dmo/jNrJLY3DVOgshc5WeV+y+eew==
X-Received: by 2002:a17:903:11cd:b0:265:57dc:977b with SMTP id d9443c01a7336-2951a504b0bmr222403825ad.61.1762241769081;
        Mon, 03 Nov 2025 23:36:09 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3415c8b5cfcsm3484367a91.19.2025.11.03.23.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:36:08 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v6 00/14] Peripheral Image Loader support for Qualcomm SoCs
 running Linux host at EL2
Date: Tue, 04 Nov 2025 13:05:40 +0530
Message-Id: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAMysCWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyzHQUlJIzE
 vPSU3UzU4B8JSMDI1NDQwMT3eyy3PiigqL85PgyM10zYyPLVJMUU0uTtFQloJaCotS0zAqwcdG
 xtbUAFmPGv14AAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762241765; l=7461;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=PYgdWODPF2hrUiUKna10HhsqrP4JEaici/eVWAFFLdE=;
 b=hTMZDf/RtHgvUAXU19ylMMItcHW2B7FWUMgRB/gRQdm7HyWwS5tczW03Gj95LVJkOS++Ekcl+
 OjTmUzf3xi7BMbHP9gOIRuvIUXTrckZk9W5ft8KsuqHZPHVNlZkTyM+
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2MSBTYWx0ZWRfXydRh4FN9wtbI
 uh+GGYnx0lk36mNnyt0JA03NkXsR9i3mARv0zK7Gw4jsM04Mu+smZUCjRcN+HgRfuGsh9L1uBSx
 4y46CPL6VIu4ALRa2N2eE0M4YRfwzmBoZsVQFe+VUd4Nwh3fgi4AFvGWT3hjwn6wP1PlMCd3Doq
 0sAlN5JPSw5YLWu8DvEqAEAjS0otUqm67vjbxk33tiYIXsLC6c5Y4EfBaDHSsBrcFYI7Aq2H0bB
 ++ZTiZDIX3o8V0jk+6+udhHfrucvnI/f+f0Qr0uETuVPNj6nsSmsqM0PTvabqrBDpT/FozP3gcw
 XOOBgC372BAVGu+PVBUDuwJUyzz8F4hCVt0m62rLFEKw/Pul4of0N3eXC7pyODkuwww9Xer9eoT
 LskRtWpLO2KUVzPKwJKdBkddZ88pzg==
X-Proofpoint-GUID: TiEK9KghL4hA2Eln40pxvXtXdRnkTN8z
X-Proofpoint-ORIG-GUID: TiEK9KghL4hA2Eln40pxvXtXdRnkTN8z
X-Authority-Analysis: v=2.4 cv=TIJIilla c=1 sm=1 tr=0 ts=6909aceb cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=tWuNWFy3vQo5nIj7aw4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040061

In May 2025, we discussed the challenges at Linaro Connect 2025 [1] 
related to Secure PAS remoteproc enablement when Linux is running at EL2
for Qualcomm SoCs.

[1] https://resources.linaro.org/en/resource/sF8jXifdb9V1mUefdbfafa

Below, is the summary of the discussion.

Qualcomm is working to enable remote processors on the SA8775p SoC with
a Linux host running at EL2. In doing so, it has encountered several
challenges related to how the remoteproc framework is handled when Linux
runs at EL1.

One of the main challenges arises from differences in how IOMMU
translation is currently managed on SoCs running the Qualcomm EL2
hypervisor (QHEE), where IOMMU translation for any device is entirely
owned by the hypervisor. Additionally, the firmware for remote
processors does not contain a resource table, which would typically
include the necessary IOMMU configuration settings.

Qualcomm SoCs running with QHEE (EL2) have been utilizing the Peripheral
Authentication Service (PAS) from TrustZone (TZ) firmware to securely
authenticate and reset remote processors via a single SMC call,
_auth_and_reset_. This call is first trapped by QHEE, which then invokes
TZ for authentication. Once authentication is complete, the call returns
to QHEE, which sets up the IOMMU translation scheme for the remote
processors and subsequently brings them out of reset. The design of the
Qualcomm EL2 hypervisor dictates that the Linux host OS running at EL1
is not permitted to configure IOMMU translation for remote processors,
and only a single-stage translation is configured.

To make the remote processor bring-up (PAS) sequence
hypervisor-independent, the auth_and_reset SMC call is now handled
entirely by TZ. However, the issue of IOMMU configuration remains
unresolved, for example a scenario, when KVM host at EL2 has no
knowledge of the remote processors’ IOMMU settings.  This is being
addressed by overlaying the IOMMU properties when the SoC runs a Linux
host at EL2. SMC call is being provided from the TrustZone firmware to
retrieve the resource table for a given subsystem.

There are also remote processors such as those for video, camera, and
graphics that do not use the remoteproc framework to manage their
lifecycle. Instead, they rely on the Qualcomm PAS service to
authenticate their firmware. These processors also need to be brought
out of reset when Linux is running at EL2. The client drivers for these
processors use the MDT loader function to load and authenticate
firmware. Similar to the Qualcomm remoteproc PAS driver, they also need
to retrieve the resource table, create a shared memory bridge
(shmbridge), and map the resources before bringing the processors out of
reset.

It is based on next-20251103 and tested on SA8775p which is now called
Lemans IOT platform and does not addresses DMA problem discussed at
[1] which is future scope of the series.

Changes in v6: https://lore.kernel.org/lkml/20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com/
 - Added comments made by Bryan to save some cycles and added in 2/14
   which could change patch order.
 - Renamed qcom_scm_pas_context_init to devm_qcom_scm_pas_context_init()
 - Replaced devm_kzalloc with kzalloc for output_rt in scm function as
   remoteproc framework does not usage devm_ api for resource table
   pointer which is cause mem-abort issue start/stop test.
 - Removed union usage and redundant code from qcom_scm_pas_prep_and_init_image().
   
Changes in v5: https://lore.kernel.org/lkml/20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com/
 - Replaced minitems with maxitems.
 - Addressed comments made by Bryan, Mani and Konrad.
 - Fixed some of highlighted issues in v4.
 - Added a new patch which removes qcom_mdt_pas_init() from exported
   symbol list.
 - Slight change in  v4's 5/12, so that it does use qcom_mdt_pas_load()
   directly while it should use in the commit where it gets introduced.
   Hence, reordered the patches a bit like v4 5/12 comes early before
   4/12.

Changes in v4: https://lore.kernel.org/lkml/20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com/
 - Fixed kernel robot warning/errors.
 - Reworded some of the commit log, code comment as per suggestion from Bryan.
 - Added support of gpdsp0 and gpdsp1 and disabled iris node.
 - Add R-b tag to some of the reviewed patches.
 - Rename struct qcom_scm_pas_cxt to qcom_scm_pas_context.

Changes in v3: https://lore.kernel.org/lkml/20250819165447.4149674-1-mukesh.ojha@oss.qualcomm.com/
 - Dropped video subsystem enablement for now, could add it in future
   or on a separate series.
 - Addressed most of the suggestion from Stephen and Bryan like some
   remoteproc code checking resource table presence or right error
   code propagation above the layer.
 - Added leman-el2 overlay file.
 - Added missed iommus binding which was missed last series.
 - Separated qcom_mdt_pas_load() patch and its usage.
 - Patch numbering got changed compared to last version

Changes in v2: https://lore.kernel.org/lkml/20241004212359.2263502-1-quic_mojha@quicinc.com/
 - A lot has changed from the V1 and a fresh look would be preferred.
 - Removed approach where device tree contain devmem resources in
   remoteproc node.
 - SHMbridge need to created for both carveout and metadata memory
   shared to TZ in a new way.
 - Now, resource table would be given by SMC call which need to mapped
   along with carveout before triggering _auth_and_reset_.
 - IOMMU properties need to be added to firmware devices tree node when Linux
   control IOMMU.

---
Mukesh Ojha (14):
      dt-bindings: remoteproc: qcom,pas: Add iommus property
      firmware: qcom_scm: Remove redundant piece of code
      firmware: qcom_scm: Rename peripheral as pas_id
      firmware: qcom_scm: Introduce PAS context initialization helper function
      remoteproc: pas: Replace metadata context with PAS context structure
      soc: qcom: mdtloader: Add PAS context aware qcom_mdt_pas_load() function
      soc: qcom: mdtloader: Remove qcom_mdt_pas_init() from exported symbols
      firmware: qcom_scm: Add a prep version of auth_and_reset function
      firmware: qcom_scm: Simplify qcom_scm_pas_init_image()
      firmware: qcom_scm: Add SHM bridge handling for PAS when running without QHEE
      firmware: qcom_scm: Add qcom_scm_pas_get_rsc_table() to get resource table
      remoteproc: pas: Extend parse_fw callback to fetch resources via SMC call
      remoteproc: qcom: pas: Enable Secure PAS support with IOMMU managed by Linux
      arm64: dts: qcom: Add EL2 overlay for Lemans

 .../bindings/remoteproc/qcom,pas-common.yaml       |   3 +
 arch/arm64/boot/dts/qcom/Makefile                  |  10 +
 arch/arm64/boot/dts/qcom/lemans-el2.dtso           |  41 +++
 drivers/firmware/qcom/qcom_scm.c                   | 387 ++++++++++++++++++---
 drivers/firmware/qcom/qcom_scm.h                   |   1 +
 drivers/remoteproc/qcom_q6v5_pas.c                 | 166 +++++++--
 drivers/soc/qcom/mdt_loader.c                      |  43 ++-
 include/linux/firmware/qcom/qcom_scm.h             |  30 +-
 include/linux/soc/qcom/mdt_loader.h                |  22 +-
 9 files changed, 593 insertions(+), 110 deletions(-)
---
base-commit: 9823120909776bbca58a3c55ef1f27d49283c1f3
change-id: 20251104-kvm_rproc_v6-6329e4d594fe

Best regards,
-- 
-Mukesh Ojha



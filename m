Return-Path: <devicetree+bounces-250790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D007ECEBDDD
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A3403007DAC
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F4CE3112AD;
	Wed, 31 Dec 2025 11:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pc/3j/8M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qwz90ERg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF74A1C84DC
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767181614; cv=none; b=izyqhZGtkN0t1jadxJesXqLHERy6xUym2uVEyO7XYKnQsfcq1al22PAzfotOqATZxBxEf2WihDUWZnEhN72oIQL2TGgLsP7c7fjOzhaS7ZowIE/LaCR7/ItXKYNO0kO97A67Wzu7RcyUW6meHqVKefaXCECNwsuP0V2toUEmMUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767181614; c=relaxed/simple;
	bh=icq8oBIEZNaQtIkrr06l10gJ4Zw/eBRVfxPi1bY6H4A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UQejGU8sndEgU4Jt6PMiaNp/I/rz8xpFXTlwbYsCe0PjrSuzQ5AB5djCIkypGhQkLY6Cj3umunbfNUFjCEYmHhtJMlnA2zgQNW0P4OXpYWoDVl7LN/CoFWqmyLiEXTmuKorNuyjzFeBsofnnvWRwyhzXhJ4nNvQCV4j2vm8jFLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pc/3j/8M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qwz90ERg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUNBgsC1752576
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=4wtWHNdnj7HyKUYlv7R3RCMlZrGCa91AdJN
	fLl31hIg=; b=Pc/3j/8MXvYKxrjNdU2v/W/5qOguj97a6O6xODTlvuo9ss+ENAd
	NxOsSQlFJ8fTsevXk23r19kCxnsC91RRlox4RHta42i0n9YEvigjr8SQzgmMIw+3
	zR5wqaiEuyc0arBPelZYKw9yvIbFdnf58f7aK/ND0eMg23YZxZ7zMMRl2pwJGNG0
	pIp9xBd5QKm3i6j5nKp6KLbNN523kh48pED0fPZHv/wtiaTDkBfKb2WiKmQzWFyc
	eLvnzkP8BY/tC4p+g3WkQpvz1gazy4ziEIjZCFVAA1Iducwr7hGnpPIVhCTwHF09
	VL9bzG/GWKtzbpXEAQS2gc4n/sWTqTNFoeQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgv880-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:46:51 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-804c73088daso5046254b3a.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767181611; x=1767786411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4wtWHNdnj7HyKUYlv7R3RCMlZrGCa91AdJNfLl31hIg=;
        b=Qwz90ERgPPnp3E0rZG9+Pg1KdZr9v/4F6PCUEuiv5X9tTjlxh34WO2Trpau9SX4LlH
         CIb7Vc7zK09b3qVer5mbtgOUcOnwnbu6/VyVABqx+vXu4wE8rDpO3XuDziK5bx/gac/0
         k4K3SOPygfjgimabYak4ndd9rKC+3kkppPthKfciVLO3jzMdxdLyN5o0Yp4AJ4BLkkTc
         z8NTUgEVTk0znxP2rEz7t4Vlq9t4z0q+Q/zXiNBhqRMkj05G80kU/keESzWpe786x7Kg
         kSRA4T+krF1+IfBZA0r3Ieqy+0Rk2YmOPhZQIoX6l67QfRuHZMzzGpzzFl9bmzqOEPcf
         xGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767181611; x=1767786411;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4wtWHNdnj7HyKUYlv7R3RCMlZrGCa91AdJNfLl31hIg=;
        b=Wu8mo5ni0JwWOpARvf+jZPBqCxQW6+7bBuhOOlurHmbBEjkSbH7GXX8NjaUJJPsy8m
         aqO7hLBzkcIJix3f2UaTJVhihNdq2CCmQvAe2FQehcUzyJ5cpVq6S2ZQi5lFhDbNlJ3c
         tLrvl4abywSn5TpB8AyDAszGYwqolanQD3SSuHr5tY1MS0jIau0Ph+2b9owao8Jtzy0K
         /TiZdwQH7x5z+pn7MS6vBpWjTRIsTFQqvIz48oGYNXmnUKm8XwpiA0HsFTb3AsHPljT9
         K3DlxEZ22bRyvIHx0j2HT1jwHfixu96lUAZ7Io28LTbNZERDy6/vtq4lMy66B+uXKhPM
         INUg==
X-Forwarded-Encrypted: i=1; AJvYcCWAznrQsMmWt057xRwIXu6Hm/xKNXNH31IE9LGYLzsGbkyOhzx9aSRU8rCkshJFrbBsj7CHzzOOMgrm@vger.kernel.org
X-Gm-Message-State: AOJu0YxSBjIGHUGOAH9VJVe5MSWj3+95uaZrcj2Pd+d2IRN/RX7e1j27
	Fbw2sd/gNGJyZwlwkxib+YquXnqnx0zhsIpmQSF023Mm8lkQf5RqShhe4t8h+w80QTzGVSwlVsi
	GxqFQS3asNRVr+7zolgdpk8UfEDBB6tt5JyBqQZeKZjq/t7teTZp0jU1Tku7zxEdI
X-Gm-Gg: AY/fxX4+vbWFIvSH7ddZQnXD+/mAU8RRpvVGvJIQlDudldoduRAjtpXwHb7UDOxzPAD
	zgLjSbpQ/CNwX490SnY/lpU8GC+Jidifwd9+tXPMelVGf2dF7yuSXisGHdEU//GRlA+oNUVqcmP
	e00vceIZIuNrkqBmuVv7LZsw0NdEfQsQK19pGVs2F9ebTMA/sWSm9FiMOoRaDLzOPdpVnhFwTux
	shfb2rVVPsqG+OYpjcKq1v7+8THRL7IQoTCESN+ZI473cGn0kipOChEyNkRDkuQKaSdmMwiIl54
	266aTlfut/NKldpCIJQ6qsTO01vbuGpXy0pNR7/PRZN1tgkPuhHfi5XN03jfNHaLilomduluUtJ
	EdHtGlOFvbA/6cizLR/ds0SSz/GfBtRZBLSYNKMIHPq5B
X-Received: by 2002:aa7:9903:0:b0:7e8:3fcb:9b0b with SMTP id d2e1a72fcca58-7fe0e8319bfmr26682357b3a.33.1767181610555;
        Wed, 31 Dec 2025 03:46:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEX6tTbQ8KPqPgNAZDRaZLP755a6vpD2bOtPWLbcWFcrVkWypmZyp5jk16RRr/0AuUA24MjKw==
X-Received: by 2002:aa7:9903:0:b0:7e8:3fcb:9b0b with SMTP id d2e1a72fcca58-7fe0e8319bfmr26682339b3a.33.1767181610001;
        Wed, 31 Dec 2025 03:46:50 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b5236b5sm34815656b3a.29.2025.12.31.03.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 03:46:49 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v4 0/3]  of: parsing of multi #{iommu,msi}-cells in maps
Date: Wed, 31 Dec 2025 17:12:54 +0530
Message-Id: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwMyBTYWx0ZWRfX0YXBcupQg+lF
 P/+zbn87qIy7AXZWLS+7MByKLemRx6U/aOQc1JkqReSc66cDrYtnc4FxsgYP05gS/2st/QVLFqv
 dExH2RIzVfM+X2we7pQxVWTmFnBG2eLi1ovBI58fhNYPSHPVXq8QQCeQp7kuz7klZY0h57ObCS9
 K1UV8jUC9wua6EVkmQSorl1uCRK6+OcEPZBmZgjMcRPMf4p8lxWwIA5GMeJWGLCOjFUeda8Unso
 D0l2jGEF1F54YLpGP8pEOiUDeqXBPgVWtKrOqOo2HNJ4Yl3ob//pP3lyKLNZQSzvZu4jEvcTyr+
 Jze+YMerydFzBhNZ37Oxu0hCmtXTqvpY2AGSFHJODrgea1IYtWKmHfJhuVZgIeSyeDHH9OQYvKZ
 ufLZIkH/MKJMb9SQPBz5HhX/+AvzA9WDyswCk698J2W7mnPsqKXlTPQUenjAJxWqOavV4fcLsdi
 20xACGngf8yke8YcHJQ==
X-Proofpoint-GUID: EqiBDfWFfuN7SMelYuqkwNvoIpTGSWy9
X-Proofpoint-ORIG-GUID: EqiBDfWFfuN7SMelYuqkwNvoIpTGSWy9
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=69550d2b cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=bPDH9HW4QdDYPu8zaOwA:9
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310103

So far our parsing of {iommu,msi}-map properites has always blindly
assumed that the output specifiers will always have exactly 1 cell.
This typically does happen to be the case, but is not actually enforced
(and the PCI msi-map binding even explicitly states support for 0 or 1
cells) - as a result we've now ended up with dodgy DTs out in the field
which depend on this behaviour to map a 1-cell specifier for a 2-cell
provider, despite that being bogus per the bindings themselves.

Since there is some potential use[1] in being able to map at least
single input IDs to multi-cell output specifiers (and properly support
0-cell outputs as well), add support for properly parsing and using the
target nodes' #cells values, albeit with the unfortunate complication of
still having to work around expectations of the old behaviour too.
							-- Robin.

Unlike single #{}-cell, it is complex to establish a linear relation
between input 'id' and output specifier for multi-cell properties, thus
it is always expected that len never going to be > 1. 

The motivation for this patchset originates from the multi-map use case
described in V1, which will be addressed in a subsequent series once the
current fixes for iommu-cell handling are concluded.

These changes have been tested on QEMU for the arm64 architecture. We
plan to perform more extensive testing based on community feedback.

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

V4:
  1) Added Reviewed-by tag.
  2) Resolved warnings reported by kernel test bot, minor code
  reorganization.

  Link to V3:
  https://lore.kernel.org/all/20251221213602.2413124-1-vijayanand.jitta@oss.qualcomm.com/

V3:
  1) Added Reviewed-by tag.
  2) Updated of_map_id_args struct as a wrapper to of_phandle_args and
  added comment description as suggested by Rob Herring.

  Link to V2:
  https://lore.kernel.org/all/20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com/

V2:
  1) Incorporated the patches from Robin that does the clean implementation.
  2) Dropped the patches the were adding multi-map support from this series
  as suggested.

V1:
 https://lore.kernel.org/all/cover.1762235099.git.charan.kalla@oss.qualcomm.com/

RFC:
 https://lore.kernel.org/all/20250928171718.436440-1-charan.kalla@oss.qualcomm.com/#r

Charan Teja Kalla (1):
  of: factor arguments passed to of_map_id() into a struct

Robin Murphy (2):
  of: Add convenience wrappers for of_map_id()
  of: Respect #{iommu,msi}-cells in maps

 drivers/cdx/cdx_msi.c                    |   3 +-
 drivers/iommu/of_iommu.c                 |  12 +-
 drivers/irqchip/irq-gic-its-msi-parent.c |   4 +-
 drivers/of/base.c                        | 145 +++++++++++++++++------
 drivers/of/irq.c                         |   3 +-
 drivers/pci/controller/dwc/pci-imx6.c    |  10 +-
 drivers/pci/controller/pcie-apple.c      |   6 +-
 drivers/xen/grant-dma-ops.c              |  21 ++--
 include/linux/of.h                       |  36 +++++-
 9 files changed, 169 insertions(+), 71 deletions(-)

-- 
2.34.1



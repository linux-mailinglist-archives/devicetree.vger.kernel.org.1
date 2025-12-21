Return-Path: <devicetree+bounces-248605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1037ECD45EA
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 22:36:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58F6E3002504
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 21:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63BD824BBEB;
	Sun, 21 Dec 2025 21:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J7lyaHVn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WjfcPgl3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF66023F424
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766352984; cv=none; b=B/ddAhZKOgdOBNXslxedsfk+Ntzpb2GNPxrwkV679x8KowzMzMO6Kik0Ya5ES4Sa8WcFEffaOBHXsoVZw6cm2SiARPcruHvwK/5hn/BMQUxwfrT1djPkzY4JPVIsYUH87ujLm0wPoBp1znDV8kH53fyZ5+1YgvVqDICueghnBgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766352984; c=relaxed/simple;
	bh=b110ENDdUgcv9jO9PdxYXwCXg9CPeAc4gSTCvASmh3Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hVNLGlnd7Riqjt3H1YdEt3ucU6WVys/9Qo8ylXMlGtJal08aVaMWq4cOGlxIWckJZZaCe0LsVt06waxYvrb951rCoyA9PRX4zoYxGsIEcYmSsaeBs9Sgd5DDz5+fcvPxwVQDDKVsw869e2hIvKqJ4d9JusiyJxgKhTlzGTOW80g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J7lyaHVn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WjfcPgl3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLKcl4A3540948
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Bugy/ehY+LAtGgbSuucEifamuoZZZHBlyip
	0eUiB9DI=; b=J7lyaHVnWr0thJntlo/HSC/3It0cPggFJdULoNHmTOzV51J4Lcg
	rc059s5LdsxWeM9vC+k1h0tmov4+b325Eov+dgrzXIVV77UmvV4mThxTe4XwFmL1
	FQXcR9MFL59EDWeX0uf9Lyblwo5n0+kTwWCtlGSE6tByowfJ19cyvU4ha4ZmQ2qG
	12p/EGNwktVGQXSGJ3JSUM10xOeQ47mIWcyu4nwYuTThuz2At7Bb5p3oUuMLLN5h
	iHHbiGe236W606yZNLuT11ZaPJO0FxjrvaAHNExOSLkDyEyTcpLDmHBtTLYw70N+
	ykJ0I9IlETFvhfJuKy4GbAtdI/dGCeHl77w==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mru2x77-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 21:36:21 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34abd303b4aso9549275a91.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 13:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766352981; x=1766957781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bugy/ehY+LAtGgbSuucEifamuoZZZHBlyip0eUiB9DI=;
        b=WjfcPgl3Ku5eyFJYszf/hxJSdIuH1nz7P2y3TWlVuIdUPjNoBtTBoyHgQUvQ0/r7c+
         o3jEhMOs+TY6+6QlpObrprCsbsIX/XItRs3Oemuv63i6rP1lO2rp43hdSTUYCWnXqhrs
         y525d6buhpEojPSip8EdiKJ46uHxiYwAn4bth0gt0U20+vm65CsZa0mXW+xaFOBzFs4l
         o7ONTnEgL1nMWCDuXHa6ryrbZpMwko/DTLM3I0Mvy2u1u96HtZjXAbDjqiW5tL2ga8Oj
         6pm02Oz2ovladfjlXNM0JMbeRX0gskrQ+oCA+qqbVE6//6p1NqA5idspkKdE8vRNDGIH
         7RmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766352981; x=1766957781;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bugy/ehY+LAtGgbSuucEifamuoZZZHBlyip0eUiB9DI=;
        b=vUDxG9L3MLSAsHkniXl+alpRqep8SiJHiLjPg3h/eqcuET8gvP3c5Xuvbzw/RkP/EI
         WBuOvwfzUwxQMQ21byt6xh5NzEu9erBQWmwZuigoq4WE1SZ0L+wGEZH1ja3Hvx3slPV1
         lePl/YeQeZxhvuKpkkEtjZ7teL6qbvhXwfP2fofudI3Wgea5eBszz4D7fNcoVbwSM+k5
         WuOiCZv2CB3NqwX2lEvyTFZU5U7S/EqOHMzdMWnqgozsWbOyY+QPfZQFwDpi7mNTRJs6
         M5Kug5tkK3lc3rhbJulGY/Iwp5mjErdIhJeb3SqzBw917WRN2VzzOiImX9TDUDYAhicH
         A1ew==
X-Forwarded-Encrypted: i=1; AJvYcCWRE3AfndaitwjdR5Uj6QsPNsMS82GHyOpB8E9mGbFeOSAtoDmkc1R2N5AtrVJgb0+vRri/+OWsh4Q8@vger.kernel.org
X-Gm-Message-State: AOJu0YwpEW6PjN/BHN3PLzsfYnWsWu3Nw8AVYx813rsIWQXvoHzSn41q
	lD9JaKdoun3ltipDXp5mKQKWlc4lC+MB/j3EZkjEyGdeFPKtRMx1XGYz0zE85icuLoq/5Q6KpR5
	U0grwWkX8nn8XD5mBfYn8j7BV60Cz1k7/kxwxvDbJuoveCkBWkquw8S8gv51fpgF+
X-Gm-Gg: AY/fxX6cSD+H5wme4RHqyELQo2MOYhaYsdtSIjspPA1887t1hYfVJizzLkD4fthVDYF
	W24LEc69r4iae+HUhrr2V5kR4+ewpnHFy3jK+GyZMrrV6UU5AYroEnIlQzFHBSxz/qAGmQQqAmD
	na5CZUwsSSswmylse1mKZGZgtCgjxD5zRzk1RSfE7vPcirS26u4IIw7nwvW/nBozkvh/AQmss+t
	dUnZKL2Fx2aXzgj4a/pYeO0LmCWDp/wVBaoFQb7p5kqdgGRowP1Ik2RumUmtiaGVW/A1ptFh7bk
	bp6dhiAdUyICOVZGCrCSdRS3GtmbWo1DYmPHauM3PWqiXbq36cTg3PoCx9VeBnmisMO0sQEGAeO
	wmQb1/TB3h/GoouwKtPwJUisJNI2g8vn4ByVA0vUcFKGV
X-Received: by 2002:a17:90b:28cf:b0:339:ec9c:b275 with SMTP id 98e67ed59e1d1-34e92121d91mr8051948a91.6.1766352981101;
        Sun, 21 Dec 2025 13:36:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfS6eBZ1q2a9KqwpQ0uemvbQt/xtjJ1P6fFJMLIXJZ3eTW5mCzUy//k9JpPpmjSw8Lx9O9HQ==
X-Received: by 2002:a17:90b:28cf:b0:339:ec9c:b275 with SMTP id 98e67ed59e1d1-34e92121d91mr8051924a91.6.1766352980591;
        Sun, 21 Dec 2025 13:36:20 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70dcc7c8sm10950163a91.15.2025.12.21.13.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 13:36:20 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v3 0/3] of: parsing of multi #{iommu,msi}-cells in maps
Date: Mon, 22 Dec 2025 03:05:59 +0530
Message-Id: <20251221213602.2413124-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIxMDIwNCBTYWx0ZWRfXxdaSTrdW0/mN
 TTB2JnlFLEdJgLxVvq6pFz3Zdox9GHWnU9nTvijCibolQOft2XlWI+LuQN6Waokqd3cMpsaSnTG
 5oXGWC0AXxZCt8gVeISHkrVWoIGi9/9BJHzWh4RBZgtLTu4QOLF/eSrTbomYLtNXpgvpcAGibKe
 0kFT3fFhITcJW03lbS8GQRGSROw19v2LD4vHSk83kTqapewEcU3Ing/1z+I1wYpc2tJlFoKfJ/m
 U0ZtbQkozHOY0iuw4of+PRwboX/B/sBHtqJTfJ8htxE94YvT12e+0cxQH1wXsEcsbXcR9J1UMnI
 oA1C2Spm3H1sV0rK/0gb3v2OUThbzPI7rH5E642Dq7kWB6mLhPkTOhWVz9XhU62KudSNzNLihBY
 7i/SdEXtnvky6+4TRKKWLeTdcgiFRiKv3WX11+gA3DIL3Aue2f5wbxnEFc6PzppFaFXhBP/YLqQ
 gyiqd/EZx1g9/+ukSRg==
X-Authority-Analysis: v=2.4 cv=VMnQXtPX c=1 sm=1 tr=0 ts=69486855 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=eQMVBvNRXY1Htgy04vAA:9
 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: IGwMQhclKEa9HooGCxTsYwo5p_VrfMhC
X-Proofpoint-GUID: IGwMQhclKEa9HooGCxTsYwo5p_VrfMhC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512210204

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
plan to perform more extensive testing based on community feedback and
are sending this series out early to gather review comments.

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

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
 drivers/iommu/of_iommu.c                 |   9 +-
 drivers/irqchip/irq-gic-its-msi-parent.c |   4 +-
 drivers/of/base.c                        | 147 +++++++++++++++++------
 drivers/of/irq.c                         |   3 +-
 drivers/pci/controller/dwc/pci-imx6.c    |  10 +-
 drivers/pci/controller/pcie-apple.c      |   6 +-
 drivers/xen/grant-dma-ops.c              |   5 +-
 include/linux/of.h                       |  36 +++++-
 9 files changed, 161 insertions(+), 62 deletions(-)

-- 
2.34.1



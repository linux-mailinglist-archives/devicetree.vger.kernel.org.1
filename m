Return-Path: <devicetree+bounces-230742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8A7C0559F
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6DEB24E9C73
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0268330ACF2;
	Fri, 24 Oct 2025 09:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pOKp6tFC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FA130ACF0
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761298412; cv=none; b=X0jzRbxiitjhByD/jq+XsO4QCfpDDHekdsUnlJPaC8vQgK8xbHT3s5UUZS+UwMHyhSgnRSvKNCqDRGMEjtiaI84AS0ohkNGou/ptxIiiQMi+kW1Qd2tvgQD1/zXcAnqbu1kNls7Xlql7ga6XnrRmmGii9mPwVppV97+5a69lMd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761298412; c=relaxed/simple;
	bh=1F/bOC1u+dd7k85JkzWqGYTh8WfFn5USpjGuw1f3Yo8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=N7GTWufJHG5tePiWyyraszmIqh4ktjimAJD8ec+10w3fn1p5nq7YV+TCoS4qVbrBaEtqoENRu5eNfkoVQzEr6bYdHvyz5yiWZfOozwqPK3Eqe4iNzr+Slj3AWmZTzmRuv6m+VT/0Evx2tW2zKk5MjBd6XeSVSZDc+Lwyi4Gzy8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pOKp6tFC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FLAW020354
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:33:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=YO9TAozxQPaIYyc/aO4jrm
	iGnNWUBU4qf6V4+zkkWYM=; b=pOKp6tFCjDR+SQpvQbEIzNnJnxRHIPUuZq1T36
	am6vkIHHOcSvjut8QJPe7B0m/1M8h0EAuhzGASQq1NiM56XTnCkiSy1WJ9uhXpJa
	/5eGonpz1nYWE5HKjcTViHAe5v7a4PUG7CczcItm8XP6uIgeLpayVNx3PsleILOK
	TwBuWB587z899IevxrfVKDjM6/h1qsKUyZqKbBGW1KmyMQCPTcsqUM1gy/fMp2KL
	xDSEqtVShAIeN1qXN4NAeUEcSMk+ttnz8kCgQKN3Q2VTxbIKq34Hv/GSxfH74kIL
	PxPU8vNS9eKRyZ6dKnf+rFb+DUhYZLJkA6Mw8gGKcXIiicGQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0shh7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:33:30 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-792722e4ebeso1652992b3a.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:33:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761298409; x=1761903209;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YO9TAozxQPaIYyc/aO4jrmiGnNWUBU4qf6V4+zkkWYM=;
        b=S9nasM8dxQad0Xv02UvEIHOT9lw0Vz2n3ctkVEbgtzrNO9SF8FT0dQ/mVfTCt/ERPr
         YapiOMc+lekB+VlKESgGerzjE0B6+pIws+ayiuwW5Tu26Y4Z6GDexBdTHz/43KTzaQ56
         CNdu21Xuga57b+6dIg7DE9dXJZLSQNosou7kQu3b5gQLDpa9DBZ0zDrCoDvF6cgMuL1I
         0w7RirmjEVEBbKL+0/xsPQum0T2IccI6MA7E6tBLGscHqULbJrHuSCx6Io7na1t88cSh
         D6LhYVb+0SpboIRZ/07+/eE/SEz653Kj6XiUerQOATHgcbKVs2nMpMQxjHUbcQc5OuDs
         e5GA==
X-Forwarded-Encrypted: i=1; AJvYcCXrhZ5sc+VW/BLohg/6z7xxJuJewIURnL5etSGOcOBVoLhh/LUnhBRxZqZxVEmJQLwWu3S/IRwVgDZ3@vger.kernel.org
X-Gm-Message-State: AOJu0YwszrozCGC6b1jW//PL4A/oeTPQ3nr596GCU3BLmyAveH14ZJuz
	qUol5ej+oakq0041EuSW/LNVKj5dvJx8hTZLSh0JyYkBZfrq4SM/dVcoFVVJyIwHiwCnRxxXgLU
	u0cAUwKyscDTq3zX3CdWtAry5zZWM+ofy4SR3N6lITeicOxeasgKa0GdeeXdl70Mo
X-Gm-Gg: ASbGncvc5pFUEYqPL2mxSA3GUsuPzLRvKSu2jID5OxFqesmVuloZaH5sAT+sx/8In9o
	ENttLKZ84CFHhTRiXmVpnYmJcLCmyhmobLCt21gqmJPpklqNG3tn834Vs3+9mN+GGor5nzWPfQG
	ZdcdSCjBpRlYSaL/UQUjvsmWGYnv48TE/D7BF3fGWu5BaqMFt7mR0xQxdQ9DXCkDsJugr6+tMXH
	nSnMY5f1kUz+DMR7OOKgfMa0HILRfSFPPaVK6TMvuckgmV/oTqRiwm9JKIMvp52yBquG7smnRCB
	QMNjoAV2VreQshquGA4qoxZji98p36EzHID+iNKZ27bmvcki5e46HVU/9UAs9sZnNWicE5dxUn+
	O3rP3lZpQoD+sMmrDjO55E9l9sURbi0oESQ==
X-Received: by 2002:a05:6a00:399f:b0:781:269a:8fba with SMTP id d2e1a72fcca58-7a220acb317mr25549322b3a.20.1761298408616;
        Fri, 24 Oct 2025 02:33:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeLcfx4tP0pbMJFwOSrUV/QAjUpoIDCB+tGuZMc8V2BMluJYGi8w+PUsr4tHo8KNbdG4Exfg==
X-Received: by 2002:a05:6a00:399f:b0:781:269a:8fba with SMTP id d2e1a72fcca58-7a220acb317mr25549298b3a.20.1761298408124;
        Fri, 24 Oct 2025 02:33:28 -0700 (PDT)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274dc33easm5270332b3a.68.2025.10.24.02.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 02:33:27 -0700 (PDT)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: [PATCH v3 0/3] spmi-pmic-arb: Add support for PMIC arbiter v8 for
 Glymur and Kaanapali
Date: Fri, 24 Oct 2025 15:03:20 +0530
Message-Id: <20251024-pmic_arb_v8-v3-0-cad8d6a2cbc0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOBH+2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAyNj3YLczOT4xKKk+DILXSMzE3OLJBNjI7PURCWgjoKi1LTMCrBp0bG
 1tQDcVhZVXQAAAA==
X-Change-ID: 20251023-pmic_arb_v8-26478b4326ea
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Collins <david.collins@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761298404; l=2523;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=1F/bOC1u+dd7k85JkzWqGYTh8WfFn5USpjGuw1f3Yo8=;
 b=G91hu3EShMpUYTRa45Ca8aSQHbKjcEmYrYh91gkR6ipK/bVmfcCj1qoN01SgCIhoyaQqIRUEc
 P+pqdZEwfV/Am3ozdBsRpUeX52OD8Yyd9nU/ziDEZtAHBxWa1miDpNL
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX448W73cVKh4n
 927KIrm8bvhX6aNDs1ca3UPo0tnNoxbrtZQV9kbZ1f5PYzwUsU6nxnyBBHpX4V+M3YsiziTJ6Op
 agjTC1frwkjSqvaTX84AnN3WKlM9wre8AdUo8Q7JcKYiDFZFKsxQkiRWqHpNTGx0p8NDEuDd+j7
 UrZq1v2tz3iHbRLzLbwR51sifl1O2BxVOhyJisR5e+FjegO6oEXP2rrp7ZeDjvt5QCo14ax7tbA
 XR/bQHyjjYGM8igAE4tj7Vz74Z090tZHU3beO+sLzZUTCdwt1coQ6yiXB5HEsdzdKaqJ36mGB+/
 o+NpKAHtP5HNJad/fMQMOZQNv5ThC/XC4jXcuxNSimSH9ji4owjeLoZ7Kz2dhnNmtflMHPROyU3
 BA1l67bf13sjKPAPt/GgAJX1aIq8Cw==
X-Proofpoint-ORIG-GUID: jw2FTXZL5xktK5sYEaiJTFWYaHbayQM7
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fb47ea cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=I5knT2SEtGqtceWXJqwA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: jw2FTXZL5xktK5sYEaiJTFWYaHbayQM7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

This patch series updates the SPMI dt-bindings and driver to add
support for PMIC arbiter v8, targeting Qualcomm SoCs Glymur and
Kaanapali.

SPMI PMIC Arbiter version 8 builds upon version 7 with support for
up to four SPMI buses.  To achieve this, the register map was
slightly rearranged.

Device tree changes are not included in this series and will be
posted separately.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes in v3:
- Split out some common DT properties into separate binding file and updated
  existing files to reference the common file for properties moved out.
- Also updated Glymur binding file to reference above common properties.
- Kept David Collins alone as maintainer for new binding files added.
- Squashed kaanapali compatible change shared as separate patch earlier:
  (https://lore.kernel.org/all/20250924-knp-spmi-binding-v1-1-b4ace3f7a838@oss.qualcomm.com/)
  into Glymur binding patch.
- Corrected comment formatting in drivers/spmi/spmi-pmic-arb.c to fix a
  kernel bot warning.
- Updated definitions of spec_to_hwirq() and hwirq_to_*() macros in same file
  to fix other build errors reported by kernel test bot and removed a comment
  made irrelevant by this change.
- Link to v2: https://lore.kernel.org/all/20250924-glymur-spmi-v8-v2-0-202fc7a66a97@oss.qualcomm.com/

Changes in v2:
- Split into two series: SPMI (this series) and PINCTRL.
- Included the DT bindings in this series, previously posted separately.
- Fixed kernel robot reported issue by including bitfields.h.
- Link to v1: https://lore.kernel.org/all/20250920-glymur-spmi-v8-gpio-driver-v1-0-23df93b7818a@oss.qualcomm.com/

---
David Collins (1):
      spmi: spmi-pmic-arb: add support for PMIC arbiter v8

Jishnu Prakash (2):
      dt-bindings: spmi: split out common QCOM SPMI PMIC arbiter properties
      dt-bindings: spmi: add support for glymur-spmi-pmic-arb (arbiter v8)

 .../bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml   | 150 ++++++++++
 .../bindings/spmi/qcom,spmi-pmic-arb-common.yaml   |  35 +++
 .../bindings/spmi/qcom,spmi-pmic-arb.yaml          |  17 +-
 .../bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml |  21 +-
 drivers/spmi/spmi-pmic-arb.c                       | 324 +++++++++++++++++++--
 5 files changed, 484 insertions(+), 63 deletions(-)
---
base-commit: 211ddde0823f1442e4ad052a2f30f050145ccada
change-id: 20251023-pmic_arb_v8-26478b4326ea

Best regards,
-- 
Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>



Return-Path: <devicetree+bounces-171008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7548BA9CFDE
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:47:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5DE61646D1
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22851F462D;
	Fri, 25 Apr 2025 17:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jGgkr6G9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455D4191F74
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603232; cv=none; b=fogJZc6+202cuzINLJGWdSq98a5rPdo3ySPTzfSSzei9lIoQRnEaKhHDRoKp95eVXd/ow/Z8w1SIWvTIhh090FHPdosWIUJWMmqsVnYZbQj7kK6/DntrTFzYmvvD5fro/UAph0P1O6wMxKNSTLfHsqkZeoJRO1oz/JEt3BOqKRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603232; c=relaxed/simple;
	bh=T3PpYspLOO+gT+LsL4Ms6+Mv85P8reL4+qw0w1irQnk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hV/kpKBAjrfowQFvl6WrvL4kqMRRg4Ewm7zcziulbXYqOmQUuEndwsQB98ANXMWuv5ueKr4lIiJcSQEyNaez2/cO7TqFlSmJSp3Eieop5zDaZr01CDL6nJY+hP+6FcxuTgH2lv+ODGbv0IfEuRU+cGtLSzPTOCYnITveMQPDF6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jGgkr6G9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJwcC011493
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=CH95xQAqSCeyDTf7jFn+5A
	MbqHYnxLYxquumYsB1TvQ=; b=jGgkr6G9WmX/yF0wtGLJ3mEgidTrPdQ5DpaxaQ
	dZ5Qcr5t82EJgzKt9s60gJ9aUi8t2Klvopg8HNuCZteUKGWUb4ONh5ky1AlaGi0t
	SLwE1TgcghzPO0XZY5aW6+UbwhS+6/CbvhmD0bRH9onROAAxtpxywgrzrhzjiWcI
	yVoI9kmWYXBtwoD3aCjQE9NWoEHNiQgPj1ZbZxwymOo8TfFvK7KUDXCVpXxaiNeh
	ctRkHIzavqAmae6vTZUwszcxqL+dEOJN1lU3e3B+aW4ThREKy0PvInbZRKgi/Rdt
	H1aY1PdWKLrYfH9hFNf2Z/Xc4Zjp2It6zo6egvPPUyDcbmww==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3stem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c92425a8b1so419567985a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:47:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745603229; x=1746208029;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CH95xQAqSCeyDTf7jFn+5AMbqHYnxLYxquumYsB1TvQ=;
        b=OTARo1sVQnB5ShrSbYD8l3Sn6Mp2savs0GpCtgzr1jgrgnQwX2ws8fTAn18C9TeYep
         h8DpQekaFslqTc/nOTAsCVByrnXY0h56I6L1eHz3hrgT+Bh/iyy/SiXYqRbIvrLeK3IK
         Vvc8kfGJNPeiiFekvWns85EOhLoyLQJ4vnOD6KcNikWaiZhVAQKMo0VMWVoet9o5kb2H
         4yYQyJTNEtyW1zKK1XnnYWVVSBRmr3ZR1uTcsQY+y/z3FwOVPLlQWsQsqcbkTTXjfQnf
         MOQmtSQH4LJv3GqcsInSqB8U0MpsXLhvZhdXCtpzXkjHdCxWaPaEfJjaR6SypzhI5bwd
         91Wg==
X-Forwarded-Encrypted: i=1; AJvYcCWvE+8h9RoSoErrqNuTiR+wzhU551uHW3j57bPdm9SiN7/dirsRW0ou5jFkHHEW8SmnEs3AHd9W4xVp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+kLEQPAMROJwf/OLmRvMRv7tkjYiErQUAnwQJFWbhD9Url9fx
	kssTqgoD5o9AVWilE0JI5U2Zi93+ebUWLJ1Mc+n/guz+qNRjpF4P4HmAVP97F3J2GDUYJW9cfLl
	XM0nZ09Ch91FglBylcaq9t/gy2v09V+riLFdWCdonbtOFWgvyTlPJ/kq4qYU+
X-Gm-Gg: ASbGncvrARlI0gXwPYthNdC3RscBIfouLQ07TRt6059UI5VERisUyncNaiITXMs5osR
	bZ1a3Xqadvui79vpDeu2efV6aJeWY1NlwkvCwZ30upn7DOLJAGeTnt2HVcd72caV1jyrXmBcCmL
	k+OfE4m4t0i1ErHuXMLAPzTVLRb2SBNnjauc3gYfkvB1CwxligdjtdzzpT9zDKsejqLaEb228RL
	bSWSpAS8whN9ZOR7ADObbgrwySBuxkN2boANIQGrUL5LTrPbX8N7POfNm0apig28SnV28ciycxR
	1M2atYL1eq16hD6xyEH7siUPhDTa3rr83Fuvb5fWPXPTpVu8au7e2Unpj74horXaugaf1uSZAC0
	NXCiR+Q0FVAxzBKbLrHh+0MC6
X-Received: by 2002:a05:620a:1793:b0:7c7:c1f8:34eb with SMTP id af79cd13be357-7c95863f91bmr1072971285a.23.1745603229109;
        Fri, 25 Apr 2025 10:47:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVoKASQtAFdaM3BZ5YWILcNcxkR0JbHKgAzwDJdCK8quRqLkR7yRgn8/w/k+RPF1+LxPzr7g==
X-Received: by 2002:a05:620a:1793:b0:7c7:c1f8:34eb with SMTP id af79cd13be357-7c95863f91bmr1072968185a.23.1745603228787;
        Fri, 25 Apr 2025 10:47:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bd4asm673193e87.84.2025.04.25.10.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:47:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 00/11] ARM: qcom: fix APQ8064 schema warnings
Date: Fri, 25 Apr 2025 20:47:00 +0300
Message-Id: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJTKC2gC/23MwQ6DIAyA4VcxnFcDKKI77T2WHRDqJJmywSQux
 ncfetoSL03+Nv0WEtBbDOScLcRjtMG6MUVxyoju1XhHsCY14ZQLWjAJnZ1hxHkKUIIxtMOi1aq
 pJUkfT4/pvGvXW+rehrfznx2PbNseO5EBhUoILThyZRp5cSHkr0k9tBuGPA2ycZH/EvU/wRPRa
 jSGlbSSDT0g1nX9Ag1LQnbwAAAA
X-Change-ID: 20250317-fix-nexus-4-dd0fe3bca987
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2452;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=T3PpYspLOO+gT+LsL4Ms6+Mv85P8reL4+qw0w1irQnk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC8qZb/QjJ4A38LuGB9rUu7bpDvQn1Ad99K3Wx
 ElrSdzYSK+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvKmQAKCRCLPIo+Aiko
 1aR0CACKoI3FN28qpYlVRdoR4wC+aqqa7liobPj4ayZWItPIjXlpB3kbPyA5rJaenggn0EgxqQd
 NDu+6h8UL8Lv5fvW3OGDDOzDSJuW1eQ57fRu0PPiXnufRvLQ3gkUbj/cED4q9YCHZGoaMHiWasa
 7fYWspPdqZGeAA9ZfbtUguz6Nj60BMc8Rx6L3sHPOzYfA2T9DbMvdOPm+fgzZ1mvbqqMmXD2iAz
 kKMv7l9Pvrdpo0mtqBjEpZH1rqO8wCK/I28oPmUiJL7AeiS/KnyDUMuu6DjYUIQBvH1XTYUqWRi
 HQcQVG77P6tkpznGkl5PPSxsncUSeRgXoXIi3dfsdDLyQaA8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 8PJpJbCuLGxnP3aTs7PIJsyWAa3WhOzq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNiBTYWx0ZWRfXw7mgREwkDFn8 NjWsjoCk2BxHFB4NmAF29qTqMPjyDoz8mw1c4AKibmwnHMwc5GYRtVvBEfIbMQliKEaTK6Iv59h LqgV8uDwNG/nTml96yGMI1lYd7wwjR2Fhr9TfFBibuuuwLVNgbwRhby8o/aZdaH1T2YnYskxJ7f
 a4SgH1bhv40GDabF+LzjW8rw0ouobSZdn2/YZdj8w2VZ0h36gGURZyFIB36E44356ZDVKVCVWDb xthxk+VanZrDE4/aDUl82tGKEVa1WOL0zT+lqTFzIqO9Sy1lDHp9QiCcX6Bf6X72uSdHnuzR5gD KbjMJFFsJqn41oTQIcVxaMuuU3k7suijEa2qGthTw4vkdMr1GE1iDHucP/q5ThlnRFusN4+iltE
 4IUNYIpwGQIUQHFZd5G6a15iYcusuRJ6L49cfR2uYF7hZjqbSReUDNg5rVOfgbP2v04NvRPW
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680bca9d cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=rWM0Ewedwwy8-PIQtLIA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 8PJpJbCuLGxnP3aTs7PIJsyWAa3WhOzq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250126

Rob's bot has reported [1] several warnings for Nexus 4 submisson,
however none of those warnings are specific to that device. Fix all
those warnings for all APQ8064 platforms by extending existing schemas,
adding missing schemas and making APQ8064 DT follow all the schema
files.

[1]: https://lore.kernel.org/linux-arm-msm/174221818190.3957236.3364090534153729086.robh@kernel.org/

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v3:
- Rebase on top of linux-next, fixing mis-squashed MFD commits.
- Link to v2: https://lore.kernel.org/r/20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com

Changes in v2:
- Corrected Fixes tag for the clock-controller patch to point to the
  commit which introduced qcom,rpmcc schema for APQ8064 (Krzysztof)
- Switched to syscon.yaml (Krzysztof)
- Reordered ports in the static replicator node (Konrad)
- Fixed hwmutex node address (Konrad)
- Fixed clocks in arm,coresight-static-replicator.yaml (Rob)
- Documented clocks /clock-names in qcom,rpm node (Rob)
- Link to v1: https://lore.kernel.org/r/20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com

---
Dmitry Baryshkov (11):
      Revert "dt-bindings: mfd: syscon: Add qcom,apq8064-mmss-sfpb"
      dt-bindings: mfd: syscon: add qcom,apq8064-mmss-sfpb
      dt-bindings: mfd: syscon: add qcom,apq8064-sps-sic
      dt-bindings: soc: qcom,rpm: add missing clock-controller node
      dt-bindings: soc: qcom: qcom,rpm: add missing clock/-names properties
      dt-bindings: arm: arm,coresight-static-replicator: add optional clocks
      ARM: dts: qcom: apq8064: add missing clocks to the timer node
      ARM: dts: qcom: apq8064 merge hw splinlock into corresponding syscon device
      ARM: dts: qcom: apq8064: use new compatible for SFPB device
      ARM: dts: qcom: apq8064: use new compatible for SPS SIC device
      ARM: dts: qcom: apq8064: move replicator out of soc node

 .../arm/arm,coresight-static-replicator.yaml       | 13 ++++
 Documentation/devicetree/bindings/mfd/syscon.yaml  |  2 +
 .../devicetree/bindings/soc/qcom/qcom,rpm.yaml     | 15 ++++
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi           | 88 +++++++++++-----------
 4 files changed, 73 insertions(+), 45 deletions(-)
---
base-commit: 6ac908f24cd7ddae52c496bbc888e97ee7b033ac
change-id: 20250317-fix-nexus-4-dd0fe3bca987

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



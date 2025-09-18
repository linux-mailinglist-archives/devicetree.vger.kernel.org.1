Return-Path: <devicetree+bounces-218751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 714B4B83C8E
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:28:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F1181883117
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83375301498;
	Thu, 18 Sep 2025 09:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SESQ9tHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B48821CC60
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758187687; cv=none; b=kyCZD4kBVpih68bZiqUZE0hIuOXUmglXgGuZpopHhLtERn+tmkPeTTfWIfeZDbqBB94/ZbL46Js2slBKRZUrb/kpiL4UTbnVeZlMeOomB0vIA/hs29uoqqd/i8Ml84ZHndA8LOwuy8fwyaSYhbDkgjl9OsAu1EmGX4JzdYA3XI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758187687; c=relaxed/simple;
	bh=l6H4V0fQEokHqrkMVzviMMbf53iH0VnNQQZCKS04FPw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NI9sCq7pAYDf0NexnQ7H73pX0ReVRIxdplswTrjjWiPDVqaVHXs/yJFPlhuA+8XuPKV4d54PonZ0V8hTohBO5/RLCF3hXFb6QHbCy27x5tHYgtvgPgoq2fp78uTzgb3GZ72mSfzCGwna4f+4ITmdYupXbZqqFWh+VnW1MQnIZvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SESQ9tHW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I3P7GM021414
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=BHFxrzpGWX6fpMMyJtE9Sd
	73ze9X/UFyj9mR/CCnpNI=; b=SESQ9tHWfvNidSpU2IDiakLhvL4iDlruqiWkZh
	BJZ/TsZ/TkG6IaNP52Eh8BWMhFMRjdU2uBggz67pAqk66X4Bz6wYT0z4qUz+knop
	I3EIjh1EL+iY9jWMJEdhZqw9csRNEP/HE1FzIKe/Z3qT+p4NAJjI/gbvEV1/rm4E
	OdBV2XnO/RIMoIQDCSfigPcLIPQRvIIJsIsuKyMu6BHCGiqWkYgD8A3b9plfF2D4
	qf3KQJNFo4TNJlmTyLCRT4phKoaLEhbRvmr5EprDXq/UXpmeKholX3bQyWBwpskP
	yZHAF5gEGPg2qF+KUUEtgVl9KcgzPfa4hnqwjL5MLcIKIF0A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy5drh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77243618babso866868b3a.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:28:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758187682; x=1758792482;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BHFxrzpGWX6fpMMyJtE9Sd73ze9X/UFyj9mR/CCnpNI=;
        b=fY6Nxl1kKgtCXttFUxrUyK21Ss1YJ7pRXVJRPXeJoSwndH4hAFZvSz46b/iWKXvRXk
         0PEVof04DGPd+oQ77UhO3VNPgX8mOqz1V0iMWCUiaHMPDj8zfPoLTBFEqQK3YHk+6Bii
         qZ7nZWkFHMxZzcwa/urPtraMsdB27NyuWVmzChLINMFQUYw2nIOCrCvcCvlWS9nXvl5K
         OyjLEVHd8V8ThqU+stB1IStGNs/mauf4fYAi9uho7SufxCMUxbJRs5zgEpqIXgINr+fk
         JjOT1RMM5EQL6lLSuIGYpyuGtqiRehRa1HsUNkBu1+mPw38TVG7JX0fZxyK0g9rc9nbd
         GC+A==
X-Forwarded-Encrypted: i=1; AJvYcCUJG/vEhGIze/bLTtuLVRQNr1wSkMObTHMjLhQdNxlp9dsGMWsLu9sxai9WpVeU84c/uggC2pxmpEvO@vger.kernel.org
X-Gm-Message-State: AOJu0YwwFyJXkyzAfxdQI6Ry+iiZMF85SzGjAj/Zfg4zzExqdbaHuD8P
	YvrcIHT5NSgi1PFszA0irLJkkTCMmWMn+qjnUX4gJLsoYAkodJKjOVm2gtp3PERDjo3Luj16cp+
	Tuj3PXz73hjJwEdcaDoB+ooGbuqp6aEQq+PHb6C4B66IvHXCcdxc7nH1VeWLIArfe
X-Gm-Gg: ASbGncvDQ+geSUgq4o/+Hdr0TeaCzm0rLITPyQoWwLgZLN4D4gvLKDFH0ccYmr9ZRr/
	2YC0xXH7Sbx+bnK7y2OJQA++e23XozMgGvGyz9Ou2ZpMpzawcA0ZKfcASiATC0JXNJ1AT0rOZZ/
	zsk6XR/KoUKvNxO8on906JqejzMrdIoqbjz44vPiN2VWqg/mEKX941XAVXeaIVO+gLYj7i5Sh2N
	OucsOWrayMBp4lylN54LOPkyN5Fi9zsh0u2720So4j3AR+jc2CWtcxLeCwqRgunD3ZwYSWvF/Hx
	U/ieuwDN09HuDy7RTw2MaYyw9PViQpsIXF+OOPR0GZOb0V1pH3UauhochxCOW3F6QdPZx7n0XAc
	2RLkEbryhj3emgBBKHLU/cOYuZA==
X-Received: by 2002:a05:6a00:39a0:b0:772:a5c:6eea with SMTP id d2e1a72fcca58-77bf936aed3mr7399520b3a.17.1758187681814;
        Thu, 18 Sep 2025 02:28:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLbURNKAK354nvvmQrQ7xrw5OdrE51GKcGvT0vEwNXT9BwkSQR+mZlitAF9htpDXo2P52P9Q==
X-Received: by 2002:a05:6a00:39a0:b0:772:a5c:6eea with SMTP id d2e1a72fcca58-77bf936aed3mr7399471b3a.17.1758187681194;
        Thu, 18 Sep 2025 02:28:01 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfbb79b81sm1819205b3a.10.2025.09.18.02.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 02:28:00 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Subject: [PATCH v3 0/4] rpmh-regulators: Update rpmh-regulator driver and
 dt-bindings for Glymur
Date: Thu, 18 Sep 2025 14:57:00 +0530
Message-Id: <20250918-glymur-rpmh-regulator-driver-v3-0-184c09678be3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGTQy2gC/5XNwQ6DIAyA4VdZOA8DomTstPdYdgCsSiLiyiQzx
 ncfet5huzT5m+brSiKgg0iup5UgJBddGHOI84nYXo8dUNfkJiUra6a4pN2w+BkpTr6nCN086Fd
 A2qBLgPTCrKorYZtGAsnEhNC698HfH7l7F/P1cnxLfN/+CCdOGTVGGcZACS35LcRYPGc92OB9k
 QfZ/VT+Y5bZtLJWom2VqQx8Mbdt+wCosCG6IwEAAA==
X-Change-ID: 20250916-glymur-rpmh-regulator-driver-80c9543cdd6e
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758187677; l=2051;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=l6H4V0fQEokHqrkMVzviMMbf53iH0VnNQQZCKS04FPw=;
 b=xbpUVtZC7cZLMFRi5jtkV49vKMoccBhfy1sonC0NksGzZ5U95xbLp2LSPhtRNFPCYdQz4CGll
 hYQ2f0UyCuYDHA/fp7XozC8EhPNSeci0e+X6UYtP6pWNzAClNEecQx7
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Proofpoint-GUID: tqUanzDT3dP0u988NQMtry-DhcWQ5Oc7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX16gG/Y8MPrwb
 gxcAvZii0YYijvd0ZVFmH+5PSp/Abry+iNL8xmKEjf47M3GrnZesZp9wvmvDWtWC1w5S34VcjGQ
 uD8wML8CuNb3jIcazrM1Z4t+zMVwfsbk5++Q1MvGkyAME73vqfJCyhYr5x5H/4LADNfYaLYtPQ6
 5N+MGF1iElyrKAyghOe5o0fvmQMM3xaAdq0i+1JAdV4NA2mhzTrYCvNcPkx8WjFS/NcNo6PAPur
 +H3R9AfkAebLZFjUMX1h8i5dmUKFJBJPXkoJMwWx6YN1ES2Q+3zKA/RG5MfdetNoeBbNmQjJeOH
 KfDOJfdI0iKDd8gcFVbUf/sHuu941FLEq3i5a3/ZQlqSYgQnaZnqy+ryo7SZCB9LEmPtNKBc/Rk
 +KD/aXiN
X-Authority-Analysis: v=2.4 cv=Y+f4sgeN c=1 sm=1 tr=0 ts=68cbd0a3 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8
 a=EUspDBNiAAAA:8 a=BXGrXTCzJtV5nmjeyUEA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: tqUanzDT3dP0u988NQMtry-DhcWQ5Oc7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

This series contains patches to update rpmh-regulator driver and
dt-bindings for supporting the PMIC voltage regulators present on the
boards with Qualcomm's next gen compute SoC - Glymur.

Device tree changes aren't part of this series and will be posted
separately after the official announcement of the Glymur SoC.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
Changes in v3:
- Added more details in pmic-id dt binding's commit message to clearly
  explain about the limitation in existing CMD-DB names and why the
  new format has been added and how this changes the pmic-id
  interpretation in code
- Fixed the issue reported-by the `kernel test robot <lkp@intel.com>`
  in patch [3/4] code comments to close:
  https://lore.kernel.org/oe-kbuild-all/202509171822.oRjF64pS-lkp@intel.com/
- Link to v2: https://lore.kernel.org/r/20250916-glymur-rpmh-regulator-driver-v2-0-c6593ff9b4be@oss.qualcomm.com

Changes in v2:
- Updated pmic-id dt binding's change commit message to elaborate `why` the
  dt-binding change is needed
- Updated commit message for driver change related to new resource name patch
  to clarify that `resource name` refers to `cmd-db resource names`.
- Link to v1: https://lore.kernel.org/r/20250916-glymur-rpmh-regulator-driver-v1-0-bb9b00e93a61@oss.qualcomm.com

---
Kamal Wadhwa (4):
      dt-bindings: rpmh-regulator : Add compatibles for PMH01XX & PMCX0102
      dt-bindings: rpmh-regulator: Update pmic-id DT prop info for new CMD-DB
      regulator: rpmh-regulator: Add support for new resource name format
      regulator: rpmh-regulator: Add RPMH regulator support for Glymur

 .../bindings/regulator/qcom,rpmh-regulator.yaml    |   39 +-
 drivers/regulator/qcom-rpmh-regulator.c            | 1323 ++++++++++++--------
 2 files changed, 812 insertions(+), 550 deletions(-)
---
base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
change-id: 20250916-glymur-rpmh-regulator-driver-80c9543cdd6e

Best regards,
-- 
Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>



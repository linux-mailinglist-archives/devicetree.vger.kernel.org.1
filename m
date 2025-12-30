Return-Path: <devicetree+bounces-250509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD332CE9AC4
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 228963009556
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0384B27B357;
	Tue, 30 Dec 2025 12:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J43SkAqB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aw3jt28H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4F424677D
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767098046; cv=none; b=fA3cBw18/qhAecirbINfXkLNIDqAQaR57vnCSDunGR/KAR5M76+lbdEKHVBdXs8OyugQwfvRWXWhtH+GlZdjYjH15iuyLh8dBqohrxhDLfTv6MQuYJdjwaOaCIKt3HQUYLehyNTN5NXfYideveEV1v6+XgGfmuSe2PQlg+tjZ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767098046; c=relaxed/simple;
	bh=FdqG9zrZ6rbteItBZ4Klh3Dym5joJY1hFv9zmxGAJeo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FUb1xD2EUgCcJjz3IjkrYYriytzFadEq0M221WJuIJtfba8LYk+OxzXXDT5Lazf00hlVgy5KoECSSM99ZcedUsUoJY7SNHOP57AMHKwWxIddwOBGbOUF9oqkDiLZBnrt75+y7fuQTaBEwyfZuVqycCNkunn4eaGHlbe14ugXnJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J43SkAqB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aw3jt28H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUB0Wtc956323
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=e1EJpHuhHtgin191Z1rYYK
	gqk35MDf2jz1zjH1Q2Oqo=; b=J43SkAqBxQeiaPEKOBpDHwee5U953tHh555fky
	/aevh/9Iq3GzUKnwtMGj7QFlmsQj8MwTZ3Gq+vDplE2fjXhLuYHv1+nPUWQamcqP
	jN2jUVcWjbSBh7RJ1xHdLZqPsZouXbxAPjlJJMYAZTc5pRCKnvrV22h5LDDHIotI
	dv8AhZaRwiPcT5e2swN3YQI5mqr/qMNfP2gvlKiCQYtuqw/86Q3h0I9UA2MX3TbU
	d1cuplNJjw7r5k2vrF+Ncn1ioP0Pfrvmv7dBc+/oAdi2PNsA7EXfo7iRBkB1i59L
	fSijAU0I3Sh58Xwy9swp7hLlxP/Yp/TdguUFlvzqKIpYKugw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk1b4rw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0e952f153so329473015ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 04:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767098044; x=1767702844; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e1EJpHuhHtgin191Z1rYYKgqk35MDf2jz1zjH1Q2Oqo=;
        b=aw3jt28HJ+tR0OWsvx/XdMyE0k/ksSwFnQTBeK4BcF135xLxxu+WWAi5u76t0xa5d4
         rTRd5ldSpwi1hofG3CvWxdxP18yNAMjZAy/u+BIVJQucCB05RxEBbMeCeeRlbfLtIeD3
         0EVM9B6AxnLWDtRHSyImYE7BciJzs9tLF1l9djDSX0eNLY2gD09DlXyJ2P/Yblu0eo4L
         asJOASqMU/Ko9+tASt9apRJLHrPOlm+9OXrauWOHUqGu7sDfscT0hZYDAufFKNv5zEIs
         ++GzzMkNnRRe66KgAJoPfTqfKE/ywJ9W+0QYD1vtHHOuXf5yhJs7pf8Y22pmGblTqQCt
         Y7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767098044; x=1767702844;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e1EJpHuhHtgin191Z1rYYKgqk35MDf2jz1zjH1Q2Oqo=;
        b=phHB3MBzQxxqHX63ReB5yiIk7L3OxRV5MlkCUaSkarxjG1QaVIALkwu4Sv3y2xVtIX
         FRQVmURj4XlswiWzSTOc1Cvw70Vu/AckSW9cbuTL3h12ybLOMIb+2XdL0iq81N/HR1yS
         CgzFc01WyFpbfXNI0ptdPUIIgkiFO3zioEO3z/7dLQB7C9xWSWjgf0WlmWtQYQXFb1lm
         t2me8x2Ob3PD5uP8/sBR12qM//uU8XIrZtzEdSTD56NUp7qKa/VANjQEvFXhi37Gh+Iq
         qiInCoUMPymyCR2tDP9NF9zJBp94BGI2LiIktZeJE7haXPZ1pPuC+p3ran3Uq07B5IH5
         pQSw==
X-Forwarded-Encrypted: i=1; AJvYcCUEXfY0if94I2zxPmr/QZ+WkoPI2R+dYkz/1/HD3lkNtRpx9nx2e7F4sExDEsLP1SjBB6ETNhzsLCsJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzoHxYS7T8GAwuIRYHFkzKaCUwWoeQDhA+ea2VRAnJcyEI+pVXB
	h16AsQc8Hg27vugxh5QUwllTgL22UJOAuudSPjH7l5E+xGGsz+bTyyJ0tZpoGTy5CeZM19dOxUj
	nl81rIItHxpmTgAOjayQtZvB8btvh7X/SBIExiHNJCkTE4EaTMbVf2Xh+szAArmvk
X-Gm-Gg: AY/fxX6Hm4UcU5FBZbjopjqSExgInqbZnNj+Bps+atk55iOJcyGbUbkCgo2EISSgLcK
	rncaZkFzzuj2Fxu4TF99racKG6NzdmZUpkcpv81NQzUlgrMXC60QhnJ3cSlGeS0m469+CjGBkWx
	bDxOGP3OU4yjWwSJ74woX5HEeoH5j1hYtsrtd/uGll1yLznH6QbGjepyO2VvmposoxemdoKsPrz
	Xz3FOwsyIoCtup5heexrG2BQy1xohAHYRtdfYeYvLefLNED+wOgilEC88rgm/Zf7+Ggnxs/RTpr
	vDxjaD+7TmAr3eg5hDzdrUOELmeLPyRXX8xXlbTzH4tR+xteUVgESivhIrDoWGM9d7NLqGbZSe/
	8BEpWl/pcwRBRNjFUEqGocvTtdxNcnz+gFA==
X-Received: by 2002:a17:903:19c8:b0:29e:e925:1abb with SMTP id d9443c01a7336-2a2f2428bffmr302949765ad.27.1767098043868;
        Tue, 30 Dec 2025 04:34:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IENyF+WPIkSCef75cAbbFwXBGFHVz0cB9iQySZ5v8vKBfyeFO1nsdl5NeVeEPctYc/krqYECw==
X-Received: by 2002:a17:903:19c8:b0:29e:e925:1abb with SMTP id d9443c01a7336-2a2f2428bffmr302949455ad.27.1767098043327;
        Tue, 30 Dec 2025 04:34:03 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c6a803sm295748695ad.6.2025.12.30.04.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 04:34:02 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v9 0/4] DRM/MSM: Support for Adreno 663 GPU
Date: Tue, 30 Dec 2025 18:03:24 +0530
Message-Id: <20251230-a663-gpu-support-v9-0-186722e25387@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJTGU2kC/2WOQQ6DIBBFr2JYdwygIHXVezQuRotKUkVBTBvj3
 Yu67GaSP5n/3mzEa2e0J2WyEadX440dY7jfEtL0OHYazCtmwinP6Z0VgFJm0E0BfJgm6xaoWV6
 IRnElqSSxNjndms+JfFYx98Yv1n1Pw6qO7QETjFHxD1sVUJAcC0QUgunsYb1P54Dvxg5DGgep9
 kvi9Bziu8tlIjV6DceRWcoE3SBzaK0DmXIaK/sPgvJdxOkAAAA=
X-Change-ID: 20240917-a663-gpu-support-b1475c828606
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767098036; l=3289;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=FdqG9zrZ6rbteItBZ4Klh3Dym5joJY1hFv9zmxGAJeo=;
 b=ijannswjECqxNrfPcXOhcEvxUr3Qf/PjtIcNRbeD7PQbwVOFwoEbGGc730H3mXsXqOqrtLt3q
 mTxS/TWG605AUYn7iYLDZ4XxexXiYan9oIJXRiD2DyJmWTfvZtinyM5
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: ncF7xW0Pe3XbhCWuhrCFUjqzAg1VBzoG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDExMyBTYWx0ZWRfX+D4biFEJynbG
 KgwAkd0sRa88f+fZAbXtRRkQ2bECJN2Mzt+X2sktC/dYz3k5El9LFdYFLA5LSd+R93AIBHLKRUf
 cAjrCSjxv0mOHHCFwW/5vYdSe5ppdwpL4BssHxQDb+KOQVfMFv01lNnfw9MCc64mkDqpGvid1uB
 ajD3mg/b832BtNzBT6U3poWYfF8nOwdYc0r3Xrkc1Ri1/7QAj/JcBYXcoC0HsPa8vUtSkGd51tp
 tkMNnpXp4ERI9ASQikDI2RyITSAJkSQ7bheP/FJo/o3kdi5Nsq/D1hklZ4V9fOO+DPkd2DZchUQ
 dFI5f1kUCHGk6R31HonmKOkUj3OL74d9xIxtEgTQFJT+/vJK4/owJFVUSA+9b6hY87KgK+vapzV
 Nypz5Hv+6hey787SUlEAZVvx6rmm5Wq2QHKLkd1hjyn+jJ0cMyWhltF8opzCG4wrunrWkvyq0L5
 VVNwgE6s7x8NpQoxH+g==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=6953c6bc cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=XWgRTdVboDXnaEeUzZ0A:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ncF7xW0Pe3XbhCWuhrCFUjqzAg1VBzoG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300113

This series adds support for Adreno 663 gpu found in SA8775P (Lemans)
chipsets. The closest gpu which is currently supported in drm-msm is A660.
Following are the major differences with that:
        1. gmu/zap firmwares
        2. Recommended to disable Level2 swizzling

Verified kmscube/weston/glmark2-es2.

Bjorn, only DT patches are pending in this series. And all of them are ready
to pick up right away.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Changes in v9:
- Rebased on top of Bjorn's arm64-for-6.20 tree (Dec/30 tip)
- Link to v8: https://lore.kernel.org/r/20251105-a663-gpu-support-v8-0-62a7aaa551e3@oss.qualcomm.com

Changes in v8:
- Corrected patch#1 subject (Dmitry)
- Dropped the patch for qfrom binding doc as it is already picked up.
- Link to v7: https://lore.kernel.org/r/20251105-a663-gpu-support-v7-0-1bcf7f151125@oss.qualcomm.com

Changes in v7:
- Rebased on next-20251105
- Dropped drm-msm speedbin patch which is already picked up
- Picked up trailers
- Link to v6: https://lore.kernel.org/r/20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com

Changes in v6:
- Keep the efuse's reg range 4K aligned (Konrad)
- Update GMU's opp table to bump frequency to 500Mhz (Konrad)
- Link to v5: https://lore.kernel.org/r/20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com

Changes in v5:
- Remove unnecessary labels in the gpu cooling patch (Konrad)
- Update the RPMH corner for 530 Mhz
- Wire up the gpu speedbin node to the gpu
- Link to v4: https://lore.kernel.org/r/20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com

Changes in v4:
- Rebased on top of another series which renames DT files
- Enabled GPU on IoT boards as per the latest definition
- Picked up SKU detection support
- Added GPU passive cooling support
- Link to v3: https://lore.kernel.org/r/20241030-a663-gpu-support-v3-0-bdf1d9ce6021@quicinc.com

Changes in v3:
- Rebased on the latest msm-next tip
- Added R-b tags from Dmitry
- Dropped patch #1 and #2 from v2 revision since they are already
picked up in msm-next
- Link to v2: https://lore.kernel.org/r/20241022-a663-gpu-support-v2-0-38da38234697@quicinc.com

Changes in v2:
- Fixed ubwc configuration (dimtry)
- Split out platform dt patch (dimtry)
- Fix formatting in the dt patch (dimtry)
- Updated Opp table to include all levels
- Updated bw IB votes to match downstream
- Rebased on top of msm-next tip
- Link to v1: https://lore.kernel.org/r/20240918-a663-gpu-support-v1-0-25fea3f3d64d@quicinc.com

---
Akhil P Oommen (2):
      arm64: dts: qcom: lemans-evk: Enable Adreno 663 GPU
      arm64: dts: qcom: qcs9100-ride: Enable Adreno 663 GPU

Gaurav Kohli (1):
      arm64: dts: qcom: lemans: Add GPU cooling

Puranam V G Tejaswi (1):
      arm64: dts: qcom: lemans: Add gpu and gmu nodes

 arch/arm64/boot/dts/qcom/lemans-evk.dts          |   8 ++
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi |   8 ++
 arch/arm64/boot/dts/qcom/lemans.dtsi             | 174 ++++++++++++++++++++++-
 3 files changed, 184 insertions(+), 6 deletions(-)
---
base-commit: 0e31dcfefd21ed76ff1b2d05647cd34336ab9772
change-id: 20240917-a663-gpu-support-b1475c828606

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>



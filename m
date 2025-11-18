Return-Path: <devicetree+bounces-239632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B2AC67DF1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 88BE629D2C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD602F12A1;
	Tue, 18 Nov 2025 07:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AW4T7fF4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kvJQfuFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615F52D7DF8
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450237; cv=none; b=aXFb6WNNMBGkhLZF61z9tEY9nf7Xzhm/H0LbrTSCA0T0aj9kwG+IgA+ax0r07U4m29yf7daZfnwgG2GKFmYf4hv4THfqBQuA2gTHPett+GVGtXlv919IenUafNnFcsm1MB1CxCJsyOxBEJiyLm5r/L0lnyEEjkzU4oLA4F/d/7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450237; c=relaxed/simple;
	bh=8guDZLbBhhMWkkwxWNw5NjhzXnp2RD5IOPb9WvFOZt4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rRZyYYk2C55wdg9pcJJhrdVvdTdI+IYBnEFRNS9HkYGjit2oz53JT/Oapdw+67ypuOSHLZ+ra0CtA44zth/M8yJ/SSsGyKzj7qT6EhVocvdp3b87Iowtomyo7FPm6H/wfz8mU3sn0W6uyCAnGAP6JRLB30hNRvSzNvNPEZZ6Uyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AW4T7fF4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kvJQfuFp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI2jpc4027447
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=5b9hSP5K2qoRH6CixZo5JO
	ZmFO/k8bsuyStGVBp9I9M=; b=AW4T7fF4bzc0cqxyk1MBxTqDmaBn9tJ9CTzEKW
	bDJolUuN8UgY1RDEu+rv8EEtaR/0BpQyZLbtLb2nDzBI1ztf2pXfZz/wNMd/G8bQ
	trD3M/XGPTEpXT1oOjYrzwKgCwUwoy+a9nKgAiSIqQU0eSs0p4qtjZCvKUWL5ITU
	ikklRg4aOY9lxawp2JGutniMBTq2tsS4AqbJ00BhIsjMSxqYmUo+ppb+ija+D36o
	ZIKA/C+3MON6qSRPdqRhPY/XZEsq2u5N74d2J3y41EUiV9wKwrsaep6em04Vl+/A
	afudTZHWrgEE7SbzQnLkcF4Y1ByKbRGNpzxoKn0VBZqfPcyw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag77t2600-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:15 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-bc240cdb249so4500470a12.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:17:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763450235; x=1764055035; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5b9hSP5K2qoRH6CixZo5JOZmFO/k8bsuyStGVBp9I9M=;
        b=kvJQfuFpn84hLdNLUVFZFbSDZxPQjGo4crNpEfBIhrixQpeZZ9IVzdf1yHrTSjTTZt
         7kwZNfKgXg4KdVk+aoOf6O+x8K11OFXwPDaG02wqjVDBlf9UNaT9pbdF/7kWmpON2pRh
         Zg4sapajs9TOSxR46KcwSgm1ji4vuduP2m/Xy+wyD6kYp3wZUOhOJxV9GEh2sH3sp9oH
         xodfvrpcY3nIagu0U9YcjpQQtwUwYqv7PgLN5iv1mrb8Lel5Cmsg3ziHbAN8ssi0sNfI
         0wGuF4cnevQVJDBIV2jgJWG33NFpPSH4abAsTpXVF2Axm3qk//kgRn3sVxi75+i+U2Df
         Pmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450235; x=1764055035;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5b9hSP5K2qoRH6CixZo5JOZmFO/k8bsuyStGVBp9I9M=;
        b=mo7XA7gWhYoxgzGYSCqD1DxLUSy805AuOjtRSPNFqoVQS5Lwe/6rjqvjGNsut1dP5e
         Zbqhb8W7O4GIZ1vCsiOAgL6ybmkp5T+7cheWa9Tv7TM1HcwS0tI8tTH0NqkdvU95MyIa
         F7tOyc/SSwnhEd1k+VIYX5favsKpAF2PPqktKWC5fbrIuPHt5RkrNPSlUMwkIxVPxbgt
         LaI0WGxgYaCjYJcs6tqaxhj2lX9IClvBIv2SjT/MmvdCxcj6otXO0aoyTEmDx9wmVcq3
         S9kvQnl7T6SpZMyjks/rDfKkIurBDsaavTs7YxTiM9hAjX2zi5OwQExpNYFwMt8hmJ6z
         Y87g==
X-Forwarded-Encrypted: i=1; AJvYcCU3T+CJFmWELtJHsm+vBMtoVeXhVoJ1lyUCi0Ur6lX3npoElIZCdES2GYjgcOUyCtIOlXw3CuGqygyT@vger.kernel.org
X-Gm-Message-State: AOJu0YwRlWSgEfBvjfK8fZ5SUq/RDnkDDkU2+RLEQrtsI1O+0sKo3hQc
	LrUomDzumFMrDbVCFdUsF0QZPncfNb6XmXg30kP2TUjU2LXOUEudJPVECvHMNTFh/p450ZhujTZ
	fNFja9W6b95YU4Ekw52SIQq6s+8ODQp+3lFRxldpwnjg7zJGJG2Br/zLqnPrPWsrK
X-Gm-Gg: ASbGncuyntiSaZT87FCMtrrAWXFzGl5lpTqJaAmJeHUtf5mp66JbAttdNtCa/m+16Oz
	Ilte46v+jJOz0aRWowKFc8AhJ26Mx4epdvIaFpDcS3oUpHGuw7cHI25+ewEdYK7CE6O7PYZjwax
	qkPDsy4CvQOvzz++yjiMoeN33JuIFHbdjJUnVaduMW3ye1wggDJMRrG92Yi2bV/xtpOymyU4e3K
	+j3GhvVgLWAKFiaHazJCISU4GkZo2k0tUiXQAKPHh3eiFbedzbPsRelMKo3Vu/qBoK5gvlnClOO
	MNo2/BZdUprLEsfglrW4HiP9krZFOzS+zfmoEWy0ilk8a8HG7T9uCvJI42H5eudWBEdEw/oZaUB
	lUdgiLnSPOUYMLd1KgNLXNQ/N3+SEF9lgFw==
X-Received: by 2002:a17:902:ec84:b0:295:9c48:96c0 with SMTP id d9443c01a7336-2986a6b83ddmr191562185ad.5.1763450234612;
        Mon, 17 Nov 2025 23:17:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzqfAgkXwoWltxa+7xUI5EcPwG3s6r7hu02EuUh4LAcR/eOobvk5axya8hdPC06rE8RHxG3w==
X-Received: by 2002:a17:902:ec84:b0:295:9c48:96c0 with SMTP id d9443c01a7336-2986a6b83ddmr191561685ad.5.1763450233977;
        Mon, 17 Nov 2025 23:17:13 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986a60b116sm129955285ad.79.2025.11.17.23.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:17:13 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v4 0/5] Add the support for SM8750 Video clock controller
Date: Tue, 18 Nov 2025 12:47:04 +0530
Message-Id: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHAdHGkC/33NTQ6CMBAF4KuQri2Z/kFx5T2Mi1IGaSJUW200h
 LtbWLgiJpNJ3kvmm5lEDA4jORYzCZhcdH7KQR4KYgczXZG6LmfCgSvQvKFx1LUCmlyH3lqaOK0
 EY60Qsq9NQ/LdPWDv3pt5vuQ8uPj04bO9SHxt/2l5gErFaqMEAEp28jGWj5e5WT+OZV5kRZP4Q
 Qy43INEhiquq7btjLAad6BlWb46xCyzAgEAAA==
X-Change-ID: 20250829-sm8750-videocc-v2-6311b334f7a9
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1NiBTYWx0ZWRfX8eCXQ2QaHedC
 coK73D0eiPIZEYtoorntpkB83fkBCRUPppD/92VEov9owHNLi5U3EwTkF9CsEMak2lYXmIkiMkH
 obmROUjkEvDu55/2/Ul00orNQZFbv3A9BpMifC7Is96pKsujiPksKi5Tyk0cR7G159+2ngDWpuz
 6PUuFZcPNcy5U7aEsOMbXVEzC+Au7aGUGCzNL/xlKInDyo/bgTySvUYX/5loOX/O+h21GGcMOzt
 0DyIpOWj0OJN70lrbaTXfdyS2Bs4nYRv2/sGUOYMi47xoZqZhS9NyyYT66MpUF9wDng2PS3vGSn
 Iwsc26/Ze6F2eLCKbHOw4/1ac27ugtguqesz3Xd3wyTVHO1YkAFwcZ2S+40RHB7QYgKb510puJO
 FasCaWssY4SM+dMw2BuyBzdhJJB7Ug==
X-Authority-Analysis: v=2.4 cv=EPoLElZC c=1 sm=1 tr=0 ts=691c1d7b cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=4o6feAWbJNN8CsvTjcQA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 9a2aivhaIC8ugz8ot1QTnMl_LCdfFGbw
X-Proofpoint-GUID: 9a2aivhaIC8ugz8ot1QTnMl_LCdfFGbw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 spamscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180056

Support the Video clock controller for SM8750 Qualcomm SoC. It includes
the extended logic for branch clocks with mem_ops which requires the
inverted logic.

Changes in v4:
- Split the changes to remain functional as per suggestion [Konrad]
	- add the new struct fields
	- add the ECPRI driver
	- add the clk-branch.c changes for mem_ops invert
- update the commit text for ecpricc code changes.
- update the logic for mem_enable_invert [Konrad].
- use GENMASK for 'mem_enable_ack_mask' in videocc driver [Konrad]
- Link to v3: https://lore.kernel.org/r/20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com

Changes in v3:
  - simplify the logic for handling branch mem ops for non-invert
    and invert logic [Dmitry]
  - Due to the changes in the branch mem ops the ECPRICC which also
    requires branch mem ops are updated to align to the new code.
  - Update to use new _desc infra and use 'regmap_update_bits' to align for
    better readability [Konrad]
  - Link to v2: https://lore.kernel.org/r/20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com

Changes in v2:
 - Update the commit message for the invert branch mem ops [Dmitry]
 - Update the email to 'oss' and also update copyright.
 - update the RB-by tag from Rob.
 - Link to v1: https://lore.kernel.org/all/20241206-sm8750_videocc-v1-0-5da6e7eea2bd@quicinc.com/

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (5):
      clk: qcom: clk_mem_branch: add enable mask and invert flags
      clk: qcom: ecpricc-qdu100: Add mem_enable_mask to the clock memory branch
      clk: qcom: branch: Extend invert logic for branch2 mem clocks
      dt-bindings: clock: qcom: Add SM8750 video clock controller
      clk: qcom: videocc-sm8750: Add video clock controller driver for SM8750

 .../bindings/clock/qcom,sm8450-videocc.yaml        |   5 +-
 drivers/clk/qcom/Kconfig                           |  11 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/clk-branch.c                      |   8 +-
 drivers/clk/qcom/clk-branch.h                      |   4 +
 drivers/clk/qcom/ecpricc-qdu1000.c                 |  30 ++
 drivers/clk/qcom/videocc-sm8750.c                  | 463 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm8750-videocc.h    |  40 ++
 8 files changed, 557 insertions(+), 5 deletions(-)
---
base-commit: 3cace99d63192a7250461b058279a42d91075d0c
change-id: 20250829-sm8750-videocc-v2-6311b334f7a9

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>



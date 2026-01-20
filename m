Return-Path: <devicetree+bounces-257286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6FCD3C5EE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6772076229A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6053F0777;
	Tue, 20 Jan 2026 10:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K/bLsQkV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iaLte5nl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E227D3F0762
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905208; cv=none; b=iNWmC87CQZxvDgv6c5dMhZICLeDxiR0vMyZc6ubtO9K44sZNfte/KMoYfRfH3WSoI+Gv49NFp9rFETA6oVi1srl33EE3cHFBylnQ7UEbNL3b9kV9kJrL6WjTdY1Pgj9aTtwy6s8Oy+PlnWC+iRE+lVrI28Q37lHWTLE0P+Lbm4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905208; c=relaxed/simple;
	bh=iJYPfbsaVRJLjJF6ouY7r1QpOGnx5V6e5FYaMLRBpGA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=U+BlbyXwgpgZRrhfW0mcp+MgRlituKYedQc11tG8xEGdUZqQwwncYzCWBF8lwM6AWV6UOl8lYr4MEmywVWsifMth/75OD/HagryUndAgVkiLcksnCB+K7nk7Q+ND9UBiUt0yCz489+5RzbDpYtVUSunOEV68DPNWm5pYwsujBqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K/bLsQkV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iaLte5nl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K8dkjd3366082
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=chAWrisEFvUfO+2YxDyxtwyJsoSPhEtK4VC
	X6IwXaY8=; b=K/bLsQkVhB99uaDsdCzwpKc4U6EPHrKEEVsQrt2OgVxlrqrE/NT
	nxPGvkK9/X31OosKlxFchFeWiixLqmroCGxZNoP6mR1mIw9Ucpkqxub8qyQSwQru
	0mAEbGTArqBksxwVFNtULUNzdsCZgYxFnNPCsFeOqZ8e4sYfO0wLzTlmZZzxEV33
	lGey30sCadSXlO1i25EaNIhPqF/72s0DlfXCST30xoZhpEO8LvJxQtO4GJgkRoMc
	7YKLjj9/7dEKWe6j2V9XoW9Nih/vSJXbU6Ir3NsCnf2YDWknSsqF5ZJ/er9F9uDb
	mjzSh2+XTsdn8nMc9HI4a/6VrNhwh9uwsvg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsysb1gy1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:25 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c52d37d346dso2706822a12.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768905205; x=1769510005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=chAWrisEFvUfO+2YxDyxtwyJsoSPhEtK4VCX6IwXaY8=;
        b=iaLte5nld8W7XjkQzQleWNbCgR8nJZ1ptrgF2BDq5lmDl/RSzcO/erL4TZRGoIoMrM
         dnzPVQh7JvgFMI3US8HmpA/IU9zULFMyJaPxPKVOe0nrctqjHJdongIPUUKlGtCtgbpo
         tN36SZ7EJ+wgjnR80/XZ7JEyNH1PUoX5MVxmEM06fNJieB9bK12OZgHPlDGyGGlEFq++
         PTsADZPKKCZ9J5Sat1eYDTjRoQO5dCn3vG6rSNvVJOVTYzaHOziiqxjf3PX8YyZKg/N1
         hl5hsM6EQin9o60QWZ4SB6f4iwRv59nZgnP+KFgWtrpMrLt58XtXfKGKg6rZx+SzbZ8v
         jRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768905205; x=1769510005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chAWrisEFvUfO+2YxDyxtwyJsoSPhEtK4VCX6IwXaY8=;
        b=spzumodyNQ+68lio3WWzyaFSxmn2snYUNcQuBRu91hcXdL7yc9DfIiCrfR1OoQ3B5j
         P1dokHBW58w6fQnufaKWieSpdArzriAEZvJeEMQz8g0znTtGtWqmiUMycrC5iMY401sG
         fUdJNGfZrAxFIRF/fZ8E/YKFgiHM9xSDyvdI3nxS9SV1X+JHKSdOEXHvGy5TPfEtvcDW
         y/rIKpJNYK5maUkmZZIoZ4gVGiYr2aL2UAEH2YjObLVvD10A4uhogcCvSaEHBhheEelL
         pSi3I6SLN+knQthROWAxdrhJ7M11hE3e3NasQm/pOE7otxW0fp+Xak1jluV2rleUXCvM
         nevw==
X-Forwarded-Encrypted: i=1; AJvYcCUoOLa7k8zncS4UfsSBg6rXjQo7eoNAuSJkOnm7HIjy1seH1lVnMTjAmOUpBzD6gUrkkxc40YDhcZnE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9W6pPpc66jiIRGSU8/mm9x64B18uwPKxc1AT6QXthXmPQhnok
	m3AaAeSQPXbAY6isYTgnvaaLhAt6gCRBzSAn2xhXpmLx+iALtAvsg9txxvhViFaYwi4ozNi0+Fm
	LXj1bXt7ixK6MSUIjnq2D2fJr6g1LNLXCrBz3J+Do5ZWYFPLzxS3zwIE3Xk/+OtY/
X-Gm-Gg: AY/fxX7bZSdCUs4BZj8lWzebZkcqGVb7BYhmneFsD6/qW4E7q5UK/jJVxGj7LnWlThx
	V4BFtbgstfWzJzEOZT05qDmWRe5m5sM+AcQylnHZjludGcswDz2gk1ibl7RvN3DK7FUxrbvqFk8
	IMUhHFrJY52pAC9bYditg0lBvBBGiEPCa5kHjMlubtPWcs+muBGh+X1/a4ody+UNzn5VG8CpOC6
	cSBVwoAS9ibUbNlWWs6ZoZh5Gzxor7wv2UgiMtvi8/gLx2XGuazyi3NG79Ia/BT66zYRzUroFQm
	0MHLUc+6S9bgwAXtqo0HbGd80skdDssidplL4jTXhHtSZQq0atJozJ0UYPgaGyMc4CMWJOXSwn1
	u1lCNFOUmcJp2ejrMXkgq06Hk2jd62y/4QYC1X/AQYOo=
X-Received: by 2002:a05:6a21:6112:b0:38d:eeca:b34a with SMTP id adf61e73a8af0-38e45e2d811mr1404068637.52.1768905205087;
        Tue, 20 Jan 2026 02:33:25 -0800 (PST)
X-Received: by 2002:a05:6a21:6112:b0:38d:eeca:b34a with SMTP id adf61e73a8af0-38e45e2d811mr1404046637.52.1768905204571;
        Tue, 20 Jan 2026 02:33:24 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf3791e5sm10050709a12.31.2026.01.20.02.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:33:24 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v4 0/4] Enable secondary USB controller in host mode
Date: Tue, 20 Jan 2026 16:03:08 +0530
Message-Id: <20260120103312.2174727-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XwG9METf6ehNiYqsOOoaRXgqHQet08Tr
X-Authority-Analysis: v=2.4 cv=XJ89iAhE c=1 sm=1 tr=0 ts=696f59f5 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=BbGdbhBj7xDDEJ_r43wA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: XwG9METf6ehNiYqsOOoaRXgqHQet08Tr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NiBTYWx0ZWRfXyG1wIV3g1uJx
 ZKSULfarp9kHZySj7XfOq2f5kkLIOixp9xWaNppV5s7hcfGjsV3ZLNkPZ1/z+5IGHUN2nrxhOP5
 4DRhpmUz09wFNReJeUBPXbh8ZADG6O7ywDMNHBbwni0Wf/2syuQG5epAp3gLWyn5G29AxMpwDPZ
 ZaAOl6PeEZPk07sfKUINi0kIfKK+kKJfm/aK+7wRt+f+YtEdbGDyi5Y5vaybZNLEWY6CzWWRDRg
 o2VEJKUhmp4HL2Q/jfXiF4L0+1Lpn7KoP5QkqW2sc7TeEHVPHYpt5aTc7pRk6QXBgZe5KxdGk44
 tYjAcIa0qqamW+9hVlAkU9Kj9MMvLGpGo9jOmzX86SibcMPF8XyY0oHCkTnjgsYyiVoaAj5XbwP
 noq5sFrvDqb8SDRbaoxqZUMVt/GMeTPSZzBzM61Xs4DR3vZsHtE1UnT4xdzgXLwe/O1C1HHJcFI
 YRSRdi0WhUGkhV6zBAA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200086

Enable secondary USB controller in host mode on lemans EVK platforms.

Changes in v4:
Updated power supply property for hub.
Updated details for all 4 ports of hub.

Changes in v3:
Updated binding properties for genesys hub.

Changes in v2:
Add Genesys Logic GL3590 hub support.
Rename hd3ss3220_ instance for primary port controller.

Link to v3:
https://lore.kernel.org/all/20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com/

Link to v2:
https://lore.kernel.org/all/20251216120749.94007-1-swati.agarwal@oss.qualcomm.com/

Link to v1:
https://lore.kernel.org/all/20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com/

Swati Agarwal (4):
  dt-bindings: usb: Add binding for Genesys Logic GL3590 hub
  usb: misc: onboard_usb_hub: Add Genesys Logic GL3590 hub support
  arm64: dts: qcom: lemans-evk: Rename hd3ss3220_ instance for primary
    port controller
  arm64: dts: qcom: lemans-evk: Enable secondary USB controller in host
    mode

 .../bindings/usb/genesys,gl850g.yaml          |  17 ++
 arch/arm64/boot/dts/qcom/lemans-evk.dts       | 217 +++++++++++++++++-
 drivers/usb/misc/onboard_usb_dev.c            |   1 +
 drivers/usb/misc/onboard_usb_dev.h            |   8 +
 4 files changed, 239 insertions(+), 4 deletions(-)

-- 
2.34.1



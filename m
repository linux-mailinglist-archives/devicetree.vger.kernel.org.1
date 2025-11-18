Return-Path: <devicetree+bounces-239609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AB676C67484
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:40:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E4E62359BCA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464AA2BD015;
	Tue, 18 Nov 2025 04:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bk+D9Xp9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BxybZjqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC7E296BBB
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763440672; cv=none; b=llqmnVWo/LyH12jhYkxjON+iVI7gcnKI0+4R/KJ9JTHZnYAsDV8nfO+vLUiRskry1e/L5hKDiT5U/DTmSvRJJP1c5YgW49ztGJ4Wbifn64z/pht/VPAbE4StB+7Gqm9+TrlGm7Llxuxdj7eFMQLq5cQU91LHo64UJ5hIIxWc0zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763440672; c=relaxed/simple;
	bh=eYntB9cM32oNKNfNcv7GAaypc4YEZOINwwB69UtDnnQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JkUVnMx+qUJJXkg/toQBbIehwtrgwvOtMBE3Wvxu3qagX7zhi/pQt5QDAb3kiZzQMTvrKDb855FWQBQ4zyPnrmnBf6Kh02sCuPsf/bNA1nrF2U32R7rVtoX/5qajQWjGEobFQzhjH2wc/ehrnyP5FzMI7f3Te4lSoUjX6O2EySg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bk+D9Xp9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BxybZjqr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI1MPpB375295
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:37:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=a7tOSam0QBGfSIMY8ZveQl
	A06s6WFVjc+TTPafZavTk=; b=Bk+D9Xp9q2qUfR7aTyhzCJTPHx3DXXZH2jVNHC
	7MyzcjGeQelLxnOARwbY4vltJgnfsWdGp0DG7FJZNOuIKEMcbr2TKB3aoL6xmXjt
	fG+OKA9Xyl/Gl2PSO23YVe77V+2K4WTymmACLdS6SfepAKZ3ggAT8pbpXfQS8g6h
	eerfNz0Audj5UgXyacszkVhpEtV7LVWCU/qv4eLvoMyYt+WzIfJ4jmZo7hd1qlln
	qhh0qM0Tgb8+V5STk5PayKkGf0BahWz0b/K4LX80DaGhMcJ7s5s45Pfj6OZPDaKu
	5vy7qNsdCDbOjhlW/upC86HxHvsnTdIW3Bzz4nUdSoe+9jwQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag599a5ru-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:37:49 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297fc324999so17918125ad.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763440668; x=1764045468; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a7tOSam0QBGfSIMY8ZveQlA06s6WFVjc+TTPafZavTk=;
        b=BxybZjqrg0S/C2MbqZZ04fUYGn3+Ch18tpi4ZGjtOcUc55QSaIwn1hR4G0t+KOF1p9
         JC80uivoDBDAc+aLWlyNuMALzZ3VouYaJgcckoy0994CQ+hy0YqXJKIvz2Tu0rijkXXR
         voFjoSvb8u/L4FqAjaKNRtq03mT1Hr/EaGdtAsjkanAwOnOGDsBFa9lC0UMnzLGt+SVy
         TDRIWVmPcRhdXOf2kzbNZS3P1SrJPj8TBO+SNHMfyR/MnIkbtvhWdS7pCcok5v3RAv1E
         +zzRId15xRjbNP3W38RFycLpdpubqyRPsD4T2geldXVKcU95a7Uur++RB0/fhzVVqp/n
         naXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763440668; x=1764045468;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a7tOSam0QBGfSIMY8ZveQlA06s6WFVjc+TTPafZavTk=;
        b=Ys/yvQIIqWWHafZOqe8TlGMk+09KGlKFPEL0M+z9eGo28Io7A+T8WzeArP2X2O4wjr
         EtHspL7BZrY8hzDTFBjRswR5TYHe1X1VtwBbZPZY5zRT8d4ZkvqbC6wK9cnkkqvRD6h3
         fbYoQUt+vSJtzdsa2VrY5P/dD61B2ozaWJ4UZ5sof0SEfTE8KYVjXdkthFU0ZfyTuYF9
         ClEyrjIC3tw8aTUeIPewCoNkAAboS+4LzVKfS3I51OPYJoTZXyKwtsZT8UC6FiL8cdWo
         fWTJqPCyuT7lEKBaTuywfV6AzT0ox/WFcjHreIwej4FCmwFkfqhpDnV/M1dMk3eVqK1F
         G38g==
X-Forwarded-Encrypted: i=1; AJvYcCXih9m9MSIApojPigeebQAbctGgO2gL6uohJ3SuLmDb9eOAq1aD0r6fzMUWIFavP0YE7trKt2pU4uSh@vger.kernel.org
X-Gm-Message-State: AOJu0YwzNzX/elQiPnZLYqN8j1mpBnFJd01qvuto1hm/8sTM6p6GrEwf
	TpdrNQm2B33Gg6nfGkOKA+JbkoXshO0FbmSLze9Oz7KCHdRzqXislqJ2uAjB56qSST6zA+3dF8v
	mVt9ZgghbK7Sf8p0JbC9aDO7k9AXRgygPXKV9den3kI04ozdDYmclQ9MpBkU5ZdSA
X-Gm-Gg: ASbGnctggjSkbx+4azsPofGc9G9ngB/Y9fjJbF+DNO/LJcP1WxQFMV/mQjRzLcDOHsu
	uCTYNxVPjtr20sEFuF9nnKFvlr6B2cF6YpaXl50JI0o9ojNdI23kiOzzmNmZRpmlor2RuZqxfUc
	K+JMrQ0An/1G2hSMjdA0VYtM0hFyj7NI43dV6E2YBtyjYHOlQS7HAmw9NtTeAAqpkEIH5Yee/AN
	HZoiBjReuqJeJazMrqXgVnYexDoJrLFc3uWY/Q5ZvNDs7Rmm7oZVm1EqwWuZaZ8cHtb5MEWxLZD
	Rl8FT8RttmntM/3QZcHOqt9FxEG4X94PPAGVJFVqnwMKFilYcpYKc9LbZXpFtSBsh+2E8NO3dBX
	TX3TIt99kUj1sX8MIVpv0RwnWYISuxjryA0d+xnRVbBH713ccNEncfuFPH/OqMOl+HsCa0UO1rp
	wt+bfwqK9fDfMBcaEwil0=
X-Received: by 2002:a17:903:182:b0:298:371:94f1 with SMTP id d9443c01a7336-299f651e44fmr12145205ad.1.1763440668424;
        Mon, 17 Nov 2025 20:37:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtTY88As4AoB7Z5UtIz0zKfIxsT+larl9yVkjoVYdRp4bW+u5rnIYlZnwgfh4sdMsAXv8wvQ==
X-Received: by 2002:a17:903:182:b0:298:371:94f1 with SMTP id d9443c01a7336-299f651e44fmr12144895ad.1.1763440667963;
        Mon, 17 Nov 2025 20:37:47 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccafesm157426315ad.97.2025.11.17.20.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:37:47 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add lontium lt8713sx bridge driver
Date: Tue, 18 Nov 2025 10:07:07 +0530
Message-Id: <20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPP3G2kC/4WNQQ6CMBREr0L+2pL+QoO68h6GRWmr/AQo9mODI
 dzdygXcTPJmMjMbsI/kGa7FBtEnYgpTBnUqwPZmenpBLjMoqTQiajEs5wYrXkUXyeXYRUo+iko
 1sq617uzFQC7P0T9oPYbvbeaeeAnxc/wk/Ll/JxMKKTqnDVq0TSXNLTCXr7cZbBjHMgu0+75/A
 WYb17DDAAAA
X-Change-ID: 20251115-lt8713sx-bridge-driver-32704455bc9a
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763440662; l=1372;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=eYntB9cM32oNKNfNcv7GAaypc4YEZOINwwB69UtDnnQ=;
 b=6pYSAo8NfEQZpa5Z8fUuLDD92Fs2piN4uS8PQECz56RTN80+33ThWxd1E6ckC9AZyZiEKqimJ
 QSdhrb48OT5CmWJ/NFcdWIbHx5GgM67TrmLxf2Y6m5DSDQJDUtBkvYK
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-GUID: HQacQdtI9qO9RUlg9rL3pUz3eVtVuLmb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDAzMyBTYWx0ZWRfX2FBzjL6+qGd0
 s4L54gq3CyYMoojKWHHpUxudxR90drXz8c9vlPdhlT2hWuDrPYuHneWQ7yc09cSLyUVaTf0NnCC
 TPiGEtNODlRxm+iwGxwINrp+HcaRR5M1Pq3oK5GOpf/92r3ja6xJ7Gy0Xp6UpIvu+++vciI1jwk
 FD0/GBBmnuxBSNj0x+xQ1K7kg80Hk1LAVGwJodmCklqnVtvPtk4H3kgtPPXrR8USQBToBh57Cq/
 niCd/OHRXD+tUE6y+ePxAjxtN/XXa1NHWduyTq/Q7Lxyc/yVKwZs8+/Jih3HzxtAAnGi3LJ3DpQ
 c136pvJHWrNC/nhahtlCa3K+q2LtnvAYMPAQ08+UWQScIaivwcqZqQFxy5PZ2TIIZ/vI2mBHrv5
 sTSuk5rUKgzAPmjVrSGbAMir/8WbSw==
X-Authority-Analysis: v=2.4 cv=HaMZjyE8 c=1 sm=1 tr=0 ts=691bf81d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=QxBZ9i5KDo26hP1ghMIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: HQacQdtI9qO9RUlg9rL3pUz3eVtVuLmb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180033

The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
audio output interface.

This series provides bridge driver and dt bindings for lt8713sx.
The driver is required for firmware upgrade in the bridge chip.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
Changes in v2:
- Addressed review comments from V1, majorly:
- Fixed DCO chain.
- Added supply in bindings.
- Handeled deferred probe in lt8713sx driver probe.
- Link to v1: https://lore.kernel.org/r/20251115-lt8713sx-bridge-driver-v1-0-bd5a1c1c730a@oss.qualcomm.com

---
Vishnu Saini (2):
      dt-bindings: bridge: lt8713sx: Add bindings
      drm/bridge: add support for lontium lt8713sx bridge driver

 Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml |  52 ++++
 drivers/gpu/drm/bridge/Kconfig                                         |  10 +
 drivers/gpu/drm/bridge/Makefile                                        |   1 +
 drivers/gpu/drm/bridge/lontium-lt8713sx.c                              | 713 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 776 insertions(+)
---
base-commit: de0d6e19d2ef33ba34be2467ffdf3595da5f5326
change-id: 20251115-lt8713sx-bridge-driver-32704455bc9a

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>



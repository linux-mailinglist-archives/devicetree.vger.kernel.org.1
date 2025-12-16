Return-Path: <devicetree+bounces-246990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DD6CC3333
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:26:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED8B3305BED3
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C2F3612CA;
	Tue, 16 Dec 2025 12:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KHtFUFi8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RugadaPJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675B13612C8
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886888; cv=none; b=WKZOuj6DAgd3C+d+IcXpdrRCeNIxS6E2bJ2gXVZH+KKhF4rlf3qvD+Fxaq/+6T+sgj7OlsA/BqWOe9mprDOxX5r8Z5VHLZaLsc23cZ/9dJGJuwNS3qvOeauj+QQ62xGaQDdz5c7g3JR9SMR8JXn+HFSWQt7RMZ6WGtQZPvz07fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886888; c=relaxed/simple;
	bh=H9abZfOkYQts6D4SGcICwKtFQofYukdrYeyR6tT4CQI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cnrKXr2LE3NK7i2mBO7s6aWm9gLDkQ/i6NOK1Rgt0MAjjCf3X8jvD0qNTMNf49OVXYurEsQKCQeVNPxQ0VYMZDdszeHDPWMibSvbeq8aZHxmUkqbSrb4bf+hec3A1rBRTAX+vE5sYXB1A4MNKF+x71QcVZ701ZIw3YKR3PM3OPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KHtFUFi8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RugadaPJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG9bgQI2516277
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=0TtjIbhvpwUJJPB/dQ889ENI1wVn4pYy08t
	WsWt09M0=; b=KHtFUFi80kNircPvQpnVELjl7Y6bZszGYW8aLftHETg+0VtCaHJ
	ijKUpx6LBDM2aE2EgsVPRtT0eMXXjoU8lfCQJFQgYAQoxEymjnxkbjmDTuJxSF28
	sumIvHCIzLW4JOez5uoTD0jBJpymdJvAjUGF/so/kWIs4C44tQa5Pto5xiiVT0pV
	Gvx5UE2OfCjhzuBJVXg7q0TcCsQS0Xf9prpfZuF9HSdIqcZT84LblCtNTf+Eusel
	zZXKK9m3jbjStUo0JchDpsuL9TFH8uvSF+RGCI1oHm6phtEF8vITAns60CBcTT8v
	iOdgyas9ZAFmILU4RsEx0MA9HMrZPtGcxXQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b34y80hvh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0f47c0e60so49108195ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765886886; x=1766491686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0TtjIbhvpwUJJPB/dQ889ENI1wVn4pYy08tWsWt09M0=;
        b=RugadaPJzeClGD2nxlEjYBWmJcUR0YABpRN7fyhpPMjice0MgHS0KIbAbvBLmpwo4G
         sd2bypiGx8TeKPhABPuD6Kp/cckYGpY4EshXkQ5vk4c+Aco6KL5fq6ynp0ZjWroKLx3o
         J93hNxP0RY87VZdifdM673NPEFjX5xDHe79hfADOVakrqVYCmczfjfuRd8PzLT7ef//J
         Qd7nw2UI7qUCE8aaorWWWvRLuNOj2tTq4iDawFoCxEx9oQrQDgrVtNkrOr3rCyXnENsn
         7B5lWeqnkQ/7974SxbHbRVcWEBrQspXvvDYPtdwwi1qcXIbmDv2DTSW/jCEdGMSaen4y
         kQ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765886886; x=1766491686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0TtjIbhvpwUJJPB/dQ889ENI1wVn4pYy08tWsWt09M0=;
        b=H8SQxVTL7Ezc/gDGzt5Wr+/lN2UGgJpvXKb4gfi/4Pcn3oywyEZRLbwLIXpz+wIeuB
         bfnziU2GNTfbQkMW20DkVjEJmCfCac4JaKSVpiQT/QLh/WAZh6xylPbwV7cXWS0d26o3
         3Q5pzezORkhCEo7ZjXhfP0Vby3PhIYXxzCo+kbAgtYKNnIr12lrXa3QzJZwFsqkI0Fk5
         1jzYNtPgG7POXBok5sDK4QAZDNTbV42cMelFLO3vqn9L3dnSq9TOzzui6dcn8iC98zkZ
         8o/2E6gpehsYVvVATTzO0w9UBDDn0W8wN8/IzgdaPbroMtijp3dEw/8qAqGNcDCh1wBj
         jKjA==
X-Forwarded-Encrypted: i=1; AJvYcCWevulvT27sKqgKQrHZ1ZQiLBeoSDhil451kAJE6HDL6SAbHTbsudiyD6sFCv0a66EJzQPLoLgqhw+0@vger.kernel.org
X-Gm-Message-State: AOJu0YxGbckEAjCIZR2ulELXwlzQQv+P36MThkMkhcKPb8Kl/O91PuBf
	0+XLUHHzmO5AW+Tpjvh51iAIGaMHhC0pCkkmo5jmFP8qpabB0b8zg/539vd/SMPsg14zV4GyLIF
	COSWikAxs799Eu6JnQ+lTX29xGJGbWPvHQ8AVmMSwz2zBc9cEaWkYLbVWzOWuwPds
X-Gm-Gg: AY/fxX4TWHtywz9+jhhK9MeBENDYmOYEBS14uop/u6JmTDK/TeVr/XsSn+0iSxvpkpb
	Co6uvE8nSLDM5TgMFod+/7rCJOxajHphOBCMOKk/G8bqUl+8awj1p5tH9SB42+tHnw32tWiI1ps
	cmJztkzYjnI38Lt5ax5luS0sOgcGfLbxih7BuN2++MyNoNmtM9m4dM0EeUX/XD7mV1mFp6mG1JP
	L5SRqfQik9etdYy8LQWS8v3RGPTcnsSfMt/SDBgxHhRYullNOes0wYW/AoNrD0FZbmenoOuKACC
	q0//Bi1AHpNBvzMQH0azThA1/ZpyMg7ahbHDFWWj+ZldMQLtjXRPbYZSyNi/SSv2TcRxuZmNky2
	yr1QpELuWhGhY7CagogM+O8nFneGOy81m5Cezt7s/qI0=
X-Received: by 2002:a17:902:cf03:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a0bb05e314mr83402825ad.44.1765886885888;
        Tue, 16 Dec 2025 04:08:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiw6zSvfczmhqR9lmIDcnmAukNtHBZazConwujUupumT2t8wOfkgbilHRFxoLYk9MMrzDSSw==
X-Received: by 2002:a17:902:cf03:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a0bb05e314mr83402605ad.44.1765886885453;
        Tue, 16 Dec 2025 04:08:05 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a110f6374asm48568695ad.63.2025.12.16.04.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 04:08:04 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 0/4] Enable USB1 controller in host mode
Date: Tue, 16 Dec 2025 17:37:45 +0530
Message-Id: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LrCfC3dc c=1 sm=1 tr=0 ts=69414ba6 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=T81NLgZPhjG5DizPKtsA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: cKj20IcKinagSL3HUSnJkV6xzh_8htfU
X-Proofpoint-GUID: cKj20IcKinagSL3HUSnJkV6xzh_8htfU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX+SlZO0QXDk73
 Wq8PbncQYnJ+jFXg8E40AZoIQSVdcD+qpfv8KPL4eR5Q4TpMcT8kd0JOvzCK9orSlY8EoXDISVC
 5RvPDTUSxmErAsUMLgcheGZ3T3aUzhZF1jJpiFr2Tif/tuzyu9ZaaQOP5vxJLH0w2raJKI7IEYs
 bgVJAIXpaguCtp45Ct4Co0zZXcVoUlREUWcOqCtA5MmLKHcmXoqSGW8k7fiYyAhYerlvMZ6E+ag
 rSIlZThW/HFa1L1X8m9BsZeB9v8doM3tzKbJLd80+FXQu4VGCRt3S/pKh3ySfYju5Qy0FFfSACa
 hM2CXL6k1/lrR9S6Z+89ul2sbL+iAPxDpjG5kxnf4DE7rnFDWnVEmV4qUD3KGDYr7YymnKa6oYo
 JLMgPYal2WqatG6byf+rh7Rf5vdlfg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

Enable USB1 controller in host mode on EVK platforms.

changes in v2:
Added Genesys Logic GL3590 hub support.
Renamed hd3ss3220_ instance for primary port controller.

Link to v1:
https://lore.kernel.org/all/20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com/

Swati Agarwal (4):
  dt-bindings: usb: Add binding for Genesys Logic GL3590 hub
  usb: misc: onboard_usb_hub: Add Genesys Logic GL3590 hub support
  arm64: dts: qcom: lemans-evk: Rename hd3ss3220_ instance for primary
    port controller
  arm64: dts: qcom: lemans-evk: Enable USB1 controller for host mode

 .../bindings/usb/genesys,gl850g.yaml          |   1 +
 arch/arm64/boot/dts/qcom/lemans-evk.dts       | 167 +++++++++++++++++-
 drivers/usb/misc/onboard_usb_dev.c            |   1 +
 drivers/usb/misc/onboard_usb_dev.h            |   1 +
 4 files changed, 166 insertions(+), 4 deletions(-)

-- 
2.34.1



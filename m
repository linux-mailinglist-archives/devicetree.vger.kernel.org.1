Return-Path: <devicetree+bounces-240630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C8CC73970
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CE86F4E1EC4
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 131792ECD14;
	Thu, 20 Nov 2025 10:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nmSzkbrf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gm7b5nVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970931400C
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763636352; cv=none; b=GsCw4/NB46yj4LVEkcKOQ8SzTx0nw5l2q6+mp6lmKecoiFCgSUejeXPYnZX9nbBgksfyi9+HvNKslS3FvZJVOq9fMnmhu+IHUsn612Ll615Dd8Si79gK7Ipe/jhpltD/OMqFZg5IyE86D8rOlGUMphrnymn+CLVstpwMfJULMGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763636352; c=relaxed/simple;
	bh=MMyrdWJs9/Cpwx2SkJSHBAAFvYmJOo8X+L3Zus3SxS0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sjaTHFmpJhFZdVVML+YdRMsO7a+wv7ajNERU3Y85/Goh7gB+fTLAb2aOMSgWMteiUhEa+wKKH2y8IY95jEb3o/dWU1YwMbn5h53j9NCMMazP+unuZd1kywoxfC9EkYECpMASzkkc8D3eU904781m5VWjOJVI7Xmts9cTldT+KlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nmSzkbrf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gm7b5nVx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AKAgEVE416944
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:59:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ltEfc3tmTg5NVbX80+9NV2
	1uXXJef16Jqb96lgnMHMA=; b=nmSzkbrf37JA7OHfnPb0ctT6bPI47qXlNsR79u
	yE7qrh4LSUcYLkHikc5XkY1ZB8jVcWlNUqCVnY3621vqsaSVfWImB9oUC3ga+Dxj
	GRltLZT06nR8zBtajgap4dloMcmvKKYuRdRPDLLo5b/P6vroGS1b3PZ7d+ul0qOF
	JKg09Zx+xzCYC579NMx6nGh82b0KQQEUQdSZvJpewm2BcTxUfsGuEKBQh9f00eb1
	DpUxRaVyzFUtpinqG8xKN1NqSW3336IRsKrkS75BysvDGtoV6tf4j1qCyPxH50oC
	BY9xV+n/q21RyMCXiyUH3bkncdM0F2tBCb9c9+jTltRTW1lw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj1fgr1by-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:59:09 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34376dd8299so225473a91.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 02:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763636349; x=1764241149; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ltEfc3tmTg5NVbX80+9NV21uXXJef16Jqb96lgnMHMA=;
        b=gm7b5nVxloZ3I6NkkTd9DrhH0Lj5JWCHFrBphryBSlkO52XXR1Nol52lueMdp4natk
         etJRqmRrIVCiTfQmeksvrLczVpc9j5P1RB+S8lz5AEWnV7wpbbYfEu2RbGx9nkxcHXf4
         OBzVtzEpCP2gXmwXPSUiukQ86g+MQ224a6pRYvaXGDtc6hRVNxf8Vuc7koxKdOcRjiTz
         TabrTOi6TJ+9pZfQSSJzybtEqudZp3mvz8y3gBz/Q6rG9Zf61QTk5WnkOzz3w7zEQ6XD
         BZ8FllUoYpibV079gdYowyORllEwzIzpGWsobpGTUgGBPeBEAr9r/L69qqhNYjkEIDzp
         II6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763636349; x=1764241149;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ltEfc3tmTg5NVbX80+9NV21uXXJef16Jqb96lgnMHMA=;
        b=kzdA1og06s3CO0XyzRfrK1YitUsGV3Fwy3PFikKyHQpamCMjGB6jcePCVobhxTBe8M
         idtMbrui5Jud5tqEFStiu3JoQpjiGiW279q2J5jIm1ztrcxARStMStKlQKCerSJ4A/8g
         WTqZfj/DNoaRLDjLqXdutwRfl1PiETfPss4Sw/wBOLIkIJDOAcHXo8ntLpicIm1uLg7a
         MH8bcKfP8bNu5V7dg38ibnJ0V3smDsZrdHWNyyUVU3VirPMRWyALG7ATJdqxYFs0PJDr
         WiUwPa/iAzcRyj+LxM3g27RKA3BwrSALlkpc8a/oAMn0qvOi++6lcY6DojZawIbIIveZ
         urrw==
X-Forwarded-Encrypted: i=1; AJvYcCXwq5/klmwxtdgSBkljGtgCf4Yw8vQbjcFwCsThzltZJ/jlPgkEC7fwjO2TIRfkFGFhp5PLrV95VzjS@vger.kernel.org
X-Gm-Message-State: AOJu0YxDU267XMaT81xO5hjINO2wV561a/3NPBjWXI3PaprXsFqWoYHX
	xgEMQfn+jzMjkk3AE8CPcQ9J/JREs7noCmH2/EMdc6afkTWAHDjws/t3AYewiA9pBM2U64k+/ad
	Nmy8f3vNrdullpI4xoagFrJMef74+fKNfrsuH00rnube1bh+E0m5v2XK+ul449rRH
X-Gm-Gg: ASbGnctAmfpxyoMNr1YP/lJIIkDWoE5ffMVmXSCfedsQXHaM+mxniu2/3ijA7BuCdVW
	pLr1za+rfXQNQuwAt1/+hFUpHLXNZpea3vf6Nz+CztTOPOFe7AYvHCsaHt4kh6v9WNm0oWxMsJ3
	YOCNMkpwsNTmJHvp5aCp4ayvedxTxX9quTH5FP+QWToH8TWcFBhfSIm+IcbZOlPhixM1EiTcBJ1
	Zinj31MCRibCttEZW3ZdkKYpuO6wLaoZyMxbk2glFdZxe4bLIDec7TeQyTNHiw/ne+UvNac3mtv
	cd64BDeNTCkbezxBeZD/ETlOyt2u6tq0o8Vj5SlGvwBcZ6U/5ZwC3/gPS5loqeuGo3Y58hRMKLz
	kokoMK0ZHEaDBByO8g+/YSY0w3/yF0Dx7/k9Dtnai1NvWnY2YLXh9UW8vpPxeaW1W2wHf9iIdor
	dcriIlhIocuArBpRAquucdxwEzASCaiQ==
X-Received: by 2002:a17:90b:38cd:b0:340:b501:3ae2 with SMTP id 98e67ed59e1d1-34727a37604mr1794745a91.0.1763636349292;
        Thu, 20 Nov 2025 02:59:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE+x9/NmEoJpG8eZlQA/oqHm5RP2EdYKUawRVhEB0Hq9eDfr5B+V84IIJ+0Mx1WxHjdDFca1g==
X-Received: by 2002:a17:90b:38cd:b0:340:b501:3ae2 with SMTP id 98e67ed59e1d1-34727a37604mr1794728a91.0.1763636348779;
        Thu, 20 Nov 2025 02:59:08 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5d3sm2248944a91.9.2025.11.20.02.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 02:59:08 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH 0/2] Enable lt8713sx bridge with displayport for monaco-evk
Date: Thu, 20 Nov 2025 16:28:04 +0530
Message-Id: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD30HmkC/22Oy2rDMBBFf8Vo3QmSxolkU0oX/YsSih6jVuDIs
 WQbQ8i/V6mXzWbg3gvnzI0VypEK65sby7TGEsdUg3hpmPsx6Zsg+pqZ5PIohOQwzFoJLBvYHH2
 dh5iWDcKYIdE2A3KN2h2NVKJjFXLNFOL2J/g87znTtFTPvJfsg66UfIEx9c3rrhEK/Fy+Jlc0c
 g6rAg42tNJjR0pL/T6WcpgWM7jxcjnU8/ZQPQPpf//6HFfKsEoQII/Gt53U3AjxnGlNIXg0ce4
 bdOh1ZSI/CdtR23mPkqtgrXV4QtGqtrUBAzvf7785MIL5WQEAAA==
X-Change-ID: 20251120-lt8713sx-bridge-linux-for-next-30838c5a2719
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763636345; l=655;
 i=vishsain@qti.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=MMyrdWJs9/Cpwx2SkJSHBAAFvYmJOo8X+L3Zus3SxS0=;
 b=vxCcPO2xe/HqtbMTtycvfmQ9oEFuF/7esoeivmQV/9lf8sOP8riQ5VF6yvl96ehGqiMyfzVSy
 aL8DK1aGk50CgTZ8M04xkFBmSennmSRE4Fr5GkHLwwdeB7pl+cNcWhK
X-Developer-Key: i=vishsain@qti.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Authority-Analysis: v=2.4 cv=OqlCCi/t c=1 sm=1 tr=0 ts=691ef47d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lAZRUm_3gAaAaoMg1eQA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: rtj8t0mJoemodc-MrVYUvWOiJcFaz29v
X-Proofpoint-ORIG-GUID: rtj8t0mJoemodc-MrVYUvWOiJcFaz29v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA2NyBTYWx0ZWRfX/0jMCAHRTu68
 fYGAwZy/vVmkRvWBdRJI0p33aAADtdQysXTAQnfrLixfVR/zT+F3si2WU6e62RsULwXWFxA2syH
 WIJHLHmTyjIR9F0XZQ8su5GoIqNzE+LoiOnTE3uWV84psu/9wpkhIWthGxtN4Z46HfbX3LQ+HEH
 jxMYynkioy1KCXa/lUW5byV9Mou9PiK/5v95TYr10Dlcxoqj7pkWO5oIdEQrnZL+UhkGBbWBmWr
 JLI0e+L/TCSqV6hSa59L0U+eiK15lLmPMeZj+QBVbw3kB9e0IWD+l+FpRxZDp1UrQ7V5pu6tIi1
 njIT6dEQquwf5uuWzKbMcVSQoZiIsTEc2PMex4GN8gIC6SuwJIGuzYk8/QugzjEq7opZZgO62h0
 obXIYPYE8pf4RuKcFKrfpx1LjT/kKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_04,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200067

This series enables lt8713sx bridge and displayport on monaco-evk
platform.

Signed-off-by: Vishnu Saini <vishsain@qti.qualcomm.com>
---
Vishnu Saini (2):
      arm64: dts: qcom: monaco: add lt8713sx bridge with displayport
      arm64: defconfig: Enable Lontium LT8713sx driver

 arch/arm64/boot/dts/qcom/monaco-evk.dts | 44 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/configs/defconfig            |  1 +
 2 files changed, 45 insertions(+)
---
base-commit: 3c3d81183061b9e49dd3207fbbbc36314744bf3f
change-id: 20251120-lt8713sx-bridge-linux-for-next-30838c5a2719

Best regards,
-- 
Vishnu Saini <vishsain@qti.qualcomm.com>



Return-Path: <devicetree+bounces-253754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F56ED111CB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE083301D481
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1D533BBDF;
	Mon, 12 Jan 2026 08:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fwnbxhZW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NgspIBck"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133D933987E
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768205553; cv=none; b=U1rp4FGjQTGRN0LXUEpZaCn/U60xWu/QUBQvItE40gc+69Qmn1SPbb8oNkl/x/WxySBQraK2i3dsiqq/g2whX1Ch5efVVWzk2aIXIqIQRjd9sPUQ/DRjrPeDut83xf5hWO8Sok0LF0dN9RXt2dhZQDv/BNhfDrqANPT3iEQ5D70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768205553; c=relaxed/simple;
	bh=0vK+QqIlVWfxb3zAfD6BbTvvB5V7M2eafy089fVa5I4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t9bUTXn5KyYWR4/TRN3VLCTBlbpwQmu1GCepVkFxoEBh+ADcy/sTvfDBUhElttRAZCulhnoRMOuvNblSyCfBSFpYfLoThFIZwBF6OatuMGy7j8NxuSobBWG5Ywh5zs7mu14AEWGmhzO1qyOoeFtpDdNphJE7V0riLexoN2qcPgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fwnbxhZW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NgspIBck; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C7OcxK555254
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:12:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Ts7gmQogGUrk8U8b1Qf8dm
	xzXu5HSt7TiDCeDL5JsJo=; b=fwnbxhZWyU0rF8UJUwDArHW2LuLc7QKvatLW4N
	VxU63J7NvHlkfiM4u0zIdxssiVo43Zh0Ocr10BN6S+5vBJzDFCPcCQ0n7cIB9GVz
	wDqQoXMi3eabm3xRSg4z+A7M5se9QVjvptz4EMpWMQ/xf3KFwB0yz6pWqbCevOWU
	3muEnZ0yBJroEVndPrPg63pgbHco6/B3eG8tnTcDCom4pqUVPlAI18yWMuRIgdhs
	wHE2ks8f6klIimdtdRxAagKuMXPMkbhqez6BZcOi08yZ8sTXwnL2q+NfmbiKuSfg
	YxAP3AZfWoNphO4S6iHbcMldJbaj5GZ9dGslcDuiipgiGe3Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmvhw062w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:12:26 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-888825e6423so121526666d6.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768205546; x=1768810346; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ts7gmQogGUrk8U8b1Qf8dmxzXu5HSt7TiDCeDL5JsJo=;
        b=NgspIBckjbOE49f4pXA687FcFfSGH+7p7DI6aCjfjqyFjfijkOn9Ks3kJr1eaf2nQG
         P2anJ8ycsC1fNf3RoGSmLfbSAMXnzVjpv8SYy1/UJJqrIp3DJohx3oB6jh91LZttTUOh
         Z3kg87NafLDgKw6Tj2wU/Io7bd1SbID+P5utG2+kvBkQJhhMp1+HZw5HhE+ZFuwxAcAP
         2BumFiJDE6vb6hdcqZ7V+TXjXbBq9WWvp6db9eFnc/sRHCa213Bxc+WlcuVoDs1FCmhO
         Rl8KqH54Wc6YQ3jqpYnmoQjVr2ee3u1HeoTgnvS2PVj3X8Mj8Dhmje66GtNrpspLvlgx
         eS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768205546; x=1768810346;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ts7gmQogGUrk8U8b1Qf8dmxzXu5HSt7TiDCeDL5JsJo=;
        b=RDtnpeWi9lNjEnLDg8sT0T/ECitPbP2FoH5dPmRYs1wm4ffoMXQ09k4EMtWvWPkYCc
         aRYpSeuk3McS82AvbcmlcUo3qv8U6DLJzb+GgYuM6jVL7SaHaCiQzQRSN5KDNk1+vYjz
         5QnEdWcZuyqFjnzxC2Xr3GAg9mZXM1HYk2eOTF/doqKrEpuHRProh8P7/LzW39ab+feF
         3jLu8/1QUCOGSjwP5ASRDBB88YE8IqtOvgX3ggPLi6EM3gWC4+dUZejqHG/Jo8Fv2MZh
         fWmRaB+LFLWbqnOkW9fTfxBrt8utyLBkAQ2ACCF2jIdTlC2p+kk0BvfPshUAIsepO3T6
         pJTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs7VBwJKd3fVPfk6cyPvcAxEBugHAQdUUd4PoH/aCjz0cSb55LA9ryS5ENN/lXAMGWjfpOQ8IdROZU@vger.kernel.org
X-Gm-Message-State: AOJu0Yxim6CqDFRns5p+v0cHN7wFYg80OJQcKc2LgyJxsU/JgmWn974h
	Yjml43Mx7abxhxgHguP4XwJtsC33HmOGkPJ/dBFRMtcy63zjiEOYNtEq7sQPdxlgXh/xD6zmwRa
	CKkZrn/1GnYHic3tE7z6ivuiwoXw7W6rI10xdaOyA8RxOaBVFp0RN0eTuBZnDqtYE
X-Gm-Gg: AY/fxX78CVIHAPoxk7ycuRGOIj+cCRy0UYXd9NjKcIxkTv+yCgXxMoA9NxoMn5wbPRm
	zC68d8Dtp2Bo8X8K6sR1XDoAGxIwYVFC/qb+LZ1fxjEkMwRGNUPhoXHcaGlJQ3Vxn9UlIxX00vX
	g/qZxr228l0QNxymqXAtzVSaOcl/SXy6KX5dbYL2ne5mlhXD7Lf4Yzx7B3z5CG605mGFciNFvmL
	c7EjuzAAcbm0lt81GlBHQ2Nc6g3eXlTa4F68NzzuGsXT1zyPFyNhJMJQTYOgNfJPEUDOu1qxDhx
	zbc2CQlsrFt1m9KzcqicLMyBaNaZTblH0pA75ecYhDbtIir+G6VtRJxfG/E1ya0CCRAausksPA2
	YMs2VwFVclYAVjSCFoFXF7MJ2qTKntT8MTA1dZSKXF22bPxg1kUpe+DOqEwRC35rzU5f676eNcm
	aq
X-Received: by 2002:a05:622a:8cf:b0:4ec:ee04:8831 with SMTP id d75a77b69052e-4ffb4a6add9mr229142561cf.57.1768205114474;
        Mon, 12 Jan 2026 00:05:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEafqlp5VNzDcf7IlNLwy/ydARsSaAA4k9ott1JNlaQCyMzM/jdlh/u5d4J1HMH+DlYQpJ0eg==
X-Received: by 2002:a05:622a:8cf:b0:4ec:ee04:8831 with SMTP id d75a77b69052e-4ffb4a6add9mr229142231cf.57.1768205113901;
        Mon, 12 Jan 2026 00:05:13 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8d39230sm123116201cf.6.2026.01.12.00.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 00:05:13 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Subject: [PATCH v4 0/3] media: qcom: camss: Add sm6150 camss support
Date: Mon, 12 Jan 2026 16:04:51 +0800
Message-Id: <20260112-sm6150-camss-v4-0-0cd576d627f7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACOrZGkC/2WPy27DIBBFf8ViXayBAHa96n9UWfAYEqRgJ4ztp
 Iry78XOqupmpDvSnHvmyQhLQmJD82QF10RpGmtQHw3zZzuekKdQM5MgtZBScspGaODeZiIunTL
 Rhr5XwbN6ci0Y02PHfR9rPieap/Kz09fDtt1ABgSYv6D1wIEHEbRXAaQD9zURtbfFXvyUc1sHO
 77eBQVvS9Wc3y0sI5HdNYdmlxRCQS+N+myVVMAFv+OYcTy1l7T8p1ams4R8W6R5aKISneti9A5
 jFzrjoH5nQIs+aggWATvUGGzVef0C+wihPz0BAAA=
X-Change-ID: 20251222-sm6150-camss-2b46fad884dc
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768205107; l=2829;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=0vK+QqIlVWfxb3zAfD6BbTvvB5V7M2eafy089fVa5I4=;
 b=+tQJC00B9WAz2EN8k02v94WzFgDQA/LntPGE8BBQdenzQWdLZ3WWQH8sVtM/6vJdLgJ0UoTaz
 ZlUpphz1nkUBztCuml5lxChJckLkhHXdkI8iaWgS5q1FVID7wr0eI5q
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA2MyBTYWx0ZWRfX6DBocQoV6h7j
 ONodep1uSoa0Mj2bifxhzlK/3A9CVFwETBkb8R3btYzBsT3GXrc3l6E8YOQ7s4IRwVpb68AQfeI
 F7F5zElsO4tIvbuA+AVKd3KXADJZ3rqg2727o3n403W9yQ23xShvM0Y24NyVx9m8ek8EDtPWvLc
 yESG4qtOUyNh2a7wafV+huPRfi2P+K5tFRlS+YR+lENLFWR+Yi6vUJlLmOet/k9qGABLVcshhfw
 3QGBkAlG4TrtsgeruXbhdmNhE4bVAgaRajDAp6iEJA+ITIfI04lQP7MEzQZd+wYnkN9VNrRD4C0
 /vp169InV9brfraAIHkJP5ZgzUYHlEWdbvtdo5SehRggCxaikHoYShWzzVpO3MZUmGlSDPHeTMF
 IKovMr1nFmocx27PMJYryhBaPWIF/md4V/RfQ0CnUPDo3+qE+SFauLiucTvvtwEgjPnWUP9fdoK
 4du9uyToApumZrVBHog==
X-Authority-Analysis: v=2.4 cv=JP02csKb c=1 sm=1 tr=0 ts=6964acea cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=b5PrnZgeE6CfPZZ6BtAA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: S5yQQStng6z-APeTIcr-KcVIB-kIgdwe
X-Proofpoint-ORIG-GUID: S5yQQStng6z-APeTIcr-KcVIB-kIgdwe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120063

SM6150 is a Qualcomm flagship SoC. This series adds support to
the CSIPHY, CSID, VFE/RDI interfaces in SM6150.

The SM6150 platform provides:
 - 2 x VFE (version 170), each with 3 RDI
 - 1 x VFE Lite (version 170), each with 4 RDI
 - 2 x CSID (version 170)
 - 1 x CSID Lite (version 170)
 - 3 x CSIPHY (version 2.0.0)
 - 1 x BPS (Bayer Processing Segment)
 - 1 x ICP (Imaging Control Processor)
 - 1 x IPE (Image Postprocessing Engine)
 - 1 x JPEG Encoder/Decoder
 - 1 x LRME (Low Resolution Motion Estimation)

Tested on Talos EVK board.

Tested with following commands:
media-ctl -d /dev/media0 --reset
media-ctl -d /dev/media0 -V '"imx577 9-001a":0[fmt:SRGGB10/4056x3040 field:none]'
media-ctl -d /dev/media0 -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
media-ctl -d /dev/media0 -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
media-ctl -d /dev/media0 -l '"msm_csiphy1":1->"msm_csid0":0[1]'
media-ctl -d /dev/media0 -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
yavta -B capture-mplane  -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video0 --capture=5

This patch series depends on patch series:
https://lore.kernel.org/linux-arm-msm/20251114082649.4240-1-wenmeng.liu@oss.qualcomm.com/

Changes in v4:
- Rebase based on the csiphy regulator change and add regulator load support for SM6150.
- Link to v3:
  https://lore.kernel.org/r/20260106-sm6150-camss-v3-0-d1d5c4d02b0b@oss.qualcomm.com

Changes in v3:
- Change the ICC node names to hf_0 and hf_1. - Krzysztof,Dmitry
- Link to v2:
  https://lore.kernel.org/all/20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com/

Changes in v2:
- Add more resources(BPS, ICP, IPE, JPEG, LRME) and details for CAMSS.
- Correct the order of the header files. - bob
- Add Csiphy id num, improve the resource name. - Vladimir
- Link to v1:
  https://lore.kernel.org/all/20251016-sm6150-camss-v1-0-e7f64ac32370@oss.qualcomm.com/

---
Wenmeng Liu (3):
      media: dt-bindings: Add qcom,sm6150-camss
      media: qcom: camss: add support for SM6150 camss
      arm64: dts: qcom: talos: Add camss node

 .../bindings/media/qcom,sm6150-camss.yaml          | 439 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos.dtsi                | 200 ++++++++++
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     |   2 +
 drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 198 ++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 6 files changed, 842 insertions(+)
---
base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
change-id: 20251222-sm6150-camss-2b46fad884dc
prerequisite-message-id: 20251114082649.4240-1-wenmeng.liu@oss.qualcomm.com
prerequisite-patch-id: affdca1f0af770b95444f99c203d291bcc41ec9c

Best regards,
-- 
Wenmeng <wenmeng.liu@oss.qualcomm.com>



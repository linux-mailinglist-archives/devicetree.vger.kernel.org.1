Return-Path: <devicetree+bounces-238925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A687FC5FCBF
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 02:05:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0880635CE26
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 01:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A70A1991B6;
	Sat, 15 Nov 2025 01:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fglilPNt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MxFNHwkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8331BC2A
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763168729; cv=none; b=TXpxpI2KV37tpeaiPt8mvT5rUY/FNzeIRd02uxlVGmsmTln/zImAX72yyPYmHnJNQxtpTxUf+FU9pLDhKDfBGRVvNNwDM1O4r16k65iZeZemkf9/XGgswnoCOng6YrHPG37TghU59oYxCAcDsrpLhS6QCNS4l7qu6y8/xr0rnIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763168729; c=relaxed/simple;
	bh=AFfOPgavFRRDHMYa2gLJOoyruIVOty8eXhise2RnkFY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UOm96hK0WD7e9R4nFT9Q9dMF3DUaUpK8DyiqXkJ/mJY7E/DzwKq8ttTl9Ba9LIvW5Iwn+bOL0R1U5NnJUGsxWGDHSdXB+FtI/YzyBFgUNKL8pVnELhG8dc1S5yTZX3736Z13Vif+3S6Pc+ZEZ7bn0m8liMiu3XynKIEGEdXNEIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fglilPNt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MxFNHwkJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEJVSmM070999
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:05:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=N+qD66s8DJqKc4BhTzsf1s
	FVyJk0kJSjLjKIqrGu+f4=; b=fglilPNtKH9ea4XZ8a4T/sEyEPnui5CPzwvW/6
	MgfXBXNXUvpCGKf3eBitDlB8UhZhhirH7tOwEiPIcs0yL75LGpQxgaS0nM9fPUck
	GwMvNDVFGxMk+n/UeThmheYJisXFBs+C6e3gm+SgKtGcTL3eKSEVe1HOjp32/R0I
	oICVrPlsWSGoqpjzgeOu/kQ098wL3Vh3C+oSD1KoI4EIE08RWWaK3BglRQKhPMYs
	jR8IHviwgmJZUKvTUf5T0H+yPkTZ4FdpAGAct37UlW5xGrJL2xdM8foKtzaiSqTf
	Frv0Jli6nbcY8/idiGqP8j4fC0zUoENTfBNAOEFAPaVeF0LA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aeang8qwm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 01:05:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2953527ab18so6315845ad.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 17:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763168726; x=1763773526; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N+qD66s8DJqKc4BhTzsf1sFVyJk0kJSjLjKIqrGu+f4=;
        b=MxFNHwkJ2jmMCXtHX9xyYfbB3kG4WKlbyv8YXTonc+zkfdzaLZPZV9/lgYByVXUUli
         FzgPOHsW51fBvVq7EBzVTBxk5qY1hMZig5TkxBgcoEXR9Xypurm5C5A14gxsBpm3M7qu
         RYwowmG7I5BYrp/X+5gA8+BqLqydkuVpp997dVoHNA2hWiGTFiCcS0RHYQsjFW4bVLi6
         0dx4nn2I1nvMvfN2MtSeW3BElkvwe9aO72qeEW/+NsrsMlXPSRqfL7j27k0Y6/T4AY4S
         cAz6lIVODs483qHPtNkW5CBnDYt8Fpn/uNol3GaNG1mOoW0Qwj2Q4o5KX5ddScmJOrDW
         rXeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763168726; x=1763773526;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+qD66s8DJqKc4BhTzsf1sFVyJk0kJSjLjKIqrGu+f4=;
        b=rGJKoD7cG/C9GhsXAbOEj8DTRAhbN+tafBrSIC6FP2z8qosAl8qWufHFpaSuXuDQdn
         1O89wurr2CKbHpca30w7xgy+/5F1gkELTJkm4B3LBUhNKXiL8q8Vai8Cbtqi9lGEW7xX
         qBeT1o0PR50TIc/mWQa1fscKjeHgN/fYFPIRissY6hCas4AbdCZu7f9/cs2KcKzvxz72
         V5m6H7SpF4rjJEd9PQXt1wSdwEyzEsHqyPxp7JYxx1uKZVwS0hyojd8kyPw6AvMOOiex
         hy7mfZ5bzwH+JNJ7sOuurpPwuFMV19Ig7BGF4vrKK5b2/F+4/N11GXnPxWZANNcouTuP
         vemg==
X-Forwarded-Encrypted: i=1; AJvYcCVOZlQBGcVmBcqtvKFPcM3PnT3IQbcngc2fYXBmhMJ2NDGwHEiLGkb+tkhzGiKlmrBzw+auubtzg4xO@vger.kernel.org
X-Gm-Message-State: AOJu0YzMhsNQO3FWZrKXGqCj2DIsi1tTtUpug9ESsoQ3c4B091+REuRm
	gTZ5O5yI04qIBBHZu67Jz0wRBkksVwQucX9H5cXhEm1DctHchDF4i9OTcTIwDFuWBZufIK5y7ka
	pKLWvBYgFH1W2wYy0V1+M6bXjpKUo+n1mLE1AmDSgZmravGCEiQVLh/c8qZq+8bmN
X-Gm-Gg: ASbGncuIlq/Z0L1bqlfOTJAanQ9aI0vug87//TFoeVT703j/KAV4H9LI8gdngfhUnH3
	JVVK4btxA9FHVjNw7cCKGqFpekuDOpFw26QuClzN+H/rDtD5u0viIcJtsx59tmGzjUOzBHqb1+2
	c7xB7rqlNbTCZb17Fr433HAJcflei3FeFSfiUd/8JuzBYtUv4LcS7bGbSS3E2gD2LoSHhCWZoIA
	6Jwh6pKZCDUOfqmhHY//7szpE7CskjAj/lX0SjTeFhIsPfo+ldR/sbsoec5RHj4lXQpts22UyWk
	9zkdOO3wD0qyqHQN1uhX1cDemqFcwpfoxPtR41FqkuQq8NX4OcIj+9aw5muAsruJPWvhSS8CSm7
	qOI2j6mBsnEo9UIehLOzimE956YEKmvXN3EHYuAASdTpvEbxh+kk/hkAzc7MTS2PIHqj1scjmNR
	mHCtpuflQq/pn8z6MzwKg=
X-Received: by 2002:a17:902:ef45:b0:298:2237:7b9b with SMTP id d9443c01a7336-2986a72c718mr28380165ad.7.1763168726312;
        Fri, 14 Nov 2025 17:05:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF85w6nkmvL8RYOxF8j3eLbr6fpMwPX2FLrGG/WNr6tuVXNYjRmNH0Pd78a/5p6SnlrxgSrkA==
X-Received: by 2002:a17:902:ef45:b0:298:2237:7b9b with SMTP id d9443c01a7336-2986a72c718mr28379965ad.7.1763168725792;
        Fri, 14 Nov 2025 17:05:25 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36f42eb0esm5812976a12.13.2025.11.14.17.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 17:05:25 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH 0/2] Add lontium lt8713sx bridge driver
Date: Sat, 15 Nov 2025 06:33:55 +0530
Message-Id: <20251115-lt8713sx-bridge-driver-v1-0-bd5a1c1c730a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHzRF2kC/x2MQQqAIBAAvxJ7TmhNsfpKdMjcaiEq1ohA+nvSc
 RhmEkQSpghdkUDo5sjHngHLAqZ13BdSHDKDrrRFRKu2q3FYx0d54ZB1EL5JVK1dZYy1fmpHyPE
 pNPPzj/vhfT83Yl/DaAAAAA==
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
        qc-display-maintainer@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763168720; l=1092;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=AFfOPgavFRRDHMYa2gLJOoyruIVOty8eXhise2RnkFY=;
 b=1CROhUIKlfJXhG+efmn+kz328UTx5KtOcE0ceCnaCByXAnrcowLN2A9ohhHwPO7PuSHfjTOgt
 6GFhPvUdNIIBRh4yxz2KwlLeMI52wpO5g+1PZ7Xrxc82CTOQuj5J+lB
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-ORIG-GUID: pHyy0tSt4CTk1skVcmSlH5GJisag2VLj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAwNiBTYWx0ZWRfX5Ua/mvs7UOj7
 4cQgxWrngW+guMfj6ttUd9Jw5yPGwTrUV7W9PvkuW8cipyaxkRDMO8CCTPIGbZqtUq+P+i52O7+
 35tVJTXvd7pzfRWdMNebUJipB0JetNAr058SLekunOQCgtpMWXcBuwMKnvlIn+44Mn76K2Fl1Ct
 1t3PD0c35DnsLXCwJmrXT9d2SznrI/rgIV3oiw2Nh0AGHSq7o2o2hWIrNFFap9LGrsId/ymDrPj
 7rS6QdkqpF4SRcuFABZgz+A7xTPZISWsan+NhfaqKr8msvrpHKlZ/HWc7i6jb1HlUunZj4ASai6
 VxaTrRqQ3uF5SMDq2HXoFIS17v9NxjCoEBmaCtOdtqvbTsvYZnrl114cKN3czUSVV73K1IvVfAX
 h3VA/OtFYo2+FO62Cj505hChPaePDw==
X-Proofpoint-GUID: pHyy0tSt4CTk1skVcmSlH5GJisag2VLj
X-Authority-Analysis: v=2.4 cv=OLAqHCaB c=1 sm=1 tr=0 ts=6917d1d7 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QxBZ9i5KDo26hP1ghMIA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 clxscore=1011 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511150006

The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
audio output interface.

This series provides bridge driver and dt bindings for lt8713sx.
The driver is required for firmware upgrade in the bridge chip.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
Vishnu Saini (2):
      dt-bindings: bridge: lt8713sx: Add bindings
      drm/bridge: add support for lontium lt8713sx bridge driver

 Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml |  47 ++++
 drivers/gpu/drm/bridge/Kconfig                                         |  10 +
 drivers/gpu/drm/bridge/Makefile                                        |   1 +
 drivers/gpu/drm/bridge/lontium-lt8713sx.c                              | 717 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 775 insertions(+)
---
base-commit: de0d6e19d2ef33ba34be2467ffdf3595da5f5326
change-id: 20251115-lt8713sx-bridge-driver-32704455bc9a

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>



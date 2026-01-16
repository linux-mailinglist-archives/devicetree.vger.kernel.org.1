Return-Path: <devicetree+bounces-256137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D2FD32FF7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4EB6D3091BEE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B923933E3;
	Fri, 16 Jan 2026 14:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="w2JZmbVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99762BDC13
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768575053; cv=none; b=tQIdxjEFRVySIABu3vJrL9Oa7hdF/5GbbAqbzOEe127Y1NSmaX5Os+q7MiClu7D+mkEhce3ftA3DQ70pQy64HrBD6PK600xFGAFSPamly2IL4CR/rtorlCGvnUywTVi+0p9c1d//EpXb28nnW507U80lwkCgQRQD0t4PAlr94yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768575053; c=relaxed/simple;
	bh=j19KBQWDe/Rz5gK6EWY1R/yqcx2IUC6jLDUJGShA1/I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aKIJPApzkuVQUQpsI+Q1vqs2EFaB2ltoapx+ARPgackCfV5J9IWWlDth0JXQuOFoycxS7DUgNXAPyFPq1a5Dl9GWshpEwmjU/xG9pgjxGCqAVn+w6uJAzar4yID8bBssZ/s8IbYQ/ZpbvwYsOK+Jg4jfm2OX6ooen8oo+1HFWeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=w2JZmbVG; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b86f69bbe60so313848966b.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768575050; x=1769179850; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=feX7GdONyC17SNSxDLiUHEZ1aiMyDYeRnXfn0/KIoIs=;
        b=w2JZmbVG6ZbCo8A3VLlu6J+8qAOS/tLBsOTRsutkZ9hykPSRWDOHvcTGw6JV0CyglS
         1ugZsc1jjV3F3dnavDoBX7f2l40GsTfLslTvWLokNjNADgmkloEzeYJI7hcqjAu/fOGp
         yiRPi/mZ43byAPefUAWO5fC4MQ06SiWPY7KpEzakco0izeQkutTaWFzEzlwO5pXufg+m
         s8pLvM1pUPg9qaAR7vF7LqUTrCyPcPy7vuMBSlyghVQxitTjSJ5B3FyeKg26D9m+7q46
         VEPc7Mej3HjjCC9TGMwVbiJ0ztU60h8xHrJyQjPoDZTRi4i3X6e7f7sz3UwxFrgkoByQ
         sJcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768575050; x=1769179850;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=feX7GdONyC17SNSxDLiUHEZ1aiMyDYeRnXfn0/KIoIs=;
        b=nOcndU+IQR+r0uBOlgFfI5AWec6QD4BFcJL6Zi6CX4vWLkAZG9b62oFBo2uIpSTakY
         qNl904CQBPBDotW3+UWPTa8RLP6n7OMm8DHB/VCJ+KLv1GpMkOv/88xnjQLSAKz9dQzt
         t6F6rFC/Bzed4o1eKRteSVJQETFa4zwxlnxkuiWdsr76FJbj1fw7WbfctaqL/6qV9Ew9
         Kj/0/vrBXYfgiMc0UaQPyrk4dq+jz/6JxHtkzmFDfvIoXp0zYQhr0/h4RrPBGfHaQseu
         jm/el1lV+u7RJRyt5N9RqtC+P5F/ttrFh5Hk6W2keRWusjKz+ADkhxSifTO2Xuv1fbkt
         hFXA==
X-Forwarded-Encrypted: i=1; AJvYcCXR2LGUO671+rTII6ItGgSTnxpTfKxG73S15MFZMa4A+cyQL1ZFTTv7SGgmsTizhIeeJ3/48Z45Fk3q@vger.kernel.org
X-Gm-Message-State: AOJu0YwHZNvdAWSnttK2+OEL+ITiDvFLuX91AbQgCQjrOAy6ErLSjUBn
	jHuS84dx+dDniAqDx0SV/2MH4kN2mVlb/pnwcQ56m1V5ZecgbQ3mrkLWj1m04I4lOLQ=
X-Gm-Gg: AY/fxX6J65aOKaqP+FGfcNykBEXyM2fxBvbzngbgX6+Szjs0q0gag+gMS1jPRsmEZjs
	zC/Y54jly1seDlJEDsUy14yuNRj3rT3ZeAj5gJb0rP5oUDR4aL8I1wct8Mf5loF1XgLNaKI8w9A
	UfZX/IGpvV1Mv1vumBgL05Dtykrf1ZqRIaYi37rwgTol4mXV/WTawzEf2I+mL6VRWbjAK18VPs4
	MLpdLWDlA8/6fTrVnCRu+3HQ9up4+uchOFWFCCd9VqXA3khMRj/gX3lfwH8/VBSs7+lRgG8Inun
	FDxvteWFyGd1EBOSetDtCgR3hwqsWWwgUty3cq1Et+v3eu7d6uexZZTLmFoSqKC+iD4j7wEBm81
	sutsGSKjtJou20WiuSiX+NHl6wazzodWu/5GUXffQMQA+ip6O8VzVW8Gq/Z4s8HU0BAY0uFGJiT
	i0Fq/Tz6CFXb4NYNW1z8RmGcTSTw1JZSUfWlFpT1uafFOB0BnSMwsApkq/7VoUQe0KV/1iYltzw
	rE=
X-Received: by 2002:a17:907:a01:b0:b86:ff83:9e98 with SMTP id a640c23a62f3a-b8796945c59mr235945466b.28.1768575049974;
        Fri, 16 Jan 2026 06:50:49 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdab55sm2699427a12.10.2026.01.16.06.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 06:50:49 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/5] Enable Bluetooth and WiFi on Fairphone (Gen. 6)
Date: Fri, 16 Jan 2026 15:50:46 +0100
Message-Id: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXM0QoCIRCF4VeRuW5AhdzYV4m9UBtrIHVTq4Vl3
 z3Jy//A+XaoVJgqzGKHQh+unFMPdRLgHzbdCfnWG7TURiplMPIzVwyrQdfwy4FR62Dt5NSZLh7
 6by0UePub12V0ode7022M4Gwl9DlGbrNItDUcvJxgOY4fJlT6rZQAAAA=
X-Change-ID: 20260116-milos-fp6-bt-wifi-22faa7b15e8c
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alexander Koskovich <AKoskovich@pm.me>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768575048; l=902;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=j19KBQWDe/Rz5gK6EWY1R/yqcx2IUC6jLDUJGShA1/I=;
 b=AaVq59tmNLE1rKJlRmbsER++FqM7Y6AAPQgnHYFl1DVIC3/IMl2TgqHdcIDHspoyDIDl3oNwY
 ATgvA2UOkwnBzhuODE17gjMxFY+W7ZD6UxV3MaEc4mglUN0mRTiNtuA
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the required bits to enable Bluetooth and WiFi on the Milos
SoC-based Fairphone (Gen. 6) smartphone.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (5):
      soc: qcom: pd-mapper: Add Milos compatible
      arm64: dts: qcom: milos: Split up uart11 pinctrl
      arm64: dts: qcom: milos: Add WCN6750 WiFi node
      arm64: dts: qcom: milos-fairphone-fp6: Enable Bluetooth
      arm64: dts: qcom: milos-fairphone-fp6: Enable WiFi

 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 191 +++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/milos.dtsi              |  72 +++++++--
 drivers/soc/qcom/qcom_pd_mapper.c                |   1 +
 3 files changed, 253 insertions(+), 11 deletions(-)
---
base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
change-id: 20260116-milos-fp6-bt-wifi-22faa7b15e8c

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>



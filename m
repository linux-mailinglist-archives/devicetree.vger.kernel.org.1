Return-Path: <devicetree+bounces-77605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C6190F615
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 20:33:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB73E1C21B7E
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 18:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C621157E62;
	Wed, 19 Jun 2024 18:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="pBO03XKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867451848
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 18:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718821996; cv=none; b=iybZmCUzI/UZI+pTSoIfz3utOPL99XaDS842uPmfhWHm/8m3YagjktcLxaRK3tWILerg6sNyoEgS/T+Q2NDUqggZW58ZWJOCBo1WEWyMtyrO78aim+qPcl4QBXw7YreGFe2yTxK7FhYSvWHbsOTqOaGIuxBk0km8dbWofwkK9V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718821996; c=relaxed/simple;
	bh=92mU/xikCqLLaH2DVhreKySC6u9LEezQMALGQAdfOZg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RMnkgUUDKuM/CP32BJvRmXuqdIvGFLuXFKjMXkj253C8mSvNEMjRXFr8jD2+S3tJLnRCuTy4sEG7iHBYgwDLbsPfEI2fSp0HqyGEb2wchFxIJi51nO+F31EssqJZj2r4iS/wKS8CqMEXb7xdGoMHH0mU/L2WTvbtUtVDpZHX+TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=pBO03XKQ; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-362bc731810so83173f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 11:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718821993; x=1719426793; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KoU88YQ9ly0f7ZJ/ZbHDiM2tCrY3AmT4ahDXIv2paYY=;
        b=pBO03XKQL093hITRvjZoSgp+NIreIOgMhIL8TvLnVjopYiGMEIWFfyFsWjNuc+8LTt
         RGFnGpPBV739l44pes+fkp+QDDMxStBGUVJJ29r3zCKvNH+bgEymvVcWJHl5wlkL4RgL
         HARaR6x/jkvFBVCVLN/goyGdxQe8DEN12p3IxoCj94uLswM1aq/jxkL11ExdqqhEYi3y
         lSZaK77fvXxvuJfw7kO8eRWo0FfRYbGb8vr07SEdvnhertQ2ktknDc3n1TiJ8C37P7Or
         9miQy95CTCS+NEUSp9i06UccQh3AW32L4aqHUUsg9vi6GsZvX+SghZRswcOratuJDlW+
         Sltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718821993; x=1719426793;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KoU88YQ9ly0f7ZJ/ZbHDiM2tCrY3AmT4ahDXIv2paYY=;
        b=CsJZy5KileqfcSLE9L6f2e87dY2x2IhftwyOBy1W7JpqUChJxVuaJ55eZwf+5Pldqh
         rUbMR3Ej6+K/YCs//jyDv13zIaKWHD7Q7hzL79cv/NQ6fAbWRWenyoy42aNaBVNZ6BFa
         r27n5RcSNkmPPfgqVmBG5OUdegtLrB/7Azz93hVSzUYjmbJdCi0vyC7AowGN2ZmR4J2y
         HzfriTeIx+TUgUMCvTKEGCN2xBV09WBbVuWSYR2T/DQ+1cYUMPgpF6rrBTxlkmplvRFp
         MgstX2hWCRKiJymuLUUeW7SVhv02qPLFDsjCLPPmLSoHC7k25mjIECsor3tpOwIul+d1
         FVtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDfkgVgeRfL8gBX9VgpJvEGElz5Mwebz8mVJxStkh+QRc7QtC0YlGg8N7dY6tDeRt/Cm8YkRU1bsOJtMvdPhKPrsnhwasVycK/ow==
X-Gm-Message-State: AOJu0YyqkeGH/VkbdmltulLpmJuec0DEJ4kTDhsiaatuMhxVMWlqBTRw
	kmwwttoqK5SZVh3o4vCY+/VwHtb6nKwE+pJwesH1C3d5TLoeKxnvoUmhecjyqik=
X-Google-Smtp-Source: AGHT+IETG5LcNQbiEWNnEhPt09r+tCBRtoPh1Vb+eCZeeGLMwJUAbUmHsRulZ4D1s8qUlB6O94y7CQ==
X-Received: by 2002:a5d:6945:0:b0:361:1ef3:71d7 with SMTP id ffacd0b85a97d-363170ed44bmr2922036f8f.3.1718821992776;
        Wed, 19 Jun 2024 11:33:12 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:991f:deb8:4c5d:d73d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36262f77ad9sm4603238f8f.109.2024.06.19.11.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 11:33:12 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: sa8775p-ride: support both board variants
Date: Wed, 19 Jun 2024 20:32:52 +0200
Message-ID: <20240619183255.34107-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Split the current .dts into two: the existing one keeps the name and
supports revision 2 of the board while patch 2 adds a .dts for revision 3.

Bartosz Golaszewski (2):
  arm64: dts: qcom: move common parts for sa8775p-ride variants into a
    .dtsi
  arm64: dts: qcom: sa8775p-ride-r3: add new board file

 arch/arm64/boot/dts/qcom/Makefile            |   1 +
 arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts |  42 +
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts    | 841 +------------------
 arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi   | 817 ++++++++++++++++++
 4 files changed, 882 insertions(+), 819 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi

-- 
2.43.0



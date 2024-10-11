Return-Path: <devicetree+bounces-110549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B8599AF42
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 01:20:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86DCE283B2C
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 23:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6CB1E490B;
	Fri, 11 Oct 2024 23:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="YVZQ8UqY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7451D12F0
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 23:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728688825; cv=none; b=pf2EWEBc41LXGILq2dWsMhNGWzp53GaC78yN6gKAg8dTB6lB1GqR0JlXqTMea5+TyJ5DRRB6eUScmR0yunVEJyRgHS3ZZAdQAnLaURO27GPhRuj1Dsdx1NoD3xtW4ndPqtXE4s4DLhWkawDw4hwdY8CpJAvQrVv38kHCbdyi9dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728688825; c=relaxed/simple;
	bh=N9nDXoTGhNDbp9x4MKIIxmkPH7u9rknjdJ489yrHSSI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cmAVlomnrZZOmTFut/BtyPkUjTCeP7DAn/eG0/HuEXpTs9TrxXLqBvEEnJww//AGCnY3uP5xFjOLkPAxvlVfSE3Ky+MhczNUawK+5i/6LypB2DL+CuNRsKMZd4yKQNjIEaGXDRJH7C9BzqwKVRGWafNUd31p88PSv0/JKLrpBU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=YVZQ8UqY; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4603d3e4552so25366661cf.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 16:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1728688821; x=1729293621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mAh+zbWt6KyD1XQvhob2WxW+jNwJ1pd4ci6zFtaf4q8=;
        b=YVZQ8UqY29WM06EwSMe2DKIsy1dCsUFwf/+/wBWUj5x7sylXbYtkFuAI23Okr4JrI3
         3Ffff92C0R5HNV7eupf33SovFEa9WOqUA8svB/i82a13lCo/Jy8mu5FIfak8lDEp13cA
         mEWbw/UrDNm30+xXx5b4Km9eEaTAbu1701Bn3hDZIrIagUThg//gGle9lwe5CrOXV13o
         r1BA6sGGep5ftp18hsr9sW+7eyQC+ED2rWrVX649E++5tCoHlSDp0U6GT4UhW+6/OF0F
         ryKeI6prqsKZJdEuz+OkPFkd8x8SB7MTbi5ot3CykUwqnY4W1z6jXzd6EmHn7EJdPGKd
         jfzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728688821; x=1729293621;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mAh+zbWt6KyD1XQvhob2WxW+jNwJ1pd4ci6zFtaf4q8=;
        b=vl8fvWQzs6BgjKXCMVqGDPRVCjmCt+l+Up6qkXwIwks+e1BAefj06a2Ulj/upfmWrN
         Gf7eyE9Iai3/G7JhKfPIDN0D0Fqf4MhJjwYZqbsrkv2uQTDskqyFquOs2F3ZvisxComt
         CU5ozq58+kb3d/qHvau6DPB+c8hnRFyaAdcAajjNWcK70hcEsocp9CI97CKvJrBCVXhv
         mOPQH7WZqj7N1dSFXiTTfLZk0XhDMrSpvKOH6wz8s31bSm/xyvqYIW7TkEd2jAT6rbRL
         0gt7wDJTO0rDifKluidCnHiCPGucOdDaJMFbMwg+4iRXx3pkL/V3c48F3UAHpVwr1QBa
         +DZA==
X-Forwarded-Encrypted: i=1; AJvYcCXvPCR8z6VLkjQNSpS5un/N2f/vJIbn9Tz0e9LTqmhX6H9XeFIiPJENl2ff3XyXB6ZO9Snx7z9wN0YQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc5dWn3Jc/H5qG2suiEWpkXc9pJcoD5HgA8XLWa3q2CxJLsfhH
	JG7J3DWqA+mtvLq8RIcRtdgGXRpZ8JJvNib6bR0/cE+yV9/pDD30iZXEasVi+Qw=
X-Google-Smtp-Source: AGHT+IEtCnEYlF69zuVjVFKwIZFEx8PnBR19MdQGWN4MFFkom5KeV6aUsF+uwV1sjfm7ynb6WreqRA==
X-Received: by 2002:a05:622a:53c4:b0:45c:a9fa:cbfe with SMTP id d75a77b69052e-46058444fb1mr23670861cf.27.1728688821143;
        Fri, 11 Oct 2024 16:20:21 -0700 (PDT)
Received: from localhost.localdomain (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b11c0a8902sm89949785a.31.2024.10.11.16.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 16:20:20 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 1/3] arm64: dts: qcom: x1e80100: enable OTG on USB-C controllers
Date: Fri, 11 Oct 2024 19:16:21 -0400
Message-ID: <20241011231624.30628-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These 3 controllers support OTG and the driver requires the usb-role-switch
property to enable OTG. Add the property to enable OTG by default.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 7778e17fb2610..fb16047d803c9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4199,6 +4199,8 @@ usb_1_ss2_dwc3: usb@a000000 {
 
 				dma-coherent;
 
+				usb-role-switch;
+
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -4452,6 +4454,8 @@ usb_1_ss0_dwc3: usb@a600000 {
 
 				dma-coherent;
 
+				usb-role-switch;
+
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -4550,6 +4554,8 @@ usb_1_ss1_dwc3: usb@a800000 {
 
 				dma-coherent;
 
+				usb-role-switch;
+
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
-- 
2.45.1



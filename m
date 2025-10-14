Return-Path: <devicetree+bounces-226352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B72BD74AB
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:43:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CFBA734468D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 810DD30BBAC;
	Tue, 14 Oct 2025 04:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZezoxSMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F158330DD18
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416969; cv=none; b=c4B5KKuoukFJWPDLT8QlqH5+n/6rKUg9TenFEeUa7gAnRRFACBzJtwaOfNO2gBWONO6mBAE8hF3BK0AjnzFWUnrpVkbKsVO6OjcFjBO459qz0lZ9F2BR8KUQviFwEQrLA1w6AC0ykSKEXPdkP52jL7/ISvAs7mBgkZjy9E5xWdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416969; c=relaxed/simple;
	bh=isCQg2Qmxa9ipukkV50sTI8P8heS155Zat21GVABUs8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nFXU8BjrDLOBavHch+xj387Fb7zFJa+ZkcparWqgvvC2frfQ9kqZ+bsB8VCJcCmhpFVpDxYHTXoNq2BGRTn5rSn1qMZn+2z+1a1uyvwIffvaVx48kFSkpaQykwgGM3GzSZddlMOdn3D/BD6UnTCwMauHgpVUPkvTZxp8PMUbSFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZezoxSMQ; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-77f343231fcso2974202b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760416967; x=1761021767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdehfY3g3zjxWma/hGhUnMxogBhAstUttJRuG22ztsE=;
        b=ZezoxSMQfVQTYisSNqoIJYa7PSe+sePD5iG2SLuEBg6p/jYCNQ6QoxV+KMmB2qsCQ+
         YJ0ABhuB5QvXwvtC1Q6DHmiqmXlKvc3+4EmiP+0FY+xSFlGHgzrddyvpavxo4djpZqbP
         lal8PVygauJtNBJ3PTcQ6e1+6Ly9qLWPrHhKCN13CPPtYW8j+NY6bbJwpn1Y6H8owno4
         k46HPOE0pzNSF4LCgm/3lXN/4s914MK1eecCw+DKBvOf6QBShTHyH9MWOScm+iAHSN0p
         YzlJeLZGbITW1AZ9id83ij6xHsXmvK/6uimXEQbLJ1EHLpBOMQHlSDVfRwgL2EnHgmYV
         8A0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760416967; x=1761021767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TdehfY3g3zjxWma/hGhUnMxogBhAstUttJRuG22ztsE=;
        b=vBpF1wFNZ2K90dBnDo295AGoM/8KjeuSeShNE15rgs3P3K27R/FkgxIftwqSxtMii7
         ph4XeNpHhynyNIxCIcIq0ZLQhIH0B+HCjy/Sx5LmzYLqR7lB+wkX/datZyFT5rn9jWX+
         qTO/tKSSYxNPdwxqcxHhQcTqPLBzvveZGDWFIf2LgsKWG4zbTXFVdgMRK2uTV+EOKrKM
         hnJH6On7PCft09eMBumPuvYew/44ULd2uM0awu5W6T0fxoK7KEvz8dZ6Iyf/3Yl7sjGN
         en3JYzz2qBLZj3JT1s+1bdDKFimBKNQc3kTZB6hxLRp4uJtz7jDkcVmd7IddbJMeqrCu
         fCkg==
X-Forwarded-Encrypted: i=1; AJvYcCU/RbLKKJ+ltvHxazLElCPyma56mAYYr4G0TyVPEbABB2WhgdC89k4+0XC2+D0HLCWWO2pD+7nR39Kf@vger.kernel.org
X-Gm-Message-State: AOJu0YzrXV80GFZzNbOK0vaB+HiZTPXTJxWExrAHMDS561xhizRF0EHV
	0ceFIe7wZzL75NgE6YQt4OhRK/jjGZhwQt4bE1l8IDj3LUKuJfi4qH2b
X-Gm-Gg: ASbGncs7C/kitxz7uvFrg8D+hmCS2R30/Y8paqtRGdEo5zWK7j/8Z8k0DWHpGxSgDzs
	JjVTa6Eou6UNF0X2epFk5xmtMHpLCU78XjO0l7WGwTtypl8vzj8Ra33pgZrI+dYq85fe+q6ATfl
	xydFYLebsQnksWnzyizfCcnbN79MFQxzXtQ5y6OYbewfwXyx205fjO0QbSOioZdRdU35Xz9yXns
	OHVKR91VvzlCSPca0dasRkcTdjNJ5a1fdO/BPs+YLR+PLYNVSCjo0rPMbqgSIoUbU9b3eU01d03
	KLwurwGWoTb3hRfTUg/hn0j/8q70VcHsUdHpsE9PMdN1s+e6RnliRYG5uzxTiOyBK+iOVArnlPF
	vXScPf1bjNEDJbTuh22bUZyDqvTiGYjwBsoRO
X-Google-Smtp-Source: AGHT+IFVo7nH9HmOWaQJIpTOa8xxtz0naCajk8mBW0l5w2WcBlbPqaeuoOio18OCz3U68lcFPbDpDg==
X-Received: by 2002:a05:6a00:a14:b0:781:171f:df6f with SMTP id d2e1a72fcca58-7938762f586mr31416228b3a.18.1760416967419;
        Mon, 13 Oct 2025 21:42:47 -0700 (PDT)
Received: from archlinux ([177.9.216.59])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-79b65528a51sm8440684b3a.85.2025.10.13.21.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:42:47 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] arm64: dts: qcom: r0q: fix reserved memory regions
Date: Tue, 14 Oct 2025 00:41:35 -0400
Message-ID: <20251014044135.177210-7-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014044135.177210-1-ghatto404@gmail.com>
References: <20251014044135.177210-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

ADSP and video memory regions in SoC dtsi is misplaced on this
platform, fix them by deleting those nodes and redefining them.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index a3b81403d180..8ed8a67aae0d 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -10,6 +10,9 @@
 #include "pm8350c.dtsi"
 #include "pmk8350.dtsi"
 
+/delete-node/ &adsp_mem;
+/delete-node/ &video_mem;
+
 / {
 	model = "Samsung Galaxy S22 5G";
 	compatible = "samsung,r0q", "qcom,sm8450";
@@ -64,6 +67,16 @@ splash-region@b8000000 {
 			reg = <0x0 0xb8000000 0x0 0x2b00000>;
 			no-map;
 		};
+
+		adsp_mem: memory@84500000 {
+			reg = <0x0 0x84500000 0x0 0x3b00000>;
+			no-map;
+		};
+
+		video_mem: memory@83e00000 {
+			reg = <0x0 0x83e00000 0x0 0x700000>;
+			no-map;
+		};
 	};
 
 	/*
-- 
2.51.0



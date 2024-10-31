Return-Path: <devicetree+bounces-117803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A79A9B7DCF
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 16:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC1001C20C6A
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EF91A2544;
	Thu, 31 Oct 2024 15:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QIDAijFT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC5B1A01D4
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 15:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730387252; cv=none; b=KiepmrCyHSQRmGDdIyDrYU6K27UBqC++RbCxKhOcZQOwKFcunhMkiGym3TweyofUEcWdo6TWlVipkK3j747WyQFjGezcEXRZ/Hz4c95T3vn6UUGUkeVUKVVMUEWF1OgeFOkzUrDnHEV6S5UwlSTmnIkYPoKB/n8UpXdFh1hu+i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730387252; c=relaxed/simple;
	bh=xuMBjUvAKqXolEIXjpNNDoueaCU5WTgEInacqZx0AWk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H6xm7jYC1glqn/e9Af9roR2sf0+bQQV7PcTcb0n3Ig2KL+qKd4hsmuQDWsrCYHLo6OxJmEAyjrswMLS6eCT8/Ft/f2WWfTiUU0fD82Gk7fso3DAtYDDajACtLXu+1rrF6lPEM36RGtPYmwgYO0OEqhZhxll4OxJc0EtuVlPpEv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QIDAijFT; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5daa93677e1so465701eaf.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387249; x=1730992049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=QIDAijFTJ2e6a4EEMcL9dLmc6m3t1PFC2KWC8D++eR7z2jJiOUVZYHwZ+T/rLit/0U
         ORYjiPZjDZM0WIqDZCqNnr1hIKMcB/FVy+Xp+D8cXXz2P/NOpnPXdWAbbQuM8s9R2efp
         L5dc2tLmzwYYMPZDXWwDjdhZ10y4ey8yIurEspauQKaPpIoekmlup1tjOsOqoLwGpaIk
         +VLbuVeSE39ZT692Nl6U4v63m2bp0MItxchcMlDIKiNj9sd4NIRiXCPTx7uIrDiPsLTN
         teQ6h9Q3izSWLtgeTuPl+vfs9MzZya1fItGjFnH54UpHD8gRj2xfpprFV5gb1HRe5W/j
         aexQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387249; x=1730992049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iXZ+CnxjRwYLZttNtH/3TyIsHuu13PbDRaYY5aMWNrI=;
        b=dBqPmosMoa+dfnsGnvQqVDC5fbHC0DxYGQpXUosL1JlDMw0QueHZvzlMzvpbCFzzxi
         t7Q118AN02WTIS2klFcXOLNjue/i3L9J2pyxTR7tzZKo0g8+ZXX0waNFKvYNOT2NKN8Q
         fZYppb9e7IIV9gujivvKpDbQwCag/8E/wKFtpegg7aU3uWrBWaYWTiFQosCPKJmzycwG
         /YT/8Ft0Bv3wy071BsiyB8Q/CCKAqtS25bTtQcMPK3ShicjNfwNxGU4r8mm7+R7me7Ih
         c/ulHehoFicEigfcTGw/maXTgF7bNziJ/pfg9mOdXQuW3h2VxEuU65knJQ9UWx9Angz0
         mQeg==
X-Gm-Message-State: AOJu0Yyfm5/QSqqnSLyk4jkQwq6s/r9EfFIzWp23WCzKslCYCulJtAMS
	Gfxk929yWAikCu2fOZSHDnAjtk85WdfynBWGX7OW+L244FEqeMk3
X-Google-Smtp-Source: AGHT+IFpwhdGkgA5cSeiVkgJ9W4SPMmDL+naqa+41aoQaq94G7PKFapqE8me7huL2B74H3NSbmXuow==
X-Received: by 2002:a05:6820:1ca2:b0:5eb:b282:5916 with SMTP id 006d021491bc7-5ec23a8d4c4mr14701062eaf.7.1730387249341;
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/3] arm64: dts: rockchip: Enable GPU on Indiedroid Nova
Date: Thu, 31 Oct 2024 10:05:04 -0500
Message-ID: <20241031150505.967909-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the GPU for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index a4b930f6987f..065d44735001 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -242,6 +242,11 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
-- 
2.43.0



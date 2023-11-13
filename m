Return-Path: <devicetree+bounces-15488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 737087EA5DB
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 23:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3E2D1C2083D
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 22:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A67A3C6AE;
	Mon, 13 Nov 2023 22:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WVEI1Zl2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CD13B79A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 22:15:36 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31CD0172A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:15:34 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c51682fddeso64633661fa.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699913732; x=1700518532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KajBuUuJpwuy15xSzO9YMy+TSc6B+gUFFD30MmfVQnM=;
        b=WVEI1Zl28JemvpDCFyVQCs7IgWzSn8bftEA8hSGlp3GkYM/5L7rwDGU/uTFG+S4aKG
         uYlTX3TbPmiszUFlD4PYb37ZJnvelFX89oqgqX9EFtK8UZ0QcknmeuZ7wMXAHSPYFaoh
         bEeqApwL0JW6Sdsyx8qtNEGw0mKKMRot795jKvMEGUQYBk8auhh6ulEYPnOLcQv3M96k
         nZPQBIyG+XivJLKFLBtb4UZFk+wB2Qis4ZMTr3nyUheh5X35x+LkAdra9AWjGWYM2m1V
         JN6DurXjHToCEb/VmWEO92Ka/vtnqgG0/niIr+31HsSTdq+jXHAParFrw/FwNm795V6P
         bVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699913732; x=1700518532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KajBuUuJpwuy15xSzO9YMy+TSc6B+gUFFD30MmfVQnM=;
        b=Yajq3DMVdeOuXO2XvTIg9lQ2AYu4uvue9b9I84ZGKZi38qI256HdOs3UnN7xIw4KQ/
         6v6jkabge1Y7JBGYcfqeWTBjkw5Gy76yMfSmwQgtEiFtP0FoT4sYoQNh9xgJV/2X8owJ
         gud0x415kmhdAsR7nXxME+X7cRkfuPYwYTndbTPWeFI4qHQ79PFLnVXTQO91DLdZwxL/
         I5CTYxReaF9RRYm/3DxKpD+tCOIu5y0tfIHSMC/MvkjHC6o1d/S2Zlol2qEmQ2m7+hG7
         4IE7IYk7WDXfaW9zyW4MjxaYqMn6Kv7JGPq6qMe1YAN2+JLUxEx3J+00qr96wVvk6LNp
         IcYQ==
X-Gm-Message-State: AOJu0YzfbNZ1zc9ps+6N9GUgOJ9aJiYHyTHAlWH3I96Rkku5n9W1H4Yz
	vk+Lhb/DmcBegUB0mQUKyTVLMKVpAxh8y7I5eyQ=
X-Google-Smtp-Source: AGHT+IH/jEmW6mRmKSmrElSDPBjzh15unoJsWN6Vt6NCJockDC6d+ppH/ijeD4ElxXqQBySLegWChg==
X-Received: by 2002:ac2:4a63:0:b0:504:33ff:156a with SMTP id q3-20020ac24a63000000b0050433ff156amr224964lfp.11.1699913732301;
        Mon, 13 Nov 2023 14:15:32 -0800 (PST)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id w8-20020a0565120b0800b00507f18af7e0sm1097578lfu.4.2023.11.13.14.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 14:15:31 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Mark Gross <markgross@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: qcom: qrb5165-rb5: use u16 for DP altmode svid
Date: Tue, 14 Nov 2023 00:13:29 +0200
Message-ID: <20231113221528.749481-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231113221528.749481-1-dmitry.baryshkov@linaro.org>
References: <20231113221528.749481-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Follow the bindings and use 16-bit value for AltMode SVID instead of
using the full u32.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index c8cd40a462a3..88b37ceb13ed 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1425,7 +1425,7 @@ PDO_FIXED_USB_COMM |
 
 		altmodes {
 			displayport {
-				svid = <0xff01>;
+				svid = /bits/ 16 <0xff01>;
 				vdo = <0x00001c46>;
 			};
 		};
-- 
2.42.0



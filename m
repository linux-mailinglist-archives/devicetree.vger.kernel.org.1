Return-Path: <devicetree+bounces-111017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E448099C8AF
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 974041F227BA
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 755A91A0724;
	Mon, 14 Oct 2024 11:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EhBknwcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1299176AAD
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904928; cv=none; b=Ln87P7DMTXOXwqfdo1UdiXcvDS0roNSVRHOXEp+upPDQSggLqTpJV4Eiuq5itz0FCJCz8nGSdF/6A27l7L20Ifm+pgUNtgG0NfTfATl/fEa/UijJdOIkIc7dTPbAz0jVfSMxvgF+H9r4vjpFknXm98DOTQts5slb73+x5TGkA/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904928; c=relaxed/simple;
	bh=huuKwES/cF9ed1PG1Dp6LLcM8G3XLbe2d1p8Txn3uKE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hzL5pMc00Kuvs+GxRPiTaATRsF1euNsQl4Q1VQVajjPzndtwEm7+aR5yLh4vf7MNAT1T++lc+fytJWl+yz+8LRM1Ylwe036nJuZnsS5206Yl2Ou/aqs5e1VWplLECaqW7cw/bfwr+Er1MAwkqt2nWFFzNKBxQAVcoqSMKWxVbK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EhBknwcJ; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d495d217bso3692879f8f.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728904925; x=1729509725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=olZ5gRgNTPPzNeZAbmY0eEAkkRdL9Boc1GfiFZ+n8vE=;
        b=EhBknwcJx3vFkmaX6GTAhIwTFp0QGtrF9BsTbsp16XoMXq681sQDAYS+hexA0UB5+D
         C2R2NzfvuiPLFHJhAichMlGWuytD+fwUYD9JP/cYWVmT9mSsoNX2FfVKc1EVGWQDHnPp
         iqYUS8q8cioHf4fWin5u6rtJCiw/T+EbLn3aP3rwXSADNd4m9RBozex0DnjQjXLo7Tdx
         8PVVNwN+TgIRuO+79qIdCNLlVsDgWXYhCrFOPKIQTvYihaSq9V8DuWvEQ1j5Pxwvu/7X
         LGpL1w5Yu5vmvk/BVBQDwahJOa5GcmSwTZL2UPG0zmju9L/6ev3uYGase4aVLsWkqK8L
         zIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904925; x=1729509725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=olZ5gRgNTPPzNeZAbmY0eEAkkRdL9Boc1GfiFZ+n8vE=;
        b=fNWEAcfhuLHuNxnctJK1iyMjUA3SuKmvZbw6SevhiSFkrw4cB8v3I/sHN43e+Kdfkp
         TCLESPwEPeLfhRRVQJClHmZiDtdSK1QIRWocehE4JENDeTnk7Eb1KFrbUAB4eui9sCyY
         0Y3EVMr+WPACfYJz9XvwanGHmynhZjuArneSW9jPUt8T0B3C+nCR7kdUxsAKfhMGhEnc
         mdQvfRhlj8znSJniy/5TFvCvAVBTtrTMazkzcNNYJMzXa5ftyugL9oA3EoTJq/Q5YG4B
         x65u4TfAN1kI7pdeV2LZXeyL0oC/Gpjoj6ipIrdum42nEJyIZA7TdDm+t5VrAoj7CYST
         i05g==
X-Forwarded-Encrypted: i=1; AJvYcCUbwp8A8tHMa1pZ0qqOUj2SE0j1b0uCnqPe5AYTPbrcWPdstC+i3QlGlJow7Taj9dnp1q1mYeXv8Vwr@vger.kernel.org
X-Gm-Message-State: AOJu0YyxJcTvV2OnQcTDNchEVYnuorKJmHv4/8AJ+6DMK6EzpAMn/o5G
	Jf1c+PB7nw6PGagdfVjBtY2dX06qwaqZF0TpffPPmUt20AW5XqNvWrA1VBZQe0FCUqF8wq4y41g
	/
X-Google-Smtp-Source: AGHT+IGiC89HONHqf/hzy8YyXylx/pE0yi8XqZDGzJs001OKJryNysL6JrtDDTUdjNon4ZWTw00p8w==
X-Received: by 2002:a5d:688c:0:b0:37d:46fa:d1d7 with SMTP id ffacd0b85a97d-37d601fc3c2mr6330831f8f.57.1728904924842;
        Mon, 14 Oct 2024 04:22:04 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b6a8666sm11098702f8f.22.2024.10.14.04.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:22:04 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 14 Oct 2024 14:21:48 +0300
Subject: [PATCH 1/2] arm64: dts: qcom: x1e80100-slim7x: Drop
 orientation-switch from USB SS[0-1] QMP PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-x1e80100-dts-drop-orientation-switch-v1-1-26afa6d4afd9@linaro.org>
References: <20241014-x1e80100-dts-drop-orientation-switch-v1-0-26afa6d4afd9@linaro.org>
In-Reply-To: <20241014-x1e80100-dts-drop-orientation-switch-v1-0-26afa6d4afd9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1066; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=huuKwES/cF9ed1PG1Dp6LLcM8G3XLbe2d1p8Txn3uKE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnDP7XXopuTGjM+skPFe7jrek5RkLqaEhJnd3iP
 h/72wpJ/1SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZwz+1wAKCRAbX0TJAJUV
 Vg7lEACcCeIl2kFX9Q7qsQzvdF1cyYmGZosHNM421+ogp3DVZ3FYMVWGE07Guv7WthDpFcgZoJs
 g67/hb0obGEm0gd/qnH5dKquyIkSgfMC2cdLssOMQUrgevu3S9awpE1dCUzKxqPVIwTYlttN//g
 c0CkGkqb4Vvq1vWJ3HCAo3x6FGz4hNA9MKD93pX+0Ftt8O8lSF+TPWCpF/AkQkkD3FLVK6HCc0B
 vhhQeo1RKP4iWHr/qr1ttF4TXMwGMTLe4Y+2Us632GRTp2gKEMYo+DQReRp8u51dNfSUhTbA8FF
 sWsNNtr074ARUxGDUUwckcmD11ENx/gl4C6kAt9M099Yu+K467XW16UKmzU+9pIfsFTydW+mU7e
 UWwtSrp7kvVVcRtHhsfrOsmfiECB1ltKP3CBUYg4Cv3R79NnOpj4iyrY9OvrPmWHJE5qA0JoKho
 k3GKC+UeeIsKNsZ0sFvEbYAlj6tzT/0zT4YfWe8P6G29Rpe+xd4pcwHdpXj9ZmKWEjbby8XpBBa
 CePrL7yMjf4YWxodiRPvVrnbXDECyU/qqhO08tWmDW1X2/E2DhddyUV4sLf0YN9B8nzKvgf7+8W
 /2r9lVnGmiGvCGwonWjwAWaegoDkJ1MX4ZorGVhE9AfGNoaED+IkgU45pp3Cd/edjG6tQorg0Oj
 oqMUNbuWOcAB/Mg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The orientation-switch is already set in the x1e80100 SoC dtsi,
so drop from Slim 7X dts.

Fixes: 45247fe17db2 ("arm64: dts: qcom: x1e80100: add Lenovo Thinkpad Yoga slim 7x devicetree")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index 1f292cd4a71305e81edcd1aa87f100881ad9dedd..257907df5a649d5208bc9ca6c02f65f38b848da4 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -909,8 +909,6 @@ &usb_1_ss0_qmpphy {
 	vdda-phy-supply = <&vreg_l3e_1p2>;
 	vdda-pll-supply = <&vreg_l1j_0p8>;
 
-	orientation-switch;
-
 	status = "okay";
 };
 
@@ -943,8 +941,6 @@ &usb_1_ss1_qmpphy {
 	vdda-phy-supply = <&vreg_l3e_1p2>;
 	vdda-pll-supply = <&vreg_l2d_0p9>;
 
-	orientation-switch;
-
 	status = "okay";
 };
 

-- 
2.34.1



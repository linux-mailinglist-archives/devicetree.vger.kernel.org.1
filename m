Return-Path: <devicetree+bounces-206288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ED2B2BF3F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AA781BA297F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1AA326D4C;
	Tue, 19 Aug 2025 10:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zO5b/FNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC6D322DB0
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755600339; cv=none; b=TmHxK06qgiiVjlMUg0PiMAcpcIZOjOGQkU4/kYQb+3Du3G7pjsKhq8BH7HA4gVTrPv1s80WsVZNHqpfZDga1UpOjsTILZd0s2SrGpgKA9TId7P6SvEze/fXVp5+yf0m6gTYwUIn42PoeeIlVwkJfv+xB0YqwP9lOe2sgUJpo9Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755600339; c=relaxed/simple;
	bh=x7zE6RyMG5SmYkscjJboHkA/xd9epaIl07B119p3nJE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nZkhZ1kUW6smtovkJCgGjdLAmhwiRdNcAEyK1tABAlWNIzIfBlW6qx75Q1Zewyegm1R+Z0tmwt/oj6pZdej8pvNBiIoF7fVUiS78N0RuGRVCy1lAwRhhQObhudccnjlChed2AbpeAVJ+uLq1SctwoBXEmI/gAIA6QP2HY2E7EU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zO5b/FNT; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6188b72b7caso6241631a12.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755600336; x=1756205136; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vlgDGE85YBp2j9bhgXZJumZoSN1cJSrjsFNnN/m97uw=;
        b=zO5b/FNTC7xce1tyD8qDp5D4oDIAErJZzk3WWxzQgXMIoCcrh9TDzwN2pyawSNOdDg
         RaQOuakjLT9tKMVG5H9+SW8yeD1/WEki7+ocuoQPmf5LFpkB+mDR8Z+o/n6dvvl5XGAC
         c8bI1vmku5VKL5kI/v1sBQWN1tT9ZqpI+zwPrwKFrC1tj03z1Cz2qN2srmMLVK/pk876
         WRwSzQUT/14fwIE6vI1jY1RkA+LN6iMS+/e4DolzdUdhjtgevR3FoZrvaSHEs08F2ZqL
         fFX6nMlGc+6x0QPXtWsEQgScIUY3q9yZ1nYnZFNau0kyyPnVm1sci1BKsqN4JXwN9tsb
         utMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755600336; x=1756205136;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlgDGE85YBp2j9bhgXZJumZoSN1cJSrjsFNnN/m97uw=;
        b=SfQWnm86Bk9HBEZnXTtm7d9vm4ozyEnKrQxCL3EL2ldVCBn5h7RDTdXsW3fRiX2IMJ
         1qO8wAsCaGghenUOFU7C24GFSkOR4NK0mege0Opp8O2Q+CfNQo6zycv6c3oYyTGUnBu4
         yOW55wUX7Z3L3h5L+ntcEoDQKVYt2Hl/a5PHhfOYgXC0w79HNPaY3uS0a3Ol3lOEmrrY
         4svS/r+pgIlHCfGqrBRiyxxyb7oJnTL6PSO722tDAXleXqnZ5jWp8JvQb9shI6zbIqup
         tfyBvHSGjhTBrhZ1CHiNwDnlzF/xRGD3HGYMlQG+yf8i/MBVQEqTGu/NmL0W2CactiSg
         zopg==
X-Forwarded-Encrypted: i=1; AJvYcCXGurKb9qFDfkyBmggbrFbDHX8Rmc685VpMGc5DTzy0ixAR/MSGfyDJzNk3SCwd95i7fh+8j82TRDqN@vger.kernel.org
X-Gm-Message-State: AOJu0YzK+I3DxF03yr31bLMSUomccweG7fAgY5r3RjBaGIiQv1k9eYNM
	KbzI5rfpMUJe6pCCKld6f9MIi1Rw/18TH/ZkPcaRwt639yRuONftrFoo+pxvLRKA+A8=
X-Gm-Gg: ASbGncuVPh20ke29vO/k/9AZmIgn0zbEogUYcbwlE5qUFXb35JZ2MO5sNZTzQoV2M79
	CSEOEZc5tbGG6us1GVyLe79uofnoypQoi+xZDVhntOnnVgMx1ON4onr4uhJlEerutDNwpRG3ast
	ozdgsX2Nud9pqHZE6bQKu0jghA5DWvyhj6xDjYu9z3k6PpeAgMJ57L2p4y5OcB4FpH+siNPOftJ
	17iL6POJCfn9N8rF0GqpnL2Pppffa85AWd87Gkkhv9U0dsbGeaob/kUFjL2lhuCLyCGwcewHlHz
	zBy+UFsQPZMClK+6g17MPK3Pz/0nz+CsG4Na7syvpvxITsBvHgvD8F+COuNI/qbAu44TBTqirH6
	I8gTxmuuwdrBSHzMvLd4w48AgfTZcze58jxzc3FKc0ulHkNQj
X-Google-Smtp-Source: AGHT+IEJTLHyh0N/3ZjA8OKmxUPpDwP3GB0LJkHFUpf5OZrWH5pLrgfrVM4pyeZ8cSQdbw2CHOt10w==
X-Received: by 2002:a05:6402:524d:b0:617:dc54:d808 with SMTP id 4fb4d7f45d1cf-61a7e6d99b2mr1532953a12.3.1755600336112;
        Tue, 19 Aug 2025 03:45:36 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:db5f:8096:4609:9b24])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757a48e2sm1469787a12.40.2025.08.19.03.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 03:45:35 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 19 Aug 2025 12:45:23 +0200
Subject: [PATCH 4/4] arm64: dts: qcom: x1e80100-qcp: Fix swapped USB MP
 repeaters
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-x1e80100-fix-usb-mp-repeaters-v1-4-0f8c186458d3@linaro.org>
References: <20250819-x1e80100-fix-usb-mp-repeaters-v1-0-0f8c186458d3@linaro.org>
In-Reply-To: <20250819-x1e80100-fix-usb-mp-repeaters-v1-0-0f8c186458d3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maud Spierings <maud_spierings@hotmail.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

The &eusb3_repeater belongs to the first port of the USB MP controller and
the &eusb6_repeater belongs to the second. This is obvious if one looks at
e.g. the CRD or the Dell XPS where only the second port of the USB MP is
used: They only have the &eusb6_repeater and already specify it for the
&usb_mp_hsphy1.

Swap them to set the correct repeater for each of the USB ports.

Fixes: 9f53c3611960 ("arm64: dts: qcom: x1e78100-qcp: Enable Type-A USB ports labeled 3 and 4/6")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 9369b76c668b5c008fefd85d5ca18e87ab9ce93f..b02a66f0895e9c91e5403553620615e0a3bfd7a9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -1507,7 +1507,7 @@ &usb_mp_hsphy0 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb6_repeater>;
+	phys = <&eusb3_repeater>;
 
 	status = "okay";
 };
@@ -1516,7 +1516,7 @@ &usb_mp_hsphy1 {
 	vdd-supply = <&vreg_l2e_0p8>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
-	phys = <&eusb3_repeater>;
+	phys = <&eusb6_repeater>;
 
 	status = "okay";
 };

-- 
2.50.1



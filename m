Return-Path: <devicetree+bounces-126901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F049E3811
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7430E1697EA
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 10:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4951D1B4157;
	Wed,  4 Dec 2024 10:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zNi9kexR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589BC1B0F31
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 10:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733309824; cv=none; b=pFk2KaG8+NzoL5FX2v5KVIkuYy9bfeuasfvQOUCiAZSx+kznw+TWBB7GMuPQqbMCQUbKcw2znp6pIOBo5KDIpWDT3Jhsq7zPc7Rg1DpcPWSfb03gUKIN/wJt+68b7BJ7HvYfefUWVC0rsl5ESMWZ3nEVsR+wHXyWnesMhYUmoJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733309824; c=relaxed/simple;
	bh=gj2stqTnMgr1zbbnwgJTraruirMDBHHJ1dW+F8Q2mCU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uew0O26ETOHNfqbPUX1nEOSkMYwmhbPLkmF/oN7bkkenl/g6D2sOtOV+e67qCcp9IkATzJFKgSmHOhkM4xmjxxAaWp0a7idqawnbxslDHAZ56+RvfSnqIt6ZTzbWUzdvlQt4oSmp5BV9TNVlvpLwD4X/B8S3YyOrll36uXuijyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zNi9kexR; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-432d86a3085so56157075e9.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 02:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733309821; x=1733914621; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d2spfX4DimNadnQbqmuRAl4kw7SVvzY6NtJbFW6zK6E=;
        b=zNi9kexRSKksKwaYaZL2V69FAbQ+4gsAX/Vu3o+BYdos3THV78+2ZcJoJwS5k2B17d
         qkqZqIpqsMe1qDsaTMs9qpyK/b0SkKP98erR6NZ8d2/XwW+9W5iB3bUkyD3FNSdBYWR6
         tgwA9QpTslx9LxG33jPF8QTaMkNufkxHgNtb7tai2P5bPntPQzJBDiu7siwj2fl0sx/M
         0K2Qfi1kZqBygQCsE6SwKcRHTHKhn9M8S/qY3K2FNeum2EOul/vsEoQWZlf0NKPdoCWu
         8Y6FsjM3iBA7hu9ZTiWsMkYaAbS970Dz7ft7m0yCr1pQedGqV2kHasWqUsqybbRCCiJE
         ledQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733309821; x=1733914621;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d2spfX4DimNadnQbqmuRAl4kw7SVvzY6NtJbFW6zK6E=;
        b=DT3gnNvJ9uOxw9EcL/UPkgSH7aainNzBYR3H6nEtsUSbAB7s2IYpU7/A4AQowg0PmD
         6LUB2MaAKSOe2npQbtVZESP8jfVx67Avle/qyGg7c/2cFnV8EBnlCDXFUc9NmkjSCfKS
         OjH6d2uTE3nIUwFBC5QYEh1XWoc0BZiUaG8Ij1EPnSHTVmV2PnHAz0oXkH0yX+tRunp+
         iSVPt1EgY7MD7IzmS91wKZ77xdtOcxAW4G/EQ8bhXosVDw4c/vCpSsILyvN/T9Y46iQ/
         Fa4VQVoOYR+AbpWiMoHGdRGTCcvzWZCbXXX4zfr1r7+qDYQ+1crmHksxXoHLsTxLO0DW
         sBIw==
X-Forwarded-Encrypted: i=1; AJvYcCUP1moJIGbyq+dvYY6ux4YdVnqQ3AzSHDkU7iYCyDxOYW7GfuSTkfPYtL8WLS2msTksyI4JV2eiVnNv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbk9jCLuEdmwgddWAgBf4yXtHPB7evx6AhTQu8ECduAulpHucw
	1OvNzipPN/Yg5NGSpmg98mtG7Fg0+OymxsagVYLBoFa9saJcKjGy4aV5DVXpgOA=
X-Gm-Gg: ASbGncuN//ZPFQ3t66G9nsJVvLmS5YbIk3xuOgufYmGf/sa7ndf6yko28KdLUj813al
	pEHRSjeNc0HVnQe990e2c334zlCOMS8wZasg+L5TyQ/2GkOnzkH1WlfK59PRg/d1l5sBzMraYKW
	WeAjfrg0EL6Sl9Y80wzoNvVdx35u36kFVCssgKzDT+us61tsnoMNWt2zIUxN7KSHCsOYQOAUhqP
	YrpMtxWjps0bs0AATudLVY7jyZGouq6so08NWU2jxYloX/yzAQAYAGK6efDOUX+eMGBiko=
X-Google-Smtp-Source: AGHT+IGmJ7cXl/gvYpqTKIXxKqMlcJ5DGG4XaCOVhWJcss1Xm2zfWjJ2Oud2MvhKj3m+O91jxRb4JQ==
X-Received: by 2002:a5d:6d01:0:b0:386:930:fad4 with SMTP id ffacd0b85a97d-3860930fbdcmr1971591f8f.19.1733309820828;
        Wed, 04 Dec 2024 02:57:00 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd687c3sm18459063f8f.77.2024.12.04.02.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 02:57:00 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 04 Dec 2024 11:56:56 +0100
Subject: [PATCH 4/5] arm64: dts: qcom: sc7180-trogdor-pompom: rename
 5v-choke thermal zone
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241204-topic-misc-dt-fixes-v1-4-6d320b6454e6@linaro.org>
References: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org>
In-Reply-To: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1128;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=gj2stqTnMgr1zbbnwgJTraruirMDBHHJ1dW+F8Q2mCU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUDV3SuDlNG5SD8HTeOa8DyZe95CU7surshm63dfH
 p1twbguJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1A1dwAKCRB33NvayMhJ0Z/iD/
 0akI9siimOfWKfYO+VMr3Ql9XUlUd+0nZiR/YVFL/vCV6Vxq2sDZvPWKY9LhCYMeVEbKOdDG+FNFT7
 MkW4SAeyVTg/s0asa1ShJaRlZrZikoRErXIb1Mg7Fr3NQWwh38Z3VsKXtTkzQ3Xa5zBwuyjBKfCUdX
 ILBujHiDbx9IkxdevyFkrmTpiaT5+E+XJWHl5nGBDjQNcyTn+leQDwNMQpQhe/fkyQPpV7706T5ATv
 XrETknIxN2sXeFYWVoYrPQfAemQgGQ8bqRDvoCX25/TpCg2PkXkTkVqZwioc+r/QL1T3oPBsqSurLT
 huipw2YSQPRM3S/4vy5MMwGoc1JM/hM+Z8meQQwjeMkYxSt22ENTlAFzO51JHK+P5ESwNhtDjmXtUp
 zCXKZTnWYMTFX5SwaPrfbo0m0Nd5ymoHh2EToXRjENOCG7Xu8lQyWhlT/42lVLjKACTFmoPLN/UVXr
 cAmM4s3l/AeTgt9RdgTzSr+b00NDW/RiARktcNVEbJiNJP69mNterMN3Rc44lKwVh1S87Y28dCFted
 DpYZKIQzuQAdp/GgR8KXU2cDv+U/clqs2j3n+H8Mkd/H+CO36lmiEkUrqTWEJUWQoMmyNSiU6Wurd/
 aXc4ch1dGd3dJwSvsjL19vJ27BHJU5HMGA4IM7OUlfhN3dqp7f4hDa29sKUQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Rename the 5v-choke thermal zone to satisfy the bindings.

This fixes:
sc7180-trogdor-pompom-r2-lte.dts: thermal-zones: '5v-choke-thermal' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/thermal/thermal-zones.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
index ac8d4589e3fb74b9d9105a8ca2b0cce72de22d86..f7300ffbb4519a7973c74198fc0f9ca2d770bc3e 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi
@@ -12,11 +12,11 @@
 
 / {
 	thermal-zones {
-		5v-choke-thermal {
+		choke-5v-thermal {
 			thermal-sensors = <&pm6150_adc_tm 1>;
 
 			trips {
-				5v-choke-crit {
+				choke-5v-crit {
 					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";

-- 
2.34.1



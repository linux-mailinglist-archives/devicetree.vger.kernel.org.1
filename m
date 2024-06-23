Return-Path: <devicetree+bounces-78923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0758B913A86
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B970F280EDF
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC69E149E1A;
	Sun, 23 Jun 2024 12:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E5E+h4u1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E33412E1DC
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145432; cv=none; b=gsrOcRU/es+DlhObUqVFquPIcnOzAiICqIZg/04o6a9qtJZox9sB3qXTksjLcW+f3lIO0a20GkBk4OZd58GM3YIeJ5gf3cbd1hd5y+22XH+vUc8eKkV1pPfAaduILEw7rZQd7XCd2AAEWbKmfILUd48dK7eXS9dPPAP9C2dtEJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145432; c=relaxed/simple;
	bh=+3i2agRPOQdsbG9p0mP1wgp/7zig5/6KfMRBRB9YgoQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=cwapbynv2fxP5Yy6rjF1Ln9wTV9uCWKmMlQipB0cR6qTqQCFD+IU9BTcKfooOW6IfWIshMbVSbarLlxFcY7WRApg/1YM608cC9KJyFvpLYFnoGjP8MnluiAeMOyzZOV0cDvOkgWU9tcch1z5ONJOjoFRHwTAzocNpSfy5QX3/Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E5E+h4u1; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-365663f51adso2276291f8f.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145429; x=1719750229; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uSMp1oIN7G5KMuwIqxjaMjb37TFnDfxyBRpLl4YVWt8=;
        b=E5E+h4u1Va8kTVXMUGIA4RDeNJWyJWawkFH+sTBFKZ+FVlnvKM8+t22hfeXyQQEn16
         VO2YHz24dHCO9FwOkAgr5TEEmwZ7tzp7Uni14wsTAuGuJkR2k/yLLupuaX6zAOIjmcHs
         WWALEkyVGkSNXfmBmTAo0p3g5Ib9xK24HzQItauOOR1FrnYm10R/WtQzSrjmNgaP05bM
         17vCFARzfSAearbkuAvr1PDF6Tsqu4T8cWWgQ1stL0noXDtZOFmg9b/V8eG2rBWpPJWp
         oCIRn96zqekDFBHW5ok2t2GCLnBORd9SDDA9fZxBEt2bbGBCOSnH3GolBb1QXIat/o31
         Xvxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145429; x=1719750229;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uSMp1oIN7G5KMuwIqxjaMjb37TFnDfxyBRpLl4YVWt8=;
        b=jyVgqlunfdmIW0xL8fgMpcA+NNrYOJ0sQaDaC8JhDnVlg1Z79bs+cFGpkrmD3QGAJ3
         4YSopz4Ub1LXkBIzhxwC5CDSrMPkan1qdySCS1MW485gcefCNMttgy/uem6yozea6Krj
         yGg7yUBYttBhkj5FesSOlKzFE6lE7Cf7WYPnh35ILXr9kVoknBhy2gIqTahqhqtOe17z
         DZeURdlXQQDVehrMHtNXJJo610iunEj6hetgc0QCllSm/KOGb9LY1T5rZg1E8mKYYEG5
         v2/TDmAg/4xg3DM2fHc2Fpo+EnnPmQs2cALc/qu0og0OVSCv1AObwHf1CqHeVcso+qAN
         ooCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUT0SuqXjbmtZhoEA9hK2v3qyRt8hqis5ecZCywUzETNV38G9NN3Z4x7goMRHJnEYzzsFowe4I+oMEDOhaYHjVqtYLpsEjPSgUkOw==
X-Gm-Message-State: AOJu0YxCW7iKdeXUcHW/ECN23EePNpMbnB9xFeR8MMKHJim5xSdLGDtH
	Rvds+aAmFGo+fEQUNq46bFBFnz1a6Xcu6iGSfIFeW7VFDfx3w//F9TH0WNQoMv4=
X-Google-Smtp-Source: AGHT+IGB2X865c0lYFBdE1+56PwmMK6W+Egw7AqkKkYF4fhyfS0NEyJNq94ctIvbytl9wv5NDt8kTA==
X-Received: by 2002:adf:edcb:0:b0:361:bd3f:f89b with SMTP id ffacd0b85a97d-366e4f00a89mr1936156f8f.50.1719145429436;
        Sun, 23 Jun 2024 05:23:49 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f66bbsm7204864f8f.78.2024.06.23.05.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:23:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240618-gs101-usb-regulators-in-dt-v3-1-6a749207052e@linaro.org>
References: <20240618-gs101-usb-regulators-in-dt-v3-1-6a749207052e@linaro.org>
Subject: Re: [PATCH v3] arm64: dts: exynos: gs101-oriole: add placeholder
 regulators for USB phy
Message-Id: <171914542792.47206.11134715783148912337.b4-ty@linaro.org>
Date: Sun, 23 Jun 2024 14:23:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0


On Tue, 18 Jun 2024 10:01:33 +0100, André Draszik wrote:
> The USB phy requires various power supplies to work.
> 
> While we don't have a PMIC driver yet, the supplies should still be
> added to the DT.
> 
> Add some placeholders, which will be replaced with the real ones once
> we implement PMIC.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: gs101-oriole: add placeholder regulators for USB phy
      https://git.kernel.org/krzk/linux/c/2510bca4810801c98260e0975c13cf2306d28e96

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



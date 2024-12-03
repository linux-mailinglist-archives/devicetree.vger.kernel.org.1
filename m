Return-Path: <devicetree+bounces-126703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB2F9E29F5
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 18:49:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6E2DB24FDD
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 17:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6738E1FCF54;
	Tue,  3 Dec 2024 17:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UbzJ2JFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970401FC7EF
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 17:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733247861; cv=none; b=Oq+DRxeG8ni3IYy97P4Sr1DBr5lqRn7GEzkE4CB5ARLKSc+aQoaf/8EBk6GpfM3yzMsEbmRRCGWQGGLbnwrUMXlXBh642FpdtSB+oj7sOZFHltqUjjmCWJTfyl16W5vrZ8XyyEIIlwQ0NdIrdCVyJYtd9fc0pIFIr/Okivk0n3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733247861; c=relaxed/simple;
	bh=bXf/te9VFRBRe5PRM7DWDcYGUns6cx/3ajaFp1ywx0o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ElK7I1MoLeubd1LlaaZ4CqB5bSD31XFPD6ZJbk5EqO/S9cNb8bJhMQk7/v3KNBiHm/PB5ngH5C9+wzPlYvkO44RVoW+Kp5ZHK6y3ynycSziCCfpW8mhIdf9k1Hs/Z+vEsYTlCiubLqn/aTflG1ytuUchtR7x6mlQMRrUaTEFnRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UbzJ2JFW; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a1833367so202135e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 09:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733247858; x=1733852658; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/fVBRQkH8PWec7dz2yBm01osQMyK0T0Vy920HgPS7D0=;
        b=UbzJ2JFWRS3BHY08OnOGZh1sk3F0/sfjDVkTma5K/X31L9JItx9GbB32tTZ1OvHkdD
         nG5sHABk+cq3gTBCATlIX2FlDCcprjDgKrSO91G9P67sb7KLi05YAkgoE5i+74ftVxmZ
         ZJ00LA4cIWW3DmnnOaYTM/310Li115N1WXpmXpbzyg9CmP7yXrFuG0icBU8w8X87Yk2M
         MwCfDycNc+YrDZiLgFMoXfJ92T//gcyEN0RJUVhc38uyyBf4gpWawCsu2kGRjxkoD4Fj
         QpOeUInqWKU+6qTjyA2JIX7BUP6BUtQwz5rxSPQdYf8pPpQAS98a/RvXZMEj9oeiapBu
         GlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733247858; x=1733852658;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/fVBRQkH8PWec7dz2yBm01osQMyK0T0Vy920HgPS7D0=;
        b=AhCBywEmrPe+6JnA1f/8oWU93GbxNA60oPy8pfDibfft2dljGePrYqksMs1MJkKFqf
         RuKQX5Ur2faoWgC7RJe9X907UD+0lFN6oBJ+eV3srnTV0uCOoeElhNgJYIB40C5tmuk1
         j9TYo2Lj+ZFeBm8IuVH/I7Jyc7LAczEj/Vc2IF5wK+Wun5XRj7E5PpEoX2eNqlXqp3L0
         bxB+ryeKKWQrsc9UoVdVxWTPQbm894iU+r3IG1Pf2yubJeEYWYkarp0wm3xkfrIFDWca
         Qtq7gqTZGyvsTJ8vCP5odOArX0htRlR30bczbURxrmtXMjFTuEL5no1aPCQKb8M4U1zi
         XWmw==
X-Forwarded-Encrypted: i=1; AJvYcCUZqnssRixTnxnFw999uo9XAGzZOiEWTJ3AAQZkrm+kdNmtdNuTp75SWZDAerkX0xpOEOL/zrNvyOlX@vger.kernel.org
X-Gm-Message-State: AOJu0YxCJwpl7NHowizGr4H9dLI1RZlGMF/Vi4WDDn5SUeD4COnWc/4x
	zun5ddOoPVYe+xsoe1d+FmVbiHxHAwWTW8oTrvuGIy7uoEH+Kamu8iYHK7QK/2U=
X-Gm-Gg: ASbGncsSyJGGYluP4DspA7zel/xjcKT99V+JGT8sjBQSyCj+T4V5Uz9xA0BKkFOdfmx
	921GJjWxygTp6MQeLaHQwIsnxem0Vdmfr4SjEBiYL918/qcTmVT8piYZuPQorxjFCO0qn/EbQNZ
	/X1LeUC55U7KcsfuZiEpv24nvhbw5slmW8RlX/1/49EE5QBrt2NvzSq73ehJWdw9jcs681F8WXS
	JVWqbhZcmDKROcZiaqu9H+uTVllpwviaedpiSSqCV2vob6wc2TrtKRBIbIEUCY=
X-Google-Smtp-Source: AGHT+IEs4LeO99eCaIOoE9rg/x5K0sS885yURJsnOJqPCzOSieWlVxKgUXgYFoQwze9hgWuJ2e2ndw==
X-Received: by 2002:a05:600c:190e:b0:434:9f77:e1dd with SMTP id 5b1f17b1804b1-434d0d204e7mr28633775e9.5.1733247857854;
        Tue, 03 Dec 2024 09:44:17 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:9f9f:834f:9008:1528])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d05b4909sm17648055e9.2.2024.12.03.09.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 09:44:17 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: Drop duplicate DMIC supplies for
 X13S/CRD
Date: Tue, 03 Dec 2024 18:44:01 +0100
Message-Id: <20241203-x1e80100-va-mic-bias-v1-0-0dfd4d9b492c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGFDT2cC/x3MPQqAMAxA4atIZgNptVS8ijikNWoGf2hBBPHuF
 sdveO+BLEklQ189kOTSrMdeYOoK4sr7IqhTMViyrbHU4G2kI0OEF+OmEYNyxsChCZNjH52Hkp5
 JZr3/7TC+7we24Uf2ZgAAAA==
X-Change-ID: 20241203-x1e80100-va-mic-bias-bab3bd5a7c57
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Drop the duplicated MIC BIAS supplies in "audio-routing" for the ThinkPad
X13S and the X1E80100. "MIC BIASn" and "VA MIC BIASn" are mutually
exclusive, only one of them can be active at the same time.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (2):
      arm64: dts: qcom: sc8280xp-x13s: Drop duplicate DMIC supplies
      arm64: dts: qcom: x1e80100-crd: Drop duplicate DMIC supplies

 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 3 ---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts                  | 4 ----
 2 files changed, 7 deletions(-)
---
base-commit: 12b080aaf4275c579c91106ed926044b4d5df0af
change-id: 20241203-x1e80100-va-mic-bias-bab3bd5a7c57

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>



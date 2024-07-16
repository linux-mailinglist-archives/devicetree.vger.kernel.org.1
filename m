Return-Path: <devicetree+bounces-86033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB9C93233D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 11:46:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53AB8B24772
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 09:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B06198E78;
	Tue, 16 Jul 2024 09:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jhxome/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1551198841
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 09:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721123119; cv=none; b=Sdt791pWY7DuhdEZOYDeHr1nur2Djw/3vNe9H4rIW4qvza/xoqcXlwgHZ2q3qDjXZiHIUA+q/sXdgK5I/ZU9YWB4RzhhzsiW2SYk2otiuS+Wq1hBnG3okQbgNeg5s0sS3Z2KbPvstxPgp4NkwZ576bhHEBMVw7nTrYsg4y0BboA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721123119; c=relaxed/simple;
	bh=IbF+oVlsASrCxDCtgSMiLlRtmsmtWhBwoHzzIyNr2Z4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=W35r+y7Fg74XtyEZ7BKLNeFR1ZGPaeaHV0ltNUiCrSttEdpjA8G+XPAHdCxHzZhBQrso1QpfayoG8Wf++UZ/Ixl+EBsNN7UWcbYOoVL4JFES163QuFKJM+sAZ/tw6yhSZyMPSTRPOhy/AdcuQ5UOKl1KLs5v3uktYE9aU8ErHdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jhxome/a; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-426717a2d12so31090935e9.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 02:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721123116; x=1721727916; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2k6a4tmpt4FwSS1Q5VjwCKqeHMpr9HeTZeCfn6YizvU=;
        b=Jhxome/aIUm6MdFuRGAXGvJMD4DQeYIbOL42ldLKfb0Ei8j2pbLDo7sIojHUzaZEuP
         rrJJafOfA6cONlq0QVfgXBEY0pN2Kxyl83oaepRzi30wHeF614AVik8GVPpFyY2eIpDq
         1ecO6RaU1xro46Uuf6RfzQC5t4ufk+ohasmIZZOj9W/qjQ8WQFyH8NokhhdCUcL1vXZi
         E5wBoR9vyrOoCfY5W/eOT5KLMSDgT9rY/G0fumvNrbwxM4LuhS/1PlI31AHb8BSx4fHM
         +MFE9/PM/ECuXUYT5Hjtd9HNh8J12Dx+Gn4zVdZivbbyPReNnk8/vPvPkt7IYq8/MjCr
         JODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721123116; x=1721727916;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2k6a4tmpt4FwSS1Q5VjwCKqeHMpr9HeTZeCfn6YizvU=;
        b=CGywdTQcs6aHqcD+KS/i9Yx7rHZX+AVApcojqM2KsYJmmYa/epLlM73k3ExH1uxhND
         f9YwKs7x6KMIpUBXZ1IGjoWR5Unhj/u2Vl+Xjy/1YuJ7TolhF+yoVzV7yA6IhlvpPcYa
         2Pk3F5DgFKExiaDkxtNCMMygWeMLDayql+reA4VWXo6j2k7tN5lJHssDAubGC8iMnG4r
         vONHkvSVcZVltGUzjJJu15LgpYOf7CclS9bt7vWCNQfjs+SFM4Uu3sqK04at+PngTm2T
         5fsmgwRVTUlrwM6NkIGzKPoOQRT1Qxop2reCpU/Nnh2PJ9pA4ZNpH4mnTW7w4gb6ZtL/
         /iyA==
X-Forwarded-Encrypted: i=1; AJvYcCXL6qStOSUQ5H5XbLyTt1e6q2pxZ8JC7Sk3KJxe8rDUxqnLyfuLLUgpzOdf1cGh1SwlnDTVhHwaNcUaGcOvYVjFVKoTIK2wcEOs/g==
X-Gm-Message-State: AOJu0YwVlAOw7xqWdjj79/jvugN7tc3aaLDcnQs2hiE3aM1Lxl4XBP9m
	jRFpj3S8tnI85D4lCHyVAz11Lc4thZTgbWiyPOVIPv1d1oHlxElLsy7d1oKc61k=
X-Google-Smtp-Source: AGHT+IGH09+J5MKzEaIfOp2Cw3apVixdIIGoHnc0cSbNzkcbgCAs8q/Irdj+//xDLZB+oxI5c+HA7A==
X-Received: by 2002:a05:600c:4f06:b0:426:63bc:f031 with SMTP id 5b1f17b1804b1-427bb686d69mr11855835e9.1.1721123116010;
        Tue, 16 Jul 2024 02:45:16 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f2cc2efsm154408185e9.36.2024.07.16.02.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 02:45:15 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: sm8[56]50: use the PMU to power up
 bluetooth
Date: Tue, 16 Jul 2024 11:45:09 +0200
Message-Id: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-0-67b3755edf6a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACVBlmYC/x2NQQrCMBAAv1L27EISq1a/Ujw07Ub3kCbsJloo/
 bvB4zAws4OSMCk8uh2EPqyc1gb21MH8ntYXIS+NwRnXm5u9YkmZZ9Q4bBeDNWsRmiJWJcyxNos
 5fUmaQV/Qh94vwzn4u3XQklko8Pbfjc/j+AFh+qcwfgAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=846;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=IbF+oVlsASrCxDCtgSMiLlRtmsmtWhBwoHzzIyNr2Z4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmlkEq/tSs1Nb2dFF7Fs0FQyUXnTXibdgXCkrTWlTq
 P79n+naJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZpZBKgAKCRB33NvayMhJ0YprD/
 43QxVIqj//7SEKCPKDUKP2mtFXeEPOQv8/QyTTbDJrOw5cBHaDhBlV3K/L3aeiZQk00fkRjhSewOEv
 qIJ10TY9PBUO8OKJ+RMK02yBsIEZ0bCoGzJo7mp+siy596cF3Gd1xsq4uM/2z64TRoe/hdAYMQkmRn
 dp+opcNHMqQyygpfbr//qovDn5Sk14gclNXIQOK6GH+YpsgxamSoYQ3UjcskLnCmNonb2eR/P05ZTe
 EmVehFvF7sQUj/WbTcmj7dbJ+9fgxaSz09sIsYEeBnnGoSs48ufjNGQ8vHDKvO2Cim5vM8npMux0gE
 vO1a94qETQLiZ6hzSJ5plt2NW3WK9XEjXED0PnpzlelpaD8x5rtPbnrTpDxrBoacYZE6c1hhfQNZGr
 e5IIyJibtRAJMmZhA/REJi4a9IhA8cwkSsMH0JlWlgnLRsYBa06JJrDemsB+CTIHH29xVJQ3mv3qJy
 52/4hdYcVlbJAGH3DFwIpF17y9FDkQ2QvvcObd8GOFvWBabk8Hz2FBApINSTIWRv31a9O/uczlfNZz
 YnInrAas0AxaIrm5NkUEXod5Qb4IrtcnIYVW/HSskQyvDKuivNAa4GJrRZ9UWYLDvpK+rx7smxlRIL
 DWGB9r/PMsNB14K/D9keWXw9Elhjxbr2m77T0aHeyiSVXuOPRm56bu1XlrdA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Update DT of SM8550-QRD and SM865-HDK to use the PMU to power up bluetooth.

Based on the SM8650-QRD change at [1]

[1] https://lore.kernel.org/all/20240709-hci_qca_refactor-v3-6-5f48ca001fed@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      arm64: dts: qcom: sm8650-hdk: use the PMU to power up bluetooth
      arm64: dts: qcom: sm8550-qrd: use the PMU to power up bluetooth

 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 26 +++++++++-----------------
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 26 +++++++++-----------------
 2 files changed, 18 insertions(+), 34 deletions(-)
---
base-commit: 4f40be61af99a67d5580c1448acd9b74c0376389
change-id: 20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-bf4bd83fb912

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>



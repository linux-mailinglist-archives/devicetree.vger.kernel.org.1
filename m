Return-Path: <devicetree+bounces-54320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F9B890755
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 18:40:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C03B81F25BF9
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 17:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016F4130A4F;
	Thu, 28 Mar 2024 17:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="2ksCpSdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0297B128370
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 17:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711647582; cv=none; b=G5y6thEVWA2Rif6XiijPkM4VREHvVthvRxq8/euq62G3O63l9ullWr3oaeW38ohPwxhI0mM8WrCVJJzGwj0MVwd11KN+mjzX63tVnz169yarKG36y9ljDtFYJ/dkqGZsLvym9hs+ztqMDOI2TapZkxRSNGm9iD6FvjtblGvmRrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711647582; c=relaxed/simple;
	bh=n9AZLgNzUWhIouE9WldfNOkBR0VBSzrpKYlVGIWtLck=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=soEvnXxRXJudCxX9E8/M3rCfhHDz/uiYkx4aYMAhwhEI0F56PxOVvqWpVxmJROM4BbMQ48mIhpheAbgV9LhatQIyj1ZM0EZpz2wrZjUzTzoQudeHkMFLJ1nx68AFnRzx9GKvNGHmVVkBB8NmZFet+MDN9hohsIuNPpQFvR0dTRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=2ksCpSdO; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4154464f150so5591375e9.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 10:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1711647579; x=1712252379; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hBEyfkaUFeTURJJG6e68DKf7jzMPW6cXTRuGJ56eTuE=;
        b=2ksCpSdOeWSy4yRcxR1JD6VmfV0+VVxya3AXsPU8+jn6Dp1ukEb7zaxlT4KSL2EZ+t
         u6LXizB5GK4T3yHScXDLN3fTPCvXdWSj5o8FK3yQNs5kiJi+3DueXtlPaHsA/mit9Oi1
         S2fX8Rd1L/3JqEqVWf5DPMWm/dTJR3NNSzisEmYnxPDVMD42yitwVUyNpgwC9DhqJBXg
         sfyUlJA686CWusVD2daRszqAMNZSTkfO2OP2ERffjlD81zs9xw8tMdDWl+FDLl6v/c+X
         /Bd0COoZUYvrk7hQ92owg8z5aoiALffysl4AtcHRcijgT3NuSitzqOuli6yiHWrYLDPQ
         1sug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711647579; x=1712252379;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hBEyfkaUFeTURJJG6e68DKf7jzMPW6cXTRuGJ56eTuE=;
        b=G7ct2j38qeFBurS3LkvLS4c0lvQmBg93/XOIGcUVP/Ea/9dB3tRqHtuRLXpgdihZKc
         tUP/mCHMBH2+tKtWm8qIgwQzC7TCmWZEWxqyLYjIEfI2AsHm9jJDZMlG7uHPrIyzwt9n
         j3yOY6oDSkjP5Pow60VJ/fRFkfUPMJsxQhq4wAdX5wbWDZAzYaHHnA7o/ts3T7UYDFpn
         0vzhdLPt3NWm8WT4jwUbd/0/xffr7ZRkFXwTTP1bW5Qf4auN/aNID8IUq5s4qgEWnjme
         3NWJBMQHdi5YxYQpJWmeWUN4rsOaVGB0t4M3ZMnpCyzderRxb+PBBJ5jYdoL7U8BExxK
         VoVw==
X-Forwarded-Encrypted: i=1; AJvYcCWqND0UELYXJTvRDQVEvK3zDzYaeJlRBqiLg+3gzVoQQniBbNO+yER0WhtZfoce3zM8vUgRykhKytrrc1L8ibRUgcngOZN6Tca7aw==
X-Gm-Message-State: AOJu0YyLFZlPSkca6+xKyOadg9PmpI1blIRoHuMb211M56yIOBqnZFkI
	m+BqJM4xP7nFb6p6RQVL79Dc7reb42PSu4sSrbhyao36jM+LrKZfRIh0frB+ub0=
X-Google-Smtp-Source: AGHT+IH25UGpyUTZwfKMDNxOvtNvgGwcgB3GGZLR9PbX+P1XJKMoLJl5lW9dzk5XDs/O2Bg89Wim0A==
X-Received: by 2002:a05:600c:2285:b0:414:5e9d:ad31 with SMTP id 5-20020a05600c228500b004145e9dad31mr102964wmf.13.1711647579570;
        Thu, 28 Mar 2024 10:39:39 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id o10-20020a05600c510a00b004148a5e3188sm6066643wms.25.2024.03.28.10.39.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 10:39:39 -0700 (PDT)
Message-ID: <5cdad89c-282a-4df5-a286-b8404bc4dd81@freebox.fr>
Date: Thu, 28 Mar 2024 18:39:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 3/3] arm64: dts: qcom: msm8998: set
 qcom,no-msa-ready-indicator for wifi
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>
Cc: wireless <linux-wireless@vger.kernel.org>, DT
 <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
References: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
In-Reply-To: <fd26ce4a-a9f3-4ada-8d46-ed36fb2456ca@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The ath10k driver waits for an "MSA_READY" indicator
to complete initialization. If the indicator is not
received, then the device remains unusable.

cf. ath10k_qmi_driver_event_work()

Several msm8998-based devices are affected by this issue.
Oddly, it seems safe to NOT wait for the indicator, and
proceed immediately when QMI_EVENT_SERVER_ARRIVE.

Jeff Johnson wrote:

  The feedback I received was "it might be ok to change all ath10k qmi
  to skip waiting for msa_ready", and it was pointed out that ath11k
  (and ath12k) do not wait for it.

  However with so many deployed devices, "might be ok" isn't a strong
  argument for changing the default behavior.

cf. also
https://wiki.postmarketos.org/wiki/Qualcomm_Snapdragon_835_(MSM8998)#WLAN

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 026b6b97785b5..681a80f4dc9db 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -3185,6 +3185,7 @@ wifi: wifi@18800000 {
 			iommus = <&anoc2_smmu 0x1900>,
 				 <&anoc2_smmu 0x1901>;
 			qcom,snoc-host-cap-8bit-quirk;
+			qcom,no-msa-ready-indicator;
 		};
 	};
 };
-- 
2.34.1



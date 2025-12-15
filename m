Return-Path: <devicetree+bounces-246645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76587CBE6CE
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 104443066DDA
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F2CE3126AF;
	Mon, 15 Dec 2025 14:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x/Nh7Jxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1E430595C
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809724; cv=none; b=Z765yuPTYlFwuPrBNZ+m0Nb/m9z3S+9i78EZ9uhB6yqV3hhZHEHP3zyDlcFU3YFGXVXNvRC4X4sAC1kXhPE/SA6OcBs2Yg9qAb4GbUC2n2Pq6/8H9wxUK6Xlkr0RHjqdQ7X4rx1N4vlgm4IBV/u2fnU+/xC3Zu9WuDsppl2RoGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809724; c=relaxed/simple;
	bh=NCidwRDzH4/FkaOzAo5G9lk+9pbGbuUPUjPh0uUo2aA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WzRDr+eCp6CjqimoHXVJxEkpPE04IQSz4Ru09yAxrVePwZwWEgYVaEewEdowtCxnjISde4vnZ7+3AU0Fjgz1b5M7esi2HSxSOTzWAmqXIMvW7N0GhSMSRnKMp4nLMoo7b2SGDq2/Ecjetij01zE93hTEbQcEtdCzJsSbmW7gaWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x/Nh7Jxu; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso15679815e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765809717; x=1766414517; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7THcIS9oCYAXpQsDheP6Q1AjyyUSRDifHsm4jcW8OQo=;
        b=x/Nh7JxuleuAycWky14Vop3z1H2QsDb1ryj4qT0mrnUhcRhVcDqGfmENimZ3c/CsZ4
         rfimzZ34AK3YTa/R37D2uCWRS+E0eZwTTS7PCsRDISRZue7ephYP7IUj8V7foodMuWh6
         YJEAejM5QwINlAD3cmbrPxJNWtS1CZ1CmUdUaBuCBZZaYtRILJf4bh935Ae4fctoC3EX
         49EMd0otaV4UA5clBbiElDqMSQHDZVP7yBct3YBoGr4Zcr4ElL31moCqTFYC9GwGGTxX
         Ujbu+YBFnZeTmc8rlOaVrXn0+6lL6DpcUdT1MGzAP3Qy0EpPG4LJylzvqkSAf5ORdDhM
         g/Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765809717; x=1766414517;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7THcIS9oCYAXpQsDheP6Q1AjyyUSRDifHsm4jcW8OQo=;
        b=MOLveniCKkkIkU8/No6ow7nFwcmdYD852S0jS9zGdSz9AQz8MoUHuDovW4HwzmOKFQ
         liu8htOnjzfkkysnXXkOD1BJyCUMeT20WbdW+urliUlhT7w/Ke61UFKzU4ZklPf8Lgqc
         L6ksqzMaQkw7Mg+q1aTL3Y34o/E9qvkpSexBYNnlNevADAvHFOgeWnFSOx5xQEYlruY4
         hms3iiF4wgrUIiF2kxdFJcELzg5vw2m3bPfXDf5/T7BwP3oKvXgRflnNicF7Tw1gIbKm
         sHic+g/CNwGXtXCJTCvEixH1sal4kILMpR9eiBnVfqGIlburXk3VxHQnn/p3xfE9NfYK
         dtgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXYOB9Ze9KbVuPIoiyykwqyaglpZhNRYRmB9h8pw59pd8xhBTSiO4JyLp1YXenITX0Ui3RIxQVLklp@vger.kernel.org
X-Gm-Message-State: AOJu0YxIanGkOmYVtw7oG5lEmoAaXQbHYh6exYheAbIbVUtBB/cwKV+I
	wGnblvPVvgBtrw2C3b3xmu0w5/nHWZK9gt3Q9aFtsWbO6ETNYT9GbR55Fcc+aWAN/Vg=
X-Gm-Gg: AY/fxX7/D05XfITG0oqERDbySIA3xH7IW140CmhfoSl00676g0HO3nNIiwpz6gsJSJ9
	KJAQZ1HQ7DdZ8dNVd9dtK5gmMSTyNy1JxH6AUcJY3r9QslGc2SeYLxdeBdUHSQaun8W29wcBCiB
	4szuIVvM92iSF45+ccOjjQHR7lyiQCO4bWGzHIpQ+k05ylkiYUdZ2ORnmdwWwTqTu+1+gApftvP
	sx4cj4WTH5z74iYoEEELwMf0iuiDXsVuuSyRhin7dqO9T138BgK0dqsJ/5usJSJqG8IzTOQ5Fpg
	Zu8Neda4iwEAk8vSJf8iR4NYPXiKU4CQFLy0WsEtn80MbswjXW85Hw8JJIxGLrXeRIQFmii1Bdn
	mpDU7g+3BnWTUsGWMkcGoEThWbNyt2GvF0Tc5iM0oG9Liw2o036FzI3QkuEQJObQ7rB4qT7caZD
	6BH2eDd8/7XLgPxzXq
X-Google-Smtp-Source: AGHT+IFqe4pSchC0t29NdS8Io0U0AaSg1nRBgtIB9Y/g3CNv9tZepOBjVbBftWbLoImGJYQ+serrww==
X-Received: by 2002:a05:600c:4e0e:b0:477:55c9:c3ea with SMTP id 5b1f17b1804b1-47a8f915c3fmr122994625e9.35.1765809716476;
        Mon, 15 Dec 2025 06:41:56 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f8f3894sm195798645e9.15.2025.12.15.06.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 06:41:56 -0800 (PST)
Date: Mon, 15 Dec 2025 17:41:52 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linaro-s32@linaro.org, NXP S32 Linux Team <s32@nxp.com>
Subject: [PATCH v2 2/4] dt-bindings: mfd: syscon: Document the GPR syscon for
 the NXP S32 SoCs
Message-ID: <792d3f59b9f519529b94e673faf70d77c4b61fb3.1765806521.git.dan.carpenter@linaro.org>
References: <cover.1765806521.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1765806521.git.dan.carpenter@linaro.org>

The NXP S32 SoCs have a GPR region which is used by a variety of
drivers.  Some examples of the registers in this region are:

  * DDR_PMU_IRQ
  * GMAC0_PHY_INTF_SEL
  * GMAC1_PHY_INTF_SEL
  * PFE_EMACS_INTF_SEL
  * PFE_COH_EN
  * PFE_PWR_CTRL
  * PFE_EMACS_GENCTRL1
  * PFE_GENCTRL3

Use the syscon interface to access these registers.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: Use nxp,s32g2-gpr and nxp,s32g3-gpr instead of nxp,s32g-gpr

 Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 55efb83b1495..694733aeb270 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -102,6 +102,8 @@ select:
           - mstar,msc313-pmsleep
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
+          - nxp,s32g2-gpr
+          - nxp,s32g3-gpr
           - qcom,apq8064-mmss-sfpb
           - qcom,apq8064-sps-sic
           - rockchip,px30-qos
@@ -212,6 +214,8 @@ properties:
               - mstar,msc313-pmsleep
               - nuvoton,ma35d1-sys
               - nuvoton,wpcm450-shm
+              - nxp,s32g2-gpr
+              - nxp,s32g3-gpr
               - qcom,apq8064-mmss-sfpb
               - qcom,apq8064-sps-sic
               - rockchip,px30-qos
-- 
2.51.0



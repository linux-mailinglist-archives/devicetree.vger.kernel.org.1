Return-Path: <devicetree+bounces-133162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E85DA9F975A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 18:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6035916B4AB
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F702206B5;
	Fri, 20 Dec 2024 17:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mwwe/O2z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19822206BA
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 17:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734714039; cv=none; b=aEwHw5GaRDFRmo3NdRMFbyE2L/nyHAWr/E5nQNnxECfWt7py9AGm32+CyBbte6Gf3hlIzfH1S1Zfn172NTtqo2oBd/QqR4JnMaw9SWyLJ6Mvo/VvrtaGh4rdNM8pA2aj/iQhCgKuIRxtMHVnWPVIV5naRENHSzOq6/gDQvq+zL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734714039; c=relaxed/simple;
	bh=IDIsEwpQxky8+42CT/WRnqpHWTdUYjOv/TDVr+kY0fw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Twb3MdFoG0V3vbuzJci3bMBjAj8dRvMLhbAP5pirhFz4P/SSLwsTl560C8a44g9qpYM8dz8Xpp1bq4S3pHH9ajh5LIg7SkPHTZbcJFmELNbazuYdrg+4QpbMs+GmTIVXblCKjWvp/tnnje9abzPg3v9K/Zprs+3N1zDwqXzx/MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mwwe/O2z; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4363ae65100so23300095e9.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 09:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734714036; x=1735318836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sK6y7RfwZKL78wz9SHO2m2rgbMAGzctH+wuLbcNhNAI=;
        b=Mwwe/O2zHcUi2MCxGNaNQL44tPelC80YalggECH6zpUd2ePUZAPZtih3juiZNXI8Hu
         DgjsJJ1T15nIXihEWCB2al+v1RNqY4slti+N7nQA6JYMnlZPZ1WAQzV9WrC4I7aJ6ubj
         YYW4LVyVNs3WZmJZuvLMbRnyHZsI5B5DxBUOx+zn49KlX6PJKInu9+LBYFBIVb9dDSCX
         5cg2zs0uLe17IS/dQzEeeSwj2sdvVyixsQ6WX9h5s4Cryh/4uoxqw4r6jeZ+B4H+r1Fm
         vCYdIZ+y6ETE8W0s/kqTY9G0xzCTELLU+GSRpMh4hFlUP9RD5uDUTY9A94jvy7dSpJlr
         fBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734714036; x=1735318836;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sK6y7RfwZKL78wz9SHO2m2rgbMAGzctH+wuLbcNhNAI=;
        b=fDNTO6TYrQYMw4GbDty+eA60bu5xX6vH8GdF02ra+Ry8EZSWfKnAgdhQ8jW/Ordu5v
         Fj6sNqFPUXLT6MirJArsd0xGmtB0SPMeU91VHZJKyyz702nDkOuT65ku8VsMIIHb34kS
         x99iGVg3PcmvUNiCAGmTt6V103DiPmngIgPSjCL77JJGpvm7IctRLoQTTZ/6LXSMaeA8
         3Stg4bPMhLLjK0tz6UIuidxcI+qFMVayDRniKWhAKhPWBfjOcvznWK6LJWgzEAHRuX3e
         cSl5dGzSWXLD1Qg0c9gXfP+WZadPCFf/dvJ8YKtbv3/5PDv47k7q/L5xr4H0BPQed1eu
         N3PA==
X-Forwarded-Encrypted: i=1; AJvYcCWTKhaEXb3QzFqn8c4EMnCCl6raghwkgUw0x049Vlg2iASW95FUTbLYswtt/g30i3pl6qdu2GcrreRi@vger.kernel.org
X-Gm-Message-State: AOJu0YwObdj/qR08m0kNRpR+JoQTk1krS9qknoL/SSfpigxSK+C0xc+M
	QEPXR/m7BSFDXzUo4QQyLt0XM4IsTaipCLEq1D2RWfZgEA/WXT+cZKGTShTo5b8=
X-Gm-Gg: ASbGncuo3fUpHjzvcTWsKfo87ngLFOdlLR2j6qFBt44lRYIq7TqUAFtufYJuMUjy6Wm
	tdqzhAwcOrhBmwdJwUQAOaZaF96rXW7f6feepzgf5GdmEzre3CFnYo2krvYVNdE1QfvFW+nO0lm
	g9bNJVZ4pW+XHM7ARuSewixJs10pk2lY0zcfye7VhSI3cTdOkiQoPA9SsFhx9N6B2n2eQCaKMx4
	pS6M+xdgSzIepQo+i9y6v+mIghWj+YaTcStqLpYiWhZf5TJyj2tZZHnNiLyopaR0rCWqUQVDPs=
X-Google-Smtp-Source: AGHT+IEIow7W7jlzekjBM8yMzgTeUbMzT6YnQhflYonoeJCqHySWJS3rP+z9Y68z1AcuWg4pRLt9xA==
X-Received: by 2002:a05:600c:1d10:b0:434:ff45:cbbe with SMTP id 5b1f17b1804b1-4366864414amr38292285e9.18.1734714036167;
        Fri, 20 Dec 2024 09:00:36 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832e31sm4437915f8f.33.2024.12.20.09.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 09:00:35 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 amitk@kernel.org, thara.gopinath@gmail.com, rafael@kernel.org, 
 daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com, 
 andersson@kernel.org, konradybcio@kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
In-Reply-To: <20241219062839.747986-1-quic_mmanikan@quicinc.com>
References: <20241219062839.747986-1-quic_mmanikan@quicinc.com>
Subject: Re: (subset) [PATCH v10 0/7] Add TSENS support for IPQ5332,
 IPQ5424
Message-Id: <173471403487.224698.3739532865770865065.b4-ty@linaro.org>
Date: Fri, 20 Dec 2024 17:00:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Thu, 19 Dec 2024 11:58:32 +0530, Manikanta Mylavarapu wrote:
> IPQ5332 uses tsens v2.3.3 IP with combined interrupt for
> upper/lower and critical. IPQ5332 does not have RPM and
> kernel has to take care of TSENS enablement and calibration.
> 
> IPQ5424 also uses same tsens v2.3.3 IP and it's similar to IPQ5332
> (no RPM) hence add IPQ5424 support in this series itself.
> 
> [...]

Applied, thanks!

[2/7] dt-bindings: nvmem: Add compatible for IPQ5424
      commit: e976eb4479e967cb6dc86b6e46554648a3b8f37b

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>



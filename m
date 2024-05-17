Return-Path: <devicetree+bounces-67423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8608C8170
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 09:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC9341C20D9A
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 07:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABD6417741;
	Fri, 17 May 2024 07:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pl1KoZsg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A2F17C72
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715930976; cv=none; b=B2+mY8s8gGeBu073Wn9UBYv5JsCeDC18xP6vNYVg80BRHifZMzIFBDf6sQxICEaBCChtWjPXR70y3dsRwgvWTTnW3q/LzdSg6+9w7BWJtZqKAguP92jQOxSGfQ0vbVP8lwOyxWRX3LtuQHrQcTJvvpMZEGiERm9gGSJnJz/A8pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715930976; c=relaxed/simple;
	bh=UcK41LfV0WFz13Opfd9Stg8GaUSswyyK2wLkPPk/LuM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DPCS+V35xSd/3x033xupCGXBQV+QlhkF3l51hoT8uALBacJPv9K+w3pqK5aG2SmMil1s8OSE2bpBIRN8Hk0tsUuOb+RS8LoNndsQGsLCUyKEScCWWd8TQRAUVwJOyK1kdnetFP6NGl+XgM1tJ1UiMCULHNs7yK7fVk7RnVUwb+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pl1KoZsg; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-520f9d559f6so2122140e87.3
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 00:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715930973; x=1716535773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=imQAT6qjO1VyC/YpAVCntCAOLNh9l2hiqOqHZIoiwR4=;
        b=Pl1KoZsgvvc2dOeB/vUVc8Pqt2z137zrcRz4hd6T+5X3B4jL/+Ovb5MX/8zI9GS/78
         HBCWXLK5oPIo3aFgvtPPm2dboFuBq3qNTi5FbaS2PYRb/qD1Ys9RI5sJ5lkuDBJdPdDZ
         79WwOK4hVXZ8xJzDzTzl15OXQppzH+zsFlne+O+OGCTW2+Dx68jNeQIJ0UQFioAq7v8r
         mBwj8frNTPKgpMbYNm+CQoKKdd4DL7xQL5pRD5WyyEOjmb7IkTOw6u/S/hTjM5tIQuWZ
         Jkk8Xph1EBafL1eHLiQI54eyethIOVy6Ti6XOd6c/eINvDpPbRQ3b5iSBWER6+h5PJ7n
         zOnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715930973; x=1716535773;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=imQAT6qjO1VyC/YpAVCntCAOLNh9l2hiqOqHZIoiwR4=;
        b=J63HOpjl5abJyYrpjXIeHFRb0R/UviBU6behCwMBH9drhUQ+YbeLXjYgcxvcNxPRFX
         EBG5DW0G5GJaCNXLuvzZ5eVBtL9eV7JoxDv72UaWsXF/9iei67AAyEmthJpRiMMvbLLV
         VQPOVWoGvthkTmLM9jyBye1H+CH2AhDFJAzYmMoI0+L2bBgAeD7zD4vHkR85rrl0jyMM
         xlPbqSrLjpmBrC2jG6hZ50446PAm4CZ3FTlr4lEkSCYkcB0qiAqtRBaQ1HCsSTITX2SA
         eE6XVNIpIjtMS6vFf5KBt4DCfUZYHBW8u+LCyFWHQwSdxriGXhc8YUFvPh44fSPCg6Z6
         oGqA==
X-Forwarded-Encrypted: i=1; AJvYcCWugyGyIiuwpp+CINT65Ya+vNQEHq7OXsP9skTE8uiV3bECCw1RnfuDxfRZY4FssLNtZJlXsYRRzlHXURHLtNRUsOiuq9Pdg2WHBQ==
X-Gm-Message-State: AOJu0YxiHEeET/rJ4Tgr/E2vdKfJppc5U6QBVhWOCzh+OsiSocfn0qKk
	JDn1Ng/9dJ1wPnlrUtG75nkTlEKtVhzNR09H1EqwgGH1T4KY/kQF4hQks3meR1M=
X-Google-Smtp-Source: AGHT+IFyQ5ay96Dby18r95inH3bMvJiGqJAHZgvPjwtCGLk0VqOAEXXOxTRWJUnG0hL9xFNx69TaoQ==
X-Received: by 2002:ac2:5331:0:b0:523:96ad:51a8 with SMTP id 2adb3069b0e04-52396ad5348mr4580667e87.7.1715930973181;
        Fri, 17 May 2024 00:29:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502e5e0b0esm20746461f8f.26.2024.05.17.00.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 00:29:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: sam@ravnborg.org, daniel@ffwll.ch, dianders@chromium.org, 
 linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
 robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
 Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 xuxinxiong@huaqin.corp-partner.google.com
In-Reply-To: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v8 0/6] Break out as separate driver and add BOE
 nv110wum-l60 IVO t109nw41 MIPI-DSI panel
Message-Id: <171593097231.261191.14625926975541986060.b4-ty@linaro.org>
Date: Fri, 17 May 2024 09:29:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Thu, 16 May 2024 15:20:33 +0800, Cong Yang wrote:
> Discussion with Doug and Linus in V1, we need a
> separate driver to enable the hx83102 controller.
> 
> So this series this series mainly Break out as separate driver
> for Starry-himax83102-j02 panels from boe tv101wum driver.
> 
> Then add BOE nv110wum-l60 and IVO t109nw41 in himax-hx83102 driver.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/6] dt-bindings: display: panel: Add himax hx83102 panel bindings
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/eba54e9c4483b585f6e2b9dd2472eb110417331b
[2/6] drm/panel: himax-hx83102: Break out as separate driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/0ef94554dc40fbdb7e57ff90cd1e7fa71e1e89fd
[3/6] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4fd07f679bebc432c72fc2c5cea23e39098e00c2
[4/6] drm/panel: himax-hx83102: Support for BOE nv110wum-l60 MIPI-DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1173db117634b42383cf5d397ddfd4d4860ae20b
[5/6] dt-bindings: display: panel: Add compatible for IVO t109nw41
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4020c15c0fcac8d66818dceae7f39736cf9f16b0
[6/6] drm/panel: himax-hx83102: Support for IVO t109nw41 MIPI-DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/3179338750d83877bbc491493032bdf192266ad9

-- 
Neil



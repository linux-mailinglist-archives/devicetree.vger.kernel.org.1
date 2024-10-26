Return-Path: <devicetree+bounces-116051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2D39B1B53
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 00:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD0E41F21AC5
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 22:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D53811D8DFE;
	Sat, 26 Oct 2024 22:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OyTSSofB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EFC1D7E33
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 22:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729982563; cv=none; b=of6aDHppt9D/vFW9XGEeeBnGKaH0lsJv+ygoDH4swebedQk5d1bNC4jK/OXQ6tSPGKNzRI6iu6KmnKkqZpH21GedjU8pyrHbdnxhfexu5kWv5INhEOIU85ODAbZ/e1YT8y/ylIACzb6HTr9YurdUR6T+6SktmzOn2aaO9D9mwKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729982563; c=relaxed/simple;
	bh=bFoUxd13xqGzTL8i0Uke1VWxv8nz0uckVKpDL5fYKp4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L+VAlcPvQk/5qGGumU3jpYtN5g5geXcpPWntEd5U6LdVXM3wk+FF3QoEQRLjkqwp+PyM1bV+fFINRAgd3CaxCeGJgC/Kmaqqd0pSDbC29TaxaXnH7tvs0KnS5ILAED6MTXZ9MKvHJ5KOkRdRy8xRm2QB3yf8Q5RDw8GQ0c5F9Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OyTSSofB; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53b34ed38easo675144e87.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 15:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729982560; x=1730587360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tBnHSa/ei6D2pomsNrU1v/8n3usXWfC08yobzI09Jro=;
        b=OyTSSofBtrAG9LrgQqokB28+dth5UCk8fh3eNSxiwmgfReKxm/oz3JIXU1F9mA/oKy
         Q0RDkFcVgRtKTkMf1XW5qAFTAfOMZs1HH8yQpI7x9rMWmB7Jz6P2Z7d4pZu620+7Lvnz
         TLqvQ0k+8gc7xjXN6iykxeFW4IPErTOLyb8OSINevjXxX6p/a68l/UJymYiya8+B3ehU
         7eIrcR8iMuAm5mnpeg2DuO4dkr0UrEC4bDtf7P2ITaYkDxN+1ZfjtCA66+PWovvnGWYs
         54nWr7M/2xwkaYmjDTAu9Y+kWUvp2qX14wVk23yGEwtm/usiExsgLCGmY/o47hRtTZFD
         RamQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729982560; x=1730587360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBnHSa/ei6D2pomsNrU1v/8n3usXWfC08yobzI09Jro=;
        b=RC4KNCfEGbJJW1P09HkF+zatDR5Xloth9jkLVUxAXT1ABWmoZTXcRi8bm/3tXfi+rn
         QxpeIy6Dg+4ztEPthT4oZwC/0CFP3j/FD8NlGYmhgceUsiFtZJyZuTj82toYcVA9XySe
         zeeYhrUQzuS1zQGyqFEONoCEp1qHTLig+ebImvbWmBnkJFnpuZTvDnEEkoK6VHbRO0/e
         x59p9j/X1kezfVuNbqF+55q4YXKUIrU8yNxtoYyWXKf1DU0n/ULe4vVsFYUdbq2Z9HF8
         aYJP6IAM30RSd4u/qAjXw2TPhV2eeXSxOFA9KjYRcTW9dWemlm896cLJyAGntG5GpXR/
         Pr/g==
X-Forwarded-Encrypted: i=1; AJvYcCWvPa6RV+e3sqtj2uLNPQ3f4bWh+F3icCTvJTev45FiCAwH8xcLN5zIr95PFwpIZLvQhF+woyCb+auX@vger.kernel.org
X-Gm-Message-State: AOJu0YzMdpS6nVm7neOcMUEVmPGCrpnZThZhHdWSspn3rJLiZRFeeTkR
	rwFJ9pszECgnahpgkmEhZCLnWb5d4pOxKuV3QGbRqC4wUrf5PMbINhnmXNwh0PE=
X-Google-Smtp-Source: AGHT+IE7LWcHx8APs7QiwWkT5t7Mc8LsTbw9oYrg5clSJ3rGrkxsC9BX4lBy/f2TeoOFhnk7d1gHCw==
X-Received: by 2002:a05:6512:1385:b0:539:e80c:23f with SMTP id 2adb3069b0e04-53b348c8d59mr1175329e87.14.1729982559686;
        Sat, 26 Oct 2024 15:42:39 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a6a1sm610517e87.47.2024.10.26.15.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 15:42:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 27 Oct 2024 01:42:34 +0300
Subject: [PATCH v2 2/2] dt-bindings: nvmem: qcom,qfprom: Add SAR2130P
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241027-sar2130p-nvmem-v2-2-743c1271bf2d@linaro.org>
References: <20241027-sar2130p-nvmem-v2-0-743c1271bf2d@linaro.org>
In-Reply-To: <20241027-sar2130p-nvmem-v2-0-743c1271bf2d@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=866;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bFoUxd13xqGzTL8i0Uke1VWxv8nz0uckVKpDL5fYKp4=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnHXBcZyK1GzcMa0eAwvU1n16edXaMSnIUcRCHj
 /j7FaWbQYqJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZx1wXAAKCRAU23LtvoBl
 uA6dD/411VX5nd7qSBF/oDZNmzTS8cvtDYSJlwPWzBXTW2OZkU00OfTNCdj9c1Nj7zjtDrHNEom
 4TCwPXC2yQfOaTxyUX3SWujt2nlXhFp/4upBNl7P5RNZoF3kWO47UPpa+8bpMc9ZZHqHvIWkOcC
 aVp9AC8wzk3KNtHCp5pz7kb560rrr+PvlDr1RnI/6F98KZeM1mIsW1P1dQFFpDtX5a18BqUSO5s
 YFTYDtg3PVzGdxN8qXinpm1le2zNQzzeKWpSm/eQ2zwRI0i9AGAI9t/RoFA1YdRYw5iY5wmfXoC
 Sdi9W76+SQvF5c20N3qq2EFYcLeKN4voXa1S3MMUMhj8ReWEEAC7yexGrsW3Qd2lOY8Z7KnuSrN
 jzDYVijGESnlor9qZg+bNYKGuRh46GPTxHOchB+SFaGqeQ2ok10Nd8u43XQXSJ+Js0sAKLT+NeN
 WI1ysqeaHVbJOPZ5pSbU+nAhVtrNcd4f1TANFwfFOyXIGD+pKQlQ63REBPxF1/fhPjfKVf/Y/Z4
 J4qL5ecZ6P36a+gl+p2/S6RsJ603yKXJfEp1L6mBXBGnu/mJ2K17B7O6K0/2Fk5cUyPNr+AF1RU
 0JvXe0unDKvMT6EldYP8EijMMlkECtpeOPm8IvbrR+OirHLaHR0DqELCc0xV3apWIV5PC6YO3Yf
 eIP2uh+PSuLoSVw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the QFPROM on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 80845c722ae46611c722effeaaf014a0caf76e4a..9755b31946bf9d4c1055a993145d06c274b61a37 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,msm8998-qfprom
           - qcom,qcm2290-qfprom
           - qcom,qcs404-qfprom
+          - qcom,sar2130p-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom
           - qcom,sc8280xp-qfprom

-- 
2.39.5



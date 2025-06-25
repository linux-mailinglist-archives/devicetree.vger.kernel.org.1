Return-Path: <devicetree+bounces-189431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 188B7AE7CB6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:28:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C31043B9E1B
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AECB52EA142;
	Wed, 25 Jun 2025 09:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IPWW2O/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14E02D9EDA
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843148; cv=none; b=AKhJcMkjbCRDIvMQhE9Bk5LLUSft3mOzi6S/rV2YEyTyMdCUAySTO6zrW7/yjSykmcM6RPG40h84tApEs5jc14i2JLEbSjRnas5OW4xFQwxbsOKpHwbiAA1+9X63Xm8d8osGFmTcIojGuFqT6XCcI06WWNUE4ACpQKFk5mLwBV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843148; c=relaxed/simple;
	bh=pUbk1uqDn3rkUzvHyGVf5FiMIjDaRG8buGqEDrG6+iY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t9iW7HktVH9gdwaIwWzXTQeAdhyMj5dVsD8RlLqCxYAoFR1UEncG4zTrOgqXjo0+DmqzCfDEuoXnYu8Y6dVRqR+7k3Au8ZuXXhE10r/pjOVkO1zqyGlhLgD5nsrLKF5edpjxCXJzMhwP4iasWkFRlvIu+ycvbu+Aj9uHsAyqnvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=IPWW2O/G; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-607cc1a2bd8so9545208a12.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843145; x=1751447945; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zTFzCvwRXcKyOlaP6VWm+NwlDdnptDG85UUcTbjMo4M=;
        b=IPWW2O/GHDydEyCavPkKeyHTHKHDEbs+3Nv05PlnBskTX4zlSVarCU2A7BO2o02WWr
         oOZMBYwVdJDII9ZWqRzxj5+7sk2WRTPgRRlFNDMVxqIl5HrJWmpRt59exA9rmmrBFXnO
         iXWlfBA6FMx70SAEGhK54vkT0IY/zGtI/E7iypMcJRlkULHPUAx+2i/Vn8kNgIq53QW8
         gsxO0Efa/AYR0Y9cyf0zNDoitBTyLswZ8bgCEcjw+2t4gM2yl/GJlIj3LAfudkG5G+7F
         lC5rdj/qypDpFGNrljitFMyyKNo84qpCEam5z4luPDdL/2lHd7i4eg2Yg+4+4VCBheo7
         Bd7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843145; x=1751447945;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zTFzCvwRXcKyOlaP6VWm+NwlDdnptDG85UUcTbjMo4M=;
        b=o58/cQCOwNMtjc1TIN+DPpNOUC6WAagGeei5CnVKIiLcXYGua2xR6CsGvH4NjvdsN9
         t/98CDKrRDdVrzuCj4XgW2mA9CZKIakjpn53m+AdLHecbQ2R41z6PjTHkXpPjOEsv1KE
         OGJSWpXqE5sWt3z1xLYPzzv/Re4Bx0blxSp/t5D69BnaoalRzhI9/Vu5SGTnngL2unQn
         6PD/UjsdP9DMrjGdVkdFRNJQeKEIfBh2Ipf4TVTPAAlUjLavTPuqfpyLZG5/lyKT3fMM
         8MlbAU82cE+Uaa0cpXiq7FyC7+x28U8EoUIr4O42gzTw1I+BMvegJxsPynzkeLvu0arY
         kLaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDz9ituPd4XC6npPE+ncYzbHM0QgMBn7Bn8YvgEHjWNMMvS8I7qJZtdkZBRjzDGYjxKF5WOFS6QaU2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1AAGJC1fxuU3X9+Zk7d670BTFPGs/MC0ZMdiHDSkYQowEyRuJ
	1ocvfhpOrKi98D18tTqxORlIkvcnDMkF6F88cBw6oXpOVqURX2XzXisY0xKJXewIazYBt8z74V1
	Lm/GN
X-Gm-Gg: ASbGncuanXZiYoOGCfNajEvOPM2cXZPt398M/XVVMa6FEBiciXZ5cedjJ/215d4WOYj
	nQGVe07fWmZ383lkSjZXBqC89lyfV7tYDxAlpDVFL6affDjge5WIUVuFblh5KZJe4o+3UWSTf+t
	06nvXaAAl4MZW5t++ojvpcCfpdcugG1vw3S9gQYLi+hTWwuM6DKtX4zQTLiO+OWSVQNms/7HJ6u
	s7rzpi9TCwoiSTIg44hWyeTsTDl6DmYPhoPZdxcgKco6XDL0BqWKitaDFff0f/qRnEHoLelyHea
	XSxPsr0ywUJ4lNAN51sjY0pUTLK1SBtrKIxZwshvbmsBqddbSbwldFwKQad9jSImMgu0i0jblQ3
	PP4N0IpuiCca+SbOx4CeIHce529EnryRs
X-Google-Smtp-Source: AGHT+IH8149yP9D8VkRVzc5ItiuTtvTkM2SP+ZetN60G4hPLdR3fSCS4GsHThskLkKTdSjnQ5A6uxQ==
X-Received: by 2002:a05:6402:2548:b0:604:e33f:e5c0 with SMTP id 4fb4d7f45d1cf-60c4de4fe80mr1738458a12.30.1750843144927;
        Wed, 25 Jun 2025 02:19:04 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f196f84sm2194802a12.14.2025.06.25.02.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:19:04 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Add RPMh regulator support for PM7550 & PMR735B
Date: Wed, 25 Jun 2025 11:18:55 +0200
Message-Id: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP++W2gC/x2MQQqEMAwAvyI5G4gtsepXZA/qZjUHtaQgQvHvW
 zwNc5jJkMRUEgxVBpNLk55HkaauYNmmYxXUb3Fw5Jha5zHugZkKLHie0eK+ocmakFrqgvDsp76
 HkkeTn97vevw8zx+M1CBJagAAAA==
X-Change-ID: 20250623-pm7550-pmr735b-rpmh-regs-06087e5b3a99
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843144; l=815;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=pUbk1uqDn3rkUzvHyGVf5FiMIjDaRG8buGqEDrG6+iY=;
 b=9SrihxBYIY5Fo98SHHtSnS8hT8vJEMRffaa99XV2DXPTTOlML224CrfPKke4PaDDTj/ageEdP
 QhFBOtbw+BWDlxNRwakK2ZhdgZpY6D9Pk5a8taiiIRq8Nt8dXilDPmS
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document and add support for the regulators on PM7550 and PMR735B, which
can be paired with the SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      regulator: dt-bindings: qcom,rpmh: Add PM7550 compatible
      regulator: dt-bindings: qcom,rpmh: Add PMR735B compatible
      regulator: qcom-rpmh: add support for pmr735b regulators
      regulator: qcom-rpmh: add support for pm7550 regulators

 .../bindings/regulator/qcom,rpmh-regulator.yaml    | 35 +++++++++++++
 drivers/regulator/qcom-rpmh-regulator.c            | 58 ++++++++++++++++++++++
 2 files changed, 93 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250623-pm7550-pmr735b-rpmh-regs-06087e5b3a99

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>



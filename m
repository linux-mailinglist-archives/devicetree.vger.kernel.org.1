Return-Path: <devicetree+bounces-254237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A43D1660F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 03:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C36E3024E4D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F366E26562D;
	Tue, 13 Jan 2026 02:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iWcGNLfT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A582863CB
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768273088; cv=none; b=EENXpSN34j8Zbe/X0Rd52JrPQBMUtNW83agduG/wnzHV+VAtdJ5u585Q5On1ycJTdlSkQPm4U3dPevOV6MK23ZOyKmPdAaIDCKrTS6FtgAn5g6DAlwj1vuu5VVP1cQ8lizkPUucXdmiLoZPlCZHUpiSXUAfDTJxh3RAhfqYaPeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768273088; c=relaxed/simple;
	bh=4g+wGXOzU9O4o728wxdzupLqoaY0H+UaF3VynGflQsc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Qn/GDi1VBKxi2resAj03lZ/RmEg/3FoJaCaHSnAKM45IKsOy5CbY6VRvu1toLOzoxlv6Vkxn9GtoVyWOeFitrNDv1n0nq+BOg2gCwmoCNfunuxI6xzEs5LZVZBcpUafUwag91DfID0kPGodgJfvdEz5r+2991h1clVIx4ASv95Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iWcGNLfT; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-81ecbdfdcebso1764175b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768273087; x=1768877887; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rFfXODjCRVHA3oXyZnoybHJItYbj+O62t+8u9pd99Xw=;
        b=iWcGNLfTcUbMkY2w0fVCOkfge6HK9ajcoEnSUJ2KjSQYeH92aulq7M7BuRMfwzJ4Hp
         e1W3CA0uc+xI32i0hdq9Vl6OOrglbSD60JLVDh931dqHqenjHbA90b0ped3rCkMcfFda
         174UrQr3ZCKhwyOymG9w4LouVOAQFUkRhifi3u3Ij6SFRRI2ZQtWj1P6SXIsFpdLkiWN
         MFYN5DtQjsfMKEvNS6oVT8upnnsmhFN6t7FE1V/TCaeehJt8OgyFbwnUSRNTZAKUOuS0
         SaLK6OEtiDhSLomXoVrsw3ZayH8e5lU5ZPkCIAuiLm3xiGo8S/+fg49pstB5n45C3LyZ
         lhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768273087; x=1768877887;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rFfXODjCRVHA3oXyZnoybHJItYbj+O62t+8u9pd99Xw=;
        b=AsQuMPm8c8aeB3disurZWYR4funDBJWej03bO4bBl7hwS8+x19rTIOvOrimr1xIvT0
         dYBjJZNmYqDInpmty0MTNPYZwajaO+UqDElw53F+Hm8vRFEVkdSdOgPPjxcy1yB4KvTE
         /OVtlDda0HrI9Cg+//JqgBD157gIhb7jVoHdRJZ84rn6gCVlHbpZTGMwSokUxKYoRwd/
         3AX6ElyAIh5RtmrQFesIx2GVa1K8zi7wQ8Z1Ly2w446ndu+QbrPMv1vkNfTl7Snj9K2w
         VkxW0jBQV8c0bOjpHnQTvW0cZlbG4lCPcmQM01+2LcyJsQgsgHlET7VKAH5gnnhBYSFd
         wyag==
X-Gm-Message-State: AOJu0YxC5Q5y++OO9TYHywVAN7p7tte6AHd94S5bzHstqkFm/2xRscRt
	F9kea4xn3hiu0qkb2OY28EDmbrGoTvDkfjYSSER4iV1QKrWqoe70fnPs
X-Gm-Gg: AY/fxX5kAtm8XAG+kUiJCAx1YQLMlbpSZIMxGndl7dDBoV+6xQ7soSFaxz/Sz0UJKQZ
	pytmdBrlKm2ufznu4B2NdpDXyoHbDOUSt8kkx2F50KK+BwI7XUMjrzNYU0aoWeCaksVt71xi755
	SlRlszvCkM5Fl/rcyVYpcsVN9/Gn0liSDVwWH5fw7RcGimdnphFhOPWDHZmc+a/k99jyXi+0pd0
	6E8A1A/rj4IqUIWa6Exx65I2zhp/KDK4cwhWHh9XWOPz02tmsuPqwdTZC3ntimah0vCxe6rSWLT
	68ttSlP3xMlSeiPAKkT4we8/wzw1l6wo108Lvc5rIRELWHA6CIeJdvGv7KxSdWGOjidqL3jnb+D
	4tEAtx5Lhnvx8MYPV25OZ5dL5ikMr1Y5Wm528OwpfCAAekl0R8IGWSDU81obHpXbETtL84yMj2v
	Xo8dQWw0OOcSbKh/huvF10oU29MR2C9mljZW2XyoLmkxy/YDdC2C4=
X-Google-Smtp-Source: AGHT+IFGjSWJ0/N/jssuSA4G7vWWabFAFD8WCwkp8/+SFuj7W2uo6HpZBUBUR8JLjzWJaFq/fn4bfQ==
X-Received: by 2002:a05:6a00:6511:b0:81f:3c34:fa7a with SMTP id d2e1a72fcca58-81f3c34fc14mr5522589b3a.39.1768273086884;
        Mon, 12 Jan 2026 18:58:06 -0800 (PST)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c530133csm18702724b3a.31.2026.01.12.18.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 18:58:06 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Subject: [PATCH v3 0/2] Add Meta(Facebook) ventura2 BMC(AST2600)
Date: Tue, 13 Jan 2026 10:57:57 +0800
Message-Id: <20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALW0ZWkC/4XNQQ6CMBCF4auQrq1pp9CKK+9hDCm0wCRQTIuNh
 nB3CytdGJf/S+abhQTr0QZyzhbibcSAk0shDhlpeu06S9GkJsCg4ABAo3Xzw2uo0OGMeqjMHGj
 JylqAUkbKgqTTu7ctPnf2ekvdY5gn/9q/RL6tf8DIKaO8ZZJL2aiTFpdu1Dgcm2kkGxjhE8l/I
 JCQlpei1oXJmfpC1nV9A5xs8TL9AAAA
X-Change-ID: 20251222-ventura2_initial_dts-909b3277d665
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1324;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=4g+wGXOzU9O4o728wxdzupLqoaY0H+UaF3VynGflQsc=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpZbS7Nwp6cSSumZLmoON0Cq6yF7x8Kf26aO5sX
 7TAG9KFxv6JATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaWW0uwAKCRClg0K3CVbE
 gUylB/42ekjg9KvH3E9Mz9qnzsc0txXIwLQK/t2U85LJDsO+zMrJXCUonA4apS0nQBHnIGBUGS3
 vZpHn5wrjMjRau6TfaRuDKcVvdZBKGYjzU6OKKW1mAWNGLAgbC8MnDyUaUFCiruIsPTPcYjyuoK
 dbdXv86abQbgosBL5rHdkOFfqwyz3iWpSjI31GlFbQc28+76UpLe5Zm4QcSJn1wJgtWbUUp3lZq
 1dIFTQP1glVTi3VqHrpKj1uDLC1QZUzumV2A1SblHgMBoROx9qxOO8ofcCEtQ1TgNZlUhnxrJ99
 GKFKECn8vOMN2sHZqoSlrh2LV820xgUFcyNlkk3SLfUPxfHu
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481

Summary:
Add linux device tree entry related to Meta(Facebook) ventura2.
specific devices connected to BMC(AST2600) SoC.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v3:
- Add annotation for marvel 88e6393x
- Modify the gpio-line-name
- Modify the node order alphabetically
- Modify dt-bindings document for rmc instead of bmc
- Move the gpio-line-names to original node
- EDITME: use bulletpoints and terse descriptions.
- Link to v2: https://lore.kernel.org/r/20251224-ventura2_initial_dts-v2-0-f193ba5d4073@gmail.com

Changes in v2:
- Remove unused mdio
- Link to v1: https://lore.kernel.org/r/20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com

---
Kyle Hsieh (2):
      dt-bindings: arm: aspeed: add Meta ventura2 board
      ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    1 +
 arch/arm/boot/dts/aspeed/Makefile                  |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-ventura2.dts    | 2874 ++++++++++++++++++++
 3 files changed, 2876 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251222-ventura2_initial_dts-909b3277d665

Best regards,
-- 
Kyle Hsieh <kylehsieh1995@gmail.com>



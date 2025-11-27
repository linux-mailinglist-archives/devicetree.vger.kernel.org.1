Return-Path: <devicetree+bounces-242610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5747CC8D18A
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 08:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C7453A62F8
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 07:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D35831A07C;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhEyhWE/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C311487E9;
	Thu, 27 Nov 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764228644; cv=none; b=VB8x8Z8+Qkl1NATV60ok4o0KIqmGHwH9UMV26QT2Kf424e0MP3zmz/6Vih+cp3TR/y245ImjifR2JdB/G7pYbDFcbOVbq6X4vpB3l9eAEksj2OznhcGZE6X6nlbNQzYC/RLmrSbYM1QY4Pv2cWLS0p96xv0CuYOefJ1pawoLJ/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764228644; c=relaxed/simple;
	bh=6jPCsfq4CeOnErf3qNwJU7sJXITpGdob9lEfen7L2oQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Jq4yECoZ/dZMEg6CnN4JAvi/PzVFHzWoje4lqpmp2vBN5AC6DqmjmMkT+kCZu8B1u90m2sDT4/BWxkFuQWMHX9aYJoe9590e7hCGXut9maV7jXAILjTYGqdxs+KLB3lxhUjgr4fpwwKt8Rv8fGQQBJXW+7vDMfWpgR9FGrBOo3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhEyhWE/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6F7C4CEF8;
	Thu, 27 Nov 2025 07:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764228643;
	bh=6jPCsfq4CeOnErf3qNwJU7sJXITpGdob9lEfen7L2oQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=OhEyhWE/v3IymteflPwIgo2JT9OM2ts7CmFLMG58IjdqSDWM7Q7dgFMzwfXziXviv
	 RI9UvAtf8YnKnLoci5DgqgncwsbFAG9XfuiarjQLTeDmQLkGLHeqcE3ioPUYNZ9+ro
	 kjNqsG76vpgIKKwJ5q0YNsQLe1kw0lInrnyGjl9YbPGAlpYSpNhPc0edfRbYXjgp7w
	 ZRJxVGpUTg4GQb/nWvJwZ0kQ3+Dt1NY44VpdOUFs0jxn/LRNqt59MOGm7iT7Um5aGs
	 jN1FQlb4lFPxHiDyekqN67/Ruq45vplg8tyYLwfuIJ1da8oJo6bFB8Po1k2cnfGTPH
	 yunALonCbhu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C6FD11183;
	Thu, 27 Nov 2025 07:30:43 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Subject: [PATCH 0/4] Add support for Amlogic S6/S7/S7D Reset
Date: Thu, 27 Nov 2025 15:30:30 +0800
Message-Id: <20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABb+J2kC/x2MuwqAMAwAf0UyGzABn78iDtWmmqVKIyKI/24Rb
 rnh7gGTpGIwFA8kudR0j1moLGDZXFwF1WcHrrgm4hqTmJxoDVqb8chEoW879sHNkKsjSdD7P47
 T+34GgAzDYQAAAA==
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764228641; l=1065;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=6jPCsfq4CeOnErf3qNwJU7sJXITpGdob9lEfen7L2oQ=;
 b=+6Fgb0YDwTd5M6y0wp/2GvdWtmo59GcMmDK77MFLDAdShb4SHZoI+iPLjuyNILLj5UZfC14up
 6Mbdyhe6Y3sAbJrrOlAOD0UWC/2QTC94jipkNNnhf168f7iHFilSohw
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

Add dt-binding compatibles and device nodes for Amlogic S6/S7/S7D reset.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
Xianwei Zhao (4):
      dt-bindings: reset: Add compatible for Amlogic S6/S7/S7D
      arm64: dts: amlogic: Add S6 Reset Controller
      arm64: dts: amlogic: Add S7 Reset Controller
      arm64: dts: amlogic: Add S7D Reset Controller

 .../bindings/reset/amlogic,meson-reset.yaml        |   3 +
 arch/arm64/boot/dts/amlogic/amlogic-s6-reset.h     | 171 +++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi        |   8 +
 arch/arm64/boot/dts/amlogic/amlogic-s7-reset.h     | 124 +++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi        |   8 +
 arch/arm64/boot/dts/amlogic/amlogic-s7d-reset.h    | 134 ++++++++++++++++
 arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi       |   8 +
 7 files changed, 456 insertions(+)
---
base-commit: 79482f3791c4760b9b0d8d9bfde9f1053ea3dd5e
change-id: 20251125-reset-s6-s7-s7d-211f9782dfab

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>




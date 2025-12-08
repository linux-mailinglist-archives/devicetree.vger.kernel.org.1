Return-Path: <devicetree+bounces-245226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9345FCAD8F2
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 16:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87EE7301B2F1
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 15:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB1942D8378;
	Mon,  8 Dec 2025 15:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jWvmYVxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB4329A33E
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 15:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765207300; cv=none; b=hlWIl5M2tpahESLFjHCzCX4MpqAi3hjnBYIJFS6OkPFr9PHhr1FDDbxc70eDf+RIXsArN/oAj6YKpCnVhMsAFtVHiGFCp54kWWV9/5/NZIV6BdV+nMBIewZvaQIV3aWn+V++aDm22QgOf8yCNgjRFGIRdFi4EfWAOP5Rl36BLAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765207300; c=relaxed/simple;
	bh=JP2fz9Dv4DJWLvkYoNe7H1Oid5YvFT7CctbsVz7dpSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qgnwVC/BisQeWwxGz2Hop3PGWPhxSEOtiAdChfzhAXsek5k0s5HFusdZgBeXTyWXL8y8LJxvBB03y6C+SuWJZhblFrW2bp9L9e0zXEgwNgxTGhYk17hMdg06icyHYNi89qfVA5KwLkLoOhvBn0eDgj9TbcMnhQl2ZpFcK3PxJXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jWvmYVxO; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-640a0812658so7929376a12.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765207297; x=1765812097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B4/wvP35/1XunlBudfWVzFMdIF32aFpqLyJzIThUjSU=;
        b=jWvmYVxOcwGMAruzdYSPMnTY0VSgS6VlcC7Y/ppUuJhwDez++ykh7TEPIPJCNn94h0
         DyjxUh5/7GzhQuQYCHYhPmgnrhaK4CIYD5wrngRymhkeZYkaW5kJS6m0q7BNTNw6ziUs
         5nDDeYf7yiEo+v3HjzTF/yp+xx+ms+83Odmrm0VNDQcYQAb9C2yvZPuPhvqeyDl3Exhz
         EAox1p4Za2ta40H5+z1p5dw3s5KaluCLre9f1RxSUlIU1b3f2idNxbPmOUwQcksDq+JG
         nfI2VylMsFS+bpe8AoQfVt0rqBgxZ0rR83qV229Oee8I+ssZfdcOwt9CnWphSmMhNXOO
         OXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765207297; x=1765812097;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4/wvP35/1XunlBudfWVzFMdIF32aFpqLyJzIThUjSU=;
        b=kbF3bQ6Vu+30ulCRkA+Ks6382/5mrWgfL3jCzXQhmrW65Nb93jjlnB2NxNkd2JYuHs
         k9vkyJnexzYEuRpSd7ahQ9EHkHQM3d/u53e+8EbRDe8LQF6mmO5z+SEt+kPON+SvyGcP
         SqL1W19qnwIFiw4/CiWeJkcjUdQ1q7/nzdwmGOCEvGbaD4dE7rjuTQJ7FU/PTtqZEEtF
         REaEo8CePj109JgkhpyrQpkgHVjhUgD46ZCzt/7yebuUHFt7cJbKBHTvHb7nl7W3G0PV
         M0gd8Y34mBl0eoCPCoUcLZFdO4NJHmxPoMQW/IK9SlcoDdidv+YLAav0HoQmGf2+iwKY
         NQhg==
X-Forwarded-Encrypted: i=1; AJvYcCW91BGUGRJKMo/K14bqudDTJbk7V67ZEflr2WlxpDB6wqf48ed6i/v7zicuFiBp4tKjoUfQLug+Gm4w@vger.kernel.org
X-Gm-Message-State: AOJu0YyymYjBhel1x5N1DsRCUM9sghGH4+9dxMRxf7IU/ASO3rdXNvI2
	q8e7+LSTUWzq6Ks51cAKHFBGbQBwnsnhzgeH7p9j+FzV7oiAYUS6uWoq
X-Gm-Gg: ASbGncsOEh3Cylzo7ulm1EQijPx2vrkkbEFbsjyytlpeLGsWTNix8bgM3i43Lh0GHW9
	jBUx3eR2b9GiglIKeFCUXooVqXucj9IZa8fMC7vuVDY6DrnmMKSLuHOLom/9LLzOwtAaRDEOEgq
	lhb7oPoYKFVjNIN69g6Iovz872a1qMwRvkSK8juuTLpV2LwvNZkBWVnz3dd650zQkz3YwLT0db6
	T6NsWhybd1TBWNiW/DNzGp8qOGxKJFZ5WbZQTrwhqn1BZSpVSvB0jcKF8lNv/hdCWp/Ne/Cf+fQ
	xQ1D+BB8HSmgnM4Fa18CVo5YzP3yBXAobzkP06TPUTd8GcjqfTaFNhhYtXfAehQoWiMxnUN9l2H
	qDZl163ZEsJxw/cKYjk7ryBhc08CPkzo8vnYVBzaNoL310Dpr4wWMnULE6S/RXB+PFiHJGPbNPD
	rU1ojYiHt0uB8K3uFEMn+nIjojp9ke7VfH8RBSC7ZLCkcLDYaeB/cPr14usFdVQ8t00/EgbfSCM
	u0iVmiaaSvOTqkG
X-Google-Smtp-Source: AGHT+IHxdWJsw1kNb8reJw7JSoI2S/TXuOuDjwZ2NsDuaPdfwtLRf7UY3wFExCIiplYPXHFP+4litQ==
X-Received: by 2002:a05:6402:3485:b0:63b:ef0e:dfa7 with SMTP id 4fb4d7f45d1cf-64919c043dbmr6304762a12.6.1765207296481;
        Mon, 08 Dec 2025 07:21:36 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412deddsm11547484a12.31.2025.12.08.07.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:21:36 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 0/9] Add RZ/G3E GPT support
Date: Mon,  8 Dec 2025 15:21:17 +0000
Message-ID: <20251208152133.269316-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Add RZ/G3E GPT support. It has multiple clocks and resets compared to
RZ/G2L. Also prescale field width and factor for calculating prescale
are different.

v3->v4:
 * Added wave form callback conversion back to this patch series.
 * Updated rzg2l_gpt_is_ch_enabled() fit into 80-character limit for
   consistency with other functions.
 * Dropped field_{get,prep} as mainline now support it.
 * Updated commit description for patch#3
 * Retained RZG2L_GTCR_TPCS bit definitons
 * Replaced gtcr_tpcs_mask->gtcr_tpcs
 * Updated commit header and description for patch#4
 * Renamed prescale_pow_of_two_mult_factor->prescale_mult
 * Added RZG3E_GTCR_TPCS bit definition for RZ/G3E and added to
   rzg3e_data.
 * Added error checks on suspend() and device set to operational state
   on failure().
 * Added Rb tag from Geert for SoC dtsi.
 * Added SW_GPIO9_CAN1_STB check to gpt0 node.
v2->v3:
 * Added Rb tag from Rob for bindings patch
 * Dropped wave form callback conversion from this patch series as
   it is covered in another series[1]
 * Added suspend/resume support.
v1->v2:
 * Created separate document for RZ/G3E GPT.
 * Updated commit header and description for binding patch.
 * Added waveform callback conversion to this series.
 * Collected tag.
 * Added link to hardware manual
 * Updated limitation section in driver patch.

Biju Das (9):
  dt-bindings: pwm: Document RZ/G3E GPT support
  pwm: rzg2l-gpt: Implementation of the waveform callbacks
  pwm: rzg2l-gpt: Add info variable to struct rzg2l_gpt_chip
  pwm: rzg2l-gpt: Add prescale_mult variable to struct rzg2l_gpt_info
  pwm: rzg2l-gpt: Add calculate_prescale() callback to struct
    rzg2l_gpt_info
  pwm: rzg2l-gpt: Add RZ/G3E support
  pwm: rzg2l-gpt: Add suspend/resume support
  arm64: dts: renesas: r9a09g047: Add GPT nodes
  arm64: dts: renesas: r9a09g047e57-smarc: Enable GPT on carrier board

 .../bindings/pwm/renesas,rzg3e-gpt.yaml       | 323 +++++++++++++++
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    | 184 ++++++++
 .../boot/dts/renesas/r9a09g047e57-smarc.dts   |  13 +
 drivers/pwm/pwm-rzg2l-gpt.c                   | 392 +++++++++++++-----
 4 files changed, 819 insertions(+), 93 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pwm/renesas,rzg3e-gpt.yaml


base-commit: 82bcd04d124a4d84580ea4a8ba6b120db5f512e7
-- 
2.43.0



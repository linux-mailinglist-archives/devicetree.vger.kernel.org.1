Return-Path: <devicetree+bounces-309070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4jX/JsghKGoI+gIAu9opvQ
	(envelope-from <devicetree+bounces-309070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 16:23:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55060660F54
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 16:23:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=UD1H84L1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309070-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309070-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D0E9305FC7D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 14:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A872D33D6F8;
	Tue,  9 Jun 2026 14:15:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD7333E377
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 14:15:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781014519; cv=none; b=rQe8I6frrdSt5l86bs2Vno2vWfVmW9qBwWvaqqQmdAB+1UiZZ7jOFFA1vvr2lMKE6WX5dVON4/PMhwj+jPV+MkyUkzWn7xeDm387sQYN5L2MVRWCWmohJH4CoIzApmnGawcy13qwZKgm4WMoy6xGLusAOfQ+93tCLVgo2mVCRaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781014519; c=relaxed/simple;
	bh=SJ0VcFqN8szreATMoSEelucjmskHHU4MjIq5rUz7iwM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Cmtf0tgrTKhjfNiWt1yqNsGDJJ5avok3K5lRNVJNpduxKJziLOZYCJBT3bwENDwm7trLu9fPBEQ/yO42EI/xZim2WtaVw+2dZ3gRAhjzTA9cxggHaGsamV9KbzDOA26jT8AWjnzzvXuY98p0uRxvHEM56dzH5xKqIYp+0BLaQt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UD1H84L1; arc=none smtp.client-ip=209.85.128.46
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-490b915ded5so48506715e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 07:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781014515; x=1781619315; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/6sDl5vRDu86DoXVi7plLZ61XDM9mssebUL28OXdvE4=;
        b=UD1H84L1hJbLHb62kokiLsUQmjZ2UMu7S3DbXCEK86IviNL3vadaarVAjwDsG0vpGn
         N2DxfU6vMxrfw+/OTPHmf+7enIp97WNXFwTZAyBCP80I80z/iBmeiNGeKuucvrsvbyGj
         sLUzvBBZTbHDzaTyeoce+9GW8DOcDBItQd8M9JycnfdK0+O+CEFMD8kZyZyh6Isv6vIU
         QIWu2o2VlZDqCFb7VBGJo3dyGGIGaljvKdL2Igib8LCNPUGj1pnXS2Jc0S8TOXBCdMJ0
         EZ25FJfoFBOuARrIcs3l7EOP6gw/V8WuPBrZi3D2C+n0oFIeC8HB8sf8FSqLsdh6tOAw
         hARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781014515; x=1781619315;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/6sDl5vRDu86DoXVi7plLZ61XDM9mssebUL28OXdvE4=;
        b=Ue4ciEAvACeJIYNbZsFnRxNhHKhjdQRLMlQkX71pCCtNMleqRfAzAAwwagk6L93qJO
         mVP0N/UxqRf9NB990SurPShEzISdY+KXCmA84+QU2wfGjnMWRn54G5r6OjFm7Uf4flLC
         OT1PpP3M/yTUMfYPo2NWQOoE9MxGl1/mw/m9KjyfvRUrfpP8+k0Y/6LdIOoE8NaydLRV
         7Mx/q7qm3wnI75bKKT+VBUCnajxvX/QDR6hZNgus3uUB5FjmexhWqkyhmaCc9gheZ0S6
         Isl3lIr3yEm7XWJJxfxGExoWzTYGIRQywUGAI+/KTZ5sAbuqgniGzFNn9LPwJW7GfPfC
         0ELg==
X-Forwarded-Encrypted: i=1; AFNElJ9jFXQu3cKjhELcEk42Q2XxOC6K6ZX3nEZK/8vFeGkVADVg9kGHBqVeyocR8PkTP5h+l5bPuHV0TpAO@vger.kernel.org
X-Gm-Message-State: AOJu0YzFYmeqUh3oZvGVGeeT/p9HDKIRT19TIGpyaDgnuBXtjxLxoNVc
	gG5E2lU6mrdo/SFRg0uviL5ehzmvytVl/VHb4QuHTk3b3kq3jfMJ3SR/I1tCTk/+cDYJt53Splr
	McpVOI/w=
X-Gm-Gg: Acq92OFczdfLy4YiwQQjzULqn4p/nZ/l7RBxcZnHXtxYA7UZQXGtrSa/i7B96WHMtWf
	iw+wVrz/QBqHjeaAj4eEXaoDtDAugLCKs/7tWXsKwQ4L2LMPgfJF55U9MtaQJtYpIsc3zXaC7Es
	yvokB++TcA4hNrUiqtCyaWHdFfyd5hA6fx1Yy9Dxwy209hVzqq0cwDiMWqOOlAmpjqNjbRTvtqp
	N5osEG4si3KFF9deVFE5rNxXQ78H0LGDzWd5rs8NThd/wGBh1j+gkQG6cmr6Rep7s7QwnmRYLlk
	Cxi/8QaLThjY94Itft7R7oJYk+4r1AE5T1PceYsj3sR9zj6E2PJDj2bNdFyfzaRZUOwleZcUbEw
	375lOhMPwXyH2fKjsEaPkCqtfJbRSM4CP2tz9VuC9tGIDSC+pyDdPOsoPGIj6+MFIFe7J0GHIeO
	Qc0zQx+JKNWjMRNUSs95UhMB1w7/q08NF5F0LSfhJLljlmqys=
X-Received: by 2002:a05:600c:c16e:b0:490:b8c0:d470 with SMTP id 5b1f17b1804b1-490c2622d03mr350451545e9.19.1781014515087;
        Tue, 09 Jun 2026 07:15:15 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff23:4410:59bf:7aa6:43c0:c58b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490c2d5d2b4sm321450495e9.2.2026.06.09.07.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 07:15:14 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 00/12] clk: qcom: Assorted fixes for gcc-mdm9607 (and
 gcc-msm8916/39)
Date: Tue, 09 Jun 2026 16:14:36 +0200
Message-Id: <20260609-qcom-clk-mdm9607-fixes-v1-0-5e9717faf842@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMwfKGoC/yXMQQ6CQAyF4auQrm3SYTEOXsW4gGmVogM6BWJCu
 LujLr+8/G8Dk6xicKo2yLKq6TQWuEMFsW/Hm6ByMdRUe/LU4CtOCePjjolT4+mIV32LYXBtYOe
 440BQ4meW31Da8+VvW7pB4vx9g33/AJq/soZ6AAAA
X-Change-ID: 20260609-qcom-clk-mdm9607-fixes-81a8d11dbd80
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Georgi Djakov <djakov@kernel.org>, 
 Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Taniya Das <taniya.das@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309070-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:djakov@kernel.org,m:shengchao.guo@oss.qualcomm.com,m:bryan.odonoghue@linaro.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:taniya.das@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephan.gerhold@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 55060660F54

The gcc-mdm9607 driver was originally based on gcc-msm8916, with register
addresses/frequency tables - where available - replaced with the values
from the downstream clock-gcc-mdm9607 driver. Nowadays, gcc-msm8909 is a
much closer match, so comparing the two drivers revealed quite a few
mistakes inside the gcc-mdm9607 driver.

This series fixes them, together with a few other related bug fixes in
gcc-msm8916, gcc-msm8939 and the dt-bindings for qcom,gcc-mdm9607.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (12):
      clk: qcom: gcc-msm8916: Fix enable_reg for gcc_blsp1_sleep_clk
      clk: qcom: gcc-msm8939: Fix enable_reg for gcc_blsp1_sleep_clk
      clk: qcom: gcc-mdm9607: Fix enable_reg for gcc_blsp1_sleep_clk
      clk: qcom: gcc-mdm9607: Fix BIMC PLL definition
      clk: qcom: gcc-mdm9607: Fix halt_reg for gcc_apss_axi_clk
      clk: qcom: gcc-mdm9607: Increase delay for USB PHY reset
      clk: qcom: gcc-mdm9607: Drop incorrect apss_tcu_clk_src
      clk: qcom: gcc-mdm9607: Drop incorrect system_noc_bfdcd_clk_src
      dt-bindings: clock: qcom: gcc-mdm9607: Drop incorrect clocks
      dt-bindings: clock: qcom,gcc-mdm9607: Add missing "clocks" property
      dt-bindings: clock: qcom,gcc-mdm9607: Use proper address in example
      clk: qcom: gcc-mdm9607: Drop redundant register update during probe

 .../bindings/clock/qcom,gcc-mdm9607.yaml           |  18 +++-
 drivers/clk/qcom/gcc-mdm9607.c                     | 105 +++++++--------------
 drivers/clk/qcom/gcc-msm8916.c                     |   5 +-
 drivers/clk/qcom/gcc-msm8939.c                     |   5 +-
 include/dt-bindings/clock/qcom,gcc-mdm9607.h       |   6 +-
 5 files changed, 57 insertions(+), 82 deletions(-)
---
base-commit: e108373c54fbc844b7f541c6fd7ecb31772afd3c
change-id: 20260609-qcom-clk-mdm9607-fixes-81a8d11dbd80

Best regards,
--  
Stephan Gerhold <stephan.gerhold@linaro.org>



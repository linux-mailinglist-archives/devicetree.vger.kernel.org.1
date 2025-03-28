Return-Path: <devicetree+bounces-161620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EBBA74B78
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FD26189EF11
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E83AE23A9BE;
	Fri, 28 Mar 2025 13:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hwUlwKuB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8BE23645F
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168686; cv=none; b=ZUiZ3n4YraJkVbdTL6Xzd3Co89By/qAV4mw889nF48m1y1X/6yqhMB+9UfnNXE8iRZM5R7S82+3lR4sQAZPv0RtbBToPJFERWGdtdBQHxElF1Yr2dzldjIAqoQIjftHwt51ZD6vS6JFgXR14dG/4rJ8IHDgDdchQufw9d/R3LlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168686; c=relaxed/simple;
	bh=+fAAJ/+/3MbgFo3bOsjQzn5S6tmp2xnmlCT4juP9rJM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AsHKbccMWZLApBbQ78HuAkqEsnV0LYVfKlpvbFFFTStgyPJkvDwiU6aIUX7IkO3cTodgRWyVM5CmliW0zQ8QWhD+bPWImA7FB+JW2WUXBpVUR57NxxBXFjr5plX1eSVcrX1zUttH/DHeYBIfSjjBMn6qRXZsO53KHq1lCyWM9e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hwUlwKuB; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e8be1c6ff8so4132335a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168671; x=1743773471; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IvD3NPE37fI+ZqUrH7EmoQBagetQaG70If7tawsO/t4=;
        b=hwUlwKuBZEhEFyR8lpcPfVHC15a0AICLojQ4JY2LoB6ggUiO1gF2pWCHuo0ybTNct2
         PBTFuFIKhzTIsmSw5vSpcBv8NzrSQDM7DNl9v47UiFwpQ131T7Nz88eKxeI1kzZj9UwC
         dJseQsWqRladaQF4AkGCI9LJTvUm48xYFe/btTW/A/DR7soJxqQE1rdihrKMO/zHtr0x
         h2w1oK8ulWm9FMQB5KDIFnACJ0tmPINxSFJMhIMdzhgk80K0xzSPxFrMVV9wtiPv5uGX
         fI6im/mzTtm9OoEPXTgDYKoJkPu3zgkFrEKro/FHMCQvkuY/Yd4ZS1MverqaiK3Npatx
         4JEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168671; x=1743773471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IvD3NPE37fI+ZqUrH7EmoQBagetQaG70If7tawsO/t4=;
        b=PK5SBgRFSUSqNTGk8Z9km2jfP4Sppg3J+5GBRx3H1BVrqAVpg8kFyBHAU/SEfL7hRM
         0kuQ0YuxAlWEoWul7AV/pdyJnnYeuSHn3uSjH+/WE+go3IIYAyYVWK8jzQnP4OsYunTw
         flWUhaxYxok5mKIPOHCwMa1mrc1e0U8lZGbq/UoP5DhIp0DR/7+oI1SUNcfFB3GC79vD
         BkI3n+pOzTestiuITgSYWPFll6NjZTgZ8JPKVPnp52UaARPi9fj7Rfp2hfojnf/WT8i/
         XKfLLeA+gUEZjsJx/uRJgrQjPPmRs8iuN0YR/y5w2PyQkXd7H8vuzNsZnE0Xa6iIASFk
         a9Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWLlXDFP3h51xwiF1FsOCNfdlzxkPC+HYt1r1w3Wq665osc+Uo6swa/0cq/1xvpG4C0DGyGtdq0u3/u@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1hlctPVPRR9BgAXLWC8m3BCoUVi/gKHFZaXuwTYMWxypRVWZe
	jWK4Hn49LiDI63pRIctPPCTH/JSUdmX1svWjsOM5cd9E4ALv3LNxvkRb7EWUvrs=
X-Gm-Gg: ASbGncv4pjHSm4d7lOi/N24vczIrA9LaZQd1I5SQCXj5P9trqFOlRuWASdTMwf5hpf3
	JEinEdVIfCQX5OcIiQrDt9OWn3gYjTNtay3hvK7NLFzvnf/pYaBdXjOwAeaCrCMDzy+ByxRZASb
	Ga44lezEHLt6M5N17NmVxOczVQyPQTPf+p4S/A7ETw1MXZUOcQlZyeoykaBXbr3kYgciZEvzVaQ
	b7Jzaj/038syVdORAG5sZl3GV8ff47RB7iTgLFFrjF4oN3yIgJqvdB3pVH1K0vcV3XPPBOJebxh
	yoQiylZSKG29ycAXOPUqETE2v+HO1rDKois815faXfzUNL5n6VqR0Ta5LJA2178g1Y9UhE+fmYH
	4cQsq6H12I4oLDpRfZYDaRvkdDtyk
X-Google-Smtp-Source: AGHT+IFcXivfke8CF3Ua6fUT95VkCgqgOsG78wJbvWFT6tJJvWhz2bwcboGbcdFVisEshC8NwxZTJA==
X-Received: by 2002:a05:6402:2547:b0:5ed:3228:cfee with SMTP id 4fb4d7f45d1cf-5ed8be108a2mr7864450a12.0.1743168671175;
        Fri, 28 Mar 2025 06:31:11 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:31:10 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:29:18 +0000
Subject: [PATCH v2 32/32] MAINTAINERS: add myself as reviewer for Samsung
 S2M MFD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-32-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

I'm working on a Samsung device which includes this MFD and would like
to be Cc'ed to further contributions and help on reviewing them. Add me
as reviewer.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d4d577b54d798938b7a8ff0c2bdbd0b61f87650f..9f05af52b062d8cab0f8b48b2625432108604c3e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21397,6 +21397,7 @@ F:	drivers/platform/x86/samsung-laptop.c
 
 SAMSUNG MULTIFUNCTION PMIC DEVICE DRIVERS
 M:	Krzysztof Kozlowski <krzk@kernel.org>
+R:	André Draszik <andre.draszik@linaro.org>
 L:	linux-kernel@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained

-- 
2.49.0.472.ge94155a9ec-goog



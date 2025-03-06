Return-Path: <devicetree+bounces-154748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E561A545CD
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:05:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33A01188A2F7
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 09:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB0720896D;
	Thu,  6 Mar 2025 09:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ThygRnQD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5DF1EDA10
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 09:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741251924; cv=none; b=KZ0tv/q/JG7kRJ40/R+1C+iT2VLM7Povz6pJHDoft8XDpO9jgMtKkndj0gU5UBR9POkeNUZsG/PDGgCdEkIRcWFeuz9+qoSNuhKkTf/7ScS7XyXNlITkhoNMw6So0x7EcWpJxUa+bwvcTLzzD8eNW9Q+7+FxHHbnjCKA4ZSACrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741251924; c=relaxed/simple;
	bh=JvhKk3j6bzUfojj0ONyioWlTV4mog5yq3Mn6X6smoCk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=R6NpOfxgayxbjeJUFJd7B1Es1F0iJ3FXWOcygUtpHzbZ4zi2fAJ8E7b+kxRsaKAZIf2sKIhZ/KCQFgQQghAKj+QgZErNHjDp0b2e6ytjKN4DlaytnGgYqQiWNm9cQLH2dzyq+eSBYJRrLeQhHFeSbGWa/96Cn28mjThF6ohfytU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ThygRnQD; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac2400d1c01so26972466b.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 01:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741251920; x=1741856720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MAX58En/Hb1n0GC+JRkiHWBwbQ4TWebixhTAU0+fOXw=;
        b=ThygRnQDG2Qx03PRK56Kc2J8x8VUAsHZB65HWvdAfr6CpETxWydOTrcqdrcBZk6Fzq
         YHkMeHR65JQIUGHdTFVd8HVnZryDUfuQo/UE39Pvv4cpFBMdrKxFhS6cC+sFSwWY5tAB
         DlYC0apQ2XHAXd5U00Ng3H4LyBeWioukLuKa42bWYmx8qULJu3OFtGGMywLZFmzMTkEy
         ZF2D8YENn7P1VX/0ivlcxPaUUrKE+CrzraWNitniQd+6WH3DvYkwOn628gyuT7naXzvm
         bNcThKWj36pS07j580L/e1W3ABYyYs/4ZpYXl5UGAKdJutkLiHloaZIpTDK7H2GgPF67
         jCMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741251920; x=1741856720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MAX58En/Hb1n0GC+JRkiHWBwbQ4TWebixhTAU0+fOXw=;
        b=LOrqvZnHqp15EDRiJuHgcB4OEodpbRyPkVWVA1CC4t9ThSTUmrwqNMw4y69nHM8Prk
         q5T9RmrLr53Tn17xnZ+SNvbTKwFYa1Cgpkxi5le829/7TpG8i1UW8+qMH0CNV+yW8gz3
         HirYMWkeJ+GCRWAmBd0vKyQlkJyHuh1GY0sI7QZ6R9yALGW1kPQYskKgw8E8u2kyQy8n
         rDh+aczgXxBR6aSGIEkJz516A4e0Ws7Akod9To5hOP5pn0QHf7JG8JbFTF5aimqK5mHV
         QhatFknrZ3BLiSTqA2qvZX09wF5whUWgYWZUA3Cihg25DdOLYmnWEBdCdMaAnuoAoWXa
         erOA==
X-Forwarded-Encrypted: i=1; AJvYcCWZsaxCiE8bLqUVavHdP8dp0kDXxRtRz2f2Y9tWCYzMyPMU0N/PNbvHNr7WYAVxvr5XW0uq7VeN1wil@vger.kernel.org
X-Gm-Message-State: AOJu0YxYsZ7Exo6gCkvln+G9gWGFtYehJ84PeKY2h90rX6Iqgb1dDSab
	MrF+mkErK6wfTw/jh8sqr43TwUCBwKHSGxCfvxnRCbBVXG1Cf5zg6iOAD1v4rnE=
X-Gm-Gg: ASbGncsgUgQ7IR2c9MVnAymcTMy8x3vrGkKpfvFz4xqvuboc2JCKCTh/wzEb0oB1twZ
	eWPE9NXVSM/R5CNa8Xw13U0mn6YooKuDvygeAVzMf2S0yuvRSocZkCpqRzwymLf8p0N3weO4chS
	vq7C+GvgrWoC+R8zOKeogTfec8uVGJ8ewTi9d89O6Vo8WFSo9EEqPnek0qQAZY4GkMHEa/mZWcj
	5+UE0kfUJnGnAFsuNN3WOfeLrL4D0zRJQ5X+LXBRnpk9hFuvmk7c8fDTqo5MzYAf+UJFLiSG/YP
	ILeVH2QWntzghnx2KKgJ9OHuczX4+qHqxyGCKap63tU=
X-Google-Smtp-Source: AGHT+IFBF85ne/IZkMGc2B/0aHOH+ZFaKTA8+EhhThtignsfXZxxEqemHN79VLEWyfsCNJMyXOwolQ==
X-Received: by 2002:a17:907:608d:b0:ac1:e18d:a738 with SMTP id a640c23a62f3a-ac22ca9e8fdmr254010966b.3.1741251919650;
        Thu, 06 Mar 2025 01:05:19 -0800 (PST)
Received: from hackbox.lan ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23943a194sm61606866b.37.2025.03.06.01.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 01:05:19 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sre@kernel.org>
Subject: [RFC 0/2] arm64: dts: qcom: x1e78100-t14s: Rework devicetree for LCD and OLED SKUs
Date: Thu,  6 Mar 2025 11:05:01 +0200
Message-Id: <20250306090503.724390-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Lenovo Thinkpad T14s Gen6 comes in different SKUs when it comes to
panels. The only difference that is important is whether it is an OLED
or an LCD. The way that backlight is handled in devicetree between OLED
and LCD forces the need of two separate DTBs.

So create a common T14s dtsi that describes everything except the
backlight handling, by renaming the existent dts to dtsi. Then make the
legacy dts the LCD version, while adding a prepended oled dts. Both
include the generic T14s dtsi.

For the OLED version, I do not have HW to test it on, so OLED specific
bits will come at a later stage. Still, add the OLED dts in order to set
the stage for it.

Sending this as an RFC in order to get an agreement on the way this will
be handled from now on.

Had to format it using "git format-patch" since b4 doesn't currently
support -B when formatting the patch, and the renaming of the dts into
dtsi (plus the panel properties being dropped) would've not been visible
enough for reviewers.

Abel Vesa (2):
  arm64: dts: qcom: x1e78100-t14s: Add LCD variant with backlight
    support
  arm64: dts: qcom: x1e78100-t14s: Add OLED variant

 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 .../x1e78100-lenovo-thinkpad-t14s-oled.dts    |    6 +
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dts    | 1190 +----------------
 ...dts => x1e78100-lenovo-thinkpad-t14s.dtsi} |    6 +-
 4 files changed, 64 insertions(+), 1139 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts
 rewrite arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts (98%)
 copy arch/arm64/boot/dts/qcom/{x1e78100-lenovo-thinkpad-t14s.dts => x1e78100-lenovo-thinkpad-t14s.dtsi} (99%)

-- 
2.34.1



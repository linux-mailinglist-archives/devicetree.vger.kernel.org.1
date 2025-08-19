Return-Path: <devicetree+bounces-206285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F76FB2BF35
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:45:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 244A63A9A03
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE05322A0A;
	Tue, 19 Aug 2025 10:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yNdWiFUz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FC421507F
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755600335; cv=none; b=McKDUNsCuH/uQok3CopAN7dVI07VzUKzbfzgv6Px+AqhNwwRv5hn+p3QxO31MMyccZ6OhbgYYJL9KzoTLTaioTM9oRnMrYwaMiJ9Xo4NIaCJZSzRrGLC0CBqiKcuFJWMbsJ3crW+SaT3Iam36eegat2UN8Q4dgSbJPKiatwXQm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755600335; c=relaxed/simple;
	bh=srvPrC1JK0qW61ub18KnsWGYmn7bzRookUdUKos6k1Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gS3fm8Un1d8TGv2wvgCq0Nk+iWbwuAR9Wy5n9A3SdCXJOTBQJbPFRF+QrLPne3ZOlhP1xjqw1E/RcRqxj5ihW5XtY4W4iJTV2r7gGkxKbQtjKnEABjauZxtZa6PstE+oHcEabcnm7d7HMsKuD0VkcXkvgs5u+KJhr1m8pyD+1cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yNdWiFUz; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb7ae31caso914977366b.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755600332; x=1756205132; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ADpONCKs2zaxxcvWpaBvOs2jtqKsQk18cnjVSxwOzus=;
        b=yNdWiFUzt+tERwwcPfawmKANz2MnKPgWT/aTsOU/jUvMli6SHB3jLpz8G7iw90f4w7
         djAPBfGm8dybu9mvjRPJv6oTigWuM9yM5aXIHvX1fI3DmvEsns+MvBjltIQXbNnYA3HE
         yon1sn8+4jkuzhaqfSgxMmI1j7cDGJOQN/fqHNUeyLsNQpTCs2zlaA9lanX94PS3B6/Y
         K6ItCPY6c6g3Lzh5Tm5j2qEbPYhN7WTeWvB5ke3Z68pyG8S1ti6ob+y8AD6HuKVQM+ZU
         CALsEzi4vQAUtzHASXKDlQBnp+uGAkoQhJxdd+Yo0jzmwUPImIVHraNf9xs6/IsLHjfm
         nI3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755600332; x=1756205132;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADpONCKs2zaxxcvWpaBvOs2jtqKsQk18cnjVSxwOzus=;
        b=fdsP44Sz1iBavmgWj/ByoyZtnWuQLqMqjUGSj7BV3fOdR/q+nI6TclkZrq7nRI5iWg
         Qb8WfMjdi23ipg835mUIhmmbgDpvsvka6tOtKiLoWyBEIV+qSf9Nb/CR2za80MMA5leM
         knwI+G/sfR8jMi4zaBYouGMyAd2PcrH1hkFKDaiBqA1Y/iTOnnoRTmJ0VH2QLRUJwJA3
         hOMvajWGmosG8U5fBBYU2vhMiPAmMNsXPdTpVUtBNrYHUrwo6noXNblGJgb7j6FXV4dK
         1I8N0iQU/jGK1waaNke6Tpd8i4GjB1i1AZHgxoTEpXNdaQoiM32oXDVxsLJ+dXmvhlmJ
         RuDw==
X-Forwarded-Encrypted: i=1; AJvYcCWrtYDb5Yk7j7XiCetocsFOYUhth2jOYGfcECS/jvbrhBgIZAnSREpXufrxD32DoNi7LEoT72JPbAR9@vger.kernel.org
X-Gm-Message-State: AOJu0YzN+Ta5DpD4qNp1oKXdvaWVgUl8dtUTY2dSbTXKkDkIR4UYucn9
	Om1PqHc2lQa9nsy9J+/RC9Ao5ma3t/mm1nBDbzzJhAbVcarwhazdLRma3rs0kksGH0I=
X-Gm-Gg: ASbGncuHjrXDjX1CgEMw7+P/QXuSHQ9FHXDXBclQfA5nYJx+DY6vahE+6GggsXpozA8
	W1TGHyKHeVNT5rs9nd84zBToqu2+/dPLQdFZEC+hi5ge8oy0LaIfjat5w98w2gqZ6oBs6LzbHZl
	Un4HyPWKUZlAnl3zsMAls5nEO1ePU+VQFDpT7d+xu0vgQ9dTyWMs96CjkH1zDBo65XtzYK4U97z
	iMjwf8zZk668WKX2c6tHpY67RgtdFC3cXVj8dZooKL6diQOmaX+0gnAL8D0CPGfEntELr2HDkfd
	cu2dtu3sn+wlZW4TlRMqd033g9hQxZk8CbIc6JXxJrC2/CrjMlMKzZm856SSLhKpxJjh6SquRas
	w6oiVdedBzPD6ASpLPQF9cWULTHQZXqDTc26PKA==
X-Google-Smtp-Source: AGHT+IG3ae4w4p7ZyujS6Du+A0Tt5ypqsp2f6nyJNDJAN8l0V2OexmG8NDk4i+wEkmKXaEkfAfuOmw==
X-Received: by 2002:a17:907:c27:b0:af9:495b:99e4 with SMTP id a640c23a62f3a-afddd23e778mr185716166b.60.1755600332120;
        Tue, 19 Aug 2025 03:45:32 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:db5f:8096:4609:9b24])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757a48e2sm1469787a12.40.2025.08.19.03.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 03:45:31 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/4] arm64: dts: qcom: x1: Fix swapped USB MP repeaters for
 boards with 2 ports
Date: Tue, 19 Aug 2025 12:45:19 +0200
Message-Id: <20250819-x1e80100-fix-usb-mp-repeaters-v1-0-0f8c186458d3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL9VpGgC/x3MQQrCQAxG4auUrA1kOs60eBVx0dpfzcI6JLUUS
 u/u4PKDx9vJYQqnS7OTYVXXz1wRTg3dX8P8BOtUTa20SfoQeQvoJYjwQzf++sjvwoaCYYE5xy7
 llPI5x6mj+iiG2v3/19tx/AC3rac4bwAAAA==
X-Change-ID: 20250813-x1e80100-fix-usb-mp-repeaters-3756556463d7
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maud Spierings <maud_spierings@hotmail.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

The &eusb3_repeater belongs to the first port of the USB MP controller and
the &eusb6_repeater belongs to the second. This is obvious if one looks at
e.g. the CRD or the Dell XPS where only the second port of the USB MP is
used: They only have the &eusb6_repeater and already specify it for the
&usb_mp_hsphy1.

Swap them for the affected boards with 2 ports to set the correct repeater
for each of the USB ports. Boards with just a single port used (CRD, Dell
XPS) are already correct.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (4):
      arm64: dts: qcom: x1e001de-devkit: Fix swapped USB MP repeaters
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Fix swapped USB MP repeaters
      arm64: dts: qcom: x1e80100-asus-vivobook-s15: Fix swapped USB MP repeaters
      arm64: dts: qcom: x1e80100-qcp: Fix swapped USB MP repeaters

 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                | 4 ++--
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts     | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)
---
base-commit: 1aa50d938e88fcad1312467bd09be4037bfe68ff
change-id: 20250813-x1e80100-fix-usb-mp-repeaters-3756556463d7

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>



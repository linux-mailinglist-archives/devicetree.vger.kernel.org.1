Return-Path: <devicetree+bounces-129298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A709EB1F1
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 14:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D85D0281594
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 13:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FD31A0BD7;
	Tue, 10 Dec 2024 13:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="awaWyo2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25E341C64
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 13:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733837529; cv=none; b=HPWQz/X9nFtTfcLyoOHr8cbu6qvU4cqvWzcJ9pE0cmxnQVaR0RoGDhaCll6/ED8IGXScTMQi8KdfYvGomqd4cZPWTpaKP9E0T5Wbt/vzJBxYKZoIe6WeFWcWZO3XM4BkcVd2/FwU9JT6k5bVcKTMuAhcsJqPu6kGCp/mkW/ZtIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733837529; c=relaxed/simple;
	bh=tpxahU2EMEbtUoO2KLIKrt6Ras5uDKSg0IgF0I2BlhE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=saB+id6iPM85OjklcH2bFh0hIl7pP639fM6ECSVGgUUg4D20nt3MeMulfmAUK4oVWjQfK2njGmv21lSH0/TTEJ7ugb06bUpiPdFXNhzlXUR/GO6fzhovgRxuqFQz9X3U5sPbX9VwGyYwKx+k5Ksg2xuij8Z85oAhAtAo/hIi9tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=awaWyo2x; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434a7ee3d60so38258635e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 05:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1733837526; x=1734442326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+XYf7bwDLYGGQXHqNGMCMwv3MtNzDyFAtjldQ9r+Oyc=;
        b=awaWyo2xbVyYEpv+QlX+DXPRI7qQMD7eUaMgvrLxPl0wtdjx1EjN+JI1akv76LeUai
         VjRgYBH/EFKEdXcTdlJmYrmQE83yNngSJPP1DhAiujCsL7cMwgnunH9OZS/GzNsVOXFl
         NG5gslJxUBOl+79OSmRORxRysIQDzC4RZ2fLcp7zUwxGQztjT3OmxgBq2x5Ss/+bnNMF
         b24H92tIp2l8dlbQg+nQZwpZgIDRoJW7BEf94cBJgMt450g3Tw0IWeXYx6698RJIhZPj
         kLrPe8ODq6H5srHAsKzxPeqmT8Jjf1yE1Yn770/An9C5ULqFLBZv1sB4O2+53B9/SAJU
         yscA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733837526; x=1734442326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+XYf7bwDLYGGQXHqNGMCMwv3MtNzDyFAtjldQ9r+Oyc=;
        b=cbUrcZtaSF62UjkrIQVaSrbweOrlkz497JkPjyNhFBtw4vC5oMCXilnPJTDG3Z6Fl9
         NuhwDUH/B7Vu44+P9qzlpf8P3aD8CU8awFw8JrhF8WuzeNOJNC4TVF385XOYINVGe6Li
         be93fZ8/tiKL0Jn8QKtDqMj0seJ9uMDjli0fAkILU99tL9sROY6fo38hrBCpSCoPizi8
         Ss9N1hRM0Ztic1GawLLJ9z8KdeRgAo87JlAbEzLs2+UbmZ4XzA9pmhp+1xRlzQLhs5IN
         83bWLihR7QHiKkpLkuOEQAlpSW8am/hr25i2RxQZUhay91a1OsH6S8h3JdtF7Mi6TB5S
         M30A==
X-Forwarded-Encrypted: i=1; AJvYcCVFvdl8wfEisyNUsogOqFN/SWDCJA7tS1rnIrKEwlZy+awGrghUrPvYiXjILEerSZAYNpV/wjnry8ua@vger.kernel.org
X-Gm-Message-State: AOJu0YxJngER2Cetg32XPGE0rOA9xMYEGQYnYFq8L38XE2q03JxoPIki
	zJ0eIhcYS659z/aOMLIt8swPzVtuKP0BVtPgLbzXHbfruZ0ItH4Tde7Ke8B4UGM=
X-Gm-Gg: ASbGncvYFnYhWdT7AxrENYELKizLQKdtJNqsyrZcwVIsHakEx/ZFm60L5HnIcloSqGO
	57an7UHeAIGyfGYcCOZ0aevxXtqdQKJ0EL2igxUq3DwRVKEskj58Of0KjYS5oOU4LZyfjojg5Jm
	H4MW3IPnoEiKubMWufPuvXN5sUSyqMwQ2MjInlg3AH1v0qFt+hTtKteSO7RIB5n8u32bztWkZOl
	Arhv9UpW43jOCx/CEVh1+wrQ93MArHO1AbivSvhZyXRNNioTNvRpw==
X-Google-Smtp-Source: AGHT+IF2eLcwq8DKDelHta8/7SVIEYxjxekiDTZf2TdmNWcwDe+jbysbuh2/9Uh+e7rg5d2e9vNgiA==
X-Received: by 2002:a5d:598d:0:b0:385:e90a:b7de with SMTP id ffacd0b85a97d-386469a0e74mr2361037f8f.5.1733837526062;
        Tue, 10 Dec 2024 05:32:06 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:4c2b:c454:658c:f771])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386367f7c71sm10212405f8f.41.2024.12.10.05.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 05:32:05 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Janaki Ramaiah Thota <quic_janathot@quicinc.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	quic_mohamull@quicinc.com,
	quic_hbandi@quicinc.com,
	quic_anubhavg@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: (subset) [PATCH v5 0/4] Enable Bluetooth on qcs6490-rb3gen2 board
Date: Tue, 10 Dec 2024 14:32:03 +0100
Message-ID: <173383751206.65568.8559892224432754385.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241209103455.9675-1-quic_janathot@quicinc.com>
References: <20241209103455.9675-1-quic_janathot@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 09 Dec 2024 16:04:51 +0530, Janaki Ramaiah Thota wrote:
> - Patch 1/4 Add description of the PMU of the WCN6750 module.
> - Patch 2/4 add and enable BT node for qcs6490-rb3gen board.
> - Patch 3/4 use the power sequencer for wcn6750.
> - Patch 4/4 add support for the WCN6750 PMU.
> 
> ----
> Changes from v4:
> * Added reviewed tag by Krzysztof in p1
> * Updated the p2 commit message with sw_ctrl and wifi-enable are
>   handled in wifi FW.
> * Added blank line between the nodes in p2
> * Placed the structures in proper order in p4
> * Link to v4: https://lore.kernel.org/all/20241204131706.20791-1-quic_janathot@quicinc.com/
> 
> [...]

Applied, thanks!

[4/4] power: sequencing: qcom-wcn: add support for the WCN6750 PMU
      commit: 93e3c990fcd90e578fd23b572a6c89020c7a453e

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


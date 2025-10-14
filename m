Return-Path: <devicetree+bounces-226495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 957ECBD9307
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9A39420E02
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB0B2E1C69;
	Tue, 14 Oct 2025 12:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L7GSFaR7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70A42417E0
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760443262; cv=none; b=OTHqTTbDiFUi//Dm746XQKuTyyKI4/NN5ocFm6Ok3VaI3OsEpMhj3O/DhaYDsq9N+P0o5TARhqC9kaIdoXGPkyR4KuDdR1nJI7v+gx9E6wrYdKveVhD8NIiAw9pNsid1YqH4EiPWiekA/h/jk585Ttt5SwfZku+a7EMMCfAjPlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760443262; c=relaxed/simple;
	bh=uN3j84qVqwGAIGTb9j/2yqr2sDVtx6YN0tEWF9Jvojk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=rIlFDzC1cGtoV9T5QhD6igI2SykX85L1ITMEyiJIzSX9MD63GOc+dEOJKdxkH3YNUVCQ7wU+UV1Ythothyv69+N/P2anmDqAMwS9SuRP8R133Xv/bUIm2Y2fd8+jhKn6Hj02RIQjPQee3pu99XlrZtI8es8go0PGqitmsDPIftg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L7GSFaR7; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-27ee41e074dso60633355ad.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760443260; x=1761048060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HfQvU/Mw0ZJ9zXdFjFYOYgKDAzyRq42k4wpeXF58tTM=;
        b=L7GSFaR7gb2OfJkDA4xvLXhiIiGssUh0nasehM97C95R4TgbacdTuVpoAI4cZe2+6o
         JlgP4LsZK61xHmz+b5AceeZ158wFnrk0TcNQ8JIxk8JEypC+aH3MKE5aoMLQSn5d7DZH
         fLGTvp6e4npV7Xk+ks/GwCnstlMR9WY9lCmUUJEEHx4y6WmuLhYx2Ck3sfaxMTq/E5EJ
         ws4vlvptrvMPnxt+VRp8s2ZUaydYI3Waq0ZrOuFLjEj8jVfuwORqe4T8g4N5U+sJM3uN
         oMhpEnacke0EttimPpYTTj0pxIJJMcabm3U/WPZjlJ0FtvqMNiol5QAyKuKKsxQDjgdU
         lbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760443260; x=1761048060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HfQvU/Mw0ZJ9zXdFjFYOYgKDAzyRq42k4wpeXF58tTM=;
        b=JNFEDh8ko5jFW0xkyXLt2hbv8yeohMzypxMAZVlPAmxmVDvrJrd3OHLbnSTCm4m+A5
         jhLc/JadE3P6w3DCHEn87V3s7OHwgvbRh1jx4auMOGyphJBDEABEsNLh0FuFPAdHJ35Q
         qzzoS9b6n7jX4a+/lIFUWK9icNZbhzHh0nSMSVmaNav7y4wnP4sN9riFWGOa7wOs6DcH
         zvYWlVIQqDANEwmkVW1iNuUk9V4vHMnTLJerqJ7lonO8JWqYEQLwlwkN9SAmMtSr9GmW
         vGggdwhMt1zUJqEYXiPhG6O4DqrD8yquIAsy8fzSG8TjCUQIrhvPlg5R7CKZOljK+M6W
         79Hg==
X-Forwarded-Encrypted: i=1; AJvYcCXsXytJz8KKUcGbTwv44ouc7OBMhPa8OEtzRmbMjQvVAyyBf1fJT0P9oBdKC1RkYUbUQrzSOnknmOjI@vger.kernel.org
X-Gm-Message-State: AOJu0YxE/kzj1/FT1wTszcpFXvOCPqfnMEVdQWPaLq6TFqmmwpjamnH5
	nCxawX1zu78yLFoh1REbjeFFS61ekwRvX3+SkSHui7LK5ZIUFKpaz6MQ
X-Gm-Gg: ASbGncs3DXfl7Hhj7A7JopIhN2Txsp1j89afS5yngVAP72JaWhPpCPegY3iZCll882W
	EbBEKvKN3FNUJgVzzsmGbo56bLbG6ucc8H7IDLKxZYHZv/s/4xrItSkdhQnESN6BEavrIm625yH
	UbHJGu3SkhMdsv9MkT8rNRpsKpMdcGpiZf4WA6wMOSZz/rs4mysH5M90j1bw/Tg/Cbr93jlzB/x
	Z/RZ3z+cOb7HmSQN682i75DS1CoDhieh9FlpjB5nlYBDKLimAqZB67EotbB/OqpDhmwIkGeAduw
	yDOslTjLZAONWakza4anBT/g+Q5cgnqU9Pb0J/LLagF1YVAKlecF8tGRF/0NQ+XbS249ovB//OG
	KEgQBb+o/FvvnYWZCYVeNLHCEexqOI/Zx8bvaU3l3QZJr9oAps76Cj615wJv16maiuo5NE2dsx+
	Svdw==
X-Google-Smtp-Source: AGHT+IH486qcRovkqj8k+jx5/8Be1KR6VJnxAwKeZA3VTvXsZl4TixfjYjdYR8UW/lEQ03HUbeQrEA==
X-Received: by 2002:a17:902:cecb:b0:268:baa6:94ba with SMTP id d9443c01a7336-290272ff553mr358576505ad.53.1760443258985;
        Tue, 14 Oct 2025 05:00:58 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e39727sm161651525ad.51.2025.10.14.05.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 05:00:58 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tessolveupstream@gmail.com
Subject: [PATCH v3 0/2] arm64: dts: qcom: Add support for QCS615 Talos EVK platform
Date: Tue, 14 Oct 2025 17:30:47 +0530
Message-Id: <20251014120047.1914756-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

This patch series adds initial device tree and binding support for the
QCS615-based Talos EVK SMARC platform.

The Talos EVK is based on the QCS615 SoC and follows the SMARC
standard, consisting of a SoM and a carrier board. The SoM integrates
the SoC, PMIC, and GPIO interfaces, while the carrier board provides
peripherals such as UART, USB, and CAN for evaluation and development.

---

### Changes in v3:
 - Addressed comments from Dmitry regarding USB1 `dr_mode` and added a DTS comment.
 - No functional change in bindings file.

### Changes in v2:
 - Renamed compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
 - Merged enum entry with existing `qcs615-ride` block (suggested by Krzysztof)
 - Fixed subject and commit message to use imperative mood.

---

### Patch summary:
1. **dt-bindings: arm: qcom: Add Talos EVK SMARC platform**
2. **arm64: dts: qcom: Add support for QCS615 Talos EVK board**

---

Best regards,  
Sudarshan Shetty  
Tessolve  

---

**[PATCH v3 1/2]** — `dt-bindings: arm: qcom: Add Talos EVK SMARC platform`  
**[PATCH v3 2/2]** — `arm64: dts: qcom: Add support for QCS615 Talos EVK board`



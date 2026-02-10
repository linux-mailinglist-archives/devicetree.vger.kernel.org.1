Return-Path: <devicetree+bounces-264196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA9LBLmVimmuMAAAu9opvQ
	(envelope-from <devicetree+bounces-264196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8861163E5
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4C51302D52B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE562D248D;
	Tue, 10 Feb 2026 02:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h+81o0v9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AC92C21FE
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689974; cv=none; b=nDoj+SDiCghOT+uHek9PMip95Lx3pKd+fqvxSRIyjVqVeOmt94veSadM8W6yEji+wc7iC5MtYA6f+EB87Fb4nvUEqHNu2mVVpViP4Jma52rUOm8L9+HebOozAZb+gNp/H4doTEDhua10n5Y5nX6DlGyrD1QZapPWhkiSrIc0b9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689974; c=relaxed/simple;
	bh=T8TVumN5p9S56hgkEPK41dUkfPRroL+hgxyLPii5BwA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UL/INhYpEDCsy5qjKnp1s/aToel70mX6ld3SavWO7xQ39HnishidLyHyyHrUjvZlMoRKHG4BkgCejQr1wanYXQ7IOYHJcTTSIHoV3JPhkquDi+HLIvCJ52az1XDy9Rb3vr4Wd5vWMM9LWVhoPmbKigcq6q2yBtr0qO0offzXYcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h+81o0v9; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-50146483bf9so55154141cf.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689971; x=1771294771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S/hXVVFZ9xkdTyzbj181YKI3deT99BWwoqpKjOX9aJk=;
        b=h+81o0v96q2qVUbSElwrvB0Nja3SM/IucTADu2m2N8fnuaPTelTXxpLscJ1UYAif27
         6udQi4jV6q5CAgv9Atkxqz6xq8klXprD24lZ8vhuBf8HFMdpVCgvohM2V+Kv1dz/kuK8
         +uuIa73Awa1OcyFzsImmJDCc+tmRNnZPHDzNqMP7BAjWLb4+MsMIJkqwex0bkPvkAvmd
         yjd5datrx/iob0sKXjOSwUnNQcyof6RE2Lz4hHSqMx0+Y3zgvxcTBzBv6uuZgLK0pbZj
         yJ3LrMMRJzOw0fca09cLIY04OqN/Uy2gGxM1HkeM0QN06xwr7LRUQTk+Y6eJjyGvUAEX
         ZVCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689971; x=1771294771;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S/hXVVFZ9xkdTyzbj181YKI3deT99BWwoqpKjOX9aJk=;
        b=bxX/FqlU2RKoWGSoetk3+qZPfE3fTYfCOxe5fnW459iVPKW7O35Xsk7dlmNJN9RvB7
         nPPT+Ciz5iQu/HLgs5zizHjTEIwjDa5kIxvQRNAl+7CpsU/hWqQW1bnseFrVvm/ND6Dh
         vrEP83nlEXV0/uLjTMr3HP/8nqyW6vGVF5UBwOO+2aXfxDy4vI7bb0Quqtr6/O9vrH9I
         kZVDC+H/WUxZO+pTT5fmemyLm3SOHRAmk7qUkAAxwpmtGwDHABCJMJ161iIunA8ljHBt
         ggHmwSqXgah9b6oOkOknsIYTsupkJSCZSm+EGYEgCkfFy2uCnf0sQWuPDWm4vQv46ae9
         28iw==
X-Forwarded-Encrypted: i=1; AJvYcCWRQP1XuTXAPHYVBDP4qlYY8rMF/RgKCafXP5yH8nL1QFh1hOYRB94rAT/sZYD2Qqh9rJFJyvInriSb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw906wul2bYJD61EePYtWmYU7B21HNF5PJ+p5BKkM6jcDz/1mM3
	HGjedYCdFP+inJ+a5YPsY++LNYTnYNhNlm9yPvPsEYiwT+OegQn+/DYX
X-Gm-Gg: AZuq6aI3h3FGKfgEe/0U3UeHIWZOWVujKcpJZI4gGBJBZBxxuiupnjLva9I03RLkgGy
	ZTnNFGZ78sRvEfjBdTnmDcR87Cq0n3Pd6eFrwTF+WSIqbQ56F/g+rg286lEogfF8ZjdMXJBp2de
	rf1TVUTLDT/SYhpQoDNRx9I9iEgV8l3uwAWQaPDvyO7bwiggd1D6omBvcdTsQKiC3WfyXYuacWK
	kjlGb3jYohGnQ4PlTwOJkPg2od9pcbqV88MPl7HB/H4nNNJGi60wY6CzlN2nWbXoUoVL67x6qdu
	zhlO3mBq7zIanpv3ha6eje54z8Iga7Ihv0TG59LNjkvB7Tl+RzKrr4EF4WCTWJmYlOofHwNGkdD
	FENc2Q2LMxZap0pILn6LV7UWbcHnqHXL5eMl8B+TnHfKL/eGD1NqXxEkxl0lGjfYqjgeYqAx8sE
	+/b3WD8lff0m/FzW1hzXsJqdqY7w==
X-Received: by 2002:a05:622a:48a:b0:506:1c5e:d1c2 with SMTP id d75a77b69052e-506398adeaamr188453821cf.27.1770689971445;
        Mon, 09 Feb 2026 18:19:31 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5063929099asm89000011cf.22.2026.02.09.18.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:19:30 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 0/3] SDM670 cache controller support
Date: Mon,  9 Feb 2026 21:19:54 -0500
Message-ID: <20260210021957.13357-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264196-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6A8861163E5
X-Rspamd-Action: no action

This adds support for the Low-Level Cache Controller (LLCC) on SDM670.

Richard Acayan (3):
  dt-bindings: cache: qcom,llcc: Add SDM670 compatible
  soc: qcom: llcc: Add configuration data for SDM670
  arm64: dts: qcom: sdm670: add llcc

 .../devicetree/bindings/cache/qcom,llcc.yaml  |   2 +
 arch/arm64/boot/dts/qcom/sdm670.dtsi          |  11 ++
 drivers/soc/qcom/llcc-qcom.c                  | 105 ++++++++++++++++++
 3 files changed, 118 insertions(+)

-- 
2.53.0



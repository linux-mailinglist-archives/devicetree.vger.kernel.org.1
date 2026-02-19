Return-Path: <devicetree+bounces-266768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPQkE1eVl2nO1QIAu9opvQ
	(envelope-from <devicetree+bounces-266768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:57:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAB21636AF
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D6C83070DD4
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D82D32E13B;
	Thu, 19 Feb 2026 22:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QSNZmoOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE7D32E6BF
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771541758; cv=none; b=mx3ci68sFlnmJrCG2te303Y2fy20y1HFxuThfWNdh61tjxU+UqnNo76GOy8iKAhT8zytRLegfK/YYxaRzO7XtDCK1K607pJd+aAVC50Rq8T+RbGrepnvK+5+OtauXqUo6kmE7VgiRdnQXOGqBGALu82KrfeleRcEfkaY9cpAc5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771541758; c=relaxed/simple;
	bh=hJfG4u45vdCvSUtHigkyFONhukFUc6nMEAYruquPqJg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MtIGCONufdt50/yRowwMg4B8dQqkF+6D56HaamyffvgTliGWEjIP+ywcry/zv0AUXy2AQTfrD6plYG5krIQkpzZMBwWVSQEA0lR9aZGbdAmYK/ytfCteaJpKzFHzDGRDJZa6gVH6qnqa2lo1MrjAWT1hsZ8xz01gV1oryYaDY2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QSNZmoOA; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7d4cb7e10efso1304371a34.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771541754; x=1772146554; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WfGnMtYSvSKtoJnZqrv9UGQYGmLqGwp6t5dpvCm2nwQ=;
        b=QSNZmoOAp+qQQRG4ogKhlBrL/+/0SF7Qde5lNTi4F2wTUyeV6cHMWKKyhOLhPaSGnR
         MqpdLfn5MRNlk4C05MX7JWj86KBtxYsuIdEums9/zVnDhUd5wbe5+POMepszxuwxZFrz
         J1xBjooMadlpG6W7a7EJ+HI5MYSxB26gAh6VdCBYjnYf7pkyqUpTRbqWkc43G5vyysvZ
         yH4AFaHLUg6zWXn1gwRbQLagI7gsKEbXTCP5F25qjMg2ifdwpOW0H4O3YUKmMu3SnY0V
         sX6T1w4zEUFG11ttiUBL6mt09xyNOpqf6cTYKejdWjyAABxW+EoaL2hCY7lAIpjf0Eqv
         oWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771541754; x=1772146554;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WfGnMtYSvSKtoJnZqrv9UGQYGmLqGwp6t5dpvCm2nwQ=;
        b=uRmk2BcQAaFydCqmuoRkoPU5qcNCXI7nuce5zsLn7E6bVMzDwA11Vn+wlrzFxB3wZ2
         Kf4nz6ID7aqTjvAlFWbt/dkMCV4hNQI/tdESp5/AX+fNZdaqIj9jO1h7YFYaiHZTSMvz
         ALmyuGyB+ss+7gn9JkI7dzsT/CYcUyBff8sz/6sKgipVUJep9DHRl4zYvuWx3G2f5bmk
         h0GlO166WjYcLqQz01+hJ9tfx0TryRYN+XD7hZgbUxnbDSKPqj3Z4yBnXbgYv/0Vxey5
         8vGEueVwZZHHDoCGvTlNfsM4HRCCEyfqyiW1QW5gq6OW5dTQ+OmsF2GSf16VFVskvR0N
         orWA==
X-Gm-Message-State: AOJu0Yxt+iIgdUQiHXjTsLO3SQUrI2mBSXz2/wpV5nyT6pXhiwOZBo2G
	ESzZ5w8ovKIdC7b+RCw8OVOHs54AYd0phEyUYXc/MDyPIivlyX3/9Tg9U2GSTp35M3hpCSbLY0t
	nYMxN
X-Gm-Gg: AZuq6aLIhU2mSvC7isF/3IfCHFwfEeoQymDJ4BagQExn6BJ6E76beCtSpe3XRtidPN6
	6DWPj82rsSq1mh+TfDvsMB4QomyYt3qQ2ShLrLTITDdhRBUK3l4P90VrG7Hb4rijjg9CA6AvfbX
	AwEF8BFjEf1kNo1unQ1ZrdYw5np9UImyq9XOUTb9iE52T0gOEy9saJQatwfyKYzGLf7lc2Xmkjp
	GvNrC0rBYXAbDw4Q+P+7mZLG1PK9nAMbuqpk+n7DDCTKH7+SXavFcrwXtDO9K7x1ub6VRpP/Hkd
	i0753m/eIWRN2nPcUoaGMuuTFZ3MdYMmVpUf9VVgD9PPtp8b0jWxclKxHQ9g3O/3vMKwp6hrFV3
	OMoCjBAyfnc6i8C32AZZL72pkw6rcyRWtAePJpC9iJhT3LVlWPMKF0ZjAzoD9i5/VgzTMsqlCOh
	z67iGcjRho5U+n3ukdil9OQ+56dw==
X-Received: by 2002:a05:6830:67f3:b0:7cf:f7c1:d9ac with SMTP id 46e09a7af769-7d4d0acc297mr12600516a34.9.1771541754355;
        Thu, 19 Feb 2026 14:55:54 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:d4c1:bce:26a1:c903])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d4a7720a95sm20565585a34.29.2026.02.19.14.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 14:55:53 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH 0/2] arm64: dts: mediatek: mt6359: give regulators unique
 names
Date: Thu, 19 Feb 2026 16:55:28 -0600
Message-Id: <20260219-mtk-mt6359-fix-regulator-names-v1-0-ee0fcebfe1d9@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2NQQqDMBBFryKzdkAjpsSrFBchmaRDNZaJloJ4d
 4cu3uLB4/8TKglThak5QejLlbei0rcNhJcvmZCjOpjO2M70Dtf9rdhhdJj4h0L5WPy+CRa/UsV
 A3sQYrHukAXTkI6TZ/+A5X9cNZXdb9XAAAAA=
X-Change-ID: 20260219-mtk-mt6359-fix-regulator-names-cea2ddc697f3
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1054; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=hJfG4u45vdCvSUtHigkyFONhukFUc6nMEAYruquPqJg=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpl5TlJcv80s/C/Okoq3TlYmeApRt7FhXmVQch/
 AycgWxpsYeJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaZeU5QAKCRDCzCAB/wGP
 wHH1B/9qHLMxyOde09UGuNhGJ6MzrXJAsPOna4RlNdG4C50Su876Rz/GwXwUTF0CJuuDACjekAV
 rhgitrHiyMuaC2PWeIZIsG5XCwzAdy9iOzpV3Yl2DnpQtoP9APz8vCc64YeSl5zgs9ljCEtKGVw
 w5l56Prt46rL8oLShOp5diD+BNQlQPvSKe+JwwT7MaZ9Zl2rspSDzvPTVst4pWw28ysshT4xvL+
 rgCn6SMFnn8L7/a1gumT2tbdPVgCod8Q1zWgiBg063uQwi8UQitgQM0AE8siYN+kE0BABZn8AFU
 nKPHGoyxCym8Bikoh9aePjwcvL+qTiicPPNYKwLWFTqCHibP
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266768-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: 9CAB21636AF
X-Rspamd-Action: no action

While working on this regulator in U-Boot, I noticed that the regulator
names were not unique. This is considered an error in U-Boot and we get
the following error messages:

mt6359_regulator ldo_vrfck_1: 'regulator-name' has nonunique value: 'vrfck
mt6359_regulator ldo_vemc_1: 'regulator-name' has nonunique value: 'vemc

To fix, we add the _1 suffix regulator-name devicetree property to match
the same pattern seen in the node names.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
David Lechner (2):
      arm64: dts: mediatek: mt6359: give regulators unique names
      dt-bindings: regulator: mt6359: make regulator names unique

 Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml | 4 ++--
 arch/arm64/boot/dts/mediatek/mt6359.dtsi                          | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)
---
base-commit: 44982d352c33767cd8d19f8044e7e1161a587ff7
change-id: 20260219-mtk-mt6359-fix-regulator-names-cea2ddc697f3

Best regards,
-- 
David Lechner <dlechner@baylibre.com>



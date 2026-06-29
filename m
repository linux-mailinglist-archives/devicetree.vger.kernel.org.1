Return-Path: <devicetree+bounces-316861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XCpTDTw9Qmr52QkAu9opvQ
	(envelope-from <devicetree+bounces-316861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:39:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7947B6D8520
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:39:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=JHEY8dLQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316861-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316861-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F09423056532
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD2FA3FADEF;
	Mon, 29 Jun 2026 09:33:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1103F9A15
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:33:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782725616; cv=none; b=R3QHapyhq/eguBHOw6QVz4uGLRx0esRJA15py2bilfw0uAqrVy0588tM3UJTD6hjiKQNNVo+a/y0ydYNxbWp1eIX9KnPjqfRoHq9/bSWg4MEzSd7GzDVleaFOmYn9maa8Bmq+JTfp89bJYu/G79Uld4XxNXiQTRzgh0xeD9mCpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782725616; c=relaxed/simple;
	bh=5Uy1dXTbauOTy+QyZiGIOiG703Ca4Z/b8w0fJPVFxPA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=E4WqpCMr4lZ1rm3cQa8ZsYV5L8DU06C0ps2lcBwkC5/vWx5SEtjfA/DH77ms+EWEYIJ0Le9qFa1YFbmKlGirpJGOC2fkb2Up3RHrRrd6838nhT0xvnIOmg7D04LSyTsuCdfmqtcmzmcLOlLKkzaX+XIx3rMOX3KM7CEJu/zk/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=JHEY8dLQ; arc=none smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-493b691cb44so995645e9.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 02:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782725612; x=1783330412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WoxMGI0BVuk3x6WyDDntBseVyfJ89DBJ4oPAJpDJ4cE=;
        b=JHEY8dLQCcqgSshoSoEsRlOXeR0t7Bf+t+I+Go/QNTLQLkJ+ik0tD3mdRU86V2Fah3
         LTmMZoU3ion1vZSP/4RMtXsLOFNMr6oHt/oZRbc1ZTz4LrIPxk8iX6tqMNVVN3hkKXtY
         2njWBTvYAC8K6QYmPOKrMVdy27MrYunUdgBK8X0yhI9P3MM5kliVmqvFHbzT+n6x+iBJ
         vl9c35QqNp6XOj59VVLUyhakPejm2KYY4t43FyCMuxAWrwt5tdYGwkiRBql4Pk4k9jGu
         p5WWJyZJHxqBTcmmQyhFrQTdH9VpwJQdQMgaXyNOfAn/OVM2XEWjq8WdNiPadvuAEjj6
         hrlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782725612; x=1783330412;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WoxMGI0BVuk3x6WyDDntBseVyfJ89DBJ4oPAJpDJ4cE=;
        b=CyT+bAQP6F/aCeVpQzG7G3jqKPHGy00kqKf6Dw9exh7FxOEnGSdsQ+A3VfskeT0iMP
         czygbiiGq85juJ5DYHTz4Ow750dSEcZW6nzYYc8VCSGfA3tz2pZd6DRBE5vXpZw48Dh1
         IbadJeZWv8xiJw4fT40/leR5aUrfiDKuzzBsnkObCHstXwUHgetiFg3NYkiBDYN83wgF
         Tt68/TJCWGaL+rptYGNfBcGRtEjeBx5uWDG6u4ANIJWkcW75vR/RVpZDR06tbEbgmpBm
         kl3SSuJ/V/UszQZrwC+e8q4U6XWN64jEbj25F41k8VzxaCB/lftP23a+1cB3TMQ0ZsUF
         6RkQ==
X-Forwarded-Encrypted: i=1; AFNElJ++Tr6+SHIt/NKc/mGaCpOIC6sOJ3dGyljq50uNI49pslUIBFCru46GZyVSD4N0yhmp7VxbM+Cd+aJd@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ3l53ItvFWLxjxIvec1dV8TrAr4lFLYhWafYwuYobXAqNzIA3
	RyAy7enRrhXdtTd3oXJgvvp0QVBsYrvdXmXOsNksOPwY87j47CYYTf5ti2+h6h/nOUM=
X-Gm-Gg: AfdE7cmKz6dRB2pe/fVDFU8fZX8ozN71hp8mKrshByVDAagHS8IRIBzuwA/pTyud3gH
	jgCAQ+ZfPqUqj8v5op7tFN9i4fE5pOQ8BpSqf72JrTQJkvo91p+R8DpNmQ8mZkJ2R3LBfMoSbPV
	g7n2oDANL72OO86jky1wo84Kza7uoQHs+ZVxzNpkY29UciHLAr5Ks70sXOim/Ye/Fs/IQe9NU3H
	qlsyNQac/RIbL7T34AAMMDZoIKwXPgM/E9KucQ4tOsNLJpqne0SrRoZKtJPDS7yD6FkH3hbHp28
	Pg9yqyIQDlkTsRkVvR9ev/XUpRV0UkoHsxiKrB/xArMqLlPGbD9czyx2shQGXgQBvxufQXiVAWl
	ygNl6PVUOiLORqeRl5BhdSrn5U4cQyU/ngHlBqJFcPXSICV9t9rr3dQq50cJDxOx7TjLQRQqx/w
	RurdmmI2nkT1Ikffg8jWl1qQ==
X-Received: by 2002:a05:600c:154d:b0:493:a6b7:cae5 with SMTP id 5b1f17b1804b1-493a6b7cc46mr73697705e9.28.1782725611965;
        Mon, 29 Jun 2026 02:33:31 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:1d21:f5d5:2d3c:23a7])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4926c2954efsm197764055e9.2.2026.06.29.02.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 02:33:31 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jian Hu <jian.hu@amlogic.com>
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20260623-a9_aoclk-v5-0-c7cb1ff9ebf1@amlogic.com>
References: <20260623-a9_aoclk-v5-0-c7cb1ff9ebf1@amlogic.com>
Subject: Re: [PATCH v5 0/2] clk: amlogic: Add A9 AO clock controller
Message-Id: <178272561000.2490611.2050441945204527084.b4-ty@b4>
Date: Mon, 29 Jun 2026 11:33:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:xianwei.zhao@amlogic.com,m:khilman@baylibre.com,m:martin.blumenstingl@googlemail.com,m:jian.hu@amlogic.com,m:linux-amlogic@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,kernel.org,amlogic.com,googlemail.com];
	FORGED_SENDER(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-316861-lists,devicetree=lfdr.de];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7947B6D8520

Applied to clk-meson (clk-meson-next), thanks!

[1/2] dt-bindings: clock: Add Amlogic A9 AO clock controller
      https://github.com/BayLibre/clk-meson/commit/d425596035b3
[2/2] clk: amlogic: Add A9 AO clock controller driver
      https://github.com/BayLibre/clk-meson/commit/a1b4c3a63a7e

Best regards,
--
Jerome



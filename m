Return-Path: <devicetree+bounces-270801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KArrMcdvp2kEhgAAu9opvQ
	(envelope-from <devicetree+bounces-270801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:33:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 204101F862F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C126302C5FB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 23:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F593537FA;
	Tue,  3 Mar 2026 23:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BZEi65Fq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9316117A300
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 23:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772580804; cv=none; b=orvwWXwZIrQCYNSXTNwtwp4U/rNUY0305jv35YjuO8yK3e6b2TsZdW8Uvyg7nB5sk4adDuuW/m61jqlghWtqZs5+9gWpwjIKm4ObHAojOxpIe0csA/zFe5wJ8KphspqLkJLZfAzXcLzo3m/qgEU6aOO0AYifGUOGz7hWqkpq+BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772580804; c=relaxed/simple;
	bh=fSrbO0X+3ySxw+b6KUMTuqz9PDm326zDCh5hV4ahPOc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rvvK8GEJryDZfQlEypY8qwSc/yGGnygd1snSdH87JcqLeNuCvmeC09Ou9fVd3Uy4O6amqCWwlXKJB+qlVRxnY+E2kNe+X20ESvye+r552PG6ma/XrVtwC6I5/Z7R8ZiGjJorWwDf3qzjmleFIQrqXCNx+b+GjRP09t21WZC0/Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BZEi65Fq; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso55144285e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 15:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772580802; x=1773185602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WNINmK1HzY8W2WXeM6TACfCUfupHIfdDHCepQJ9ZJr4=;
        b=BZEi65FqHXFD+Fne5xRdiQxyQAVkhj/rGygxRtX7GhS0mWggict3bKIbAa7PK9SXWT
         pd9i40sfEdMeMkq5NxRFO8+t9Shfk1hIt9LGasip+XXAn7pcRXsUlsuJ+fY1pQuY9mXq
         oscF0xxg6nh2NFfW/zAhoFwGxn8fQB/0wd6OBbp/7N0NOwsyRChREeeChfLIf9iPFSzr
         ZpDaFD9r6UeTHyVLWXPhZMSqClDFNeCmj2e5Vkrkp9/5Jp+TH+TEUNVLQkjLyfvnDbDK
         EYFyQh9NY9/tJAKhScVpFo91XF0jD9DWOad2JdxVq8813ZfFxRYOgVR7UCc0URd0Z6Y9
         cV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772580802; x=1773185602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WNINmK1HzY8W2WXeM6TACfCUfupHIfdDHCepQJ9ZJr4=;
        b=HMER/KYCWvZ45srWmD3hmUlnbBhS6Md7tqgQZVF/uS7qSVLeu7dBG+FGv6mO6Wbjc3
         a/D4TX/YglHMLNmYbv5Hvue4RaYIVh19OYV9fvETJL0alugQwT8BvfO0gfPN+3q/SIo2
         wMvJDB87AP/2Ohc3O4dxk0u+R76kLP9v7En2NjB4sKfVXnp+IclXlLYrzP95WE1f9Pd9
         9zyGeLp6qhXbv51tkM3oiYbhDsMYTo93Y0EOB7fJZFzHdQ0bAxFcI4GZp3CmeXv44DNZ
         x5zWkRWbD6wz0ViVYqDyJ8s3nj6285wdwH8AfmBScW1yYlXXuN1S0k5GR9/wiXdLUO6E
         oHVA==
X-Forwarded-Encrypted: i=1; AJvYcCVlDHo86LHul/clh9gfhHr3raMzzKGMBYSFO1RcAJZ/27o0dxGe8RCzeoSFFY+rk/uJXJd0uua0/LyW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5g50cDHqyv2b/4QDLlzQJKB1YuVOA65INxBx+tsIoiGZeFjj1
	sQc7KRz0lT62v3FBZKW1bBADKrN+wE6eCdHyBxFMHP8TtIqcSMxgQDnj
X-Gm-Gg: ATEYQzwPRGF7H3Xe2CgTGm2vYn9Lj1JevyNQmXd5N5bXVX5C05xxk/lyewOTFYFc9Vp
	f7ozc7oMDALVjH8h1K703sok7tZFcL7gtbrqTeLFz6jVsX9UMSRKoTf1kXOYdnleHjDxD6Q6Zyw
	obH3J+wYd4wWIQjIg+jlX/geYv3/cJVTRVgz5isH4AKhMIM/9N904L4m040O+iKKaxfIWtdwcq4
	doQTzpN62CZwSDVza/Ib5GvRmAfrxX1crEhJyzKP3uZK05u+n67g4cRC+ix9Lj8d3G7j7KaQJiE
	LNucOoAShdB5mJvCSuXYMCFhmT6bfbea0174vxkVGmA9XiO28A8Dt2QxsLhWZpae9kylSYGAbaq
	/9wME708pPnswPRb5TFLl3LHZqDg2RgQ+gWUyT0A4CWbuCQGQbWfBG2p10dPqo2rGts96uFP708
	HZGawYOsePkVwe67K6NjODPRA465+h1asoJWbm6u0KFIZaEiS0EmfzAaY1VEk9wT4udDPFctyAQ
	iNyvFEoIFCk1vlwB8vjfjppephAe8lB/IliJg==
X-Received: by 2002:a05:600c:6291:b0:47e:e20e:bbb0 with SMTP id 5b1f17b1804b1-48519837bbdmr1012905e9.6.1772580801762;
        Tue, 03 Mar 2026 15:33:21 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:30fa:3523:429c:2894])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126705e5sm26188185e9.5.2026.03.03.15.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 15:33:21 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/2] Add DMA support for RSPI channels in RZ/V2H(P) and RZ/V2N SoCs
Date: Tue,  3 Mar 2026 23:33:12 +0000
Message-ID: <20260303233314.2928711-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 204101F862F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270801-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bp.renesas.com:mid]
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds DMA support for RSPI channels in Renesas RZ/V2H(P)
and RZ/V2N SoCs.

v1->v2:
- Added all the possible DMA channels

Cheers,
Prabhakar

Lad Prabhakar (2):
  arm64: dts: renesas: r9a09g056: Add DMA support for RSPI channels
  arm64: dts: renesas: r9a09g057: Add DMA support for RSPI channels

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 21 +++++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 21 +++++++++++++++++++++
 2 files changed, 42 insertions(+)

-- 
2.53.0



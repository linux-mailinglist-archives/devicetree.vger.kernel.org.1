Return-Path: <devicetree+bounces-290151-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MOwLKkw7GmKVQAAu9opvQ
	(envelope-from <devicetree+bounces-290151-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 05:10:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 350B4464D9B
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 05:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF21130086E0
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 03:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5549382299;
	Sat, 25 Apr 2026 03:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="hCEXMxax"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f226.google.com (mail-dy1-f226.google.com [74.125.82.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A723381AEF
	for <devicetree@vger.kernel.org>; Sat, 25 Apr 2026 03:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777086619; cv=none; b=K1KauLp9cuuFufvnlSQs1nfI2/o+8SxmZ90SMKpnl9ZrEWDvRY/DjnavCGE+SvbHZJh2zTiTawrZ66gd96NQeWfRAWUS1bQOnvNp3jsBacehaoCQNvgJLSGiFVVtyxovXeucTyp9DeCkvLUh/EFTqcZrm+w6IDJF18+VdC4ulTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777086619; c=relaxed/simple;
	bh=krGzQJKr3TEtbFv7KqRzEWMgBO99YFAtdQaOdMgGqRY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FpQxXzDKwLLZfSnT0ATr7QW3twMJFC0GyXUpZAIW57HnbFEuUo5AV/9f4uOllYwMyPTurjcVXqYRHZ73JuBJuGii1va3b/6uu0BHDQbNmBX0ti60W2Hzv7eMx3E3p9+/V7IhZta9D+it0oZvScXnklPv4nbSFIrkm+bY2RcP3b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=hCEXMxax; arc=none smtp.client-ip=74.125.82.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-dy1-f226.google.com with SMTP id 5a478bee46e88-2d891442388so14257535eec.0
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 20:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777086618; x=1777691418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qyy2EUSFHuUvP8vn408rgcFPQdBTOKcJ9K4PyZHCKk0=;
        b=hCEXMxax+2PU+BXy/siejRevlKUisK3H2ebOei+tMqP0thHUSUzFSJVqqE+CIA891Z
         zLM++fNG2EMQGDahowinorPizLSIc7nJttkJeRAK1wSMWnooZMKTp9B8GBL1b/gynxlW
         W2ETUA4cocFt67XSpF+bKtZV/0LnaKnXiKjk7ZT/i7lltYYWNt3PeHkZ13W9zsS+R3v9
         0q4ArrLGJzDwAbMg00IM4o2dV/doAxQepcFuuUlYjnZn9gaXv8fR/rvv2HVQwT+mVxNx
         sEA0DzAmoxSOA1yhsv28os0B7MXL7HZxC7yzTE5Ck660ogNqCvOtNhVc+gQ+RJ9NtUd3
         0iKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777086618; x=1777691418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qyy2EUSFHuUvP8vn408rgcFPQdBTOKcJ9K4PyZHCKk0=;
        b=funfrmA2dJElbUrs7hPZrriA6ttX7Vu8qZJjcj/RYHzzIuxANkkn7GyY5OZyXM6aZF
         bM68GwPIrQV5ZR9ZKecXedwmWG0n2I0tI6xTdSD+o2QiWraa0tUP2tPKmMRPOhh0HYF1
         zZ6NAt7fOPSRJsEhaMX8nR/xzR0FUSf8K4FdH4fBti3Yo0McAF938Bl+AK39wrsLORxY
         SpQI+23ilKb1R5HEdvNQ5T4ILl+ugHMkLv3vZ57g78Pbjg+jTfQP/cks2efnBHh6vXCL
         +AY4PNYtNnpWDT9jW1wm0B0H1/zN36qzyk/otcoHJ20kkEf4d26OtXO6/zitRpqiLiJi
         YDpw==
X-Forwarded-Encrypted: i=1; AFNElJ8oqfUNtG563lxGNnzUrX4d9azMBu7C6BQFyhBQkpmPjatzMQqRzlI6fd2YAu6002jSW/yDffnuet9H@vger.kernel.org
X-Gm-Message-State: AOJu0YxR5DGs6Ddo3/O0zHep5sMYqPE63HH7SlNElccgpgxyRiPtUHHu
	Fw62MhP3X/AgTJaJNQ7JI12d1nJqng24J6CQqVPtyxqJOp9jyv3FWQFXKtyqZeVeyT63MvDDb06
	zT6egHzBiK/3Tb1N2qgdTKtNgl9qdaXnUcv/I
X-Gm-Gg: AeBDiesViKNoblaa3Dau4FzYj53oR8h7ErXNKMHtX0ag3l4RnXbxcnDROOPhtBsogCf
	dpIgfdmphSBnQNUBIZxNeqRan4LRZtTiuQ0nH4YmGOwu97hSDRSKG4dKjVtl+89ctR1BdNse3G3
	vO1lO3i+w+TV657vaaTFLDyGlhYq8SaUhlx1qpQfgZfIVliXZd72ew4ffTywJ/jsGSvhNr8R32u
	hy43nGK9NXBD5aRPjSHsOfw2DgQDfIzoke5jm/yyLLHtNRnGnzX6yWto5lzBI0lLMUfUMZ6VHW1
	hr8PMiRXKII376NrYB9N+vetfuoIiVpmLTNNnFA0oMXuhtuq4jn9vRdpoX9azi3ot+r1t/iIUQi
	T4fAF/XYDVEJszz0JDFvprxd/25WZqbIaaZZVXauP6z9vlIcKmuRx9rI=
X-Received: by 2002:a05:7301:578e:b0:2d9:6373:ad1d with SMTP id 5a478bee46e88-2e478c1f833mr20475128eec.20.1777086617724;
        Fri, 24 Apr 2026 20:10:17 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 5a478bee46e88-2e53a3ae691sm1728646eec.11.2026.04.24.20.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 20:10:17 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v8 1/6] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Fri, 24 Apr 2026 22:10:06 -0500
Message-ID: <20260425031011.2529364-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260425031011.2529364-1-dennis@ausil.us>
References: <20260425031011.2529364-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 350B4464D9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290151-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,ideasonboard.com,kwiboo.se,gmail.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,ausil.us,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ausil.us:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,ausil.us:email,ausil.us:dkim,ausil.us:mid]

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0



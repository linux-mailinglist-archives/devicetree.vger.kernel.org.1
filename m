Return-Path: <devicetree+bounces-258755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKU4CL8kc2nCsgAAu9opvQ
	(envelope-from <devicetree+bounces-258755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:35:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 996F671C77
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 30C6F30263F5
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CABD934DCFD;
	Fri, 23 Jan 2026 07:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h5Gix/1v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF3532C95B
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769153675; cv=none; b=spk4oQxM4hf0dPIgNhBzV9aM7BTjxOaQnkdiJ5iiqKhScsop2m1Gj5hVpZ8a3gRztTtqJE726EnfjzoQmoSw3O1TOkCzs8p7UviiS+n3DSK75ecorngAkQAPASFQFgoEPQBCYXGmQjhNoCoUKCzyRCPnQXYyDFAC0U909ARwAdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769153675; c=relaxed/simple;
	bh=plPpV1uGTBQloKjGz4ypjEFtN0+e6x//cAp3qsw0NIM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N3GfCvWKtCtMeFbMj9WIb8a3a1ct8SVAnSHCQL5TW6sgkUuihf7IklWXGf4FTqMF9Xhw/jMNw0iCB6NiDL2B0JJBRIdTv0DongREeImZo8zb+dnpJ6NTB56AgSyQlil9GVFop2LoI71AQqzRLVXzFBdUfrjJJWu6WkePJaW3KkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h5Gix/1v; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4801bbbdb4aso20385485e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769153670; x=1769758470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cla95yKUKTBsgVaDvfogIRMWaCGGOWq4z1TFG4Fvu4Q=;
        b=h5Gix/1vG3Ltvr+GL70cJieu68SNlzHExpWuVZhZ79zfyYEqCT8vH6x0fKoQKmP/b/
         Rc6+j+Ma63kyWw9ppJ9Iktg1I4blHd4g5Ck9e61jgjpey2NHR64fDAKzi1cPAinpXuhY
         kNrN7GwXlqt0fzwnT8cT2auhiAK3UoIiXoQ3QcpJm5BjLQfepq/ead8qAOxrd5OqcC1q
         LFX1jQRxFPeKPn9ZGz0497sIa6+Wg1Wl1FKjDASas4XOJaps13CRzHvoz4oRFyS7X/FR
         IKggWApGfaXdILCE3EWpuVIYBvh7q6QKFKH0TVoMVAbBQbYJdB/6H4jT6HBL6W9CzDqK
         UT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769153670; x=1769758470;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cla95yKUKTBsgVaDvfogIRMWaCGGOWq4z1TFG4Fvu4Q=;
        b=McQ8Eae/ehpNo6WvRN8ryBa8eml3ZKbnU49QZ3xHv2ube2Xbd5l8F9AlGOJBhpP/nD
         8BxB9e8eW7QuXPm83GZGqaEIOBUFojimNbBvS0qJGlNx/PqlS2WPT4G+yzXAszXu1XRL
         KkPheHWl+5nnZ5vWvNaaOzc+ir6SAy7GAQt43ICNCukvNf61cJwrM3k0hdxzVwhiikFz
         o3D73Bv9FJBShLYviUVFShAUWAdwVUjdoVpszbftcBR4XBLgzY1Or+FfQyvpqs5M6IOf
         fY8oGBtRV2ZjHPPsPL586QLOfsrxiHBxiHMtLG4CS3Eha0sBUu6OG/y2p83EagYPzbXr
         rrUw==
X-Forwarded-Encrypted: i=1; AJvYcCXgwFGYHI99qPwbW74Z0HOlrfo4yHIZtsiOaCmBs1SHaUCKpp1cToMQBefmexCjCKObfvfOhCeXsHGj@vger.kernel.org
X-Gm-Message-State: AOJu0YzhQZRcshy9bJLl3oHkdXwXWrol4tGN+qVYz4JuJclpj3hP1Bag
	Sv8wfKe4hFFyCruZw+QKpRePBxAp/jLRz/GgqZNeM14XEhaFj3hieGOs
X-Gm-Gg: AZuq6aJE1gSDp2Acfirg/oc2KBUmWV21gbKrvhT6aLoENK79kHbCd/p82UJDlOAaxLX
	g1fq5c/IdG+BgV5hmKq4Tkaq2agiHK5ArvOQBFbxkFYvGU9YjiRmZANKz+crIaBRlGekZ/KNr2e
	Ln8REQNBgA+AKv1vEqzJb25ybkASoo7mUlm7kOYrfLXeKe1P+nZcEoZaq5FdrmBjtTVPlx3Y6vr
	c707G6JpKonE/wATvudXVByIHfXNxRLvt3+bMgh75lcV6yPyqz3ulnzTIUpKE3jYvH1V+CAE1mb
	zVACC+raseCP0YnRwAvmCF7B7Fm4Ur5lDPznUOsRIZqESQOW1qIzmZ6nkVyxJM8gCaH72kqCqmx
	ULYuXPU428tq1m0E3HB6vQ0lNX9vjKbageOhsHJdpHqc2kSglyBd7RuqsCBNUB11Yggp2lIfmV9
	zr
X-Received: by 2002:a05:600c:46c9:b0:46e:2815:8568 with SMTP id 5b1f17b1804b1-4804d2ebaf7mr32299855e9.10.1769153670241;
        Thu, 22 Jan 2026 23:34:30 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d627871sm15890265e9.6.2026.01.22.23.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:34:29 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/1] dt-bindings: display: bridge: ssd2825: inherit dsi-controller properties
Date: Fri, 23 Jan 2026 09:34:09 +0200
Message-ID: <20260123073411.7736-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 996F671C77
X-Rspamd-Action: no action

SSD2825 being RGB-DSI bridge should inherit dsi-controller properties same
way other DSI controllers and DSI bridges do.

Svyatoslav Ryhel (1):
  dt-bindings: display: bridge: ssd2825: inherit dsi-controller
    properties

 .../devicetree/bindings/display/bridge/solomon,ssd2825.yaml    | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.51.0



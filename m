Return-Path: <devicetree+bounces-238308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3F5C59C26
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 299F43B205D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7C031B82A;
	Thu, 13 Nov 2025 19:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BjKFta0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CED431A56B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062333; cv=none; b=P9r/W8JfI803JFhrhDVX6w5gAR1P/6PQ4cv8/1/ClKv1i8i0JmUE7tlp+6qfd44j+WHL1E6BK5O048g1JsF7wFHHhMzgFBKN78Qxp6uSjIwLS62eoXtFhYyYgFoJgYZA2yNNTtxUuB8yQq9KgK6OVacNVvrpnhBuaxL8CHspfDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062333; c=relaxed/simple;
	bh=JnyNYT5+jEouV/8yUPXvRX7CeEyZGEPq2A0wuBBRJJg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J/o4Va557bTltxQXRdNi9SWqPPteHbBDdpZhWVz07UBP6yEHqbqI240OhcVpO3R6azg+RnJkNq5y94xSOyTs0fn9Fzmw7imUzHamKC22un6+jmLoHo8qxTtW3QjeO5jOt8ex9o9cvRVQ/eijnptvLQYYNY5FztR8vQKP/g7ncTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BjKFta0Y; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7c7060a2a53so342161a34.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062329; x=1763667129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=BjKFta0YjqNejZFTNmvMyeMozXjmf/wK5Cmtkdnlw3tk66ive9zk5Qyx9D/6zT5uvd
         E7HbU/HBi0lEcEIgkjCCA8EkfhIQI+AFkSfeW6kO8yhhpZfvP5xLfJovbN+juvUpphhg
         LIRDrf1pfhdZGs7ENZIqUoRc8bPeEAXtPs/F5xpWXBXD3BvAbIczRsQ2S793Vz0FTjfo
         Izt0vz0jX3nlhwWSiXssQVj5M261kQZLTBRBEPZYXSElu14UpQkUomWuyNmfwwWQIKmm
         kbLDU3bE4Nkl6VtSVeeDXZc0RgmKPEWzG8qfWedRXBpflI/9EJ1zLAk7JyTPfkWw55CD
         GQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062329; x=1763667129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=D+3SyGBE1k6QLsvBZAAaIsL8IHDY2lMlFi6Hpd0PDahNx2nvcC/bZZlwKGfB2nNOR3
         gFtodFFQ+WCu89O/7CvHQNRq1ujybVSAT+XGPhx5FWkm0ksANDl8AgUHoQIEtX+whGuf
         PgaCBiDcy0Gbk43wtywl22cSHiBB0GpVA48DvWwLtvDZEQvvpTv6QzEaotRGbBUNMGD4
         mZXWGCXwRvZfC30pEGBw+Ncw5y4qattPLz360vwQYx1wtP6VqlOGsghs4QWBpU8tjPhr
         zD431u+7IYWB1z4CxmDSlKKVu98IGuckGgY3WeoUJdo9sX8mN1yrDIcHto2FoFDaj0l0
         x/OA==
X-Forwarded-Encrypted: i=1; AJvYcCUmjUGCmMre2e0vPSBVqP9pUPY7F8loq8gFvkIV2ntJBMGCJmCiRcHiC3cASB3u7Tr2px8Vg0DBExJB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4+vJMCg2i9LTiNKzmlYBSzywxc61tygNI6y4nFqzg3Io5bElC
	TdQi9gJdTj6XhzMW06ZpbF8fA+vxUQkCV0OpRrEP8KWcK1VLO5ZiF/hG
X-Gm-Gg: ASbGnct4lx4v89Ed9pvjO4wAEge4IcwCBXthgbzc67jMhCZyCU44LqBUAd/suCvGN6O
	KGip+XTpA9dOhuv4OPnA1jEuGmTWb2emzAnLUP70p7z5gvgwh77Y0Gfwyg84zfAoWy6pt68pTX5
	3+CvFn+gqNaM1pdzr6CKgt3QunYgymCdvnBUnVuKMQoUpHlctgGITWM/1e27xkgKnrcrdwzeCsB
	/2iCNkGurJVjNNjgHoc+MkQY44eYbjdnnJvKl4oX17IFEUVG4yAbzxjv6Efjvw2v0j0EhUfCEx5
	OM8GnTj1/9BKjBPBDml87fmzIxPQe7sI+eYkRNO7abKoF41cMRe52VYLq8pvMS/Z4D25tLRbTLk
	35yodAzswwGXZ4PCSIl9b831Bz7a1QP/vOThjhkQ/LYyEmSugzcG1xLU5rRxvh3JL+XDRhq0NE2
	KAk3X9DV32
X-Google-Smtp-Source: AGHT+IFxeDPnr+c8wuNGsY9u69U5OD00ERq1Zo4Tm+ccQl+K/E1e0bde7KqzTrSFky5MSRTost79jQ==
X-Received: by 2002:a05:6830:348e:b0:745:9272:4a39 with SMTP id 46e09a7af769-7c7445506c0mr510040a34.25.1763062329639;
        Thu, 13 Nov 2025 11:32:09 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:08 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
Date: Thu, 13 Nov 2025 13:29:37 -0600
Message-ID: <20251113192939.30031-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113192939.30031-1-macroalpha82@gmail.com>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add an attribute of "no-hpd" for the Rockchip dw-hdmi-qp controller.
This is used to describe implementations where the HPD pin is not
connected or used for other purposes, such as in the RK3588S based
Gameforce Ace which repurposed the GPIO for an additional face
button.

The "no-hpd" option was chosen to be consistent with other devices
which already define this parameter for broken or missing hpd
functionality.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..07342838cd52 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -69,6 +69,12 @@ properties:
       - const: main
       - const: hpd
 
+  no-hpd:
+    type: boolean
+    description:
+      The HPD pin is not present or used for another purpose, and the EDID
+      must be polled instead to determine if a device is attached.
+
   phys:
     maxItems: 1
     description: The HDMI/eDP PHY
-- 
2.43.0



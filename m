Return-Path: <devicetree+bounces-240363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE55C7062B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:16:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5683C4EC671
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DDA72FCBED;
	Wed, 19 Nov 2025 16:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J+PgUpVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0509D2F5A2E
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 16:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763570950; cv=none; b=WtMydb7j+kCoA7yvY8V8BMr65zP1i8qIP/FdQ9r8SmBc1VqIU8CIuPIVpsmFdYvBpDcna7BD+zSsg0HY0DdBsaQmQ4aglU1GEzIjgHVY4o75w4wC6oIshYkdzEoHoAtc/3WM0tacc95YLXc/J7duBeyZVeGOUfq4envBkKYN5FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763570950; c=relaxed/simple;
	bh=/QQ4D6lJ/U3RIjl1LEQL/cd6ruupC400gGbOZNouKEk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nGhVnqw/eAauhrnCNCL44bND9HE4DkU0WiQ+GX0qgRBvgOw5wSOXbPiJkJ+QjMHeo+UyULVp8Nr5J7uBahSMcjN8/Gn5emAcSacXO/NrHQ7t1PMFHuqCWmh2kNjhxF9FQ0C+ZHWO/k6Oh2SkK9ac19x8jFTYQB9Ltno+8YlAFQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J+PgUpVN; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42b3b29153fso3791848f8f.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763570946; x=1764175746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fP3mEwFpsF6SroI//feXRB59U8Qjn1AbUsRd1VVvnew=;
        b=J+PgUpVNIo+wtb/7IIBEhQkMQQ2Vn7QPeYL02mb4S5wmpbUyOsauHT5LkaiD8nmZg0
         LkK56k+d5oM5sX9yahWZLY72iqInfz4gGe5JdzdIt97SdJMhwDv1KcLyUcxG6YQtfEZh
         fEH98egIJpu6oYf/xXlJZb4yOr08g75ofeO49mLKtK2JOFYM5EtYCJCSsnlxj43M7Yjc
         vlcL/xfU1cYMS4T+Qkc0+KGzguEObXlbz7S6zw7RQ2qDgI84KLGyj1PAtSLEKFCfsNty
         dyJ+vZiQzLvP+WBSUca4T3jehg4Ic7Ma9hqHRG4ZBPk568IkKj5eSZNXsKC0x4HL3hHw
         mtPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763570946; x=1764175746;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fP3mEwFpsF6SroI//feXRB59U8Qjn1AbUsRd1VVvnew=;
        b=WsICczegXs4Ft5+LfZXQMaSaaTqWsE19dB2Xx4FK7G+yHV3tp+Z/h/G3hH9f5Oo1cT
         CqImWR/lZMdKjyxjgUsRfT6yHE7pUQlzQ6NAIIacveqGEZcppzVtxXY0UDb2YgbZZkPd
         H9rXCOU1EtsQRSQyr6FKxyVCAlOcIR2A5KV/GS+f3Jdy7m9KzwctuUbB/zCoUgDzsTBO
         ity8MVU5Tq0RHvbc6L1Cna0cWcSmi09Y+kt9r01IRgkvj8mavSEpdpapJfUBVeJzEj7R
         IhcLRDjT+Mzvfra5UNWJ2aKNz8DzFIOoQp3ERl75W3G8STknRnFaAjj+UQnUH1XKlW+k
         lwvA==
X-Forwarded-Encrypted: i=1; AJvYcCWxw70Z8Uss1qdPOuQuUSagMCCQ6T8Beno9X5oPPGHzB9dhvV5hwJJyTiVdg2fvma9DfGckPLDb8Y7E@vger.kernel.org
X-Gm-Message-State: AOJu0YweBoCPMugmheds13wBEffVvdXu/uMD/FCFKURhqG7LMLkxq9oJ
	SUrQ2K+DVBgHtJNkKmXR/frIKE7qHLmooGlKPrnS+WaD3eX2cZz02KqNaNBrQF3B+K0=
X-Gm-Gg: ASbGncs3P9k+f8I9DQgFzQvem4/yKJI3xB0SQTocUbYMYN3Vezj4bm9cSEWYgsADIGG
	LK7XuP18teiOrPiOASyRol+ZxSTKBEasy5VceZGdZDdbrJyiExsWcIQeQPGyuC6iQejFXmb2CyP
	J3OnRberXY4nnRTCYH1ddH9QUpYgrP2JAxvuQot3FMLnMN0YyBygFkjVSzuoZrvl2C0pj6Muuzy
	fdOlJEjH7MDtlTTItRM6oQ+WXWnx3MJsIedjl5UvfI/71lqomrCPCnxdtvq4pKXx7HVc41GHuMp
	L2Jmd4E+x+CWlAUBgbVa5tC6R64/8VpSwSbBrVjKW2do+qaCwNNQMW6iT0OUSEZezErYD1OXYxH
	HFmpsgtttlPhX+IP2bKBdl2h4CWOr91qB5JFQkrFWrzP59D8MWv27TVfdWPz3oxJ3+VKput8eNc
	llxwWtqbipiZILow+oEcLPQUaLdz7zevM=
X-Google-Smtp-Source: AGHT+IFJpIEuxRckg0fs35/YF1zumhfLI6hXTo+NQzpKlh4APBaEOe3Aa9NPbO0iCSdpBRsqom8cRA==
X-Received: by 2002:a05:6000:401e:b0:42b:3cd2:e9bc with SMTP id ffacd0b85a97d-42cb1fb9793mr3572008f8f.39.1763570946125;
        Wed, 19 Nov 2025 08:49:06 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa3592sm117957f8f.21.2025.11.19.08.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 08:49:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>
In-Reply-To: <20251115025827.3113790-1-festevam@gmail.com>
References: <20251115025827.3113790-1-festevam@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Raystar
 Optronics, Inc
Message-Id: <176357094533.280640.13259117637796979460.b4-ty@linaro.org>
Date: Wed, 19 Nov 2025 17:49:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Fri, 14 Nov 2025 23:58:25 -0300, Fabio Estevam wrote:
> Raystar Optronics is an LCD manufacturer based in Taiwan:
> https://www.raystar-optronics.com/
> 
> Add a vendor prefix for it.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: vendor-prefixes: Add Raystar Optronics, Inc
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/9c1cd9e01c46bca66df47a4775685a862114c3a7
[2/3] dt-bindings: display: simple: Add Raystar RFF500F-AWH-DNN panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1594c6da54838823f7f88f7b692bd917530f6bd3
[3/3] drm/panel: simple: Add Raystar RFF500F-AWH-DNN panel entry
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1b2a9ec82099a39611705884c446cd45b6738537

-- 
Neil



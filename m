Return-Path: <devicetree+bounces-254352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 103CAD177D4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:07:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0F283016AD9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E33C53815CB;
	Tue, 13 Jan 2026 09:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kmr3ViAB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD243803ED
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295166; cv=none; b=C5maA9Mf1jUgPBUG5mGQ70a28JhYQzvxUgPi+hoKduETjGMOzZ7zkXmMZEAQHxlSu/notPJ8qOjYDMj/L7Fp3k/XS1yfO0Xgtn3Y4gUnT2QM62vkLlI6QmAsug5EQfO6khFNxFIVsCT6MSz064LKlcmmqg1x9fkzJeHW+z1QNbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295166; c=relaxed/simple;
	bh=qwtBeb355X3vQ1449ihOHRNsn+FgmfOCnd6g1CF99xE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KAFucLACXv7Rr6PHjWHLhf8Ajtfo0qWzmmzVxlXp9TpYgQTZ+Jpdi9ETwxvpyjVIcT6Vz7y5o3C2XAIiUVJC/Kb3Mti6DioYpXcrVQGJ4EIPtPnVVBrvkUcOIGapjZ3DwAUZHD6qbrRZrmOochzIgM4+qwkBVuokWBST5ynUVW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kmr3ViAB; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-47ed987d51aso4158285e9.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768295164; x=1768899964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJ5qgBPNt2A9KU2NCZgM7k5Zf215ZqcLLzVeUQlD8sw=;
        b=kmr3ViABpTPY2PNqI49ZJVBIUFIQzYTQM9XPvGBQlq2D7HAwBD7vsOoojCOol1qLQa
         R3zr9EIz/+NAzO1XrG6blD9vqjpn1ud3Uiz+HcgWjUoJtEvs9UjmJ58r94ZsLMrTY3w/
         +0qokdZXz937ON3Q+471SfnSlHxXiUarMrZkmkvK4zjr019Udr1SNxwwktbWvddCRKEj
         ivP7Vo4JByPv/jBK6Q5MDLfbmWA5diaNzSEF88vhzd75zKqDtw2bbB2YUO8DqTaUxbxz
         Fkb+2zvu9Nla1N/XI+cesslm8q+zqdqEt3w3wMgIy7MO/QmMjH4rpGaDTuRV0S7mzPkK
         xoOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295164; x=1768899964;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tJ5qgBPNt2A9KU2NCZgM7k5Zf215ZqcLLzVeUQlD8sw=;
        b=BkRYTO4wVZiJNn4nx+GQ5iznZ93hl1IRkxZqVFIshZnRCUkivE1cMrvr4K29ZFFCuA
         dXEJNf2HGYjdghtVq5zgSd2mcHGAGHWAKn1a5d9IOXk8SYs0B1L2NbuNebQAfXRwL8gu
         3HXBh7VGryDgcmcBX/LEe40IiKl+3nT7waYv9mE4zMqroHkEt4w4t7Xbh0mh/TDMl9dB
         xeP5LbNr3B+c7PdibNeekp4nTqOJPfzArKxiiChqdDHywWhlu5I9m+lEKiNkrdX23Gjf
         Pibn7PBffcazvJhtP2s/Ax/xukr3rQ9mTu0TLBcTkkTGAeRPsVmsjJlZcu63K498V/ON
         7BeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUgb+XTZqDhGSeuVamone9sPLTpWMf2lwbA+IVZol/cj3sn7RtHkEB/ZBq3cIuX+IrCgAS0AcFN55I@vger.kernel.org
X-Gm-Message-State: AOJu0YySaWpqczk5fSNTA5nJa9qnL0to3lHOq0mjORNpv9YL4LXzpwQf
	69LIly1beHUYptOBLsvLlS81Y2uKjANkClUCX0h1FEF+3+pTaPa438/jQL9n+dJFkc2Ox3y3gWH
	epkVf
X-Gm-Gg: AY/fxX7FlNexN/K5p/9CAZifwi1xFd7UHXodqCZOTBLbFD99gqWfsSGJvAhy1tzgBLG
	3YM6ziLHe3z8fSKdmlCetHwyN0wBgUW65YskvhRoROAPiszAHCkkgk3Y5WCFsBLPhZEdQHiLNHi
	/HFqH7illBNogwAREo8lg7zsZvgShIbGDN08cxdVtzvQkK++QAdGavc2/z728SafuVsqyqmBCpD
	//2aGlgYxUv+ungHpRb9MrX7Dylimbp7y/ayWMdE16AjJpl5TAwjRSeAo71ObDpNddXq5BkdP0H
	qzzc2pXzEm5wOEuueADDJ7NzwP9F2wkdBrMDPETCcPLxMSZUoFuGrKzM/CrVz/dd0QCRb2ZQA90
	OsddDTt8GvHZypwEx0Fb54QjU9KlyiKjCI1qWWopE8iSb0MghbJnsBI8I1NVePYKz9pj194eln2
	Gx6wZffAhc2iUDdYhGDRojusBJqAp6UQ==
X-Google-Smtp-Source: AGHT+IGZHjyIjphvR5P4dJrp4ySSxf5hi6F1gI/ah3Nvh1cEvuJE5z/lMWwcIYG1dWuzcPNVjjm7RA==
X-Received: by 2002:a05:600c:4ed4:b0:471:14f5:126f with SMTP id 5b1f17b1804b1-47d84b41181mr262528085e9.33.1768295163573;
        Tue, 13 Jan 2026 01:06:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080::17ad:35a9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ed9fe7ac3sm11118635e9.4.2026.01.13.01.06.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:06:03 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, 
 Fabio Estevam <festevam@nabladev.com>
In-Reply-To: <20260102141706.36842-1-festevam@gmail.com>
References: <20260102141706.36842-1-festevam@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add Innolux
 G150XGE-L05 panel
Message-Id: <176829516301.3839584.15689890384888126553.b4-ty@linaro.org>
Date: Tue, 13 Jan 2026 10:06:03 +0100
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

On Fri, 02 Jan 2026 11:17:05 -0300, Fabio Estevam wrote:
> Add Innolux G150XGE-L05 15.0" TFT 1024x768 LVDS panel compatible string.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add Innolux G150XGE-L05 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/e7ec00be22d6563430f8e7bc44117cbcbf0fc1ee
[2/2] drm/panel: simple: Add Innolux G150XGE-L05 panel entry
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ed7417e5b889769ef7f66edfd0f836fa812655bc

-- 
Neil



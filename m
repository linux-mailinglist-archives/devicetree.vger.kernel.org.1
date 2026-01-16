Return-Path: <devicetree+bounces-256061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A95D311BC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:31:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF0A1300B81B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA7B1D95A3;
	Fri, 16 Jan 2026 12:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q6721NLu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB981C4A20
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 12:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768566566; cv=none; b=uihjBMN9smJbtp5K1+j79vj6tVDMejAYYrmvc3GhGPy8GJqne0ytIuaduMTJ4ynV4NHXmfrl+kFEhOTpdg3hiEl28B4VEE9omxPodxYj5EBjwWGI9FoGiz7/kJ0mRgcGVJ8UOi34fGpVSZGwfl0P5X4FjcR+JVXKjMmbfaWuTSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768566566; c=relaxed/simple;
	bh=W1pZWOxlRlkzEuWI+e1xN01zktHHreQ7/laP51tm0eA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Yv8iQhSuaz8FmhexxcAsmyG/h0qSqY+vhmXZvB8R2LhG9cMRfrJSMd9hRrXHATl23ldKUg1cS7bWEhEwYSJ4EbZiTPQBFENBRdaste3bsDOqXwIj1e+I7JBqgr+q96egwqlfpMJ3kmnWGnazK3FzabdqUFa5F4kh20d9uui8P4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q6721NLu; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee07570deso14642695e9.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 04:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768566562; x=1769171362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hK4wVaEyQpuYFoDlRuWKw7EwWqpbvxTZB3Pzyw6EZe4=;
        b=Q6721NLuAYa0Yx9xfKZlionzxLFeGWDEct6FPR0QeIMca0LjlDLAQiiYgNvAoPEpiA
         251ApUD1B9KYQLAvpqlxPsT4EmXoRqJSM4on4+MfWNuiC4MuzmqL5r++l3fvAkXuOIju
         RmKjQ4HNTjNV5muvR1y6OOdhFo5Cr22opSX7KipK74czil7bOY9jE9RAfY5Y07KnM0bF
         yml2do7Q+fv7Jml/qHaOkWaCk28poYMGRPSDfXVSmvnPt6dVB8ilBCtvFNf8Bdbz5XGs
         Nov0yK2nTwcW64/aJfkn67LvWcJrr1Qsqg8mzXI2rGqOCCtNHcVFfeRPiXzRsTS7pxJK
         T6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768566562; x=1769171362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hK4wVaEyQpuYFoDlRuWKw7EwWqpbvxTZB3Pzyw6EZe4=;
        b=Ykd3oaU9+gQqGSncXGp2O5V4hJo1Txxy67svmZuPKzDmmesIL6tPQB9EHsYdgeb/GT
         NeGwwPvAKWpq/o816jiyTBBwv+M0ygWUQff9FtInuymyODVd+F9w83h/q8AAR0gJnhAy
         zoTHujVZLLacNSrJvnJsGyCr3k7zsRLJazZtkGWOJh77OGhYqhwVeaMHlfMUVLuDk3tk
         McPXESQ5xJkB6z1PefHqSYzX/pnPEhjDZYYvlXz1K7P2QpzdHr8+PPdyq60a7qspo/w7
         5NvQH8V5oOhTqxDOfxM+CuNyxpPVVNTb/8Ao5EIjbQ8YRCZxlHaPoPV6lelo+Vl0ChfN
         b7sg==
X-Forwarded-Encrypted: i=1; AJvYcCWcdObtIuHkX/+UdH3fhRbrjgB/y4eFJ7uI0RhJ1y688W7Or7sRIoD9apamRU6FD/r9Zdga5es5k1Ay@vger.kernel.org
X-Gm-Message-State: AOJu0YzHl3WQ+Pl87PolwKoTIYV52qqU/Ggn52/Z/s1zM9DH5SreiRg5
	nU/htq7o+RYZxtYuytexRn6rg6me+rgWRkq1JPtuhR1pIjYAfyGL11nM
X-Gm-Gg: AY/fxX6zw5BcGjtnRCtjLLw+l5t6PEw4WHWNMl7UMp33nnbnV2ny/s1aJES5c7BH9ec
	zZ5su0kixiBDdYRAJqm9c74Eh+DqZI6Eqpj6gYexkAqRicBuna2nINrNFRoWg4GXYcC0JONPvZL
	D+1v9ZDt04BZOLvunLEYyNNlBGNQa3a7RuYVHJx9E8fv+/r5rePB9v0ZGKf6fNrOGsSftWp3baP
	GTopXeJqsW5boOypGvQN29rAKt1qlyi21dGuzEUFBkcH/jAxHinAav+nWMEnmBWKR30pWk55NQJ
	nuYJK2h8WI8u8nKRaFGmrPmg1P0Vz4uoRot7OrjZ6rN3o7JsVDPyl+P4nsc4IDtX1UXZsva0sUv
	7qijU6fN8pU8wsb8ARERRaVqQZAGdRNe/ijii9D1t6onJzTiOuMauFAiEoaqmg0sBk07L1E55ho
	TW9CUwIo2gzCZWjEf/WRrtQFFxjfPDudMvMjKRwkZ04Q0/U7S4kO2IKBEwC19wux/zbVu23p1Yh
	A79lX9k2DCMF+JMcg==
X-Received: by 2002:a05:600c:4748:b0:480:1c85:88bf with SMTP id 5b1f17b1804b1-4801eb10a4amr31763535e9.27.1768566562111;
        Fri, 16 Jan 2026 04:29:22 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921df9sm5095532f8f.3.2026.01.16.04.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 04:29:21 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/3] arm64: tegra: Add DBB clock to EMC on Tegra264
Date: Fri, 16 Jan 2026 13:29:19 +0100
Message-ID: <176856655186.139432.6919318227218814446.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251105195342.2705855-1-thierry.reding@gmail.com>
References: <20251105195342.2705855-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Wed, 05 Nov 2025 20:53:39 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Hi,
> 
> Tegra264 requires the DBB clock to be enabled anytime an IP block needs
> to access external memory. The external memory controller is the right
> place to put this logic. This short series of patches adds the DBB clock
> to the bindings, adds code to the driver to use that clock and finally
> passes the clock into the EMC so that it can be used.
> 
> [...]

Applied, thanks!

[3/3] arm64: tegra: Add DBB clock to EMC on Tegra264
      commit: 07fda289af91768ade466f9360ca474d73418dd3

Best regards,
-- 
Thierry Reding <treding@nvidia.com>


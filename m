Return-Path: <devicetree+bounces-244091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA248CA03A0
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 17:59:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49DEF303DD2C
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 16:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB3F434B1A9;
	Wed,  3 Dec 2025 16:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GqN1a6Jb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E2E34A782
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 16:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764780043; cv=none; b=ThmS2lq5RIJ3zjeFxtNv20x6Yd38KtQcPpOfwQDj3YN72bBc4C6xKPJfcN3RjmE+mIDWYUmMy2U8FJXHhO/8jSVcF6HgMjrR5oUQZIQd14d1Eq6Klgmqg0WILcUroqUga+uZ0aMnGkjKnjTE0UF8XGZURPaX3Zzz8oOsH6OFp4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764780043; c=relaxed/simple;
	bh=0Z2BBmTnMT6t/6W3rYzh4PD6uNXongsjyj7XJrBUTxk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rBqnSFXiar2S+XA14d/hDNaW4T9tWYjlmSKD3MVmoXtTXQIOifyvp48mTdxpu85ESORyRa6zK18T+btsHJa+tZKg7BaV7QDHjgG6b4LvTu8oDNqgbg8lw+CRI3rJzFYKlYB+lkSDsPxgZNkOp8nsKkGwEIGqtkpybPV00Yl9qTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GqN1a6Jb; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3437ea05540so5701088a91.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 08:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764780040; x=1765384840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r+6S8pILwWJoByJIz1lTTbzSi9l+zLSEgeX9jzpk5vo=;
        b=GqN1a6JbH/PfsHXwB37l6bq+m6xjSvXt6PnLhPUrD0rGfTOPiT/4KgmuHLE1LJIN1w
         RyfWSBCnDLhE8OS/sIWcga0tktHrXnbRlL2xJU1jtoyJ/vVtCTGtIGEeaXM+7vB16uSg
         AxuECDvWuaZHZV+yD6u5TEq4ABl+xVPoXs9G9KnFL/bsH/vyTQz+lNACOSk/bU2lJat/
         A7nREbeLNL6SO4nhq50tFq3RWqHXz3xtc9thVfq/FfMWWSNuaE5B5QjSp3ZXa4mVaHIa
         XFVPE/Eoy+uLRvqfjvLJfqPZDpISoNRfrBYDot6bC08vNLPqDAy+5qRvFiRLYkDOcUSF
         m1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764780040; x=1765384840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r+6S8pILwWJoByJIz1lTTbzSi9l+zLSEgeX9jzpk5vo=;
        b=MtsTyVouoqumI02bBSClmvQZet5A2Ax/VQfTw0G7VE84IUzhVTQbYo8WdT+QjEQ++g
         8vjP2ulAzElqmX4aUGgmQ7rwgkwtfO+pQbCDf41uIJnlSDCPz0KqSoX4DFjPwgpFdAyo
         upr+fj/2NLydWWm3nQu8vvFFaVVaTrpahJ7xX/QIKpswqE31wxH0pCx7n4fmIUfBPD3U
         JG5R1rtaOOPa9OuXB15s1whGVkJ23sF8IzXQ1mmLwrz8GbE5tBS3eFujqeKGBhk+Uec8
         EzEsVxgBemgLQVRYCnx4t8hVIin9iNlKhMuf4rk32gU/r6m9PPfgQHm0oG8w8hiECNH9
         B1oQ==
X-Forwarded-Encrypted: i=1; AJvYcCVN4L3c/SOV02ewViKp1dWd7F0UQCjO3F3OC1gGWBKv2yMaohquPXTPMgrgF2kSinKeu+TBjGgCADge@vger.kernel.org
X-Gm-Message-State: AOJu0YyY1VUOEhEOqWK80a3VTfAouQ5GtUtnYO3dETY8Z3NWh3TK8tOl
	sThuCOOI1YTPFsmnbKUHNVYl0/OiFre7sHEfFSzG4xz5I0UPi+Ha0Zxk
X-Gm-Gg: ASbGncsK1fkeM9BOyNcKMPD4Iw2fv90nIrkWOXjMFnaQNr3ZfT2fZ7jlki8SRQCKIHb
	6gpLjuDLKv+UgQrfApp7ObPFCKthJ/VsXejRGiVxwmAbgLcbCqnzu79Bo5K0deFgwWzb1duyjLA
	+olfrlmbUpDsr0hKGPlkyjW3hRYxWv0f68XsTiXYsn01gLSTP9AR2jle/d79v9HDk9mjKYaa8Uy
	iFGEMoyLcM6vKvAGlBVnhMVxAR8P1dueYAo9Ll1mRJK89TdJdPrrapt+6rT9F30cFvL5i7BZ6J4
	FAsGKudZGutxb0jVNz85xfhep9rTKaaXDGUWzloXptLLwuQDrU8vAI31n7hPxbjwTSlpHVksUPO
	ptZqi0tdYx4JUzrolLd+/X9eZFmQktOW5gF/5LFYGttq2kBrShG8mLb2lw8tU0H3X/MzBvUUV+C
	KTET2yECB9BSk4/zFxA2dApA==
X-Google-Smtp-Source: AGHT+IF6/YZIh/dxk/K+HKvP/11ZD6enoOdhijztLoekTQ7+wG9a3xEISDyaxg4iW1t49OdoMmzvQA==
X-Received: by 2002:a17:90b:3c4d:b0:33f:ebc2:643 with SMTP id 98e67ed59e1d1-349126c84d8mr3372009a91.23.1764780040185;
        Wed, 03 Dec 2025 08:40:40 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.116.199.188])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34912b5cd2asm1437695a91.1.2025.12.03.08.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 08:40:39 -0800 (PST)
From: Nam Tran <trannamatk@gmail.com>
To: robh@kernel.org
Cc: lee@kernel.org,
	gregkh@linuxfoundation.org,
	pavel@kernel.org,
	rdunlap@infradead.org,
	christophe.jaillet@wanadoo.fr,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v19 1/3] dt-bindings: leds: add TI/National Semiconductor LP5812 LED Driver
Date: Wed,  3 Dec 2025 23:40:33 +0700
Message-Id: <20251203164033.363984-1-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <176451936212.1126615.11381616288774387236.robh@kernel.org>
References: <176451936212.1126615.11381616288774387236.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sun, 30 Nov 2025, Rob Herring (Arm) wrote:

> On Sun, 30 Nov 2025 22:39:54 +0700, Nam Tran wrote:
> > The LP5812 is a 4x3 RGB LED driver with an autonomous animation
> > engine and time-cross-multiplexing (TCM) support for up to 12 LEDs
> > or 4 RGB LEDs. It supports both analog (256 levels) and PWM (8-bit)
> > dimming, including exponential PWM for smooth brightness control.
> > 
> > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> > Signed-off-by: Nam Tran <trannamatk@gmail.com>
> > ---
> >  .../devicetree/bindings/leds/ti,lp5812.yaml   | 246 ++++++++++++++++++
> >  MAINTAINERS                                   |   6 +
> >  2 files changed, 252 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/leds/ti,lp5812.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251130153956.241375-2-trannamatk@gmail.com

Accessing the link results in a 404 error on my side, is it expected?

> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

The LP5812 binding validates correctly. The errors reported by the bot come
from the unrelated thermal bindings. Is it normal for the bot to report these
unrelated errors?

Best regards,
Nam Tran


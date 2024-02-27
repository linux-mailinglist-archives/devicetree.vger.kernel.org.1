Return-Path: <devicetree+bounces-46523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4ED869EB0
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 19:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AB5628C070
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 18:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B9C1487E2;
	Tue, 27 Feb 2024 18:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eyUIl0H7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007C7146015
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 18:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709057568; cv=none; b=hO9mevdWexLgNw4iwktgDq1pcWy6U+etDShIQG+jgxtGNOqh4MZ71VmHv20lC9+EbwFUJOZPJncrE6eK6D12SAlbMLVM02k29BV7FJIoifOUQz6JtLkx8Tov9iaEDctm5Es1XWrhK8M9cuKXPY7DkW7KILEn6b0ztogGXusMS18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709057568; c=relaxed/simple;
	bh=cg9qu1nZlxnC68Ueeoocn/P6r5hs5t9MDoe/bzmk888=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UA43VCjlpLjHkYVEqYCEpTLlkqknP4lOSXr3ILTukdodt/BDKzYfCe7DAjXHmQHFu8gIZ+juqlc7w4Guw56RbcwQI4H4PsCribLUECSGLWAU2o3AoJLUilaKeCpYOtgwrLmq8r2Wk6Oeq4xkK5qsmdXhsbevsQwA7xmxhA+DQGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eyUIl0H7; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3657c37f72cso174145ab.0
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 10:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709057565; x=1709662365; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9xo3DafYnz7qDd1iyNarBE0C+acGQnxfRXgU4VP6u+M=;
        b=eyUIl0H7ncs3ylQqTu0mSwGbC82HxXtlkyrkqFfGcpyR2+v3Btg6IxUiNmsjjX3n3u
         XVK1keJtroTd/pSf1TVj58vuG3el2WjFuos4d/z1+qCNkdyB7dxdget3J41HlqPdLx7P
         aJTrDFzRIouwfVNPGPxRo+oToe/7+a9UBOdQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709057565; x=1709662365;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9xo3DafYnz7qDd1iyNarBE0C+acGQnxfRXgU4VP6u+M=;
        b=uvZX2Ee4OOwrTpaOiGtd2g+HHFQbIPDpxBgdtNMNbmzHpIytBj+FYNWiFn3JrMYCZp
         v9pt80QIaolixUDnjJViWP/WLKhr0jg7am9rOClHijxwSp4BKAFRf5IsNMzTwubVfBSe
         I0F7+JGq1zOjLW74lVQdwcyFTTlFuzQtLf1Htz3tsLDo+YKhiKVVIillcU5p0TVt/vcQ
         +CKFHkKJd8JlyKbAM22+QGE6CsOSiCDp7Eir5zWJEQUY6ceY5103fpv0MCLhYVJ1CMHg
         FK/zNazyM2VPb/nlEZnGia0X3tJTOb9reZYqLNMDIzH6iQlnllZggReMDDndSVv370W2
         F2FA==
X-Forwarded-Encrypted: i=1; AJvYcCVmGdw1/xXHTtIfi7y/C3NnZ0GZXN7m6lRM5wr5tgAP8UCEf4WoF1p9JUTlr5rSaindFPLMWMKP0/xkV8/oZfpoTSZvqmfuunVjjQ==
X-Gm-Message-State: AOJu0YyurbipwSZGHZRgQfHPoHCoE7Jp162qb09nuizeOt9x/zr8Hv1H
	ZIAxrINaJEe0J03mRQZJb1cDHaOM6xzeqvJA5m788CR+LIxjSkRlOG1zoBFs8g==
X-Google-Smtp-Source: AGHT+IGjrhhbq3O4yJbGQNPJHVvQDH/cLI79okVS/czvt6vJUsosc4jtEJE++l5mG9grtKNLuUoKMw==
X-Received: by 2002:a05:6e02:1aae:b0:365:b00e:c3cc with SMTP id l14-20020a056e021aae00b00365b00ec3ccmr105566ilv.2.1709057565143;
        Tue, 27 Feb 2024 10:12:45 -0800 (PST)
Received: from localhost (147.220.222.35.bc.googleusercontent.com. [35.222.220.147])
        by smtp.gmail.com with UTF8SMTPSA id br17-20020a05663846d100b004742452a382sm1963310jab.45.2024.02.27.10.12.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Feb 2024 10:12:44 -0800 (PST)
Date: Tue, 27 Feb 2024 18:12:44 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Helen Koike <helen.koike@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 6/8] usb: misc: onboard_dev: use device supply names
Message-ID: <Zd4mHOEs6tHELUXl@google.com>
References: <20240220-onboard_xvf3500-v4-0-dc1617cc5dd4@wolfvision.net>
 <20240220-onboard_xvf3500-v4-6-dc1617cc5dd4@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240220-onboard_xvf3500-v4-6-dc1617cc5dd4@wolfvision.net>

On Tue, Feb 20, 2024 at 03:05:50PM +0100, Javier Carrasco wrote:
> The current mechanism uses generic names for the power supplies, which
> conflicts with proper name definitions in the device bindings.
> 
> Add a per-device property to include real supply names and keep generic
> names as a fallback mechanism for backward compatibility.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>

For v5 you could consider making this [1/8] (i.e. before the renaming
of the driver). That way support for new hubs doesn't necessarily have
to wait for the entire series to land. Since this series is underway
I think new bindings shouldn't use 'vdd-supply' but the device
specific name of the supply.


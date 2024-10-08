Return-Path: <devicetree+bounces-108873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 229DE994290
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07AE9B2A138
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0838198A20;
	Tue,  8 Oct 2024 08:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RdfB4ZuO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C1718C352
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 08:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728375383; cv=none; b=ayjPdVWWwaYDSmcCDlIHgXkAOvTKYsWjhaX6Pzsoc1o0cVriXou5k+dI5ly5u15D1ekTZmQJG4PSZqogvawdHy79HxBNXQpzXZIpO2R9eSKWOVK9E7Un0GPzvAlub0k5JfT+BEvFdFpzvNz8jStwunXCgntGffTweW/G0r8U7uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728375383; c=relaxed/simple;
	bh=1DVV6aCKo57cITQ/L5onrD0sDXRLtOftYImjic7g0ZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZTIU4DDYcvTYhvMK/scIlrW8AmdiZD7Oj5Pkfg02+hR7I7vAegWzhJDSVeXqsMHE5KCsKNxnnEL71HU71lXiGHyqUA4vRzSRsyxlRlv/T/Ocg4jdgwcIlPoQUWQlQkHUjMyYA4oPcoTWF/iGbleGXQxmEq86gAh4HJR6bukUfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RdfB4ZuO; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71e02249621so1368012b3a.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 01:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728375381; x=1728980181; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S995Kpw7Q5FgEfl8cukii355dy4P9Kqet+lLT/AJgBk=;
        b=RdfB4ZuO/58P704ZVCnaI/UkC5OTTkk1uc820g42LDvCy2w7ARkWhkHN7x8bhuoj5q
         uH8lbpbwY5Imgjov2eRk+0C/OXO9idH1OzzbXcEOBQOzX3O7+6ysMENmZz0rGdDeJch8
         D/8/qT0O7T1AqsGxyB4244GrGbeFu+zEdJbw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728375381; x=1728980181;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S995Kpw7Q5FgEfl8cukii355dy4P9Kqet+lLT/AJgBk=;
        b=O+oZVw1ZPhR2XSGwxadUtXBpntHzlZwZkC2Y1ROPAdYLu4bl7zaD8F2JGtgDFceFDj
         HRx7xgGI40ehmUXRRWAaDduy4RaWJyx0YwpPrL4s1idPlKI531pggop4W8lqkHtgXDHh
         o4CNITqPSWTiEY8pVC+sEDThpsCCzpJiBfjNlYeuufOYIKQ3gzcL6/vNWWqBSmmTrzvo
         swl5sEvl3LBW/D/Ex2dTtnCDnv02zlsnlx2IVVTWdTAacYJ/RPlqxJ+hbxmyyrlOs7gG
         BaAIGBkLX4DfHrrm4FXKAffZrfy7tCHgqYslq7eRuxzCkLCZvokYS/4HrfcieMWptPec
         ovcw==
X-Forwarded-Encrypted: i=1; AJvYcCWErF06vTiBbWqLoyAVC29kkTRRPp2mQiAS9sqgRuYVYJ/NzHOhfRSWGOZ1DCUqIWhSDrARbpu3xGYq@vger.kernel.org
X-Gm-Message-State: AOJu0YwJMlOiHOrAF3b6GOsBkjQuouW0yzxyth+u4ER1bg1kJxrhN16O
	CBMKbkgK3qqL4cTr7TRuLLGwSAi4dkyCLzlYS9EE7Wm573hUb99yWIWqKdJ7cg==
X-Google-Smtp-Source: AGHT+IG1t262MIOZEYFnYoCHct2S8wc8u9PdiAmbJsD0k0DmGmjbRhJKVQFe9ZMXZmzrCWQUeq1YCA==
X-Received: by 2002:a05:6a20:9f0f:b0:1d4:fac8:966 with SMTP id adf61e73a8af0-1d6dfa27e8emr23031407637.10.1728375381636;
        Tue, 08 Oct 2024 01:16:21 -0700 (PDT)
Received: from google.com ([2401:fa00:1:10:10df:d27e:8d4b:6740])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0ccd04csm5610451b3a.46.2024.10.08.01.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 01:16:21 -0700 (PDT)
Date: Tue, 8 Oct 2024 16:16:17 +0800
From: Chen-Yu Tsai <wenst@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Enric Balletbo i Serra <eballetbo@kernel.org>,
	Ben Ho <Ben.Ho@mediatek.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
	Nicolas Boichat <drinkcat@chromium.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: mt8183: krane: Fix the address of eeprom
 at i2c4
Message-ID: <20241008081617.GB3999626@google.com>
References: <20240909-eeprom-v1-0-1ed2bc5064f4@chromium.org>
 <20240909-eeprom-v1-1-1ed2bc5064f4@chromium.org>
 <01020191d6972ef5-12c59f31-ae58-4aad-b33e-5b7618c0443d-000000@eu-west-1.amazonses.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01020191d6972ef5-12c59f31-ae58-4aad-b33e-5b7618c0443d-000000@eu-west-1.amazonses.com>

On Mon, Sep 09, 2024 at 11:41:57AM +0000, AngeloGioacchino Del Regno wrote:
> Il 09/09/24 10:33, Hsin-Te Yuan ha scritto:
> > The address of eeprom should be 50.
> > 
> > Fixes: cd894e274b74 ("arm64: dts: mt8183: Add krane-sku176 board")
> > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Ping for this to be applied.

ChenYu


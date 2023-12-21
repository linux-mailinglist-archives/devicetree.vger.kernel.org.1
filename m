Return-Path: <devicetree+bounces-27855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FED881BDF8
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 19:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0D2E1F212AF
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 18:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2352634FC;
	Thu, 21 Dec 2023 18:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PzaVHwf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786A2634F7
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 18:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dbdaad42281so993261276.1
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 10:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703182608; x=1703787408; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nyMLgLGAFCwB8tigzL3zmg0fWOPsybCh7CewIziIx18=;
        b=PzaVHwf3bnIVaEYmaMtoFhjA0TJYZJKa/q/WmBIyKiLo5U+Em4vxWoCMNZ2USWmnBW
         dVdhyT3J22SakSsMqYiKX8DY6VY4N9IEKgU1xx2d7dsZ3BnMVVzUmFT4x4pvntKU4Va6
         INNiezQbtip1s5ikq1O9K6ce3gVmvGNjpu+50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703182608; x=1703787408;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nyMLgLGAFCwB8tigzL3zmg0fWOPsybCh7CewIziIx18=;
        b=YKDVwQGNzxme4qjGDm+2l84LNNIdepurEAPX3jUFuJGLE37T1LvXVPh+hxwzQFt4IM
         u7TXVAJXF8oSZ6FkGpYRKwIv8iXT9Rj4mRWrRaSNzyeV8rCWlA7DQm6nvmdqTEIlVWBD
         tfFLImnGl2Hx+Yfx1qVffGV0z8JOYKCRt4FAdmR8mTAAz5kBUN0/sg0WK+GRCovnDJwX
         EhTA5n5Rso1gqmsgsBERFoh1SekattZJjfvtZLKV2pL7ZKpPjIUP1tMXJa3YcXoWHbLT
         tuwgaNF+FggIe3bvX5hqtHlgXWOE5kf6tFGl33mcWtovOpF755x5wBI1zHZhxymQ9lKZ
         fKOQ==
X-Gm-Message-State: AOJu0Yxl9yy3U1hE6ueFS9AqVm9WToRxQTjnm9frCbH0yuJZg8aDS3/s
	WlLUFe4uoxYKKo4mjMRCMEV9YRiBLvhGIVfl22fSpEDl/0ZA
X-Google-Smtp-Source: AGHT+IEz2hEouqtFpi9y297UCAmL1hayY/sHAX9vot3iBwQrrLhdG3TcbADflkdpdeiHilF5fsnb81+c8Xz+HGLa+yA=
X-Received: by 2002:a5b:94c:0:b0:dbd:5ab8:1dbc with SMTP id
 x12-20020a5b094c000000b00dbd5ab81dbcmr128760ybq.108.1703182608426; Thu, 21
 Dec 2023 10:16:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org>
 <20231220165423.v2.3.I1016a45ac9e8daf8a9ebc9854ab90ec3542e7c30@changeid> <bc1731e0-0770-4bc9-abd7-239733a03d95@linaro.org>
In-Reply-To: <bc1731e0-0770-4bc9-abd7-239733a03d95@linaro.org>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Thu, 21 Dec 2023 11:16:36 -0700
Message-ID: <CANg-bXBfEb1jBBsBJse7jmV1V8v=6Qe_NhTLNyYhjqmad+yv9g@mail.gmail.com>
Subject: Re: [PATCH v2 03/22] Documentation: devicetree: Clarify wording for
 wakeup-source property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Tzung-Bi Shih <tzungbi@kernel.org>, Raul Rangel <rrangel@chromium.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rob Herring <robh@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching.
>
> You nicely skipped all my filters... No need to resend to fix this, but
> fix it if sending a new version.

I picked up the tags by using that exact command against "wakeup-source.txt".
"Documentation: devicetree:" was used in the originating commit and is
why I used it. There isn't really a consistent history wrt to tags on
this file. Looking at the containing directory, "dt-bindings: power"
looks pretty common. I'll use that unless you'd prefer something else.


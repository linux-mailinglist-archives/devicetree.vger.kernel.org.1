Return-Path: <devicetree+bounces-249077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C66CD901E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE783300D4A3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE282F39B1;
	Tue, 23 Dec 2025 11:03:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C449B27453
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766487818; cv=none; b=D0JGVRZIF42hrMK2nG6PZI5+DxsQD5Jlkx0rE7AoZrOXv0GJv2ziL7F5yZDyvNh4I3oPcZby3FTXuSoeqzDkjN3qpX9ZtsnIK6DDZEevLeubbENfMkzaduBvUCx/bxVev5hGN9JJHm8Q0iZKycF6Hsx22xzc/33moG58mAwJ8wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766487818; c=relaxed/simple;
	bh=tIZuw1gY/W77btQZa4Wk+We03x9NJwU3zntqFoV3wzk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BcATxWAwcB+VUiaCb4DpZ6F7ECGcaWKD6XVnX7FHjuNJ/0D5Vp2ByaN9v64VdN/4t5sMSkt7v5zzVq+xdZKDPwMAkW5eWsH0d9IuGAUNNJrLQe/K2e/zfVAhjORTLwKWysYWKXsl8zzgvWfE/aBSosPDMznphpN/a1TdYMqAC0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dfd2148bf3so1638002137.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:03:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766487816; x=1767092616;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XXZ2Zg3YfTNGq+sIyLahvqDAY7cXkQWZOnb97jtXur8=;
        b=MdOXxhojvpzOXNaQs4Wz+fcODpj2nd/S9tb2I4d6MujSVZ83WlNvoRHSU/TorXbVnB
         /B+kXvJEUrAKUCYFtbBnHnGvoiFZQ79to2+rzb//kcDWv+ZMOVjpUGej4KIvOiHzqgtA
         H5rulnWXdQ8/nBNqXnhrsSO7udJfx2ZY8N1Ma42RSJCXzqCcR3kPcEiE69QjNTUZ5GSw
         91V1pNsf2uVOHg8W1mbmWohquE9RMB5Pk+viT2bwN/xwxc1E4moFy/cKe0DdmPVyx4BC
         OLWAbH8WGxSJSZO8ChW6+kXlOvsok27lKaxXfRnrTCCHVOx6BBIZjR+KpeQzQgZKTPRu
         Fr8w==
X-Forwarded-Encrypted: i=1; AJvYcCXnQzRigko++zHtFFDBilTePa/7QTYP68fmRLaPv8XaLUSzV9M4eMYk4taafxGvF9YQNjaVl+a5I+qG@vger.kernel.org
X-Gm-Message-State: AOJu0YxREEMrduiemJLGjUoL74Zb+5O7Yo5gCg9vsarcbgflV6/edgJ3
	w+u0mCZqpSM/W2c+/F1Y/pbvQ4nIjjGVOnAygqxgGjRGKHXGlFl8VT/T7XA24Q4P
X-Gm-Gg: AY/fxX42N4Xhln79cElBMK/rJ6DJQtuI5Bd4QJxi6FOZNHZUPZXwZFWWamNfyj2+A64
	FDaGZa31ppG8NlbGjQQmyUmU64nshiH37aZPjb3OwZDak6MQRkCiOO9bTpTtb1qrQutyYFfgvko
	46psNHA437y/YPfJs4yjzE5Vpl3mCLnAGrmLArG+18bmuZiPUhQ/Ub/Ax1BaKjNNDgkFbFPacOk
	CEB1qloduJSeW+VuP+iChM5pC0Q0UQ+ZR60aJWxsVr7Xm38HomHQQYNsICtjXUH6U6zRq2uY5pG
	97peQPigT+Z8ImBdvXP7ndoWQXzyFxFu9aYlLsZEPSLpmwU7tk/X2kdgv8IQZ2cPo4NTXDEydlM
	9QjDAKhpPn+XBNsIhDt+Wv7p6dozKCHCa9PuePEgNJQZn/QdrBEIgxcy/za6/MA1+6NqLUWNDUr
	Nnee/oncl5GKxXYeOfxzW6v7m88I3mwbfgDBMmi2TOwEJRNug6kVPTYU5mONk=
X-Google-Smtp-Source: AGHT+IF2soH20fx2XlmdI1NvF7VIhKaW777p3/rL5nT+q6Slbm9rPsfoxi2NrqJcnWlvYnNxcCLC7Q==
X-Received: by 2002:a05:6102:38cf:b0:5db:debf:658f with SMTP id ada2fe7eead31-5eb1a6baa96mr4134009137.19.1766487815688;
        Tue, 23 Dec 2025 03:03:35 -0800 (PST)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aa4f55dsm4277303137.2.2025.12.23.03.03.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 03:03:35 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5dbe6304b79so1704740137.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:03:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXtW+vQu7f7chLc2FlFh+krMswll2kHcR0m2QmrOI33LkDGi8djNp3xhhDY9IIVMYRa5D4q/1iwri1g@vger.kernel.org
X-Received: by 2002:a05:6102:dcd:b0:5dd:b69a:cdce with SMTP id
 ada2fe7eead31-5eb1a616b3bmr3879484137.1.1766487815293; Tue, 23 Dec 2025
 03:03:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215031318.2219-4-wsa+renesas@sang-engineering.com> <20251215031318.2219-5-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215031318.2219-5-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 12:03:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVqUG8tdJP1yN=viOaMPFcqRkCsRn7DQMZdGLLGUDMOFg@mail.gmail.com>
X-Gm-Features: AQt7F2re8SdYxHuvZGogmJ1IOAzTIRxebtW5GiwoC-A4eVX7e3ZGckeyRh481xQ
Message-ID: <CAMuHMdVqUG8tdJP1yN=viOaMPFcqRkCsRn7DQMZdGLLGUDMOFg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r8a77980: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:14, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


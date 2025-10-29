Return-Path: <devicetree+bounces-232785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 687EAC1C09F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66D45587DFC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C59633B6F1;
	Wed, 29 Oct 2025 14:53:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044112BEC30
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749599; cv=none; b=BSqzxAC/XKqyLt12l69N+sOb5YPTAs8/HAZ9TaxPibOLy9LNzKr52s1YjGdNwfVYHtIU2vaTKjBLJKIcjnrZ/T12ThmU4R4NQCW2OKBzcbqREU0itzDIHXV5VqVcZRzPnUby51Ptn5koWaf1hbQONKgG4JyVwY7DevPqjkGeEhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749599; c=relaxed/simple;
	bh=Bn3qdBMVV94+OQl3u4N/QcPiKWcf2tpN8VQjFewuPHs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QDEK65Y5oDHKQGyMqYwO1qLZCoQCpKJw0l87Y9c7TOob7eqtFKj7rC/506yQW9OV7KMb2iaQ9xhNAD2EI78Q//9KHsuuxWKGUC+do9GyK1++lkkG4CJiQ6BAsmmELb+z1nLCLpQRIHKxLiFoK0wt92qtC5qR6JzXBjPpaDMddQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-934c9de5cacso3946693241.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:53:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761749595; x=1762354395;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fq7cfrs8fVaBcc2FW3QUnIn+7UcMac5CdGnA5tYXOqc=;
        b=hZBq0CLyn7JVocHlkLtXKIMmMs5q//73KsZKpCuwwKW78MfHkcA3ywl/MKd7Vl6hi0
         VwxUD0ikVtUAJahDDJzNCo9JOArEaMD+CizXS2FKI3pyVw9P4UcxORIkLDOFemM1YYaJ
         OPF3tzwY0oSLUe2WfXwqQ2myUkjsuk/P/AVLk9xfymPRUdI35aNAxR+WTlAE/pKgeWON
         4fzkdrEDSS1gsx/rsD5GacDxOPJawMcTOf3i1F8jTWcOD6e7Ijf9MTYyGBXRPLZrjIYk
         1Zr/puCsGzs9riX2l4OBhsn+Lwhd3FJYaboHxln865YPWZbrIGYynTgkGYlAASExZZNQ
         gdKA==
X-Forwarded-Encrypted: i=1; AJvYcCVwk5zfhbDsTCCMXLI0c3Ou33+9cKFzzgoxa7zPNMEGYM5ei/ktOQf0RPNJpvF2XSH86AbflgIaOBOQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwYdZdfoMaJI/KScF4hq0hXDHSBEUkwoY8Mm3XBAC2Pm4zMjNRb
	6LBSW98+PZmWIoiKumMdTfc4NVYjxApgd56YwCNaINgwdl7HGKx6XRlebbfH9C/c
X-Gm-Gg: ASbGncvBdrdT+8kHvogzF9sY3FZCfJ8SgELpKm9b7wAcwoDtO/Z2GiYseXi4NGZ7BNc
	tIxxmI5TVK/PsEpJxcLgSpWSTzxnVW1OQv2gbTJ0gO7z1bcwcurZokBnxPLxma41z9VNHM2Vpqp
	HDH3d51fdTW9gd2HNEY131PFhbrQwgDaH7oOePOb181yPCMm1CYdrGCH423h2Yl8tnt/waU3Iff
	DsTD+0V1IMT0s7sMxRv9MTFBAXjujo4pf25+YaI0siAiMMnhoJdEWSDVHk2bmnyOFJys9mOtjpN
	4s9eaa+fCnK/5Y1wW2VIgjxyukn/+z1y0uRKgFjkzww3cwPiInuSzUFWnVX5jY19RtT0gs5t2MT
	/2xKE1G3ILaPp9HsJuPGtrQMMnRVFH7RkYt6vv3/hKcdDgKppVVN/5KQaeGmSyoY1CaTE+sl2UL
	CF3Ofl7hEMEq4Z7/2LRAZRtByMQEEuJOkfj49FIezchQ==
X-Google-Smtp-Source: AGHT+IEhsxXA/DRiizdhsoIV39Vr65s9dBsSbawPVEkrAl853Zu8AnmdhFYcwttcm2K0qVJp5JSi/A==
X-Received: by 2002:a05:6122:31a9:b0:549:f04a:6eb3 with SMTP id 71dfb90a1353d-55814234447mr1052223e0c.9.1761749594700;
        Wed, 29 Oct 2025 07:53:14 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557ddb9d2eesm5410917e0c.21.2025.10.29.07.53.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 07:53:14 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5db52533e5eso4271504137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:53:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV32FgIIhPkXgqm0uFj2hvHq4ebiL19v/7NA0W66395AYeBdgxc8MnZ0R6Dtdv70o8cQIIAYLXoZdF/@vger.kernel.org
X-Received: by 2002:a05:6102:c13:b0:5d6:221c:3dab with SMTP id
 ada2fe7eead31-5db9068d4abmr1045322137.39.1761749594055; Wed, 29 Oct 2025
 07:53:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org> <20251027211249.95826-4-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251027211249.95826-4-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 15:53:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU+vkj4KEyxmvSSi=Zw5KSXqJK=-7ZEYm4q_odn0sYv3Q@mail.gmail.com>
X-Gm-Features: AWmQ_bkbcCJ5bca1fjv3psAbJaIosav5q9yqJotFzCTEHDUGlkGiEkRijKAzyWQ
Message-ID: <CAMuHMdU+vkj4KEyxmvSSi=Zw5KSXqJK=-7ZEYm4q_odn0sYv3Q@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: renesas: r8a77961-ulcb: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 22:13, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Enable GPU on M3ULCB with R-Car M3-W+.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


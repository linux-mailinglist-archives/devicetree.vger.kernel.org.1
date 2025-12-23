Return-Path: <devicetree+bounces-249062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3686CCD8DF0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 886E43000B26
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC52334CFB0;
	Tue, 23 Dec 2025 10:41:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBCE32573D
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486492; cv=none; b=i/XxQKkFoSZKDv/BXSAasiLogklxQlOWELP7h6NYZdhXCu3ivMeaRnnTzbSAKWYy2ifSsZ8lmK01Vv5Vft8Kx5Jux/vI//bj90HzyLASBYn9xunNAUub8RBm0GvxbMvCBNKqcHV2X1f/eTiwXMlgkVpvWaEVLxBgx/YndU+TWv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486492; c=relaxed/simple;
	bh=xl1vXOaleR0j5ZD3l3FjtDUkU+B3UA3o3alRtYcoeVY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ldnmPqG5fpeQJvCpzP7HCYEoJGX6E6PO43HsxhRWheuofQ7FMIbop+uHTwEpm0jMyruwQ0FKLZe9sFH539wSoq2gZisyPNhD8EkPGl+F3veDtGBcTnP6JLi70NhTMPUiguHCaHxj7kD+AXTfvZUHkhDy+zjsybn98HzG/Ryxgn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55b24eedd37so3391283e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:41:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766486490; x=1767091290;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xq7HSic6ryPtqfCpQmmpcvZwrfLwAAt26kNsndZzLGc=;
        b=P8ySE6ZEyW22ikp9LejLko8l1mqKGpB0uk0FjGhHAFYoyIkxEp74mObYWmV3+sFFoD
         coSLUpeJsUnRGreqKHm29DvhGb341Zc2LnmGFFYzc9Mqy8Nr+Vj2D4Csgh8QUehsl7CR
         3mGm2//5ySvRZXNy2k1Ahlb6kTOVlYmxPpBaUG2cMFVrYt2sjrfYR5tIBzNyyEkhMS+3
         rvJ0o+ifVW6Vc82N5Hj/RhmcZHmYzDAwasqF5SMZr7un53N5yKbfuRuYpvU9hqdueYc3
         zDw/8J9nBmOBIEVsOBwlWExPhNyBXL9HgpBseiSYYglGjM6Xn+li86JkFESuoCGVtl4w
         B7LA==
X-Forwarded-Encrypted: i=1; AJvYcCXOXGfAosmXCOI3KynB1FIQ8Ci6AC7Wx1V48gmlS0J7/BOu7VaXAUurTIaRt13puR8n85XXlkLqSlzT@vger.kernel.org
X-Gm-Message-State: AOJu0YwazZEN+LZSWY6vVcEW1vWFxYwYxzynx7poR+FCV4EVJ8U3z+Z2
	yywdGTmOfB65kGn0Sp07Kv1VP1nrx2l9f+fRI2SHKmFb7f+Xf1HnEciJAoyDIYWX
X-Gm-Gg: AY/fxX4LZUO02Vb+LsF41+6ptJz/6Lakz0UajM4EMJVUeATVPlKORbE7sfMv/VVhzqV
	5/f/k/1t2raTRnrJBF51uY2psNeQR46XgNu4wdFp9OcfVnwHUeLqq85VCVA357f3h/2cfR+60OJ
	bj3wFibE3IY88Uki4lGdtqFhbmV3Karg+g1CwSJGF1o01iedOmfheVXjbRARJrLj90AUq6bsEk5
	vAUlYR3NyO2/dJixbB3xPf4dBrhoikfug7HY6RDVwVszu6y219GJ8sJPIdjEhcJ7S2fpJ7PK3do
	SaWq7NoudTDT6oR1xbS1h15oXgUXAivligb+XGjnfdBgFpsE5mGwbUA5MTa5z1q7+JKXmMgm3rY
	lNyfx9DGW/DAXurGW66CJPy28QyRbjeWoLQtsTufPVAVNgJeea+quz8SsKsew4CFs0a6v9SbvgW
	8UWbfxN+tByAHNFB+0yIdxrejH9qTGlqKNgrQvJ7Cd8MVtrZFlCoJ0
X-Google-Smtp-Source: AGHT+IEaaHtqe/rPO7cOyiUHcj9fg7eCN3ioVvnkQ/OBCG1uSJv+M01IVrcDKD9Tsetrv2CSeG8j0A==
X-Received: by 2002:a05:6122:3282:b0:544:c8bf:6509 with SMTP id 71dfb90a1353d-5615bcc3453mr4939706e0c.4.1766486490176;
        Tue, 23 Dec 2025 02:41:30 -0800 (PST)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com. [209.85.221.180])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d066ddcsm4263542e0c.9.2025.12.23.02.41.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 02:41:29 -0800 (PST)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-55b24eedd37so3391274e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:41:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUkhbEqvk02nqtf4ZldjvRnTzORedh9vFpcSreoffWok+pbao0Hq+FeLlQ2ji2C14R/OsivuMsKx8EU@vger.kernel.org
X-Received: by 2002:a05:6122:3c84:b0:54a:992c:815e with SMTP id
 71dfb90a1353d-5615bd1b39cmr4360914e0c.8.1766486488573; Tue, 23 Dec 2025
 02:41:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251209091115.8541-1-ovidiu.panait.rb@renesas.com> <20251209091115.8541-4-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251209091115.8541-4-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 11:41:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXLkOnxSNBoAJ_Q7hQj=Eb1u3x-Wo1JiHU8uz_tCJcy5g@mail.gmail.com>
X-Gm-Features: AQt7F2orNy1GBmSkRttc0kHF_Evq8f58iyWH7SaoZ_piWZcfCDJUCF-OXqEH57Q
Message-ID: <CAMuHMdXLkOnxSNBoAJ_Q7hQj=Eb1u3x-Wo1JiHU8uz_tCJcy5g@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: renesas: r9a09g056: Add TSU nodes
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: john.madieu.xa@bp.renesas.com, rafael@kernel.org, 
	daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Dec 2025 at 10:11, Ovidiu Panait <ovidiu.panait.rb@renesas.com> wrote:
> The Renesas RZ/V2N SoC includes a Thermal Sensor Unit (TSU) block designed
> to measure the junction temperature. The device provides real-time
> temperature measurements for thermal management, utilizing two dedicated
> channels for temperature sensing:
> - TSU0, which is located near the DRP-AI block
> - TSU1, which is located near the CPU and DRP-AI block
>
> Since TSU1 is physically closer the CPU and the highest temperature
> spot, it is used for CPU throttling through a passive trip and cooling
> map. TSU0 is configured only with a critical trip.
>
> Add TSU nodes along with thermal zones and keep them enabled in the SoC
> DTSI.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


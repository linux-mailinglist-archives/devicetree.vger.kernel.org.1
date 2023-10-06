Return-Path: <devicetree+bounces-6335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0838C7BB071
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 05:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6B5F282020
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 03:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F38C1185B;
	Fri,  6 Oct 2023 03:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NbqoW4n4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE321855
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 03:14:46 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 215B9D8
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 20:14:44 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-503397ee920so2082489e87.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 20:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696562082; x=1697166882; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9d8YucWYRdks50PJ3AO/4iP8wds+F1vsf/WqvVgXf9A=;
        b=NbqoW4n48cqMIiQu3L1yIoecjoZnwYeF3GL76ak5UvaCIfuSsKSy4fyENbsrujdhyp
         eNgoFQRuI3SWSLvFQtk9NDwlvupyYFUKHXBxSF21q2SPu0hhde8IUssYqhTPVG6PwLIN
         tELrkW8StDYGoSrB9g7BwSc8x9hkfkUedrYJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696562082; x=1697166882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9d8YucWYRdks50PJ3AO/4iP8wds+F1vsf/WqvVgXf9A=;
        b=YkwOD2hiW+W3a/pzy5aiXabyzp5Pls8QVIWuk7bEWC9xWB9XQL4jqC8b82JwKTDCtY
         DInz4kZIGvgQMeuuHnkapUhubOkaLWFmExFuRwRpmo96XV4g2o+zPJlVM1ytdvc4Nsir
         J2BPhAWOsDR+6V7Yyb7I6hrSVCsDLh7PGODeOcxtGVtCPI/4y41+c6RY2GjJEXdi6j+N
         WS+4SseREcYCU2a09sQYR/8N4/8YU3jBOj/NzcSPNxUGrPpT6ZuVoS03HSWlvZkEB+c5
         zK3ae42FRHsiVAz/bw0vFuuHEGkMhuU2UTRPdd9/NTSMwnmDe+osvqOS34seRuULnufO
         fzug==
X-Gm-Message-State: AOJu0YyYMz1685SowWX2Yw00BZ34GlM2zAEf+MLunCW+7ixtweTzNXW+
	AMtI2yes1twUmavNa4xItunKbUFrKCw1uE1qcBWXyA==
X-Google-Smtp-Source: AGHT+IG6oEIiSjqmR75Y19FZq4C58Sj+ydK0AHtmfB75JNsgXpugv208s8JaBxDrcniI2I80JC+hyLHWlK9z6LIrmQc=
X-Received: by 2002:ac2:4a65:0:b0:500:c2d7:3ab4 with SMTP id
 q5-20020ac24a65000000b00500c2d73ab4mr5754286lfp.8.1696562082174; Thu, 05 Oct
 2023 20:14:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005151150.355536-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231005151150.355536-1-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 6 Oct 2023 11:14:31 +0800
Message-ID: <CAGXv+5Ehu6XiFQQhLaaO91N7Xse_ANxLCAwqVAMvy7UST-Q=7Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8186: Change gpu speedbin nvmem
 cell name
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: matthias.bgg@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 5, 2023 at 11:12=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> MT8186's GPU speedbin value must be interpreted, or the value will not
> be meaningful.
> Use the correct "gpu-speedbin" nvmem cell name for the GPU speedbin to
> allow triggering the cell info fixup handler, hence feeding the right
> speedbin number to the users.
>
> Fixes: 263d2fd02afc ("arm64: dts: mediatek: mt8186: Add GPU speed bin NVM=
EM cells")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>


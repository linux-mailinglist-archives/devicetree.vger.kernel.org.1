Return-Path: <devicetree+bounces-213279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B34B44FBC
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:31:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE7037BD2FA
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 07:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DEF52D9EDD;
	Fri,  5 Sep 2025 07:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="T4y7Zqlp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC542D97BD
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 07:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757057078; cv=none; b=fbJxJ3TzI1cgQOTgl2MZEWFeOCx7+jvgwp4uPRazIc5U86/Nbysy67/vdl3c2BR5VSs1EUrWTAlJ+J2wyyBza3nUMdWXXFPsnsz9lCqlnXgvufcYkYxZjZBGRzcxaUGFEEx1JJo1in1tS56rc0VCa8CCI3e6vO/PZZ8MxGHnTPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757057078; c=relaxed/simple;
	bh=OyKNmBG7aY30CUsH6LThft0vL3sOjRv4PBRyIA8/9NY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HpRqMLP2AdWcvyJpwDH3kqxtb6L1hKz0KIdTakGkIABJmzm5XF5NHwnQwWaHgh4EM9BwBB9LAX9KX0y9x7W+e/z4WUTsnpNhYox21amfGJaWvSzoMxuEaDtyvJeA/IU7NZjzhm5i9BJU72+rtqHOtzdBPOFFKTlSyycSLbCGN7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=T4y7Zqlp; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f7039aa1eso2054398e87.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 00:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757057075; x=1757661875; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OyKNmBG7aY30CUsH6LThft0vL3sOjRv4PBRyIA8/9NY=;
        b=T4y7Zqlp3JbqjDcSuyMxKuQ65s1HSZHa4rQU2jwHDrET83lNTxQ3J/WVUjIKQW+KAP
         Rn49e9We4gvWjVqxJMvRviVxPBwnm0FfrUPugQOOdQu5mcm0lglyMsAW+TLfqvAACVsN
         9jENFECC9J/nFhltr5eUV+hfKbngGFmNNkhSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757057075; x=1757661875;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OyKNmBG7aY30CUsH6LThft0vL3sOjRv4PBRyIA8/9NY=;
        b=R9i0SXAGqrw5pgCwLCmnfdWVkDFwt/RAPr/lhgQZhmYYgRa+ahdXwkC/dWiv7A0WlP
         gABqOf9vLJdp5aOHGIxCXTUYgbtK90GPJ/vTVID7pA/kZjvBLcg2HKU9ofi4KHWxI5AO
         uzIYhvLsCR2ocAD/11CF0itFgdcjBWs31uEZPYNvm4bHALrnmXZn6ovQtNPDCO+jA+LF
         JWJp7pu14nAyoIFq7rZFIl21Ud650omdq8ZACjKJThJoH9CE8gPQuI8urokd9q2iIjrC
         96mxUKTwApio5iuk3cl0U56BBhcaINuxqDCxiiGWhKjfnGmlH5UNK18cShi/yQ044HRs
         MX7A==
X-Forwarded-Encrypted: i=1; AJvYcCXnw+zcIrfxzrQ6Vd1bDQJ4ILuBq0CYnXT8Ap/QEoxG8WnvG1lFQuV1S6Zrns1GcjzOqA/ryFSXvsEh@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ+DeqKe7ssM2O1MDnOYtl8p21lDOa/XiFoVzZJIIY7yk+bpbk
	ftJAb986Omp8Md5CdldIm6Wmz46wtCy6oTGVsoFv0gHB4drTquJMBMSSz+os6/cMZCETDgSPEfa
	Fc/fvubwwgcRtxzxCnjP/ARLGTaN5JoMsmVLRdGp4
X-Gm-Gg: ASbGncsiNt4PEDYD7HMmPjiylhMKddcGjj9S8s7vqSmp4ui5wKUvPgw9uWU6NTmJhN1
	yIyr3cTGHYcvUHeHessOtSe5ImXDp2Em+eqNkaYyBWjzInqOjV53GLRdzwkdPkXvbr2VuYg6bwu
	mijbNSt0aOpBYrRsbdu5rIi3pcdrQW+ijYVH24JxxEKXexHG3Ntftb4cMAoGOHM6zoiOS3myuyZ
	/sbRQ3NnO6Ttc1LbcxjCzFHSFixeJ4bMGbvZ79P2wdcLTJv
X-Google-Smtp-Source: AGHT+IHsGV8p2LrSQ+5ebPuG3MwZsxnB0+XdK0d6HB4AboER/GhIXoUDzaGFZTbCNnePZ5YQiB7vHJZTSeMi3MgtzZg=
X-Received: by 2002:a05:6512:3d11:b0:55f:4e8a:199c with SMTP id
 2adb3069b0e04-55f708c2538mr6024739e87.20.1757057074896; Fri, 05 Sep 2025
 00:24:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829091913.131528-1-laura.nao@collabora.com> <20250829091913.131528-17-laura.nao@collabora.com>
In-Reply-To: <20250829091913.131528-17-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 15:24:23 +0800
X-Gm-Features: Ac12FXxXPTzm9nG4j13NbvkvAJ8eK4LgCQVwRNdKf80aBqhtT_PDYtc5qR-IPds
Message-ID: <CAGXv+5HjrwPJBC-wina4ZrQe_3FBWcyZc3e+iaCCmNOKfMicsg@mail.gmail.com>
Subject: Re: [PATCH v5 16/27] clk: mediatek: Add MT8196 pextpsys clock support
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 29, 2025 at 5:21=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Add support for the MT8196 pextpsys clock controller, which provides
> clock gate control for PCIe.
>
> Co-developed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@co=
llabora.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org> # CLK_OPS_PARENT_ENABLE remo=
val


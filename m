Return-Path: <devicetree+bounces-14287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFD17E368D
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06023280F75
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A03101CF;
	Tue,  7 Nov 2023 08:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="f/dqUUh4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB5328E2
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 08:19:25 +0000 (UTC)
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE71DA
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 00:19:24 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d9ac9573274so5655308276.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 00:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699345163; x=1699949963; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1o5B4Q1OR2ZFnLIoINtqMkQRvUs/AP1LJaxG3uy772Y=;
        b=f/dqUUh4k4F2Ro7G7s3rZ1PHQXgvOzNAV9JGW5a5FAZcm/st8WwYEZC9sxSn2xufge
         4m6Zr/FlAxm1tbGU3cGI7B5uBjrmz/MluX1KT9DVONgw4oqeVbFTx4H2qHV7hlCoOmmP
         GLaCohe92gqEb7mKRlmho0GUoVg62+8F7oKxVGyjL5ieBWEdHDMSLZrnVRSiU+ViZiqH
         JikPf2y8uOi1M9wD5PGSTskpw1OqHB23qsE8IShm3mo+DDSbBlkzuHLbCCODCyHtrG/4
         6tkV+ALCbgaoyGEuV2SRCUSlfVu62jE/sXN17EsnUG58nA8h3dgJpxliOLSA8YVN3Er0
         e65w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699345163; x=1699949963;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1o5B4Q1OR2ZFnLIoINtqMkQRvUs/AP1LJaxG3uy772Y=;
        b=J2GWBwGXNlTpA0Z1tg5d36NDYt8cGMim44WFiR7Fuzn/W5ug/LcdJ4H+JiBe2+KW3E
         EyjZH/XyUu3k33xQePxvXhBNVUQkXYYTaA1foE87nDZJV/zypdzzizsnNX+OoRfDoT9W
         mTs+C1umD3oATMKH9zcuDJvpPgIhPpE4P/r5UvFs4O96qRB+25l1tqGxXMcNf996QfKw
         Y319NOUg7cxediKxZf7w5lq/jFVDcv5aUSkIDORdhwc0wIh5khygr0OwIwkyiQXxY/zB
         2Rxw+jf/RlKDCXVXf2JDhbILOVb37wtStgzBJG/1QY80Q4zrbgvsGzHP7HHZS471rH7s
         /E4g==
X-Gm-Message-State: AOJu0YzrihC9ksR4jo0mH+drUXlWIBOlz9L3MNsCLSv7bfhlrhZ1XJbL
	7FMbxdzs29+Dsm0XMy5te9bV0hvPvVtXQlF2XlEu9A==
X-Google-Smtp-Source: AGHT+IFYtvsoT1ZlfWMIWQ6l6vz/ktBwRcrOCLL2Xn2Hl9aFBnwywmUr15MIOxeISvfy0ARJ/jblAGuj/gqq1fo11q8=
X-Received: by 2002:a25:d489:0:b0:da1:b041:70ac with SMTP id
 m131-20020a25d489000000b00da1b04170acmr30155588ybf.10.1699345163633; Tue, 07
 Nov 2023 00:19:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231107031442.2768765-1-zhourui@huaqin.corp-partner.google.com>
 <20231107031442.2768765-2-zhourui@huaqin.corp-partner.google.com>
 <8a1f5d6e-3753-4ff5-94a6-dee7925b902b@linaro.org> <CABRjgzstdYKDCBDiD=ciwmP2X3CJ4PnDN7dLFF-F4yOVR6ex-g@mail.gmail.com>
 <db0f47cc-5c44-4671-ab2b-cc8a315212eb@linaro.org>
In-Reply-To: <db0f47cc-5c44-4671-ab2b-cc8a315212eb@linaro.org>
From: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Date: Tue, 7 Nov 2023 16:19:12 +0800
Message-ID: <CABRjgztWX1Z6QH9QZiZNKYrzE6Sy1KPuPHUzFbcj=DcxqXywiw@mail.gmail.com>
Subject: Re: [v1 1/3] ASoC: dt-bindings: mt8188-mt6359: add es8326 support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, perex@perex.cz, 
	allen-kh.cheng@mediatek.com, kuninori.morimoto.gx@renesas.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, I didn't express myself clearly. What I mean is that I will
modify everything according to your suggestions in the V2 version.

On Tue, Nov 7, 2023 at 4:06=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 07/11/2023 08:59, Rui Zhou wrote:
> > Thank you very much for your reminder, I will pay attention next time.
>
> Next time? Does it mean you are not going to fix the patch as I asked
> about the order?
>
> Best regards,
> Krzysztof
>


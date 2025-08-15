Return-Path: <devicetree+bounces-204915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5F2B2740B
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 02:36:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4925C3B7C77
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 00:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 735A51C3027;
	Fri, 15 Aug 2025 00:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="IychTDyE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4231C1F22
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 00:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755217670; cv=none; b=slRhxN4Big2rYpdLojV9gdgtoHySGbl7Al9dCwO+57FetiaDqAX+BWRFzuN03/5mJGkPoo4V5hFM2CnnRvzil6jcPVJFKf+VQKuOd48cuy6n7kM55EDQP8XJAzuHSzt8TJy3faPbU+WVwmWvk+/laQbvyyEDtYXGwGrdmiNpkQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755217670; c=relaxed/simple;
	bh=X8L6NYOi7CRlSxcL8t2PnnNxl7kf+iXyLMU7O1KY670=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HOX9YF0Kl4dnpx18rPd8YXbabzffO3Agab0whzuuJnAGGIlPgMa7+eXQypCnyDdyZw3Th56Qzeqc/SYksi3odlK6yKPHZa7xS19BfAAjv4KUnF+taRxsT/0XD5qeFwxjz68wjUQq3YNqOBaVNVIMk5mn3LOsXck7+tgk1vF6r8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=IychTDyE; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e932c98433dso453422276.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 17:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755217667; x=1755822467; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUCl8OpntS8ItAPbimfsEK2ia5Dsdkh5KT5jw4r6KqE=;
        b=IychTDyE8LEwUC0ljnzrLg8gSJm55v46fBpcDL+JWDHlRkK/17IrMbHs+DOfahXB4z
         qgssZJThVGUc4fZIH4huAaXEce2nJy1QveB9AkbpnP63KeaQTS9LzZ7NlCfz4AzP0e8T
         ZmCxf3nZX63yxKt47sEe/Y8clQyYm0bxXkWUyNHkRFEoO7WxZxPYC7QxFR+kX6kxibxs
         GfwJ6PuZpKNm4EBVy5nSMtfw4eEWEFDUVxYPMLCOV5Bbti3Yv+2Q9+lvO+kcxpkDqmLm
         X8w5jYcsd5gEUQunQquM20wQ+7RdtT91eDB/VQ6RJZHPi/P3nWLlJHuhL7zkOroyqVX7
         ehJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755217667; x=1755822467;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MUCl8OpntS8ItAPbimfsEK2ia5Dsdkh5KT5jw4r6KqE=;
        b=ZuQiBu2pt4U7RQsYVGm4Ve+XYTYW5WW4+ABvUFRamRF662wyzrJIm5oEB8hIGHeos8
         v1NZEwBlg8NXK1EgI1/huHJoZPYKucYAuY3XqonbSgdxsQLpXYzCop+MFOaCvg6BSeXL
         1osmcRGUvj03ybLhsP6GrI1z+kfIR63CvfIJKmtxymtdfZ62Xx18ZtS+YNsf4NPNBd9J
         QQ78++r51RPVg1W9whvLSoxDHRxBdK2j6NNWqVj3YuidPNT9kBr2A+ThS5mgN0JdLvKu
         GTlyR6wvo0wfdwKpRojcvFkY2cVVuHZ0kWJ/tDR/XMnU6cGi1gufydfP3l3DC/KPNBTp
         QZfQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0yZ5vb+TgjTHjen2RTZHdIA3igSuRLAuqdHMltQJ1pKtara13uXTFIOWEIVmCE7I42YFOfQ6zpUQS@vger.kernel.org
X-Gm-Message-State: AOJu0YyRCg+rKhET5YmdGFOt07Te2sy75fTYyI3BGs5owlW+PcA66SoR
	dbH9CAxAOifQsekPgJAfLJDZJgj1lUMxzBg2oBoobCMegcwzs21wFd1dvTWzgAxf/r6UrLU1Ui0
	Dj9UKk/3dUwtpjpDs6gOxBIf5Da5UafprPD+0CB8arQ==
X-Gm-Gg: ASbGncsyp3HL4bHnVExlFSWkLzGJkRUQ1e68M7wIOc0eI5CnChhzDMjQ0utiRLOHdlw
	3iAnl30Re7YNDzbAo/w0DjRcvayUPod2jtCJ2H4MPQ9fcp5xWZZL/smwVKz2Lr75BNVFUFr20Rx
	evuyB5FtFi1eAjMkVT/CHrSEcpqXjuklqKS4lIfVR4qbOfx0yl6/J1nEMur1ri+ScYiZTfwSc5I
	CP3uwns
X-Google-Smtp-Source: AGHT+IFr4Z98dVmGfz60J9x6/CkZNbrFkAtGVlc71VNieoJ/ZNAByVYswqD8H1LwHZHBqhIOt7I8+tOkzgyQcZyNca4=
X-Received: by 2002:a05:6902:270a:b0:e90:8278:5f2f with SMTP id
 3f1490d57ef6-e933251c90bmr227607276.48.1755217667411; Thu, 14 Aug 2025
 17:27:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
 <20250714-working_dma_0701_v2-v3-1-8b0f5cd71595@riscstar.com> <175255113305.1485.18050987625765048681.robh@kernel.org>
In-Reply-To: <175255113305.1485.18050987625765048681.robh@kernel.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 15 Aug 2025 08:27:35 +0800
X-Gm-Features: Ac12FXwajLIeOVETGqUxgx2qIW1SxmU-t78A8xhxjUwRc93jsVMDeN2uzl944DA
Message-ID: <CAH1PCMbpxUHfFbBCDYYE6F+DCJHyHoesf=9f-Sw0p=147vEQag@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] dt-bindings: dma: Add SpacemiT K1 PDMA controller
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dmaengine@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Vivian Wang <wangruikang@iscas.ac.cn>, 
	Alex Elder <elder@riscstar.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Ghiti <alex@ghiti.fr>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 15, 2025 at 11:45=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org=
> wrote:
>
>
> On Mon, 14 Jul 2025 17:39:28 +0800, Guodong Xu wrote:
> > Add device tree binding documentation for the SpacemiT K1 PDMA
> > controller.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v3: New patch.
> > ---
> >  .../devicetree/bindings/dma/spacemit,k1-pdma.yaml  | 68 ++++++++++++++=
++++++++
> >  1 file changed, 68 insertions(+)
> >
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>

Thanks Rob.


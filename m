Return-Path: <devicetree+bounces-24497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C1080F586
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 19:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE79C1C20A74
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 18:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 573467E78C;
	Tue, 12 Dec 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DndZAEzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 610EDD2
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 10:28:13 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-28ac13259afso204401a91.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 10:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702405693; x=1703010493; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mIut8hQ8z15MtX5ku8n8HTViYJwiZt/tT/lHp4jyYh8=;
        b=DndZAEzJzPrXmmlbsMew+cKVmdIGI74w/loaDwu9/2rJFuCOq3xcnhMZVnpj5i/Bq8
         a/9r0Vyg1aardAWlFLwIgIrMN+IrdsKHc5F6k2qs2+BpVjZDH6UCmB1HhfuzkEbC1ni2
         KdKsMsqb1vEt8dKfGBqDWeIoIbUHxWvVcW+LFrP4mb2BGQABEUuijEXpVuqeIiunh8UA
         rEIW8403eseKRujplIdYvClURTSbnxMpIrfjclamK+GlDzRl5O0A+Kig9STTcSvVlEY2
         iF4aoMIBKuEFjd/4KfIIPez0QM5pE0MUo83kIbV9TAk+sdsmV25jxWWmzUqPY5t5S50S
         2v5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702405693; x=1703010493;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mIut8hQ8z15MtX5ku8n8HTViYJwiZt/tT/lHp4jyYh8=;
        b=GQdSvHPjQwlLOzByc9f8YgfEsvzUL0/aRjuyMQumbWWrsKDz92wv1bgHB0nPYXRwTs
         HFn4aF7ehw0CEbRXZoFaOUF0c3rmALLSlocoJdx9CO/PZ//JdGJUfXtgRZxvWXW1mLgG
         mh2iwJ9cBUeuSg8U0po52WLKzlk0/OQJqCtFv1M/y2bKwukDtG2gU9qpfo2m9KhQWEuj
         WZD1YFz2F6Dg2CT8M/KOJiNgrn63A7IFgu1teGkeCztelx1LK0SQJsn5Elb2T664xCGM
         k483TmNqE3fqi5cmycL44GIJ1Oazv2R2+DbROrV4HDGQ0XKC0tVkQl99IEJ6jflw4WZC
         /67A==
X-Gm-Message-State: AOJu0YxCpnbxee6Sbdq1fkfd0YeVw0jge8/OUpXZk5Lh90x4v/9bJaTg
	zg5Udicjk/cDdaCDuy09YTeJpMuX6gBEJi4Vf9U=
X-Google-Smtp-Source: AGHT+IH0DC48Op1TLyyJne6Tp/7pAjJRMKIynuoYfi09BGTPA5eLQUgcAoXihSU+RRu2OAsPRVyEcZhf7WhxQl7+DaA=
X-Received: by 2002:a17:90a:6345:b0:286:4055:63e0 with SMTP id
 v5-20020a17090a634500b00286405563e0mr11615556pjs.0.1702405692665; Tue, 12 Dec
 2023 10:28:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231211204138.553141-1-festevam@gmail.com> <9089fb993eb0b2b630784e5b91cb88c1ff2f45fb.camel@pengutronix.de>
In-Reply-To: <9089fb993eb0b2b630784e5b91cb88c1ff2f45fb.camel@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 12 Dec 2023 15:28:00 -0300
Message-ID: <CAOMZO5D0rxTmxGZX1Obfm9+t46gW6XpGWDcHDzocQd6p5OokBg@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/mxsfb: Add an entry for "fsl,imx8mq-lcdif"
To: Lucas Stach <l.stach@pengutronix.de>
Cc: marex@denx.de, devicetree@vger.kernel.org, conor+dt@kernel.org, 
	Fabio Estevam <festevam@denx.de>, kernel@puri.sm, dri-devel@lists.freedesktop.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, martink@posteo.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lucas,

On Tue, Dec 12, 2023 at 3:19=E2=80=AFPM Lucas Stach <l.stach@pengutronix.de=
> wrote:

> I don't really like this series. While we don't make any strong
> guarantees in this way, it breaks booting older kernels with a new DT.

I thought we needed only to guarantee that old DTs still run with
newer kernels, not the other way around.

> As this driver patch shows, there are no actual differences in the IP
> block between i.MX6SX and i.MX8MQ, it's just the SoC integration that's
> different, where in one SoC the controller is located in a power
> domain, while it isn't in another.
>
> To me this smells like making changes to parts that don't really care
> about those differences. The thing that cares about the difference is
> the DT schema validation and I feel like there must be a better way to
> describe this in the schema than to patch both driver and DT just to
> accommodate a SoC integration difference. Is there a way to make the
> power-domain property not dependent on the IP block, but the machine
> compatible?

Yes, this series is all about making dt-schema validation happy.

If there is a better alternative, I am all ears.

Rob, Krzysztof, Conor

Any suggestions?

Thanks


Return-Path: <devicetree+bounces-3817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDF07B036F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:03:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6A72E1C20834
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A5C26E04;
	Wed, 27 Sep 2023 12:03:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F1214AA9
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:03:41 +0000 (UTC)
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8633FC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 05:03:40 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-27755cfa666so1327174a91.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 05:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695816220; x=1696421020; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I4CMKpZRIlHBQxixiDG21lmTvGKkB6JK4tEiNwzuXME=;
        b=ifxyFQUAalAREfcJJrI3yI3WYcRDkQAtVx45NNBo0M/JfE7bgKJp4a6tbNp/HXb6de
         hcnfRX32JqnRC6qJfRzhDKk3sDoJGw+uRFB1omCB2EVo6V3LyjS1XgN2skrm7E4/4NSA
         em/x4Bbwca6GX0pdyBKgkoqtobAqOy08/kWrbJwbrid54m59w8MO7xaJWLRH0WnfjqQO
         XDgzvBuggX34MujCDJBD1BchHJ96q2zjXFfamC+FmC51LQsEnPix0UnXEnpwTuVlCH20
         us6W2G4jOpOo62UTMQu2q9ni3NXPPS5zNfce3BCn0pJGAaTFDQBb9WLOs/42iu0r+RZC
         artg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695816220; x=1696421020;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I4CMKpZRIlHBQxixiDG21lmTvGKkB6JK4tEiNwzuXME=;
        b=okLFTCfceBSDGRj3UHgtH1nR0LTeESCja0g+YequLuCX/SgMzeQHLoUXujlyRzqNAT
         1OJKiiNJea4u+LwECH6VkbdWoPPmi93jBrQEZVAoyHtAPwafasAuiRKY1pQO/DVKI65a
         TfiOtNowiTupM9mdu23GRdWgiTGd973DwsI4WEKYSXLI2zBKiJBRJo7NCzU9wYmf4OPi
         KGjUzdVoNVCn4ck5MOQT+d+XaBVYRDKIPtaf3/CsJ7pqOtvAa+hg2OFZUbjwo+BAO5XR
         cM6ZS8Uj0ZUocRLVUwByAu0iK7vQg8bzu4MamnQYrNxOFZ7pdeliZhT/bdp2e2pWK1gp
         ixxQ==
X-Gm-Message-State: AOJu0YyY4A0cPbqcg8uQEpGHCKphOYv4HrwaPG2qShhsxZOCBWjRm/cY
	Lm1A2Tm9pDZt1m4Gh1fMHZyadBFXbAYsG2pkfAta8MrywCg=
X-Google-Smtp-Source: AGHT+IFapPai00lWngMkq1BaH50M87U5rJYhI6k2MeH5CqKjwKJkbpiPgGkFaHbPQ87K1ODlfIBKyn02GEVAhjaxKu8=
X-Received: by 2002:a17:90a:4d86:b0:278:f656:ca0e with SMTP id
 m6-20020a17090a4d8600b00278f656ca0emr1455297pjh.0.1695816220147; Wed, 27 Sep
 2023 05:03:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926102821.306860-1-festevam@gmail.com> <20230926102821.306860-3-festevam@gmail.com>
 <PA4PR04MB9640F8FF63A8D16C89786DAC89C2A@PA4PR04MB9640.eurprd04.prod.outlook.com>
In-Reply-To: <PA4PR04MB9640F8FF63A8D16C89786DAC89C2A@PA4PR04MB9640.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 27 Sep 2023 09:03:28 -0300
Message-ID: <CAOMZO5BH4peWFaOKQvwbb+Md9Hr2UHjhfNwVHg4j_vhO_s9x9Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8qxp-mek: Pass gpio-sbu-mux mode-switch
To: Jun Li <jun.li@nxp.com>
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>, 
	Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Li Jun,

On Wed, Sep 27, 2023 at 12:11=E2=80=AFAM Jun Li <jun.li@nxp.com> wrote:

> mode-switch:
>     description: Flag the port as possible handle of altmode switching
>     type: boolean
>
> I don't think there is altmode enabled on iMX8QXP MEK board, there is
> only an orientation switch.

Okay, so I will send a change that removes mode-switch from the
required properties list then.

Thanks

